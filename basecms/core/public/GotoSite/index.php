<?php
require("../../class/connect.php");
$lid=(int)$_GET['lid'];
if($lid)
{
	include("../../class/db_sql.php");
	$link=db_connect();
	$Elves=new mysqlquery();
	$editor=1;
	$r=$Elves->fetch1("select lurl from {$dbtbpre}melvelink where lid='$lid'");
	if(empty($r[lurl]))
	{
		printerror("ErrorUrl","",1);
	}
	$sql=$Elves->query("update {$dbtbpre}melvelink set onclick=onclick+1 where lid='$lid'");
	$url=$r[lurl];
	db_close();
	$Elves=null;
	Header("Location:$url");
}
?>