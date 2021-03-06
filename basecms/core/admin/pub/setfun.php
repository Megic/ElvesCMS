<?php
//返回参数内容
function ReturnSettingString($r){
	$filename='data/setting.txt';
	$text=ReadFiletext($filename);
	//后台安全
	$text=str_replace('[!@--do_loginauth--@!]',addslashes($r[do_loginauth]),$text);
	$text=str_replace('[!@--do_ecookiernd--@!]',addslashes($r[do_ecookiernd]),$text);
	$text=str_replace('[!@--do_ckhloginfile--@!]',intval($r[do_ckhloginfile]),$text);
	$text=str_replace('[!@--do_ckhloginip--@!]',intval($r[do_ckhloginip]),$text);
	$text=str_replace('[!@--do_ckhsession--@!]',intval($r[do_ckhsession]),$text);
	$text=str_replace('[!@--do_theloginlog--@!]',intval($r[do_theloginlog]),$text);
	$text=str_replace('[!@--do_thedolog--@!]',intval($r[do_thedolog]),$text);
	$text=str_replace('[!@--do_ckfromurl--@!]',intval($r[do_ckfromurl]),$text);
	//COOKIE
	$text=str_replace('[!@--mgxe_cookiedomain--@!]',addslashes($r[mgxe_cookiedomain]),$text);
	$text=str_replace('[!@--mgxe_cookiepath--@!]',addslashes($r[mgxe_cookiepath]),$text);
	$text=str_replace('[!@--mgxe_cookievarpre--@!]',addslashes($r[mgxe_cookievarpre]),$text);
	$text=str_replace('[!@--mgxe_cookieadminvarpre--@!]',addslashes($r[mgxe_cookieadminvarpre]),$text);
	$text=str_replace('[!@--mgxe_cookieckrnd--@!]',addslashes($r[mgxe_cookieckrnd]),$text);
	$text=str_replace('[!@--mgxe_cookieckrndtwo--@!]',addslashes($r[mgxe_cookieckrndtwo]),$text);
	//防火墙
	$text=str_replace('[!@--efw_open--@!]',intval($r[efw_open]),$text);
	$text=str_replace('[!@--efw_pass--@!]',addslashes($r[efw_pass]),$text);
	$text=str_replace('[!@--efw_adminloginurl--@!]',addslashes($r[efw_adminloginurl]),$text);
	$text=str_replace('[!@--efw_adminhour--@!]',addslashes($r[efw_adminhour]),$text);
	$text=str_replace('[!@--efw_adminweek--@!]',addslashes($r[efw_adminweek]),$text);
	$text=str_replace('[!@--efw_adminckpassvar--@!]',addslashes($r[efw_adminckpassvar]),$text);
	$text=str_replace('[!@--efw_adminckpassval--@!]',addslashes($r[efw_adminckpassval]),$text);
	$text=str_replace('[!@--efw_cleargettext--@!]',addslashes($r[efw_cleargettext]),$text);
	return $text;
}

//生成配置文件
function GetSettingConfig($string){
	$filename=elve_PATH."core/config/config.php";
	$exp='//-------ElvesCMS.Seting.area-------';
	$text=ReadFiletext($filename);
	$r=explode($exp,$text);
	if($r[0]=='')
	{
		return false;
	}
	$r[1]=$string;
	$setting=$r[0].$exp.$r[1].$exp.$r[2];
	WriteFiletext_n($filename,$setting);
}

