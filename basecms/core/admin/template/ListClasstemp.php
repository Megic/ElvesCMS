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
CheckLevel($logininid,$loginin,$classid,"template");

//增加封面模板
function AddClasstemp($add,$userid,$username){
	global $Elves,$dbtbpre;
	if(!$add[tempname]||!$add[temptext])
	{
		printerror("EmptyClasstempname","history.go(-1)");
    }
	//验证权限
	CheckLevel($userid,$username,$classid,"template");
	$classid=(int)$add['classid'];
	$gid=(int)$add['gid'];
	$add[tempname]=hRepPostStr($add[tempname],1);
	$add[temptext]=RepPhpAspJspcode($add[temptext]);
	$sql=$Elves->query("insert into ".GetDoTemptb("melveclasstemp",$gid)."(tempname,temptext,classid) values('$add[tempname]','".eaddslashes2($add[temptext])."',$classid);");
	$tempid=$Elves->lastid();
	//备份模板
	AddEBakTemp('classtemp',$gid,$tempid,$add[tempname],$add[temptext],0,0,'',0,0,'',0,$classid,0,$userid,$username);
	if($sql)
	{
		//操作日志
		insert_dolog("tempid=$tempid&tempname=$add[tempname]&gid=$gid");
		printerror("AddClasstempSuccess","AddClasstemp.php?melve=AddClasstemp&gid=$gid");
	}
	else
	{
		printerror("DbError","history.go(-1)");
	}
}

//修改封面模板
function EditClasstemp($add,$userid,$username){
	global $Elves,$dbtbpre,$public_r;
	$tempid=(int)$add['tempid'];
	if(!$tempid||!$add[tempname]||!$add[temptext])
	{
		printerror("EmptyClasstempname","history.go(-1)");
    }
	//验证权限
	CheckLevel($userid,$username,$classid,"template");
	$classid=(int)$add['classid'];
	$gid=(int)$add['gid'];
	$add[tempname]=hRepPostStr($add[tempname],1);
	$add[temptext]=RepPhpAspJspcode($add[temptext]);
	$sql=$Elves->query("update ".GetDoTemptb("melveclasstemp",$gid)." set tempname='$add[tempname]',temptext='".eaddslashes2($add[temptext])."',classid=$classid where tempid=$tempid");
	//备份模板
	AddEBakTemp('classtemp',$gid,$tempid,$add[tempname],$add[temptext],0,0,'',0,0,'',0,$classid,0,$userid,$username);
	if($gid==$public_r['deftempid']||(!$public_r['deftempid']&&($gid==1||$gid==0)))
	{
		//删除动态模板缓存文件
		DelOneTempTmpfile('classtemp'.$tempid);
	}
	if($sql)
	{
		//操作日志
		insert_dolog("tempid=$tempid&tempname=$add[tempname]&gid=$gid");
		printerror("EditClasstempSuccess","ListClasstemp.php?classid=$add[cid]&gid=$gid");
	}
	else
	{
		printerror("DbError","history.go(-1)");
	}
}

//删除封面模板
function DelClasstemp($add,$userid,$username){
	global $Elves,$dbtbpre,$public_r;
	$tempid=(int)$add['tempid'];
	if(!$tempid)
	{
		printerror("EmptyClasstempid","history.go(-1)");
    }
	//验证权限
	CheckLevel($userid,$username,$classid,"template");
	$gid=(int)$add['gid'];
	$r=$Elves->fetch1("select tempname from ".GetDoTemptb("melveclasstemp",$gid)." where tempid=$tempid");
	$sql=$Elves->query("delete from ".GetDoTemptb("melveclasstemp",$gid)." where tempid=$tempid");
	//删除备份记录
	DelEbakTempAll('classtemp',$gid,$tempid);
	if($gid==$public_r['deftempid']||(!$public_r['deftempid']&&($gid==1||$gid==0)))
	{
		//删除动态模板缓存文件
		DelOneTempTmpfile('classtemp'.$tempid);
	}
	if($sql)
	{
		//操作日志
		insert_dolog("tempid=$tempid&tempname=$r[tempname]&gid=$gid");
		printerror("DelClasstempSuccess","ListClasstemp.php?classid=$add[cid]&gid=$gid");
	}
	else
	{
		printerror("DbError","history.go(-1)");
	}
}

