<?php
require("../../class/connect.php");
require("../../class/q_functions.php");
require("../../class/db_sql.php");
require("../../member/class/user.php");
require("../class/ShopSysFun.php");
$link=db_connect();
$Elves=new mysqlquery();
$editor=1;
eCheckCloseMods('shop');//关闭模块
$user=islogin();
$melve=$_GET['melve'];
if(empty($melve))
{
	$melve="AddAddress";
}
$r=array();
$addressid=(int)$_GET['addressid'];
if($melve=='EditAddress')
{
	$r=$Elves->fetch1("select * from {$dbtbpre}melveshop_address where addressid='$addressid' and userid='$user[userid]' limit 1");
}
//导入模板
require(elve_PATH.'core/template/ShopSys/AddAddress.php');
db_close();
$Elves=null;
?>