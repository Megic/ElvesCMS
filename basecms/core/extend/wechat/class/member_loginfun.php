<?php
//--------------- 登录函数 ---------------

//登录
function qlogin($add){
	global $elves,$dbtbpre,$public_r,$elve_config;
	if($elve_config['member']['loginurl'])
	{
		Header("Location:".$elve_config['member']['loginurl']);
		exit();
	}
	$dopr=1;
	if($add['prtype'])
	{
		$dopr=9;
	}
	$username=trim($add['username']);
	$loginsign=trim($add['loginsign']);
	if(!$username||!$loginsign)
	{
		printerror("EmptyLogin","history.go(-1)",$dopr);
	}
	$tobind=(int)$add['tobind'];
	//验证码
	$keyvname='checkloginkey';
	if($public_r['loginkey_ok'])
	{
		elveCheckShowKey($keyvname,$add['key'],$dopr);
	}
	$username=RepPostVar($username);
	$loginsign=RepPostVar($loginsign);
	$num=0;
	$r=$elves->fetch1("select ".eReturnSelectMemberF('*')." from ".eReturnMemberTable()." where ".egetmf('loginsign')."='$loginsign' limit 1");
	if(!$r['userid'])
	{
		printerror("FailPassword","history.go(-1)",$dopr);
	}
	
	if($r['checked']==0)
	{
		if($public_r['regacttype']==1)
		{
			printerror('NotCheckedUser','../member/register/regsend.php',1);
		}
		else
		{
			printerror('NotCheckedUser','',1);
		}
	}
	//绑定帐号
	if($tobind)
	{
		MemberConnect_BindUser($r['userid']);
	}
	$rnd=make_password(20);//取得随机密码
	//默认会员组
	if(empty($r['groupid']))
	{
		$r['groupid']=eReturnMemberDefGroupid();
	}
	$r['groupid']=(int)$r['groupid'];
	$lasttime=time();
	//IP
	$lastip=egetip();
	$usql=$elves->query("update ".eReturnMemberTable()." set ".egetmf('rnd')."='$rnd',".egetmf('groupid')."='$r[groupid]' where ".egetmf('userid')."='$r[userid]'");
	$elves->query("update {$dbtbpre}melvememberadd set lasttime='$lasttime',lastip='$lastip',loginnum=loginnum+1 where userid='$r[userid]'");
	//设置cookie
	$lifetime=(int)$add['lifetime'];
	$logincookie=0;
	if($lifetime)
	{
		$logincookie=time()+$lifetime;
	}
	$set1=esetcookie("mlusername",$username,$logincookie);
	$set2=esetcookie("mluserid",$r['userid'],$logincookie);
	$set3=esetcookie("mlgroupid",$r['groupid'],$logincookie);
	$set4=esetcookie("mlrnd",$rnd,$logincookie);
	//验证符
	qGetLoginAuthstr($r['userid'],$username,$rnd,$r['groupid'],$logincookie);
	//登录附加cookie
	AddLoginCookie($r);
	$location="../member/cp/";
	$returnurl=getcvar('returnurl');
	if($returnurl)
	{
		$location=$returnurl;
	}
	if(strstr($_SERVER['HTTP_REFERER'],"core/member/iframe"))
	{
		$location="../member/iframe/";
	}
	if(strstr($location,"melve=exit")||strstr($location,"core/member/register")||strstr($_SERVER['HTTP_REFERER'],"core/member/register"))
	{
		$location="../member/cp/";
		$add['elvefrom']='';
	}
	elveEmptyShowKey($keyvname);//清空验证码
	$set6=esetcookie("returnurl","");
	if($set1&&$set2)
	{
		
		$location=DoingReturnUrl($location,$add['elvefrom']);
		printerror("LoginSuccess",$location,$dopr);
    }
	else
	{
		printerror("NotCookie","history.go(-1)",$dopr);
	}
}

//退出登陆
function qloginout($userid,$username,$rnd){
	global $elves,$public_r,$elve_config;
	//是否登陆
	$user_r=islogin();
	if($elve_config['member']['quiturl'])
	{
		Header("Location:".$elve_config['member']['quiturl']);
		exit();
	}
	EmptyelveCookie();
	$dopr=1;
	if($_GET['prtype'])
	{
		$dopr=9;
	}
	$gotourl="../../";
	if(strstr($_SERVER['HTTP_REFERER'],"core/member/iframe"))
	{
		$gotourl=$public_r['newsurl']."core/member/iframe/";
	}

	$gotourl=DoingReturnUrl($gotourl,$_GET['elvefrom']);
	printerror("ExitSuccess",$gotourl,$dopr);
}
?>