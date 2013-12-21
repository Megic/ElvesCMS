<?php
require("../../class/connect.php");
require("../../class/q_functions.php");
require("../../class/db_sql.php");
require("../class/user.php");
$link=db_connect();
$Elves=new mysqlquery();
$editor=1;
eCheckCloseMods('member');//关闭模块
$user=islogin();
$gid=(int)$_GET['gid'];
$r=$Elves->fetch1("select gid,isprivate,uid,uname,ip,addtime,gbtext,retext from {$dbtbpre}melvemembergbook where gid='$gid' and userid='$user[userid]'");
if(!$r['gid'])
{
	printerror('ErrorUrl','',1);
}
if($r['uid'])
{
	$r['uname']="<b><a href='../../space/?userid=$r[uid]' target='_blank'>$r[uname]</a></b>";
}
//导入模板
require(elve_PATH.'core/template/member/mspace/ReGbook.php');
db_close();
$Elves=null;
?>