<?php
require("../class/connect.php");
require("../class/db_sql.php");
require("../class/q_functions.php");
require("../member/class/user.php");
$link=db_connect();
$Elves=new mysqlquery();
eCheckCloseMods('member');//关闭模块
eCheckCloseMods('mconnect');//关闭模块
//是否登陆
$user=islogin();
$query="select * from {$dbtbpre}melvemember_connect_app where isclose=0 order by myorder,id";
$sql=$Elves->query($query);
//导入模板
require(elve_PATH.'core/template/memberconnect/ListBind.php');
db_close();
$Elves=null;
?>