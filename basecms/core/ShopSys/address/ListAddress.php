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
$query="select addressid,addressname,isdefault from {$dbtbpre}melveshop_address where userid='$user[userid]' order by addressid";
$sql=$Elves->query($query);
//导入模板
require(elve_PATH.'core/template/ShopSys/ListAddress.php');
db_close();
$Elves=null;
?>