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
$r=ReturnUserInfo($user[userid]);
$addr=$Elves->fetch1("select * from {$dbtbpre}melvememberadd where userid='$user[userid]' limit 1");
$formid=GetMemberFormId($user[groupid]);
$formfile='../../data/html/memberform'.$formid.'.php';
//导入模板
require(elve_PATH.'core/template/member/EditInfo.php');
db_close();
$Elves=null;
?>