<?php
require("../../../class/connect.php");
require("../../../class/q_functions.php");
require("../../../class/db_sql.php");
require("../../class/user.php");
require('../../class/favfun.php');
$link=db_connect();
$Elves=new mysqlquery();
$editor=2;
eCheckCloseMods('member');//关闭模块
$user=islogin();
$query="select cid,cname from {$dbtbpre}melvefavaclass where userid='$user[userid]' order by cid desc";
$sql=$Elves->query($query);
//导入模板
require(elve_PATH.'core/template/member/FavaClass.php');
db_close();
$Elves=null;
?>