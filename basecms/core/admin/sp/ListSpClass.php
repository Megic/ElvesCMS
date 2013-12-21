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
//验证权限
CheckLevel($logininid,$loginin,$classid,"sp");

//增加碎片分类
function AddSpClass($add,$userid,$username){
	global $Elves,$dbtbpre;
	if(!$add[classname])
	{
		printerror("EmptySpClassname","history.go(-1)");
	}
	//验证权限
	CheckLevel($userid,$username,$classid,"sp");
	$sql=$Elves->query("insert into {$dbtbpre}melvespclass(classname,classsay) values('$add[classname]','$add[classsay]');");
	$classid=$Elves->lastid();
	if($sql)
	{
		//操作日志
		insert_dolog("classid=".$classid."<br>classname=".$add[classname]);
		printerror("AddSpClassSuccess","AddSpClass.php?melve=AddSpClass");
	}
	else
	{printerror("DbError","history.go(-1)");}
}

//修改碎片分类
function EditSpClass($add,$userid,$username){
	global $Elves,$dbtbpre;
	$classid=(int)$add[classid];
	if(!$classid||!$add[classname])
	{
		printerror("EmptySpClassname","history.go(-1)");
	}
	//验证权限
	CheckLevel($userid,$username,$classid,"sp");
	$sql=$Elves->query("update {$dbtbpre}melvespclass set classname='$add[classname]',classsay='$add[classsay]' where classid='$classid'");
	if($sql)
	{
		//操作日志
		insert_dolog("classid=".$classid."<br>classname=".$add[classname]);
		printerror("EditSpClassSuccess","ListSpClass.php");
	}
	else
	{printerror("DbError","history.go(-1)");}
}

//删除碎片分类
function DelSpClass($classid,$userid,$username){
	global $Elves,$dbtbpre;
	$classid=(int)$classid;
	if(!$classid)
	{
		printerror("NotDelSpClassid","history.go(-1)");
	}
	//验证权限
	CheckLevel($userid,$username,$classid,"sp");
	$r=$Elves->fetch1("select classname from {$dbtbpre}melvespclass where classid='$classid'");
	$sql=$Elves->query("delete from {$dbtbpre}melvespclass where classid='$classid'");
	if($sql)
	{
		//操作日志
		insert_dolog("classid=".$classid."<br>classname=".$r[classname]);
		printerror("DelSpClassSuccess","ListSpClass.php");
	}
	else
	{printerror("DbError","history.go(-1)");}
}

$melve=$_POST['melve'];
if(empty($melve))
{$melve=$_GET['melve'];}
if($melve=="AddSpClass")//增加碎片分类
{
	AddSpClass($_POST,$logininid,$loginin);
}
elseif($melve=="EditSpClass")//修改碎片分类
{
	EditSpClass($_POST,$logininid,$loginin);
}
elseif($melve=="DelSpClass")//删除碎片分类
{
	$classid=$_GET['classid'];
	DelSpClass($classid,$logininid,$loginin);
}

$page=(int)$_GET['page'];
$page=RepPIntvar($page);
$start=0;
$line=30;//每页显示条数
$page_line=12;//每页显示链接数
$offset=$page*$line;//总偏移量
$query="select classid,classname from {$dbtbpre}melvespclass";
$totalquery="select count(*) as total from {$dbtbpre}melvespclass";
$num=$Elves->gettotal($totalquery);//取得总条数
$query=$query." order by classid desc limit $offset,$line";
$sql=$Elves->query($query);
$returnpage=page2($num,$line,$page_line,$start,$page,$search);
$url="<a href=ListSp.php>管理碎片</a>&nbsp;>&nbsp;<a href=ListSpClass.php>管理碎片分类</a>";
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>碎片分类</title>
<link href="../adminstyle/<?=$loginadminstyleid?>/adminstyle.css" rel="stylesheet" type="text/css">
</head>

<body>
<table width="100%" border="0" cellspacing="1" cellpadding="3">
  <tr> 
    <td width="50%">位置: 
      <?=$url?>
    </td>
    <td><div align="right" class="emenubutton">
        <input type="button" name="Submit5" value="增加碎片分类" onclick="self.location.href='AddSpClass.php?melve=AddSpClass';">
      </div></td>
  </tr>
</table>
<br>
<table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" class="tableborder">
  <tr class="header"> 
    <td width="9%" height="25"><div align="center">ID</div></td>
    <td width="70%" height="25"><div align="center">分类名称</div></td>
    <td width="21%" height="25"><div align="center">操作</div></td>
  </tr>
  <?
  while($r=$Elves->fetch($sql))
  {
  ?>
  <tr bgcolor="#FFFFFF" onmouseout="this.style.backgroundColor='#ffffff'" onmouseover="this.style.backgroundColor='#C3EFFF'"> 
    <td height="25"><div align="center"> 
        <?=$r[classid]?>
      </div></td>
    <td height="25" align="center"> 
      <a href="ListSp.php?cid=<?=$r[classid]?>" target="_blank"><?=$r[classname]?></a>
    </td>
    <td height="25"><div align="center">[<a href="AddSpClass.php?melve=EditSpClass&classid=<?=$r[classid]?>">修改</a>] 
        [<a href="ListSpClass.php?melve=DelSpClass&classid=<?=$r[classid]?>" onclick="return confirm('确认要删除?');">删除</a>]</div></td>
  </tr>
  <?
  }
  ?>
  <tr bgcolor="#FFFFFF"> 
    <td height="25" colspan="3">&nbsp; 
      <?=$returnpage?>
    </td>
  </tr>
</table>
</body>
</html>
<?
db_close();
$Elves=null;
?>
