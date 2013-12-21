<?php
require('../../class/connect.php');
require('../../class/db_sql.php');

if($public_r['onclicktype']==2)
{
	exit();
}

$link=db_connect();
$Elves=new mysqlquery();
require('../../class/onclickfun.php');
$id=(int)$_GET['id'];
$classid=(int)$_GET['classid'];
$ztid=(int)$_GET['ztid'];
$melve=$_GET['melve'];
if($melve=='donews')//信息点击
{
	InfoOnclick($classid,$id);
}
elseif($melve=='doclass')//栏目点击
{
	ClassOnclick($classid);
}
elseif($melve=='dozt')//专题点击
{
	ZtOnclick($ztid);
}
db_close();
$Elves=null;
?>