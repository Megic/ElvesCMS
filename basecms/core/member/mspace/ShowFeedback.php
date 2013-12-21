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
$fid=(int)$_GET['fid'];
$r=$Elves->fetch1("select fid,name,company,phone,fax,email,address,zip,title,ftext,userid,ip,uid,uname,addtime from {$dbtbpre}melvememberfeedback where fid='$fid' and userid='$user[userid]'");
if(!$r['fid'])
{
	printerror('ErrorUrl','',1);
}
if($r['uid'])
{
	$r['uname']="<a href='../../space/?userid=$r[uid]' target='_blank'>$r[uname]</a>&nbsp;&nbsp;(<a href='../msg/AddMsg/?username=$r[uname]' target='_blank'>消息回复</a>)";
}
else
{
	$r['uname']='游客';
}
//导入模板
require(elve_PATH.'core/template/member/mspace/ShowFeedback.php');
db_close();
$Elves=null;
?>