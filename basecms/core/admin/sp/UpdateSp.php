<?php
define('ElvesCMSAdmin','1');
require("../../class/connect.php");
require("../../class/db_sql.php");
require("../../class/functions.php");
require "../".LoadLang("pub/fun.php");
$link=db_connect();
$Elves=new mysqlquery();
$editor=1;
//验证用户
$lur=is_login();
$logininid=$lur['userid'];
$loginin=$lur['username'];
$loginrnd=$lur['rnd'];
$loginlevel=$lur['groupid'];
$loginadminstyleid=$lur['adminstyleid'];

$melve=$_POST['melve'];
if(empty($melve))
{$melve=$_GET['melve'];}
if($melve)
{
	include('../../class/chtmlfun.php');
	include('../../data/dbcache/class.php');
	include('../../class/t_functions.php');
}
if($melve=='ReSp')//刷新碎片文件
{
	ReSp($_GET,$logininid,$loginin,1);
}

$page=(int)$_GET['page'];
$page=RepPIntvar($page);
$start=0;
$line=30;//每页显示条数
$page_line=12;//每页显示链接数
$offset=$page*$line;//总偏移量
$add='';
$search='';
//碎片类型
$sptype=(int)$_GET['sptype'];
if($sptype)
{
	$add.=" and sptype='$sptype'";
	$search.="&sptype=$sptype";
}
//分类
$cid=(int)$_GET['cid'];
if($cid)
{
	$add.=" and cid='$cid'";
	$search.="&cid=$cid";
}
//栏目
$classid=(int)$_GET['classid'];
if($classid)
{
	$add.=" and classid='$classid'";
	$search.="&classid=$classid";
}
$query="select spid,spname,varname,cid,classid,sptype,sppic,spsay,refile,spfile from {$dbtbpre}melvesp where isclose=0 and (groupid like '%,".$lur[groupid].",%' or userclass like '%,".$lur[classid].",%' or username like '%,".$lur[username].",%')".$add;
$totalquery="select count(*) as total from {$dbtbpre}melvesp where isclose=0 and (groupid like '%,".$lur[groupid].",%' or userclass like '%,".$lur[classid].",%' or username like '%,".$lur[username].",%')".$add;
$num=$Elves->gettotal($totalquery);//取得总条数
$query=$query." order by spid desc limit $offset,$line";
$sql=$Elves->query($query);
$returnpage=page2($num,$line,$page_line,$start,$page,$search);
$url="<a href=UpdateSp.php>更新碎片</a>";
//分类
$scstr="";
$scsql=$Elves->query("select classid,classname from {$dbtbpre}melvespclass order by classid");
while($scr=$Elves->fetch($scsql))
{
	$select="";
	if($scr[classid]==$cid)
	{
		$select=" selected";
	}
	$scstr.="<option value='".$scr[classid]."'".$select.">".$scr[classname]."</option>";
}
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>碎片</title>
<link href="../adminstyle/<?=$loginadminstyleid?>/adminstyle.css" rel="stylesheet" type="text/css">
</head>

<body>
<table width="100%" border="0" cellspacing="1" cellpadding="3">
  <tr> 
    <td>位置: 
      <?=$url?>
      <div align="right"> </div></td>
  </tr>
</table>

<table width="100%" border="0" align="center" cellpadding="3" cellspacing="1">
<form name="searchform" method="GET" action="UpdateSp.php">
  <tr> 
      <td> 
        <select name="cid">
        <option value="0">所有分类</option>
        <?=$scstr?>
      </select>
        <select name="sptype" id="所有类型">
          <option value="0">所有类型</option>
		  <option value="1"<?=$sptype==1?' selected':''?>>静态信息碎片</option>
          <option value="2"<?=$sptype==2?' selected':''?>>动态信息碎片</option>
          <option value="3"<?=$sptype==3?' selected':''?>>代码碎片</option>
        </select>
        <span id="listplclassnav"></span>  
		&nbsp;<input type="submit" name="Submit" value="显示"></td>
  </tr>
</form>
</table>
<br>
<table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" class="tableborder">
  <tr class="header"> 
    <td width="21%" height="25"> <div align="center">碎片名称</div></td>
    <td width="19%"><div align="center">变量名</div></td>
    <td width="40%"> <div align="center">描述</div></td>
    <td width="20%" height="25"><div align="center">操作</div></td>
  </tr>
  <?
  while($r=$Elves->fetch($sql))
  {
	if($r[sptype]==1)
	{
		$sptype='静态信息';
		$dourl="ListSpInfo.php?spid=$r[spid]";
	}
	elseif($r[sptype]==2)
	{
		$sptype='动态信息';
		$dourl="ListSpInfo.php?spid=$r[spid]";
	}
	else
	{
		$sptype='代码碎片';
		$dourl="AddSpInfo.php?melve=EditSpInfo&spid=$r[spid]";
	}
	//链接
	$sphref='';
	if($r['refile'])
	{
		$sphref=' href="'.$public_r['newsurl'].$r['spfile'].'" target="_blank"';
	}
	$sppic='';
	if($r[sppic])
	{
		$sppic='<a href="'.$r[sppic].'" title="碎片效果图" target="_blank"><img src="../../data/images/showimg.gif" border=0 align="absmiddle"></a>';
	}
  ?>
  <tr bgcolor="#FFFFFF" onmouseout="this.style.backgroundColor='#ffffff'" onmouseover="this.style.backgroundColor='#C3EFFF'"> 
    <td height="32"><a<?=$sphref?> title="<?=$sptype?>"> 
      <?=$r[spname]?>
      </a> <?=$sppic?></td>
    <td><div align="center"> 
        <?=$r[varname]?>
      </div></td>
    <td> 
      <?=$r[spsay]?>
    </td>
    <td height="25"><div align="center">[<a href="<?=$dourl?>" target="_blank">更新碎片</a>]
	<?php
	if($r['refile'])
	{
	?>
	 [<a href="UpdateSp.php?melve=ReSp&spid[]=<?=$r[spid]?>">刷新碎片文件</a>]
	<?php
	}
	?>
	</div></td>
  </tr>
  <?
  }
  ?>
  <tr bgcolor="#FFFFFF"> 
    <td height="25" colspan="4">&nbsp; 
      <?=$returnpage?>
    </td>
  </tr>
</table>
<IFRAME frameBorder="0" id="showclassnav" name="showclassnav" scrolling="no" src="../ShowClassNav.php?elve=6&classid=<?=$classid?>" style="HEIGHT:0;VISIBILITY:inherit;WIDTH:0;Z-INDEX:1"></IFRAME>
</body>
</html>
<?
db_close();
$Elves=null;
?>