<?php
require("../../class/connect.php");
require("../../class/db_sql.php");
$link=db_connect();
$Elves=new mysqlquery();
$id=(int)$_GET['id'];
$classid=(int)$_GET['classid'];
$down=(int)$_GET['down'];
$shownum=0;
$classf='tid,tbname';
if($down==2)
{
	$classf.=',checkpl';
}
if($down==7)//专题
{
	$cr=$Elves->fetch1("select restb from {$dbtbpre}melvezt where ztid='$classid' limit 1");
	if(!$cr['restb'])
	{
		exit();
	}
}
else
{
	$cr=$Elves->fetch1("select ".$classf." from {$dbtbpre}melveclass where classid='$classid' limit 1");
	if(empty($cr['tbname']))
	{
		exit();
	}
}
//浏览数
if($down==0)
{
	$r=$Elves->fetch1("select onclick from {$dbtbpre}elve_".$cr['tbname']." where id='$id' limit 1");
	$shownum=$r['onclick']+1;
	if($_GET['addclick']==1)
	{
		$usql=$Elves->query("update {$dbtbpre}elve_".$cr['tbname']." set onclick=onclick+1 where id='$id' limit 1");
	}
}
//下载数
elseif($down==1)
{
	$r=$Elves->fetch1("select totaldown from {$dbtbpre}elve_".$cr['tbname']." where id='$id' limit 1");
	$shownum=$r['totaldown'];
}
//评论数
elseif($down==2)
{
	if($cr['checkpl'])
	{
		$r=$Elves->fetch1("select restb from {$dbtbpre}elve_".$cr['tbname']." where id='$id' limit 1");
		if(!$r['restb'])
		{
			exit();
		}
		$pubid=ReturnInfoPubid(0,$id,$cr['tid']);
		$shownum=$Elves->gettotal("select count(*) as total from {$dbtbpre}melvepl_".$r['restb']." where pubid='$pubid' and checked=0");
	}
	else
	{
		$r=$Elves->fetch1("select plnum from {$dbtbpre}elve_".$cr['tbname']." where id='$id' limit 1");
		$shownum=$r['plnum'];
	}
}
//评分数
elseif($down==3)
{
	$r=$Elves->fetch1("select infopfen,infopfennum from {$dbtbpre}elve_".$cr['tbname']." where id='$id' limit 1");
	$shownum=$r[infopfennum]?round($r[infopfen]/$r[infopfennum]):0;
}
//评分人数
elseif($down==4)
{
	$r=$Elves->fetch1("select infopfennum from {$dbtbpre}elve_".$cr['tbname']." where id='$id' limit 1");
	$shownum=$r['infopfennum'];
}
//digg顶数
elseif($down==5)
{
	$r=$Elves->fetch1("select diggtop from {$dbtbpre}elve_".$cr['tbname']." where id='$id' limit 1");
	$shownum=$r['diggtop'];
}
//digg踩数
elseif($down==6)
{
	$r=$Elves->fetch1("select diggdown from {$dbtbpre}elve_".$cr['tbname']." where id='$id' limit 1");
	$shownum=$r['diggdown'];
}
//专题评论数
elseif($down==7)
{
	$pubid='-'.$classid;
	$shownum=$Elves->gettotal("select count(*) as total from {$dbtbpre}melvepl_".$cr['restb']." where pubid='$pubid' and checked=0");
}
db_close();
$Elves=null;
echo"document.write('".$shownum."');";
?>