<?php
//--------------- 注册函数 ---------------

//验证会员组是否可注册
function CheckMemberGroupCanReg($groupid){
	global $elves,$dbtbpre;
	$groupid=(int)$groupid;
	$r=$elves->fetch1("select groupid from {$dbtbpre}melvemembergroup where groupid='$groupid' and canreg=1");
	if(empty($r['groupid']))
	{
		printerror('ErrorUrl','',1);
	}
}

//验证注册时间
function eCheckIpRegTime($ip,$time){
	global $elves,$dbtbpre;
	if(empty($time))
	{
		return '';
	}
	$uaddr=$elves->fetch1("select userid from {$dbtbpre}melvememberadd where regip='$ip' order by userid desc limit 1");
	if(empty($uaddr['userid']))
	{
		return '';
	}
	$ur=$elves->fetch1("select ".eReturnSelectMemberF('userid,registertime')." from ".eReturnMemberTable()." where ".egetmf('userid')."='$uaddr[userid]' limit 1");
	if(empty($ur['userid']))
	{
		return '';
	}
	$registertime=eReturnMemberIntRegtime($ur['registertime']);
	if(time()-$registertime<=$time*3600)
	{
		printerror('RegisterReIpError','',1);
	}
}

//用户注册
function register($add){
	global $elves,$dbtbpre,$public_r,$elve_config;
	//关闭注册
	if($public_r['register_ok'])
	{
		printerror('CloseRegister','',1);
	}
	//验证时间段允许操作
	eCheckTimeCloseDo('reg');
	//验证IP
	eCheckAccessDoIp('register');
	if(!empty($elve_config['member']['registerurl']))
	{
		Header("Location:".$elve_config['member']['registerurl']);
		exit();
    }

	//已经登陆不能注册
	if(getcvar('mluserid'))
	{
		printerror('LoginToRegister','',1);
	}

	CheckCanPostUrl();//验证来源
	$username=trim($add['username']);
	$loginsign=trim($add['loginsign']);
	$username=RepPostVar($username);
	$loginsign=RepPostVar($loginsign);
	if(!$username||!$loginsign)
	{
		printerror("EmptyMember","history.go(-1)",1);
	}
	$tobind=(int)$add['tobind'];

	//验证码
	$keyvname='checkregkey';
	if($public_r['regkey_ok'])
	{
		elveCheckShowKey($keyvname,$add['key'],1);
	}

	$user_groupid=eReturnMemberDefGroupid();
	$groupid=(int)$add['groupid'];
	$groupid=empty($groupid)?$user_groupid:$groupid;
	CheckMemberGroupCanReg($groupid);

	//IP
	$regip=egetip();
	//用户字数
	$pr=$elves->fetch1("select min_userlen,max_userlen,min_passlen,max_passlen,regretime,regclosewords,regemailonly from {$dbtbpre}melvepublic limit 1");
	$userlen=strlen($username);

	if($userlen<$pr[min_userlen]||$userlen>$pr[max_userlen])
	{
		printerror('FaiUserlen','',1);
	}
	if(strstr($username,'|')||strstr($username,'*'))
	{
		printerror('NotSpeWord','',1);
	}
	//同一IP注册
	eCheckIpRegTime($regip,$pr['regretime']);
	//保留用户
	toCheckCloseWord($username,$pr['regclosewords'],'RegHaveCloseword');
	$username=RepPostStr($username);
	//重复用户
	$num=$elves->gettotal("select count(*) as total from ".eReturnMemberTable()." where ".egetmf('loginsign')."='$loginsign' limit 1");
	if($num)
	{
		printerror('ReUsername','',1);
	}

	//注册时间
	$lasttime=time();
	$registertime=eReturnAddMemberRegtime();
	$rnd=make_password(20);//产生随机密码
	$userkey=eReturnMemberUserKey();

	$salt=eReturnMemberSalt();
	//审核
	$checked=ReturnGroupChecked($groupid);
	if($checked&&$public_r['regacttype']==1)
	{
		$checked=0;
	}
	//验证附加表必填项
	$mr['add_filepass']=ReturnTranFilepass();
	$fid=GetMemberFormId($groupid);

	$member_r=ReturnDoMemberF($fid,$add,$mr,0,$loginsign);

	$sql=$elves->query("insert into ".eReturnMemberTable()."(".eReturnInsertMemberF('username,password,rnd,email,registertime,groupid,userfen,userdate,money,zgroupid,havemsg,checked,salt,userkey,loginsign').") values('$username','','$rnd','','$registertime','$groupid','$public_r[reggetfen]','0','0','0','0','$checked','$salt','$userkey','$loginsign');");
	//取得userid
	$userid=$elves->lastid();
	//附加表
	$addr=$elves->fetch1("select * from {$dbtbpre}melvememberadd where userid='$userid'");
	if(!$addr[userid])
	{
		$spacestyleid=ReturnGroupSpaceStyleid($groupid);
		$sql1=$elves->query("insert into {$dbtbpre}melvememberadd(userid,spacestyleid,regip,lasttime,lastip,loginnum".$member_r[0].") values('$userid','$spacestyleid','$regip','$lasttime','$regip','1'".$member_r[1].");");
	}
	//更新附件
	UpdateTheFileOther(6,$userid,$mr['add_filepass'],'member');
	elveEmptyShowKey($keyvname);//清空验证码
	//绑定帐号
	if($tobind)
	{
		MemberConnect_BindUser($userid);
	}
	if($sql)
	{
		//邮箱激活
		if($checked==0&&$public_r['regacttype']==1)
		{
			include('class/member_actfun.php');
			SendActUserEmail($userid,$username,$email);
		}
		//审核
		if($checked==0)
		{
			$location=DoingReturnUrl("../../",$add['elvefrom']);
			printerror("RegisterSuccessCheck",$location,1);
		}
		$lifetime=(int)$add['lifetime'];
	$logincookie=0;
	if($lifetime)
	{
		$logincookie=time()+$lifetime;
	}
		if($elve_config['member']['regcookietime'])
		{
			$logincookie=time()+$elve_config['member']['regcookietime'];
		}
		$r=$elves->fetch1("select ".eReturnSelectMemberF('*')." from ".eReturnMemberTable()." where ".egetmf('userid')."='$userid' limit 1");
		$set1=esetcookie("mlusername",$username,$logincookie);
		$set2=esetcookie("mluserid",$userid,$logincookie);
		$set3=esetcookie("mlgroupid",$groupid,$logincookie);
		$set4=esetcookie("mlrnd",$rnd,$logincookie);
		//验证符
		qGetLoginAuthstr($userid,$username,$rnd,$groupid,$logincookie);
		//登录附加cookie
		AddLoginCookie($r);
		$location="../member/cp/";
		$returnurl=getcvar('returnurl');
		if($returnurl&&!strstr($returnurl,"core/member/iframe")&&!strstr($returnurl,"core/member/register")&&!strstr($returnurl,"melve=exit"))
		{
			$location=$returnurl;
		}
		$set5=esetcookie("returnurl","");
		$location=DoingReturnUrl($location,$add['elvefrom']);
		printerror("RegisterSuccess",$location,1);
	}
	else
	{printerror("DbError","history.go(-1)",1);}
}
?>