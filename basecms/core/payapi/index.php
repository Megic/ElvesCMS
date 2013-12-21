<?php
require("../class/connect.php");
require("../class/db_sql.php");
require("../class/q_functions.php");
require("../member/class/user.php");
eCheckCloseMods('pay');//关闭模块
$link=db_connect();
$Elves=new mysqlquery();
//是否登陆
$user=islogin();
$pr=$Elves->fetch1("select paymoneytofen,payminmoney from {$dbtbpre}melvepublic limit 1");
$paysql=$Elves->query("select payid,paytype,payfee,paysay,payname from {$dbtbpre}melvepayapi where isclose=0 order by myorder,payid");
$pays='';
while($payr=$Elves->fetch($paysql))
{
	$pays.="<option value='".$payr[payid]."'>".$payr[payname]."</option>";
}
//导入模板
require(elve_PATH.'core/template/payapi/payapi.php');
db_close();
$Elves=null;
?>