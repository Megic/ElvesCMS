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
CheckLevel($logininid,$loginin,$classid,"player");

//验证文件
function CheckPlayerFilename($filename){
	if(strstr($filename,"\\")||strstr($filename,"/")||strstr($filename,".."))
	{
		printerror("PlayerFileNotExist","history.go(-1)");
	}
	//文件是否存在
	if(!file_exists("../../DownSys/play/".$filename))
	{
		printerror("PlayerFileNotExist","history.go(-1)");
	}
}

//------------------增加播放器
function AddPlayer($add,$userid,$username){
	global $Elves,$dbtbpre;
	if(!$add[player]||!$add[filename])
	{
		printerror("EmptyPlayerName","history.go(-1)");
	}
	CheckPlayerFilename($add[filename]);
	$add['player']=hRepPostStr($add['player'],1);
	$add['bz']=hRepPostStr($add['bz'],1);
	$sql=$Elves->query("insert into {$dbtbpre}melveplayer(player,filename,bz) values('".$add['player']."','".eaddslashes($add[filename])."','".$add[bz]."');");
	$id=$Elves->lastid();
	if($sql)
	{
		//操作日志
		insert_dolog("id=$id<br>player=$add[player]");
		printerror("AddPlayerSuccess","player.php");
	}
	else
	{printerror("DbError","history.go(-1)");}
}

//----------------修改播放器
function EditPlayer($add,$userid,$username){
	global $Elves,$dbtbpre;
	$add[id]=(int)$add[id];
	if(!$add[player]||!$add[filename]||!$add[id])
	{
		printerror("EmptyPlayerName","history.go(-1)");
	}
	CheckPlayerFilename($add[filename]);
	$add['player']=hRepPostStr($add['player'],1);
	$add['bz']=hRepPostStr($add['bz'],1);
	$sql=$Elves->query("update {$dbtbpre}melveplayer set player='".$add['player']."',filename='".eaddslashes($add[filename])."',bz='".$add['bz']."' where id='$add[id]'");
	if($sql)
	{
		//操作日志
		insert_dolog("id=$add[id]<br>player=$add[player]");
		printerror("EditPlayerSuccess","player.php");
	}
	else
	{printerror("DbError","history.go(-1)");}
}

//---------------删除播放器
function DelPlayer($id,$userid,$username){
	global $Elves,$dbtbpre;
	$id=(int)$id;
	if(!$id)
	{
		printerror("NotDelPlayerID","history.go(-1)");
	}
	$r=$Elves->fetch1("select id,player from {$dbtbpre}melveplayer where id='$id'");
	if(!$r[id])
	{
		printerror("NotDelPlayerID","history.go(-1)");
	}
	$sql=$Elves->query("delete from {$dbtbpre}melveplayer where id='$id'");
	if($sql)
	{
		//操作日志
		insert_dolog("id=$id<br>player=$r[player]");
		printerror("DelPlayerSuccess","player.php");
	}
	else
	{printerror("DbError","history.go(-1)");}
}

$melve=$_POST['melve'];
if(empty($melve))
{$melve=$_GET['melve'];}
//增加播放器
if($melve=="AddPlayer")
{
	AddPlayer($_POST,$logininid,$loginin);
}
//修改播放器
elseif($melve=="EditPlayer")
{
	EditPlayer($_POST,$logininid,$loginin);
}
//删除播放器
elseif($melve=="DelPlayer")
{
	$id=$_GET['id'];
	DelPlayer($id,$logininid,$loginin);
}
$sql=$Elves->query("select id,player,filename,bz from {$dbtbpre}melveplayer order by id");
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>增加播放器</title>
<link href="../adminstyle/<?=$loginadminstyleid?>/adminstyle.css" rel="stylesheet" type="text/css">
</head>

<body>
<table width="100%" border="0" align="center" cellpadding="3" cellspacing="1">
  <tr>
    <td>位置：<a href="player.php">管理播放器</a></td>
  </tr>
</table>
<form name="addplayerform" method="post" action="player.php">
  <table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" class="tableborder">
    <tr class="header"> 
      <td height="25" colspan="4">增加播放器: <input type=hidden name=melve value=AddPlayer></td>
    </tr>
    <tr>
      <td width="14%" height="25" bgcolor="#FFFFFF">播放器名称</td>
      <td width="33%" bgcolor="#FFFFFF">文件名</td>
      <td width="13%" bgcolor="#FFFFFF">说明</td>
      <td width="40%" bgcolor="#FFFFFF">&nbsp;</td>
    </tr>
    <tr> 
      <td height="25" bgcolor="#FFFFFF"> 
        <input name="player" type="text" id="player" value="">
      </td>
      <td bgcolor="#FFFFFF">e/DownSys/play/ 
        <input name="filename" type="text" id="filename" value="">
        <a href="#elve" onclick="window.open('ChangePlayerFile.php?returnform=opener.document.addplayerform.filename.value','','width=400,height=500,scrollbars=yes');">[选择]</a></td>
      <td bgcolor="#FFFFFF"><input name="bz" type="text" id="bz"></td>
      <td bgcolor="#FFFFFF"><input type="submit" name="Submit" value="增加"></td>
    </tr>
  </table>
</form>
<table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" class="tableborder">
  <tr class="header">
    <td width="8%"> 
      <div align="center">ID</div></td>
    <td width="14%" height="25">播放器名称</td>
    <td width="33%">文件名</td>
    <td width="13%">说明</td>
    <td width="32%" height="25"> 操作</td>
  </tr>
  <?
  while($r=$Elves->fetch($sql))
  {
  ?>
  <form name="playerform<?=$r[id]?>" method=post action=player.php>
    <input type=hidden name=melve value=EditPlayer>
    <input type=hidden name=id value=<?=$r[id]?>>
    <tr bgcolor="#FFFFFF" onmouseout="this.style.backgroundColor='#ffffff'" onmouseover="this.style.backgroundColor='#C3EFFF'">
      <td><div align="center"><?=$r[id]?></div></td>
      <td height="25"> <input name="player" type="text" value="<?=$r[player]?>"> 
      </td>
      <td>e/DownSys/play/ 
        <input name="filename" type="text" value="<?=$r[filename]?>"> 
        <a href="#elve" onclick="window.open('ChangePlayerFile.php?returnform=opener.document.playerform<?=$r[id]?>.filename.value','','width=400,height=500,scrollbars=yes');">[选择]</a></td>
      <td><input name="bz" type="text" value="<?=$r[bz]?>"></td>
      <td height="25"> <div align="left"> 
          <input type="submit" name="Submit3" value="修改">
          &nbsp; 
          <input type="button" name="Submit4" value="删除" onclick="if(confirm('确认要删除?')){self.location.href='player.php?melve=DelPlayer&id=<?=$r[id]?>';}">
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