//操作
$melve=$_POST['melve'];
if(empty($melve))
{$melve=$_GET['melve'];}
if($melve)
{
	include("../../class/tempfun.php");
}
//增加模板
if($melve=="AddClasstemp")
{
	AddClasstemp($_POST,$logininid,$loginin);
}
//修改模板
elseif($melve=="EditClasstemp")
{
	EditClasstemp($_POST,$logininid,$loginin);
}
//删除模板
elseif($melve=="DelClasstemp")
{
	DelClasstemp($_GET,$logininid,$loginin);
}
else
{}
$gid=(int)$_GET['gid'];
$gname=CheckTempGroup($gid);
$urlgname=$gname."&nbsp;>&nbsp;";
$url=$urlgname."<a href=ListClasstemp.php?gid=$gid>管理封面模板</a>";
$search="&gid=$gid";
$page=(int)$_GET['page'];
$page=RepPIntvar($page);
$start=0;
$line=25;//每页显示条数
$page_line=12;//每页显示链接数
$offset=$page*$line;//总偏移量
$query="select tempid,tempname from ".GetDoTemptb("melveclasstemp",$gid);
$totalquery="select count(*) as total from ".GetDoTemptb("melveclasstemp",$gid);
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
$query=$query." order by tempid desc limit $offset,$line";
$sql=$Elves->query($query);
$returnpage=page2($num,$line,$page_line,$start,$page,$search);
//分类
$cstr="";
$csql=$Elves->query("select classid,classname from {$dbtbpre}melveclasstempclass order by classid");
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
<title>管理封面模板</title>
<link href="../adminstyle/<?=$loginadminstyleid?>/adminstyle.css" rel="stylesheet" type="text/css">
</head>

<body>
<table width="100%" border="0" align="center" cellpadding="3" cellspacing="1">
  <tr> 
    <td width="50%">位置： 
      <?=$url?>
    </td>
    <td><div align="right" class="emenubutton">
        <input type="button" name="Submit5" value="增加封面模板" onclick="self.location.href='AddClasstemp.php?melve=AddClasstemp&gid=<?=$gid?>';">
		&nbsp;&nbsp;
		<input type="button" name="Submit5" value="管理封面模板分类" onclick="self.location.href='ClassTempClass.php?gid=<?=$gid?>';">
      </div></td>
  </tr>
</table>
<table width="100%" border="0" align="center" cellpadding="3" cellspacing="1">
  <form name="form1" method="get" action="ListClasstemp.php">
  <input type=hidden name=gid value="<?=$gid?>">
    <tr> 
      <td height="25">限制显示： 
        <select name="classid" id="classid" onchange="document.form1.submit()">
          <option value="0">显示所有分类</option>
		  <?=$cstr?>
        </select>
      </td>
    </tr>
	</form>
  </table>
<br>
<table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" class="tableborder">
  <tr class="header"> 
    <td width="10%" height="25"><div align="center">ID</div></td>
    <td width="61%" height="25"><div align="center">模板名</div></td>
    <td width="29%" height="25"><div align="center">操作</div></td>
  </tr>
  <?php
  while($r=$Elves->fetch($sql))
  {
  ?>
  <tr bgcolor="#ffffff" onmouseout="this.style.backgroundColor='#ffffff'" onmouseover="this.style.backgroundColor='#C3EFFF'"> 
    <td height="25"><div align="center"> 
        <?=$r[tempid]?>
      </div></td>
    <td height="25"><div align="center"> 
        <?=$r[tempname]?>
      </div></td>
    <td height="25"><div align="center"> [<a href="AddClasstemp.php?melve=EditClasstemp&tempid=<?=$r[tempid]?>&cid=<?=$classid?>&gid=<?=$gid?>">修改</a>] 
        [<a href="AddClasstemp.php?melve=AddClasstemp&docopy=1&tempid=<?=$r[tempid]?>&cid=<?=$classid?>&gid=<?=$gid?>">复制</a>] 
        [<a href="ListClasstemp.php?melve=DelClasstemp&tempid=<?=$r[tempid]?>&cid=<?=$classid?>&gid=<?=$gid?>" onclick="return confirm('确认要删除？');">删除</a>]</div></td>
  </tr>
  <?
  }
  ?>
  <tr bgcolor="ffffff"> 
    <td height="25" colspan="3">&nbsp; 
      <?=$returnpage?>
    </td>
  </tr>
</table>
</body>
</html>
<?php
db_close();
$Elves=null;
?>
