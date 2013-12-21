<?php
define('ElvesCMSAdmin','1');
require("../../class/connect.php");
require("../../class/db_sql.php");
require("../../class/functions.php");
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
CheckLevel($logininid,$loginin,$classid,"ad");

//增加广告类别
function AddAdClass($add,$userid,$username){
	global $Elves,$dbtbpre;
	if(!$add[classname])
	{
		printerror("EmptyAdClassname","history.go(-1)");
    }
	//验证权限
	CheckLevel($userid,$username,$classid,"ad");
	$sql=$Elves->query("insert into {$dbtbpre}melveadclass(classname) values('$add[classname]');");
	$classid=$Elves->lastid();
	if($sql)
	{
		//操作日志
	    insert_dolog("classid=".$classid."<br>classname=".$add[classname]);
		printerror("AddAdClassSuccess","AdClass.php");
	}
	else
	{printerror("DbError","history.go(-1)");}
}

//修改广告类别
function EditAdClass($add,$userid,$username){
	global $Elves,$dbtbpre;
	$add[classid]=(int)$add[classid];
	if(!$add[classname]||!$add[classid])
	{printerror("EmptyAdClassname","history.go(-1)");}
	//验证权限
	CheckLevel($userid,$username,$classid,"ad");
	$sql=$Elves->query("update {$dbtbpre}melveadclass set classname='$add[classname]' where classid='$add[classid]'");
    if($sql)
	{
		//操作日志
		insert_dolog("classid=".$add[classid]."<br>classname=".$add[classname]);
		printerror("EditAdClassSuccess","AdClass.php");
	}
	else
	{printerror("DbError","history.go(-1)");}
}

//删除广告类别
function DelAdClass($classid,$userid,$username){
	global $Elves,$public_r,$dbtbpre;
	$classid=(int)$classid;
	if(!$classid)
	{printerror("NotChangeAdClassid","history.go(-1)");}
	//验证权限
	CheckLevel($userid,$username,$classid,"ad");
	$c=$Elves->fetch1("select classname from {$dbtbpre}melveadclass where classid='$classid'");
	$sql=$Elves->query("delete from {$dbtbpre}melveadclass where classid='$classid'");
	/*
	//删除广告内容
	$a=$Elves->query("select adid from {$dbtbpre}melvead where classid='$classid'");
	while($r=$Elves->fetch($a))
	{
		$file="../../../d/js/acmsd/".$public_r[adfile].$r[adid].".js";
		DelFiletext($file);
    }
	*/
	if($sql)
	{
		//操作日志
		insert_dolog("classid=".$classid."<br>classname=".$c[classname]);
		printerror("DelAdClassSuccess","AdClass.php");
	}
	else
	{
		printerror("DbError","history.go(-1)");
	}
}

$melve=$_POST['melve'];
if(empty($melve))
{$melve=$_GET['melve'];}
//增加广告类别
if($melve=="AddAdClass")
{
	$add=$_POST['add'];
	AddAdClass($add,$logininid,$loginin);
}
//修改广告类别
elseif($melve=="EditAdClass")
{
	$add=$_POST['add'];
	EditAdClass($add,$logininid,$loginin);
}
//删除广告类型
elseif($melve=="DelAdClass")
{
	$classid=$_GET['classid'];
	DelAdClass($classid,$logininid,$loginin);
}

$sql=$Elves->query("select classid,classname from {$dbtbpre}melveadclass order by classid desc");
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title></title>
<link href="../adminstyle/<?=$loginadminstyleid?>/adminstyle.css" rel="stylesheet" type="text/css">
</head>

<body>
<table width="100%" border="0" align="center" cellpadding="3" cellspacing="1">
  <tr>
    <td>位置：<a href="ListAd.php">管理广告</a> &gt; <a href="AdClass.php">管理广告类别</a></td>
  </tr>
</table>
<form name="form1" method="post" action="AdClass.php">
  <table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" class="tableborder">
    <tr class="header">
      <td height="25">增加广告类别:
        <input type=hidden name=melve value=AddAdClass>
        </td>
    </tr>
    <tr> 
      <td height="25" bgcolor="#FFFFFF"> 类别名称: 
        <input name="add[classname]" type="text" id="add[classname]">
        <input type="submit" name="Submit" value="增加">
        <input type="reset" name="Submit2" value="重置"></td>
    </tr>
  </table>
</form>
<table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" class="tableborder">
  <tr class="header">
    <td width="10%"><div align="center">ID</div></td>
    <td width="59%" height="25"><div align="center">类别名称</div></td>
    <td width="31%" height="25"><div align="center">操作</div></td>
  </tr>
  <?
  while($r=$Elves->fetch($sql))
  {
  ?>
  <form name=form2 method=post action=AdClass.php>
    <input type=hidden name=melve value=EditAdClass>
    <input type=hidden name=add[classid] value=<?=$r[classid]?>>
    <tr bgcolor="#FFFFFF" onmouseout="this.style.backgroundColor='#ffffff'" onmouseover="this.style.backgroundColor='#C3EFFF'">
      <td><div align="center"><?=$r[classid]?></div></td>
      <td height="25"> <div align="center">
          <input name="add[classname]" type="text" id="add[classname]" value="<?=$r[classname]?>">
        </div></td>
      <td height="25"><div align="center"> 
          <input type="submit" name="Submit3" value="修改">
          &nbsp; 
          <input type="button" name="Submit4" value="删除" onclick="self.location.href='AdClass.php?melve=DelAdClass&classid=<?=$r[classid]?>';">
        </div></td>
    </tr>
  </form>
  <?
  }
  db_close();
  $Elves=null;
  ?>
</table>
</body>
</html>
