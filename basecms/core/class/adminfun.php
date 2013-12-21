<?php
//错误登陆记录
function InsertErrorLoginNum($username,$password,$loginauth,$ip,$time){
	global $Elves,$public_r,$dbtbpre;
	//COOKIE
	$loginnum=intval(getcvar('loginnum'));
	$logintime=$time;
	$lastlogintime=intval(getcvar('lastlogintime'));
	if($lastlogintime&&($logintime-$lastlogintime>$public_r['logintime']*60))
	{
		$loginnum=0;
	}
	$loginnum++;
	esetcookie("loginnum",$loginnum,$logintime+3600*24);
	esetcookie("lastlogintime",$logintime,$logintime+3600*24);
	//数据库
	$chtime=$time-$public_r['logintime']*60;
	$Elves->query("delete from {$dbtbpre}melveloginfail where lasttime<$chtime");
	$r=$Elves->fetch1("select ip from {$dbtbpre}melveloginfail where ip='$ip' limit 1");
	if($r['ip'])
	{
		$Elves->query("update {$dbtbpre}melveloginfail set num=num+1,lasttime='$time' where ip='$ip' limit 1");
	}
	else
	{
		$Elves->query("insert into {$dbtbpre}melveloginfail(ip,num,lasttime) values('$ip',1,'$time');");
	}
	//日志
	insert_log($username,$password,0,$ip,$loginauth);
}

//验证登录次数
function CheckLoginNum($ip,$time){
	global $Elves,$public_r,$dbtbpre;
	//COOKIE验证
	$loginnum=intval(getcvar('loginnum'));
	$lastlogintime=intval(getcvar('lastlogintime'));
	if($lastlogintime)
	{
		if($time-$lastlogintime<$public_r['logintime']*60)
		{
			if($loginnum>=$public_r['loginnum'])
			{
				printerror("LoginOutNum","index.php");
			}
		}
	}
	//数据库验证
	$chtime=$time-$public_r['logintime']*60;
	$num=$Elves->gettotal("select count(*) as total from {$dbtbpre}melveloginfail where ip='$ip' and num>=$public_r[loginnum] and lasttime>$chtime limit 1");
	if($num)
	{
		printerror("LoginOutNum","index.php");
	}
}

//登陆
function login($username,$password,$key,$post){
	global $Elves,$public_r,$dbtbpre,$elve_config;
	$username=RepPostVar($username);
	$password=RepPostVar($password);
	if(!$username||!$password)
	{
		printerror("EmptyKey","index.php");
	}
	//验证码
	$keyvname='checkkey';
	if(!$public_r['adminloginkey'])
	{
		elveCheckShowKey($keyvname,$key,0,0);
	}
	if(strlen($username)>30||strlen($password)>30)
	{
		printerror("EmptyKey","index.php");
	}
	$loginip=egetip();
	$logintime=time();
	CheckLoginNum($loginip,$logintime);
	//认证码
	if($elve_config['esafe']['loginauth']&&$elve_config['esafe']['loginauth']!=$post['loginauth'])
	{
		InsertErrorLoginNum($username,$password,1,$loginip,$logintime);
		printerror("ErrorLoginAuth","index.php");
	}
	$user_r=$Elves->fetch1("select userid,password,salt,lasttime,lastip,addtime,addip,userprikey from {$dbtbpre}melveuser where username='".$username."' and checked=0 limit 1");
	if(!$user_r['userid'])
	{
		InsertErrorLoginNum($username,$password,0,$loginip,$logintime);
		printerror("LoginFail","index.php");
	}
	$ch_password=md5(md5($password).$user_r['salt']);
	if($user_r['password']!=$ch_password)
	{
		InsertErrorLoginNum($username,$password,0,$loginip,$logintime);
		printerror("LoginFail","index.php");
	}
	//安全问答
	$user_addr=$Elves->fetch1("select userid,equestion,eanswer,openip,certkey from {$dbtbpre}melveuseradd where userid='$user_r[userid]'");
	if(!$user_addr['userid'])
	{
		InsertErrorLoginNum($username,$password,0,$loginip,$logintime);
		printerror("LoginFail","index.php");
	}
	if($user_addr['equestion'])
	{
		$equestion=(int)$post['equestion'];
		$eanswer=$post['eanswer'];
		if($user_addr['equestion']!=$equestion)
		{
			InsertErrorLoginNum($username,$password,0,$loginip,$logintime);
			printerror("LoginFail","index.php");
		}
		$ckeanswer=ReturnHLoginQuestionStr($user_r['userid'],$username,$user_addr['equestion'],$eanswer);
		if($ckeanswer!=$user_addr['eanswer'])
		{
			InsertErrorLoginNum($username,$password,0,$loginip,$logintime);
			printerror("LoginFail","index.php");
		}
	}
	//IP限制
	if($user_addr['openip'])
	{
		eCheckAccessAdminLoginIp($user_addr['openip']);
	}
	//取得随机密码
	$rnd=make_password(20);
	$sql=$Elves->query("update {$dbtbpre}melveuser set rnd='$rnd',loginnum=loginnum+1,lastip='$loginip',lasttime='$logintime',pretime='$user_r[lasttime]',preip='".RepPostVar($user_r[lastip])."' where username='$username' limit 1");
	$r=$Elves->fetch1("select groupid,userid,styleid,userprikey from {$dbtbpre}melveuser where username='$username' limit 1");
	//样式
	if(empty($r[styleid]))
	{
		$stylepath=$public_r['defadminstyle']?$public_r['defadminstyle']:1;
	}
	else
	{
		$styler=$Elves->fetch1("select path,styleid from {$dbtbpre}melveadminstyle where styleid='$r[styleid]'");
		if(empty($styler[styleid]))
		{
			$stylepath=$public_r['defadminstyle']?$public_r['defadminstyle']:1;
		}
		else
		{
			$stylepath=$styler['path'];
		}
	}
	//设置备份
	$cdbdata=0;
	$bnum=$Elves->gettotal("select count(*) as total from {$dbtbpre}melvegroup where groupid='$r[groupid]' and dodbdata=1");
	if($bnum)
	{
		$cdbdata=1;
		$set5=esetcookie("elvedodbdata","Elvescms",0,1);
    }
	else
	{
		$set5=esetcookie("elvedodbdata","",0,1);
	}
	
	elveEmptyShowKey($keyvname,0);//清空验证码
	$set4=esetcookie("loginuserid",$r[userid],0,1);
	$set1=esetcookie("loginusername",$username,0,1);
	$set2=esetcookie("loginrnd",$rnd,0,1);
	$set3=esetcookie("loginlevel",$r[groupid],0,1);
	$set5=esetcookie("eloginlic","Elvescmslic",0,1);
	$set6=esetcookie("loginadminstyleid",$stylepath,0,1);
	//COOKIE加密验证
	if(empty($elve_config['esafe']['ckhloginfile']))
	{
		DoEDelFileRnd($r[userid]);
	}
	DoECookieRnd($r[userid],$username,$rnd,$r['userprikey'],$cdbdata,$r[groupid],intval($stylepath),$logintime);
	//最后登陆时间
	$set4=esetcookie("logintime",$logintime,0,1);
	$set5=esetcookie("truelogintime",$logintime,0,1);
	//写入日志
	insert_log($username,'',1,$loginip,0);
	//FireWall
	FWSetPassword();
	if($set1&&$set2&&$set3)
	{
		$cache_melve='doclass,doinfo,douserinfo';
		$cache_elvetourl='admin.php';
		$cache_mess='LoginSuccess';
		$cache_url="CreateCache.php?melve=$cache_melve&elvetourl=$cache_elvetourl&mess=$cache_mess";
		//操作日志
	    insert_dolog("");
		if($post['adminwindow'])
		{
		?>
			<script>
			AdminWin=window.open("<?=$cache_url?>","ElvesCMS","scrollbars");
			AdminWin.moveTo(0,0);
			AdminWin.resizeTo(screen.width,screen.height-30);
			self.location.href="blank.php";
			</script>
		<?
		exit();
		}
		else
		{
			//printerror("LoginSuccess",$cache_url);
			echo'<meta http-equiv="refresh" content="0;url='.$cache_url.'">';
			db_close();
			$Elves=null;
			exit();
		}
	}
	else
	{
		printerror("NotCookie","index.php");
	}
}

