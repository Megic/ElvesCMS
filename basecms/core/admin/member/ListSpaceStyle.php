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
CheckLevel($logininid,$loginin,$classid,"spacestyle");

//返回会员组
function ReturnSpaceStyleMemberGroup($membergroup){
	$count=count($membergroup);
	if($count==0)
	{
		return '';
	}
	$mg='';
	for($i=0;$i<$count;$i++)
	{
		$mg.=$membergroup[$i].',';
	}
	if($mg)
	{
		$mg=','.$mg;
	}
	return $mg;
}

//增加会员空间模板
function AddSpaceStyle($add,$userid,$username){
	global $Elves,$dbtbpre;
	if(empty($add[stylename])||empty($add[stylepath]))
	{
		printerror('EmptySpaceStyle','history.go(-1)');
	}
	$add[stylepath]=RepPathStr($add[stylepath]);
	//目录是否存在
	if(!file_exists("../../space/template/".$add[stylepath]))
	{
		printerror("EmptySpaceStylePath","history.go(-1)");
	}
	$mg=ReturnSpaceStyleMemberGroup($add['membergroup']);
	$sql=$Elves->query("insert into {$dbtbpre}melvespacestyle(stylename,stylepic,stylesay,stylepath,isdefault,membergroup) values('$add[stylename]','$add[stylepic]','$add[stylesay]','$add[stylepath]',0,'$mg');");
	if($sql)
	{
		$styleid=$Elves->lastid();
		insert_dolog("styleid=$styleid&stylename=$add[stylename]");//操作日志
		printerror("AddSpaceStyleSuccess","AddSpaceStyle.php?melve=AddSpaceStyle");
	}
	else
	{
		printerror("DbError","history.go(-1)");
	}
}

//修改会员空间模板
function EditSpaceStyle($add,$userid,$username){
	global $Elves,$dbtbpre;
	$styleid=intval($add[styleid]);
	if(empty($add[stylename])||empty($add[stylepath])||!$styleid)
	{
		printerror('EmptySpaceStyle','history.go(-1)');
	}
	$add[stylepath]=RepPathStr($add[stylepath]);
	//目录是否存在
	if(!file_exists("../../space/template/".$add[stylepath]))
	{
		printerror("EmptySpaceStylePath","history.go(-1)");
	}
	$mg=ReturnSpaceStyleMemberGroup($add['membergroup']);
	$sql=$Elves->query("update {$dbtbpre}melvespacestyle set stylename='$add[stylename]',stylepic='$add[stylepic]',stylesay='$add[stylesay]',stylepath='$add[stylepath]',membergroup='$mg' where styleid='$styleid'");
	if($sql)
	{
		insert_dolog("styleid=$styleid&stylename=$add[stylename]");//操作日志
		printerror("EditSpaceStyleSuccess","ListSpaceStyle.php");
	}
	else
	{
		printerror("DbError","history.go(-1)");
	}
}

//删除会员空间模板
function DelSpaceStyle($add,$userid,$username){
	global $Elves,$dbtbpre;
	$styleid=intval($add[styleid]);
	if(!$styleid)
	{
		printerror('EmptySpaceStyleid','history.go(-1)');
	}
	$r=$Elves->fetch1("select stylename,isdefault from {$dbtbpre}melvespacestyle where styleid='$styleid'");
	if($r[isdefault])
	{
		printerror('NotDelDefSpaceStyle','history.go(-1)');
	}
	$sql=$Elves->query("delete from {$dbtbpre}melvespacestyle where styleid='$styleid'");
	if($sql)
	{
		insert_dolog("styleid=$styleid&stylename=$r[stylename]");//操作日志
		printerror("DelSpaceStyleSuccess","ListSpaceStyle.php");
	}
	else
	{
		printerror("DbError","history.go(-1)");
	}
}

