<?php
require("../../class/connect.php");
$id=(int)$_GET['id'];
$classid=(int)$_GET['classid'];
$melve=$_GET['melve'];
if($id&&$classid)
{
	include("../../class/db_sql.php");
	include("../../data/dbcache/class.php");
	include("../../class/q_functions.php");
	$link=db_connect();
	$Elves=new mysqlquery();
	$editor=1;
	if(empty($class_r[$classid][tbname])||InfoIsInTable($class_r[$classid][tbname]))
	{
		printerror("ErrorUrl","",1);
    }
	//下一条记录
	if($melve=="next")
	{
		$where="id>$id and classid='$classid' order by id";
    }
	//上一条记录pre
	else
	{
		$where="id<$id and classid='$classid' order by id desc";
    }
	$r=$Elves->fetch1("select isurl,titleurl,classid,id from {$dbtbpre}elve_".$class_r[$classid][tbname]." where ".$where." limit 1");
	if(empty($r[id]))
	{
		printerror("NotNextInfo","",1);
    }
	$titleurl=sys_ReturnBqTitleLink($r);
	db_close();
	$Elves=null;
	Header("Location:$titleurl");
}
?>