//写入登录日志
function insert_log($username,$password,$status,$loginip,$loginauth){
	global $Elves,$elve_config,$dbtbpre;
	if($elve_config['esafe']['theloginlog'])
	{
		return "";
	}
	$password=RepPostVar($password);
	$loginauth=RepPostVar($loginauth);
	$password='';
	if($password)
	{
		$password=preg_replace("/^(.{".round(strlen($password) / 4)."})(.+?)(.{".round(strlen($password) / 6)."})$/s", "\\1***\\3", $password);
	}
	$password=RepPostVar($password);
	$username=RepPostVar($username);
	$loginip=RepPostVar($loginip);
	$status=RepPostVar($status);
	$logintime=date("Y-m-d H:i:s");
	$sql=$Elves->query("insert into {$dbtbpre}melvelog(username,loginip,logintime,status,password,loginauth) values('$username','$loginip','$logintime','$status','$password','$loginauth');");
}

//退出登陆
function loginout($userid,$username,$rnd){
	global $Elves,$dbtbpre,$elve_config;
	$userid=(int)$userid;
	if(!$userid||!$username)
	{
		printerror("NotLogin","history.go(-1)");
	}
	$set1=esetcookie("loginuserid","",0,1);
	$set2=esetcookie("loginusername","",0,1);
	$set3=esetcookie("loginrnd","",0,1);
	$set4=esetcookie("loginlevel","",0,1);
	//COOKIERND
	DelECookieRnd();
	DelESessionRnd();
	//FireWall
	FWEmptyPassword();
	//取得随机密码
	$rnd=make_password(20);
	$sql=$Elves->query("update {$dbtbpre}melveuser set rnd='$rnd' where userid='$userid'");
	if(empty($elve_config['esafe']['ckhloginfile']))
	{
		DoEDelFileRnd($userid);
	}
	DoEDelAndAuthRnd($userid);
	//操作日志
	insert_dolog("");
	printerror("ExitSuccess","index.php");
}

//验证登录IP
function eCheckAccessAdminLoginIp($openips){
	if(empty($openips))
	{
		return '';
	}
	$userip=egetip();
	//允许IP
	if($openips)
	{
		$close=1;
		foreach(explode("\n",$openips) as $ctrlip)
		{
			if(preg_match("/^(".preg_quote(($ctrlip=trim($ctrlip)),'/').")/",$userip))
			{
				$close=0;
				break;
			}
		}
		if($close==1)
		{
			echo"Ip<font color='#cccccc'>(".$userip.")</font> be prohibited.";
			exit();
		}
	}
}
?>