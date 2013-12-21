<?php
require("../../class/connect.php");
require("../../class/q_functions.php");
require("../../class/db_sql.php");
require("../class/user.php");
require('../class/favfun.php');
require("../../data/dbcache/class.php");
require "../".LoadLang("pub/fun.php");
$link=db_connect();
$Elves=new mysqlquery();
$editor=1;
eCheckCloseMods('member');//关闭模块
$user=islogin();
$line=25;
$page_line=12;
$start=0;
$page=(int)$_GET['page'];
$page=RepPIntvar($page);
$cid=(int)$_GET['cid'];
$a="";
if($cid)
{
	$a=" and cid='$cid'";
	$search="&cid=$cid";
}
$offset=$page*$line;
$totalquery="select count(*) as total from {$dbtbpre}melvefava where userid='$user[userid]'".$a;
$num=$Elves->gettotal($totalquery);
$query="select favaid,favatime,id,classid from {$dbtbpre}melvefava where userid='$user[userid]'".$a;
$query.=" order by favaid desc limit $offset,$line";
$sql=$Elves->query($query);
$returnpage=page1($num,$line,$page_line,$start,$page,$search);
//返回分类
$select=ReturnFavaClass($user[userid],$cid);
//导入模板
require(elve_PATH.'core/template/member/fava.php');
db_close();
$Elves=null;
?>