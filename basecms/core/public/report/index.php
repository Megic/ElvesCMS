<?php
require("../../class/connect.php");
require("../../class/db_sql.php");
require("../../class/q_functions.php");
require("../../data/dbcache/class.php");
$link=db_connect();
$Elves=new mysqlquery();
$editor=1;
$id=(int)$_GET['id'];
$classid=(int)$_GET['classid'];
if(!$id||!$classid||!$class_r[$classid][tbname]||InfoIsInTable($class_r[$classid][tbname]))
{
	printerror("ErrorUrl","history.go(-1)",1);
}
$r=$Elves->fetch1("select title,isurl,titleurl,classid,id from {$dbtbpre}elve_".$class_r[$classid][tbname]." where id='$id' limit 1");
if(empty($r['id'])||$r['classid']!=$classid)
{
	printerror("ErrorUrl","history.go(-1)",1);
}
//分类
$cid=(int)$_GET['cid'];
$titleurl=sys_ReturnBqTitleLink($r);
//导入模板
require(elve_PATH.'core/template/public/report.php');
db_close();
$Elves=null;
?>