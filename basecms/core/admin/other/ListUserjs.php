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
CheckLevel($logininid,$loginin,$classid,"userjs");

//增加用户自定义js
function AddUserjs($add,$userid,$username){
	global $Elves,$dbtbpre;
	$cid=(int)$add['cid'];
	$jstempid=(int)$add['jstempid'];
	if(!$add[jsname]||!$jstempid||!$add[jssql]||!$add[jsfilename])
	{
		printerror("EmptyUserJsname","history.go(-1)");
	}
	$query_first=substr($add['jssql'],0,7);
	if(!($query_first=="select "||$query_first=="SELECT "))
	{
		printerror("JsSqlError","history.go(-1)");
	}
	//验证权限
	CheckLevel($userid,$username,$classid,"userjs");
	$add[jssql]=ClearAddsData($add[jssql]);
	$add[jsname]=hRepPostStr($add[jsname],1);
	$add['classid']=(int)$add['classid'];
	$sql=$Elves->query("insert into {$dbtbpre}melveuserjs(jsname,jssql,jstempid,jsfilename,classid) values('$add[jsname]','".addslashes($add[jssql])."',$jstempid,'$add[jsfilename]','$add[classid]');");
	//刷新js
	ReUserjs($add,"../");
	if($sql)
	{
		$jsid=$Elves->lastid();
		//操作日志
		insert_dolog("jsid=$jsid&jsname=$add[jsname]");
		printerror("AddUserjsSuccess","AddUserjs.php?melve=AddUserjs&classid=$cid");
	}
	else
	{
		printerror("DbError","history.go(-1)");
	}
}

//修改用户自定义js
function EditUserjs($add,$userid,$username){
	global $Elves,$dbtbpre;
	$cid=(int)$add['cid'];
	$jsid=(int)$add['jsid'];
	$jstempid=(int)$add['jstempid'];
	if(!$jsid||!$add[jsname]||!$jstempid||!$add[jssql]||!$add[jsfilename])
	{
		printerror("EmptyUserJsname","history.go(-1)");
	}
	$query_first=substr($add['jssql'],0,7);
	if(!($query_first=="select "||$query_first=="SELECT "))
	{
		printerror("JsSqlError","history.go(-1)");
	}
	//验证权限
	CheckLevel($userid,$username,$classid,"userjs");
	//删除旧js文件
	if($add['oldjsfilename']<>$add['jsfilename'])
	{
		DelFiletext($add['oldjsfilename']);
	}
	$add[jssql]=ClearAddsData($add[jssql]);
	$add[jsname]=hRepPostStr($add[jsname],1);
	$add['classid']=(int)$add['classid'];
	$sql=$Elves->query("update {$dbtbpre}melveuserjs set jsname='$add[jsname]',jssql='".addslashes($add[jssql])."',jstempid=$jstempid,jsfilename='$add[jsfilename]',classid='$add[classid]' where jsid=$jsid");
	//刷新js
	ReUserjs($add,"../");
	if($sql)
	{
		//操作日志
	    insert_dolog("jsid=$jsid&jsname=$add[jsname]");
		printerror("EditUserjsSuccess","ListUserjs.php?classid=$cid");
	}
	else
	{
		printerror("DbError","history.go(-1)");
	}
}

//删除用户自定义js
function DelUserjs($jsid,$userid,$username){
	global $Elves,$dbtbpre;
	$cid=(int)$add['cid'];
	$jsid=(int)$jsid;
	if(!$jsid)
	{
		printerror("NotChangeUserjsid","history.go(-1)");
	}
	//验证权限
	CheckLevel($userid,$username,$classid,"userjs");
	$r=$Elves->fetch1("select jsname,jsfilename from {$dbtbpre}melveuserjs where jsid=$jsid");
	$sql=$Elves->query("delete from {$dbtbpre}melveuserjs where jsid=$jsid");
	//删除文件
	DelFiletext("../".$r['jsfilename']);
	if($sql)
	{
		//操作日志
		insert_dolog("jsid=$jsid&jsname=$r[jsname]");
		printerror("DelUserjsSuccess","ListUserjs.php?classid=$cid");
	}
	else
	{
		printerror("DbError","history.go(-1)");
	}
}

//刷新自定义JS
function DoReUserjs($add,$userid,$username){
	global $Elves,$dbtbpre;
	//操作权限
	CheckLevel($userid,$username,$classid,"userjs");
	$jsid=$add['jsid'];
	$count=count($jsid);
	if(!$count)
	{
		printerror("EmptyReUserjsid","history.go(-1)");
    }
	for($i=0;$i<$count;$i++)
	{
		$jsid[$i]=(int)$jsid[$i];
		if(empty($jsid[$i]))
		{
			continue;
		}
		$ur=$Elves->fetch1("select jsid,jsname,jssql,jstempid,jsfilename from {$dbtbpre}melveuserjs where jsid='".$jsid[$i]."'");
		ReUserjs($ur,'../');
	}
	//操作日志
	insert_dolog("");
	printerror("DoReUserjsSuccess",$_SERVER['HTTP_REFERER']);
}

