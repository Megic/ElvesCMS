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
CheckLevel($logininid,$loginin,$classid,"workflow");

//返回用户组
function ReturnWfGroup($groupid){
	$count=count($groupid);
	if($count==0)
	{
		return '';
	}
	$ids=',';
	for($i=0;$i<$count;$i++)
	{
		$ids.=$groupid[$i].',';
	}
	return $ids;
}

//增加节点
function AddWorkflowItem($add,$userid,$username){
	global $Elves,$dbtbpre;
	$wfid=(int)$add['wfid'];
	$tno=(int)$add['tno'];
	$lztype=(int)$add['lztype'];
	$tbdo=(int)$add['tbdo'];
	$tddo=(int)$add['tddo'];
	if(!$wfid||!$tno)
	{
		printerror('EmptyWorkflowItem','history.go(-1)');
	}
	//验证权限
	CheckLevel($userid,$username,$classid,"workflow");
	$num=$Elves->gettotal("select count(*) as total from {$dbtbpre}melveworkflowitem where wfid='$wfid' and tno='$tno' limit 1");
	if($num)
	{
		printerror('HaveWorkflowItem','history.go(-1)');
	}
	$groupid=ReturnWfGroup($add[groupid]);
	$userclass=ReturnWfGroup($add[userclass]);
	$username=','.$add[username].',';
	if($groupid==''&&$userclass==''&&$add[username]=='')
	{
		printerror('EmptyWorkflowItemUser','history.go(-1)');
	}
	$sql=$Elves->query("insert into {$dbtbpre}melveworkflowitem(wfid,tname,tno,ttext,groupid,userclass,username,lztype,tbdo,tddo,tstatus) values('$wfid','$add[tname]','$tno','$add[ttext]','$groupid','$userclass','$username','$lztype','$tbdo','$tddo','$add[tstatus]');");
	$tid=$Elves->lastid();
	if($sql)
	{
		//操作日志
		insert_dolog("wfid=$wfid&tid=$tid<br>tname=".$add[tname]);
		printerror("AddWorkflowItemSuccess","AddWfItem.php?melve=AddWorkflowItem&wfid=$wfid");
	}
	else
	{printerror("DbError","history.go(-1)");}
}

//修改节点
function EditWorkflowItem($add,$userid,$username){
	global $Elves,$dbtbpre;
	$tid=(int)$add['tid'];
	$wfid=(int)$add['wfid'];
	$tno=(int)$add['tno'];
	$lztype=(int)$add['lztype'];
	$tbdo=(int)$add['tbdo'];
	$tddo=(int)$add['tddo'];
	if(!$tid||!$wfid||!$tno)
	{
		printerror('EmptyWorkflowItem','history.go(-1)');
	}
	//验证权限
	CheckLevel($userid,$username,$classid,"workflow");
	$num=$Elves->gettotal("select count(*) as total from {$dbtbpre}melveworkflowitem where wfid='$wfid' and tno='$tno' and tid<>$tid limit 1");
	if($num)
	{
		printerror('HaveWorkflowItem','history.go(-1)');
	}
	$groupid=ReturnWfGroup($add[groupid]);
	$userclass=ReturnWfGroup($add[userclass]);
	$username=','.$add[username].',';
	if($groupid==''&&$userclass==''&&$add[username]=='')
	{
		printerror('EmptyWorkflowItemUser','history.go(-1)');
	}
	$sql=$Elves->query("update {$dbtbpre}melveworkflowitem set tname='$add[tname]',tno='$tno',ttext='$add[ttext]',groupid='$groupid',userclass='$userclass',username='$username',lztype='$lztype',tbdo='$tbdo',tddo='$tddo',tstatus='$add[tstatus]' where tid='$tid'");
	if($sql)
	{
		//操作日志
		insert_dolog("wfid=$wfid&tid=$tid<br>tname=".$add[tname]);
		printerror("EditWorkflowItemSuccess","ListWfItem.php?wfid=$wfid");
	}
	else
	{printerror("DbError","history.go(-1)");}
}

//删除节点
function DelWorkflowItem($add,$userid,$username){
	global $Elves,$dbtbpre;
	$tid=(int)$add[tid];
	$wfid=(int)$add['wfid'];
	if(!$tid||!$wfid)
	{
		printerror("NotDelWorkflowItemid","history.go(-1)");
	}
	//验证权限
	CheckLevel($userid,$username,$classid,"workflow");
	$r=$Elves->fetch1("select tname from {$dbtbpre}melveworkflowitem where tid='$tid'");
	$sql=$Elves->query("delete from {$dbtbpre}melveworkflowitem where tid='$tid'");
	if($sql)
	{
		//操作日志
		insert_dolog("wfid=$wfid&tid=$tid<br>tname=".$r[tname]);
		printerror("DelWorkflowItemSuccess","ListWfItem.php?wfid=$wfid");
	}
	else
	{printerror("DbError","history.go(-1)");}
}

