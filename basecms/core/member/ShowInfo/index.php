<?php
require("../../class/connect.php");
require("../../class/q_functions.php");
require("../../class/db_sql.php");
require("../../member/class/user.php");
require("../../data/dbcache/MemberLevel.php");
$link=db_connect();
$Elves=new mysqlquery();
$editor=1;
eCheckCloseMods('member');//关闭模块
if($public_r['showinfolevel'])
{
	$user=islogin();
	if($level_r[$user[groupid]]['level']<$level_r[$public_r[showinfolevel]]['level'])
	{
		printerror("NotLevelShowInfo","",1);
	}
}
$userid=(int)$_GET['userid'];
if($userid)
{
	$where=egetmf('userid')."='$userid'";
	$username='';
}
else
{
	$username=RepPostVar($_GET['username']);
	if(empty($username))
	{
		printerror("NotUsername","",1);
	}
	$utfusername=$username;
	$where=egetmf('username')."='$username'";
}
$r=$Elves->fetch1("select ".eReturnSelectMemberF('userid,username,email,groupid,userfen,userdate,registertime')." from ".eReturnMemberTable()." where ".$where." limit 1");
if(empty($r['userid']))
{
	printerror("NotUsername","",1);
}
if(empty($username))
{
	$username=$r['username'];
}
$registertime=eReturnMemberRegtime($r['registertime'],'Y-m-d H:i:s');
$email=$r['email'];
$addr=$Elves->fetch1("select * from {$dbtbpre}melvememberadd where userid='".$r['userid']."' limit 1");
//取得表单
$formid=GetMemberFormId($r['groupid']);
$formr=$Elves->fetch1("select filef,imgf,tobrf,viewenter from {$dbtbpre}melvememberform where fid='$formid'");
//导入模板
require(elve_PATH.'core/template/member/ShowInfo.php');
db_close();
$Elves=null;
?>