$melve=$_POST['melve'];
if(empty($melve))
{$melve=$_GET['melve'];}
if($melve)
{
	require("../../data/dbcache/class.php");
}
if($melve=="AddUserjs")
{
	AddUserjs($_POST,$logininid,$loginin);
}
elseif($melve=="EditUserjs")
{
	EditUserjs($_POST,$logininid,$loginin);
}
elseif($melve=="DelUserjs")
{
	$jsid=$_GET['jsid'];
	DelUserjs($jsid,$logininid,$loginin);
}
elseif($melve=="DoReUserjs")
{
	DoReUserjs($_POST,$logininid,$loginin);
}
else
{}
$page=(int)$_GET['page'];
$page=RepPIntvar($page);
$start=0;
$line=20;//每页显示条数
$page_line=20;//每页显示链接数
$offset=$page*$line;//总偏移量
$search='';
$query="select jsid,jsname,jsfilename from {$dbtbpre}melveuserjs";
$totalquery="select count(*) as total from {$dbtbpre}melveuserjs";
//类别
$add="";
$classid=(int)$_GET['classid'];
if($classid)
{
	$add=" where classid=$classid";
	$search.="&classid=$classid";
}
$query.=$add;
$totalquery.=$add;
$num=$Elves->gettotal($totalquery);//取得总条数
$query=$query." order by jsid desc limit $offset,$line";
$sql=$Elves->query($query);
$returnpage=page2($num,$line,$page_line,$start,$page,$search);
//分类
$cstr="";
$csql=$Elves->query("select classid,classname from {$dbtbpre}melveuserjsclass order by classid");
while($cr=$Elves->fetch($csql))
{
	$select="";
	if($cr[classid]==$classid)
	{
		$select=" selected";
	}
	$cstr.="<option value='".$cr[classid]."'".$select.">".$cr[classname]."</option>";
}
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="../adminstyle/<?=$loginadminstyleid?>/adminstyle.css" rel="stylesheet" type="text/css">
<title>管理用户自定义JS</title>
<script>
function CheckAll(form)
  {
  for (var i=0;i<form.elements.length;i++)
    {
    var e = form.elements[i];
    if (e.name != 'chkall')
       e.checked = form.chkall.checked;
    }
  }
</script>
</head>

<body>
<table width="100%" border="0" align="center" cellpadding="3" cellspacing="1">
  <tr> 
    <td width="50%" height="25">位置：<a href=ListUserjs.php>管理用户自定义JS</a></td>
    <td><div align="right" class="emenubutton">
        <input type="button" name="Submit" value="增加自定义JS" onclick="self.location.href='AddUserjs.php?melve=AddUserjs';">
		&nbsp;&nbsp;
        <input type="button" name="Submit5" value="管理自定义JS分类" onclick="self.location.href='UserjsClass.php';">
      </div></td>
  </tr>
</table>

<table width="100%" border="0" align="center" cellpadding="3" cellspacing="1">
  <tr>
    <td> 选择类别：
      <select name="classid" id="classid" onchange=window.location='ListUserjs.php?classid='+this.options[this.selectedIndex].value>
          <option value="0">显示所有类别</option>
          <?=$cstr?>
        </select>
    </td>
  </tr>
</table>
<br>
<table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" class="tableborder">
<form name="form1" method="post" action="ListUserjs.php">
  <tr class="header">
    <td width="5%"><div align="center">
        <input type=checkbox name=chkall value=on onclick=CheckAll(this.form)>
      </div></td>
    <td width="9%" height="25"> <div align="center">ID</div></td>
    <td width="32%" height="25"> <div align="center">JS名称</div></td>
    <td width="26%" height="25"> <div align="center">JS地址</div></td>
    <td width="10%"><div align="center">预览</div></td>
    <td width="18%" height="25"> <div align="center">操作</div></td>
  </tr>
  <?
  while($r=$Elves->fetch($sql))
  {
  $jspath=$public_r['newsurl'].str_replace("../../","",$r['jsfilename']);
  ?>
  <tr bgcolor="#FFFFFF" onmouseout="this.style.backgroundColor='#ffffff'" onmouseover="this.style.backgroundColor='#C3EFFF'">
    <td><div align="center">
        <input name="jsid[]" type="checkbox" id="jsid[]" value="<?=$r[jsid]?>">
      </div></td>
    <td height="25"> <div align="center"> 
        <?=$r[jsid]?>
      </div></td>
    <td height="25"> <div align="center"> 
        <?=$r[jsname]?>
      </div></td>
    <td height="25"> <div align="center"> 
        <input name="jspath" type="text" id="jspath" value="<?=$jspath?>">
      </div></td>
    <td><div align="center">[<a href="../view/js.php?js=<?=$jspath?>&classid=1" target="_blank">预览</a>]</div></td>
    <td height="25"> <div align="center">[<a href="AddUserjs.php?melve=EditUserjs&jsid=<?=$r[jsid]?>&cid=<?=$classid?>">修改</a>]&nbsp;[<a href="AddUserjs.php?melve=AddUserjs&docopy=1&jsid=<?=$r[jsid]?>&cid=<?=$classid?>">复制</a>]&nbsp;[<a href="ListUserjs.php?melve=DelUserjs&jsid=<?=$r[jsid]?>&cid=<?=$classid?>" onclick="return confirm('确认要删除？');">删除</a>]</div></td>
  </tr>
  <?
  }
  ?>
  <tr bgcolor="#FFFFFF"> 
    <td height="25" colspan="6"> 
      <?=$returnpage?>
      &nbsp;&nbsp;&nbsp; <input type="submit" name="Submit3" value="刷新"> <input name="melve" type="hidden" id="melve" value="DoReUserjs"> 
    </td>
  </tr>
  <tr bgcolor="#FFFFFF"> 
    <td height="25" colspan="6">JS调用方法： 
      <input name="textfield" type="text" size="60" value="&lt;script src=&quot;JS地址&quot;&gt;&lt;/script&gt;"></td>
  </tr>
  </form>
</table>
</body>
</html>
<?
db_close();
$Elves=null;
?>