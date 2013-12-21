<?php
require("../../class/connect.php");
$adid=(int)$_GET['adid'];
if(!$adid)
{
	echo"<script>alert('error');history.go(-1);</script>";
    exit();
}
require("../../class/db_sql.php");
$link=db_connect();
$Elves=new mysqlquery();
$r=$Elves->fetch1("select url,adid from {$dbtbpre}melvead where adid='$adid'");
if(empty($r[adid]))
{
	echo"<script>alert('error');history.go(-1);</script>";
	exit();
}
$url=$r[url];
$Elves->query("update {$dbtbpre}melvead set onclick=onclick+1 where adid='$adid'");
db_close();
$Elves=null;
Header("Location:$url");
?>