//修改节点编号
function EditWorkflowItemTno($add,$userid,$username){
	global $Elves,$dbtbpre;
	$wfid=(int)$add['wfid'];
	$tno=$add[tno];
	$tid=$add[tid];
	for($i=0;$i<count($tid);$i++)
	{
		$newtno=(int)$tno[$i];
		if(empty($newtno))
		{
			continue;
		}
		$newtid=(int)$tid[$i];
		$Elves->query("update {$dbtbpre}melveworkflowitem set tno='$newtno' where tid='$newtid'");
    }
	//操作日志
	insert_dolog("wfid=$wfid");
	printerror("EditWorkflowItemSuccess","ListWfItem.php?wfid=$wfid");
}

$melve=$_POST['melve'];
if(empty($melve))
{$melve=$_GET['melve'];}
if($melve=="AddWorkflowItem")//增加节点
{
	AddWorkflowItem($_POST,$logininid,$loginin);
}
elseif($melve=="EditWorkflowItem")//修改节点
{
	EditWorkflowItem($_POST,$logininid,$loginin);
}
elseif($melve=="DelWorkflowItem")//删除节点
{
	DelWorkflowItem($_GET,$logininid,$loginin);
}
elseif($melve=="EditWorkflowItemTno")//修改节点编号
{
	EditWorkflowItemTno($_POST,$logininid,$loginin);
}

$wfid=(int)$_GET['wfid'];
if(!$wfid)
{
	printerror('ErrorUrl','');
}
$wfr=$Elves->fetch1("select wfid,wfname from {$dbtbpre}melveworkflow where wfid='$wfid'");
if(!$wfr['wfid'])
{
	printerror('ErrorUrl','');
}
$query="select tid,tname,tno,lztype from {$dbtbpre}melveworkflowitem where wfid='$wfid' order by tno,tid";
$sql=$Elves->query($query);
$url="<a href=ListWf.php>管理工作流</a> &gt; ".$wfr[wfname]." &gt; <a href='ListWfItem.php?wfid=$wfid'>管理节点</a>";
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
        <input type="button" name="Submit5" value="增加节点" onclick="self.location.href='AddWfItem.php?melve=AddWorkflowItem&wfid=<?=$wfid?>';">
      </div></td>
  </tr>
</table>
<br>
  
<table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" class="tableborder">
  <form name="form1" method="post" action="ListWfItem.php">
    <tr class="header"> 
      <td width="10%"><div align="center">编号</div></td>
      <td width="44%" height="25"> <div align="center">节点名称</div></td>
      <td width="16%"><div align="center">流转方式</div></td>
      <td width="23%" height="25"><div align="center">操作</div></td>
    </tr>
    <?
  while($r=$Elves->fetch($sql))
  {
  ?>
    <tr bgcolor="#FFFFFF" onmouseout="this.style.backgroundColor='#ffffff'" onmouseover="this.style.backgroundColor='#C3EFFF'"> 
      <td><div align="center"> 
          <input name="tno[]" type="text" id="tno[]" value="<?=$r[tno]?>" size="5">
		<input type="hidden" name="tid[]" value="<?=$r[tid]?>">
        </div></td>
      <td height="25"> 
        <?=$r[tname]?>
      </td>
      <td><div align="center"> 
          <?=$r[lztype]==1?'会签':'普通流转'?>
        </div></td>
      <td height="25"><div align="center">[<a href="AddWfItem.php?melve=EditWorkflowItem&tid=<?=$r[tid]?>&wfid=<?=$wfid?>">修改</a>] 
          [<a href="AddWfItem.php?melve=AddWorkflowItem&tid=<?=$r[tid]?>&wfid=<?=$wfid?>&docopy=1">复制</a>] 
          [<a href="ListWfItem.php?melve=DelWorkflowItem&tid=<?=$r[tid]?>&wfid=<?=$wfid?>" onclick="return confirm('确认要删除?');">删除</a>]</div></td>
    </tr>
    <?
  }
  ?>
    <tr bgcolor="#FFFFFF"> 
      <td height="25" colspan="4"> <input type="submit" name="Submit" value="修改编号"> 
        <input name="melve" type="hidden" id="melve" value="EditWorkflowItemTno">
        <input name="wfid" type="hidden" id="wfid" value="<?=$wfid?>"> </td>
    </tr>
  </form>
</table>
</body>
</html>
<?
db_close();
$Elves=null;
?>
