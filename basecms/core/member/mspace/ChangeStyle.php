<?php
require("../../class/connect.php");
require("../../class/q_functions.php");
require("../../class/db_sql.php");
require "../".LoadLang("pub/fun.php");
require("../class/user.php");
$link=db_connect();
$Elves=new mysqlquery();
$editor=1;
eCheckCloseMods('member');//关闭模块
$user=islogin();
$addr=$Elves->fetch1("select spacestyleid from {$dbtbpre}melvememberadd where userid='$user[userid]' limit 1");
if(empty($addr[spacestyleid]))
{
	$addr[spacestyleid]=$public_r['defspacestyleid'];
}
//分页
$page=(int)$_GET['page'];
$page=RepPIntvar($page);
$start=0;
$line=16;//每页显示条数
$page_line=12;//每页显示链接数
$offset=$page*$line;//总偏移量
$query="select styleid,stylename,stylepic,stylesay,isdefault from {$dbtbpre}melvespacestyle where membergroup='' or (membergroup<>'' and membergroup like '%,".$user[groupid].",%')";
$totalquery="select count(*) as total from {$dbtbpre}melvespacestyle where membergroup='' or (membergroup<>'' and membergroup like '%,".$user[groupid].",%')";
$num=$Elves->gettotal($totalquery);//取得总条数
$query.=" order by styleid limit $offset,$line";
$returnpage=page1($num,$line,$page_line,$start,$page,$search);
//导入模板
require(elve_PATH.'core/template/member/mspace/ChangeStyle.php');
db_close();
$Elves=null;
?>