//防火墙设置
function SetFirewall($add,$userid,$username){
	global $elve_config;
	$r[efw_open]=(int)$add[fw_open];
	$r[efw_pass]=$add[fw_pass];
	$r[efw_adminloginurl]=$add[fw_adminloginurl];
	//时间点
	$hour=$add['fw_adminhour'];
	$hcount=count($hour);
	$adminhour='';
	if($hcount)
	{
		$dh='';
		for($i=0;$i<$hcount;$i++)
		{
			$adminhour.=$dh.intval($hour[$i]);
			$dh=',';
		}
	}
	$r[efw_adminhour]=$adminhour;
	//星期
	$week=$add['fw_adminweek'];
	$wcount=count($week);
	$adminweek='';
	if($wcount)
	{
		$dh='';
		for($i=0;$i<$wcount;$i++)
		{
			$adminweek.=$dh.intval($week[$i]);
			$dh=',';
		}
	}
	$r[efw_adminweek]=$adminweek;
	$r[efw_adminckpassvar]=$add[fw_adminckpassvar];
	$r[efw_adminckpassval]=$add[fw_adminckpassval];
	$r[efw_cleargettext]=$add[fw_cleargettext];
	//原来设置
	$r[do_loginauth]=$elve_config['esafe']['loginauth'];
	$r[do_ecookiernd]=$elve_config['esafe']['ecookiernd'];
	$r[do_ckhloginfile]=$elve_config['esafe']['ckhloginfile'];
	$r[do_ckhloginip]=$elve_config['esafe']['ckhloginip'];
	$r[do_ckhsession]=$elve_config['esafe']['ckhsession'];
	$r[do_theloginlog]=$elve_config['esafe']['theloginlog'];
	$r[do_thedolog]=$elve_config['esafe']['thedolog'];
	$r[do_ckfromurl]=$elve_config['esafe']['ckfromurl'];

	$r[mgxe_cookiedomain]=$elve_config['cks']['ckdomain'];
	$r[mgxe_cookiepath]=$elve_config['cks']['ckpath'];
	$r[mgxe_cookievarpre]=$elve_config['cks']['ckvarpre'];
	$r[mgxe_cookieadminvarpre]=$elve_config['cks']['ckadminvarpre'];
	$r[mgxe_cookieckrnd]=$elve_config['cks']['ckrnd'];
	$r[mgxe_cookieckrndtwo]=$elve_config['cks']['ckrndtwo'];
	$string=ReturnSettingString($r);
	GetSettingConfig($string);
	//操作日志
	insert_dolog('');
	if(($r[efw_open]&&!$elve_config['fw']['eopen'])||$elve_config['fw']['epass']!=$r[efw_pass]||$elve_config['fw']['adminckpassvar']!=$r[efw_adminckpassvar]||$elve_config['fw']['adminckpassval']!=$r[efw_adminckpassval])
	{
		printerror('SetFirewallSuccessLogin','../index.php');
	}
	printerror('SetFirewallSuccess','SetFirewall.php');
}

//安全设置
function SetSafe($add,$userid,$username){
	global $elve_config;
	$r[do_loginauth]=$add[loginauth];
	$r[do_ecookiernd]=$add[ecookiernd];
	$r[do_ckhloginfile]=(int)$add[ckhloginfile];
	$r[do_ckhloginip]=(int)$add[ckhloginip];
	$r[do_ckhsession]=(int)$add[ckhsession];
	$r[do_theloginlog]=(int)$add[theloginlog];
	$r[do_thedolog]=(int)$add[thedolog];
	$r[do_ckfromurl]=(int)$add[ckfromurl];

	$r[mgxe_cookiedomain]=$add[cookiedomain];
	$r[mgxe_cookiepath]=$add[cookiepath];
	$r[mgxe_cookievarpre]=$add[cookievarpre];
	$r[mgxe_cookieadminvarpre]=$add[cookieadminvarpre];
	$r[mgxe_cookieckrnd]=$add[cookieckrnd];
	$r[mgxe_cookieckrndtwo]=$add[cookieckrndtwo];
	//原来设置
	$r[efw_open]=$elve_config['fw']['eopen'];
	$r[efw_pass]=$elve_config['fw']['epass'];
	$r[efw_adminloginurl]=$elve_config['fw']['adminloginurl'];
	$r[efw_adminhour]=$elve_config['fw']['adminhour'];
	$r[efw_adminweek]=$elve_config['fw']['adminweek'];
	$r[efw_adminckpassvar]=$elve_config['fw']['adminckpassvar'];
	$r[efw_adminckpassval]=$elve_config['fw']['adminckpassval'];
	$r[efw_cleargettext]=$elve_config['fw']['cleargettext'];
	$string=ReturnSettingString($r);
	GetSettingConfig($string);
	//操作日志
	insert_dolog('');
	if($elve_config['esafe']['ecookiernd']!=$r[do_ecookiernd]||$elve_config['cks']['ckadminvarpre']!=$r[mgxe_cookieadminvarpre])
	{
		printerror('SetSafeSuccessLogin','../index.php');
	}
	printerror('SetSafeSuccess','SetSafe.php');
}
?>