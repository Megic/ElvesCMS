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
$addr=$Elves->fetch1("select spacename,spacegg from {$dbtbpre}melvememberadd where userid='$user[userid]' limit 1");
//导入模板
require(elve_PATH.'core/template/member/mspace/SetSpace.php');
db_close();
$Elves=null;
?>