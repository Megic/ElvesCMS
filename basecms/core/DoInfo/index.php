<?php
require("../class/connect.php");
require("../class/db_sql.php");
$link=db_connect();
$Elves=new mysqlquery();
//导入模板
require(elve_PATH.'core/template/DoInfo/DoInfo.php');
db_close();
$Elves=null;
?>