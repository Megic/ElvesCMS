<?php
require('../../class/connect.php');
require('../../class/db_sql.php');
$link=db_connect();
$Elves=new mysqlquery();
$editor=1;
$voteid=(int)$_GET['voteid'];
if(empty($voteid))
{
	printerror("NotVote","history.go(-1)",9);
}
$r=$Elves->fetch1("select voteid,title,votenum,votetext,voteclass,addtime from {$dbtbpre}melvevote where voteid='$voteid'");
if(empty($r['voteid'])||empty($r['votetext']))
{
	printerror("NotVote","history.go(-1)",9);
}
$r_exp="\r\n";
$f_exp="::::::";
if($r['voteclass'])
{
	$voteclass="多选";
}
else
{
	$voteclass="单选";
}
//导入模板
require(elve_PATH.'core/template/tool/vote.php');
db_close();
$Elves=null;
?>