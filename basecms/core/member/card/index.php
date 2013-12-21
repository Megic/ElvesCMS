<?php
require("../../class/connect.php");
require("../../class/db_sql.php");
require("../../class/q_functions.php");
require("../class/user.php");
$link=db_connect();
$Elves=new mysqlquery();
$editor=1;
eCheckCloseMods('member');//关闭模块
//是否登陆
$user=islogin();
//导入模板
require(elve_PATH.'core/template/member/card.php');
db_close();
$Elves=null;
?>