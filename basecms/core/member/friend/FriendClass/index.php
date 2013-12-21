<?php
require("../../../class/connect.php");
require("../../../class/q_functions.php");
require("../../../class/db_sql.php");
require("../../class/user.php");
require('../../class/friendfun.php');
$link=db_connect();
$Elves=new mysqlquery();
$editor=2;
eCheckCloseMods('member');//关闭模块
$user=islogin();
$query="select cid,cname from {$dbtbpre}melvehyclass where userid='$user[userid]' order by cid desc";
$sql=$Elves->query($query);
//导入模板
require(elve_PATH.'core/template/member/FriendClass.php');
db_close();
$Elves=null;
?>