//默认会员空间模板
function DefSpaceStyle($add,$userid,$username){
	global $Elves,$dbtbpre;
	$styleid=intval($add[styleid]);
	if(!$styleid)
	{
		printerror('EmptyDefSpaceStyleid','history.go(-1)');
	}
	$r=$Elves->fetch1("select stylename from {$dbtbpre}melvespacestyle where styleid='$styleid'");
	$usql=$Elves->query("update {$dbtbpre}melvespacestyle set isdefault=0");
	$sql=$Elves->query("update {$dbtbpre}melvespacestyle set isdefault=1 where styleid='$styleid'");
	$upsql=$Elves->query("update {$dbtbpre}melvepublic set defspacestyleid='$styleid'");
	if($sql)
	{
		GetConfig();
		insert_dolog("styleid=$styleid&stylename=$r[stylename]");//操作日志
		printerror("DefSpaceStyleSuccess","ListSpaceStyle.php");
	}
	else
	{
		printerror("DbError","history.go(-1)");
	}
}

$melve=$_POST['melve'];
if(empty($melve))
{$melve=$_GET['melve'];}
if($melve=="AddSpaceStyle")
{
	AddSpaceStyle($_POST,$logininid,$loginin);
}
elseif($melve=="EditSpaceStyle")
{
	EditSpaceStyle($_POST,$logininid,$loginin);
}
elseif($melve=="DelSpaceStyle")
{
	DelSpaceStyle($_GET,$logininid,$loginin);
}
elseif($melve=="DefSpaceStyle")
{
	DefSpaceStyle($_GET,$logininid,$loginin);
}
$page=(int)$_GET['page'];
$page=RepPIntvar($page);
$start=0;
$line=16;//每页显示条数
$page_line=25;//每页显示链接数
$offset=$page*$line;//总偏移量
$query="select * from {$dbtbpre}melvespacestyle";
$totalquery="select count(*) as total from {$dbtbpre}melvespacestyle";
$num=$Elves->gettotal($totalquery);//取得总条数
$query=$query." order by styleid desc limit $offset,$line";
$sql=$Elves->query($query);
$returnpage=page2($num,$line,$page_line,$start,$page,$search);
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="../adminstyle/<?=$loginadminstyleid?>/adminstyle.css" rel="stylesheet" type="text/css">
<title>会员空间模板</title>
</head>

<body>
<table width="100%" border="0" align="center" cellpadding="3" cellspacing="1">
  <tr> 
    <td width="50%" height="25">位置：<a href="ListSpaceStyle.php">管理会员空间模板</a></td>
    <td><div align="right" class="emenubutton">
        <input type="button" name="Submit5" value="增加会员空间模板" onclick="self.location.href='AddSpaceStyle.php?melve=AddSpaceStyle';">
      </div></td>
  </tr>
</table>

<br>
<table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" class="tableborder">
  <tr class="header"> 
    <td width="10%" height="25"> <div align="center">ID</div></td>
    <td width="56%" height="25"> <div align="center">模板名称</div></td>
    <td width="34%" height="25"> <div align="center">操作</div></td>
  </tr>
  <?php
  while($r=$Elves->fetch($sql))
  {
  	$color="#ffffff";
	$movejs=' onmouseout="this.style.backgroundColor=\'#ffffff\'" onmouseover="this.style.backgroundColor=\'#C3EFFF\'"';
  	if($r[isdefault])
	{
		$color="#DBEAF5";
		$movejs='';
	}
  ?>
  <tr bgcolor="<?=$color?>"<?=$movejs?>> 
    <td height="25"> <div align="center"> 
        <?=$r[styleid]?>
      </div></td>
    <td height="25"> <div align="center"> 
        <?=$r[stylename]?>
      </div></td>
    <td height="25"> <div align="center">[<a href="ListSpaceStyle.php?melve=DefSpaceStyle&styleid=<?=$r[styleid]?>">设为默认</a>] [<a href="AddSpaceStyle.php?melve=EditSpaceStyle&styleid=<?=$r[styleid]?>">修改</a>]&nbsp;[<a href="ListSpaceStyle.php?melve=DelSpaceStyle&styleid=<?=$r[styleid]?>" onclick="return confirm('确认要删除？');">删除</a>]</div></td>
  </tr>
  <?
  }
  ?>
  <tr bgcolor="#FFFFFF"> 
    <td height="25" colspan="3">&nbsp;&nbsp;&nbsp; 
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
