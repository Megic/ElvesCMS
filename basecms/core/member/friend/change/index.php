<?php
require("../../../class/connect.php");
require("../../../class/q_functions.php");
require("../../../class/db_sql.php");
require("../../class/user.php");
require('../../class/friendfun.php');
$link=db_connect();
$Elves=new mysqlquery();
$editor=2;
$elvereurl=1;
eCheckCloseMods('member');//关闭模块
$user=islogin();
$a="";
$cid=(int)$_GET['cid'];
if($cid)
{
	$a=" and cid=$cid";
}
$query="select fname from {$dbtbpre}melvehy where userid='$user[userid]'".$a." order by fid";
$sql=$Elves->query($query);
while($r=$Elves->fetch($sql))
{
	$hyselect.="<option value='".$r['fname']."'>".$r['fname']."</option>";
}
//分类
$select=ReturnFriendclass($user[userid],$cid);
$fm=$_GET['fm'];
$f=$_GET['f'];
$addvar="fm=".$fm."&f=".$f;
//导入模板
require(elve_PATH.'core/template/member/ChangeFriend.php');
db_close();
$Elves=null;
?>