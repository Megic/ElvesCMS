<?php
require("../../class/connect.php");
$id=(int)$_GET['id'];
$classid=(int)$_GET['classid'];
if($id&&$classid)
{
	include("../../class/db_sql.php");
	include("../../data/dbcache/class.php");
	$link=db_connect();
	$Elves=new mysqlquery();
	$editor=1;
	if(empty($class_r[$classid][tbname])||InfoIsInTable($class_r[$classid][tbname]))
	{
		printerror("ErrorUrl","",1);
    }
	$r=$Elves->fetch1("select isurl,titleurl,classid,id from {$dbtbpre}elve_".$class_r[$classid][tbname]." where id='$id' limit 1");
	if(empty($r['isurl']))
	{
		printerror("ErrorUrl","",1);
    }
	$url=$r['titleurl'];
	$sql=$Elves->query("update {$dbtbpre}elve_".$class_r[$classid][tbname]." set onclick=onclick+1 where id='$id'");
	db_close();
	$Elves=null;
	Header("Location:$url");
}
?>