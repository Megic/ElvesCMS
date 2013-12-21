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
CheckLevel($logininid,$loginin,$classid,"workflow");

//增加工作流
function AddWorkflow($add,$userid,$username){
	global $Elves,$dbtbpre;
	if(!$add[wfname])
	{
		printerror('EmptyWorkflow','history.go(-1)');
	}
	//验证权限
	CheckLevel($userid,$username,$classid,"workflow");
	$add[myorder]=(int)$add[myorder];
	$addtime=time();
	$sql=$Elves->query("insert into {$dbtbpre}melveworkflow(wfname,wftext,myorder,addtime,adduser) values('$add[wfname]','$add[wftext]','$add[myorder]','$addtime','$username');");
	$wfid=$Elves->lastid();
	if($sql)
	{
		//操作日志
		insert_dolog("wfid=".$wfid."<br>wfname=".$add[wfname]);
		printerror("AddWorkflowSuccess","AddWf.php?melve=AddWorkflow");
	}
	else
	{printerror("DbError","history.go(-1)");}
}

//修改工作流
function EditWorkflow($add,$userid,$username){
	global $Elves,$dbtbpre;
	$wfid=(int)$add[wfid];
	if(!$wfid||!$add[wfname])
	{
		printerror('EmptyWorkflow','history.go(-1)');
	}
	//验证权限
	CheckLevel($userid,$username,$classid,"workflow");
	$add[myorder]=(int)$add[myorder];
	$sql=$Elves->query("update {$dbtbpre}melveworkflow set wfname='$add[wfname]',wftext='$add[wftext]',myorder='$add[myorder]' where wfid='$wfid'");
	if($sql)
	{
		//操作日志
		insert_dolog("wfid=".$wfid."<br>wfname=".$add[wfname]);
		printerror("EditWorkflowSuccess","ListWf.php");
	}
	else
	{printerror("DbError","history.go(-1)");}
}

//删除工作流
function DelWorkflow($add,$userid,$username){
	global $Elves,$dbtbpre;
	$wfid=(int)$add[wfid];
	if(!$wfid)
	{
		printerror('NotDelWorkflowid','history.go(-1)');
	}
	//验证权限
	CheckLevel($userid,$username,$classid,"workflow");
	$r=$Elves->fetch1("select wfname from {$dbtbpre}melveworkflow where wfid='$wfid'");
	$sql=$Elves->query("delete from {$dbtbpre}melveworkflow where wfid='$wfid'");
	$sql2=$Elves->query("delete from {$dbtbpre}melveworkflowitem where wfid='$wfid'");
	if($sql&&$sql2)
	{
		//操作日志
		insert_dolog("wfid=".$wfid."<br>wfname=".$r[wfname]);
		printerror("DelWorkflowSuccess","ListWf.php");
	}
	else
	{printerror("DbError","history.go(-1)");}
}

$melve=$_POST['melve'];
if(empty($melve))
{$melve=$_GET['melve'];}
if($melve=="AddWorkflow")//增加工作流
{
	AddWorkflow($_POST,$logininid,$loginin);
}
elseif($melve=="EditWorkflow")//修改工作流
{
	EditWorkflow($_POST,$logininid,$loginin);
}
elseif($melve=="DelWorkflow")//删除工作流
{
	DelWorkflow($_GET,$logininid,$loginin);
}

$page=(int)$_GET['page'];
$page=RepPIntvar($page);
$start=0;
$line=25;//每页显示条数
$page_line=12;//每页显示链接数
$offset=$page*$line;//总偏移量
$query="select wfid,wfname,addtime,adduser from {$dbtbpre}melveworkflow";
$totalquery="select count(*) as total from {$dbtbpre}melveworkflow";
$num=$Elves->gettotal($totalquery);//取得总条数
$query=$query." order by myorder,wfid desc limit $offset,$line";
$sql=$Elves->query($query);
$returnpage=page2($num,$line,$page_line,$start,$page,$search);
$url="<a href=ListWf.php>管理工作流</a>";
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>工作流</title>
<link href="../adminstyle/<?=$loginadminstyleid?>/adminstyle.css" rel="stylesheet" type="text/css">
</head>

<body>
<table width="100%" border="0" cellspacing="1" cellpadding="3">
  <tr> 
    <td width="50%">位置: 
      <?=$url?>
    </td>
    <td><div align="right" class="emenubutton">
        <input type="button" name="Submit5" value="增加工作流" onclick="self.location.href='AddWf.php?melve=AddWorkflow';">
      </div></td>
  </tr>
</table>
<br>
<table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" class="tableborder">
  <tr class="header"> 
    <td width="5%" height="25"><div align="center">ID</div></td>
    <td width="36%" height="25"> <div align="center">工作流名称</div></td>
    <td width="14%"><div align="center">增加者</div></td>
    <td width="19%"> <div align="center">增加时间</div></td>
    <td width="13%"><div align="center">流程节点</div></td>
    <td width="13%" height="25"><div align="center">操作</div></td>
  </tr>
  <?
  while($r=$Elves->fetch($sql))
  {
  ?>
  <tr bgcolor="#FFFFFF" onmouseout="this.style.backgroundColor='#ffffff'" onmouseover="this.style.backgroundColor='#C3EFFF'"> 
    <td height="25"><div align="center"> 
        <?=$r[wfid]?>
      </div></td>
    <td height="25"> 
      <?=$r[wfname]?>
      </td>
    <td><div align="center">
        <?=$r[adduser]?>
      </div></td>
    <td><div align="center">
        <?=date('Y-m-d H:i:s',$r[addtime])?>
        </div></td>
    <td> <div align="center"><a href="ListWfItem.php?wfid=<?=$r[wfid]?>">管理节点</a></div>
      <div align="center"></div></td>
    <td height="25"><div align="center">[<a href="AddWf.php?melve=EditWorkflow&wfid=<?=$r[wfid]?>">修改</a>] 
        [<a href="ListWf.php?melve=DelWorkflow&wfid=<?=$r[wfid]?>" onclick="return confirm('确认要删除?');">删除</a>]</div></td>
  </tr>
  <?
  }
  ?>
  <tr bgcolor="#FFFFFF"> 
    <td height="25" colspan="6">&nbsp; 
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
