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
CheckLevel($logininid,$loginin,$classid,"userpage");
$gid=(int)$_GET['gid'];
if(!$gid)
{
	$gid=GetDoTempGid();
}
$search="&gid=$gid";
$page=(int)$_GET['page'];
$page=RepPIntvar($page);
$start=0;
$line=25;//每页显示条数
$page_line=12;//每页显示链接数
$offset=$page*$line;//总偏移量
$query="select id,title,path,tempid from {$dbtbpre}melvepage";
$totalquery="select count(*) as total from {$dbtbpre}melvepage";
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
$query=$query." order by id desc limit $offset,$line";
$sql=$Elves->query($query);
$returnpage=page2($num,$line,$page_line,$start,$page,$search);
//分类
$cstr="";
$csql=$Elves->query("select classid,classname from {$dbtbpre}melvepageclass order by classid");
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
<title>管理自定义页面</title>
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
    <td width="20%" height="25">位置：<a href="ListPage.php">管理自定义页面</a></td>
    <td width="80%"><div align="right" class="emenubutton">
        <input type="button" name="Submit5" value="增加自定义页面" onclick="self.location.href='AddPage.php?melve=AddUserpage&gid=<?=$gid?>';">
        &nbsp;&nbsp; 
        <input type="button" name="Submit5" value="管理自定义页面分类" onclick="self.location.href='PageClass.php?gid=<?=$gid?>';">
        &nbsp;&nbsp; 
        <input type="button" name="Submit52" value="管理自定义页面模板" onclick="self.location.href='ListPagetemp.php?gid=<?=$gid?>';">
      </div></td>
  </tr>
</table>

<table width="100%" border="0" align="center" cellpadding="3" cellspacing="1">
  <tr> 
    <td> 选择类别： 
      <select name="classid" id="classid" onchange=window.location='ListPage.php?gid=<?=$gid?>&classid='+this.options[this.selectedIndex].value>
        <option value="0">显示所有类别</option>
        <?=$cstr?>
      </select> </td>
  </tr>
</table>
<br>
  
<table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" class="tableborder">
  <form name="form1" method="post" action="../elvecom.php">
    <tr class="header"> 
      <td width="4%"><div align="center"> 
          <input type=checkbox name=chkall value=on onclick=CheckAll(this.form)>
        </div></td>
      <td width="6%" height="25"> <div align="center">ID</div></td>
      <td width="57%" height="25"> <div align="center">页面名称</div></td>
      <td width="12%"><div align="center">页面模式</div></td>
      <td width="21%" height="25"> <div align="center">操作</div></td>
    </tr>
    <?
  while($r=$Elves->fetch($sql))
  {
  //绝对地址
  if(strstr($r['path'],".."))
  {
  $path="../".$r['path'];
  }
  else
  {
  $path=$r['path'];
  }
  ?>
    <tr bgcolor="#FFFFFF" onmouseout="this.style.backgroundColor='#ffffff'" onmouseover="this.style.backgroundColor='#C3EFFF'"> 
      <td><div align="center"> 
          <input name="id[]" type="checkbox" id="id[]" value="<?=$r[id]?>">
        </div></td>
      <td height="25"> <div align="center"> 
          <?=$r[id]?>
        </div></td>
      <td height="25"> <div align="center"><a href="<?=$path?>" target=_blank> 
          <?=$r[title]?>
          </a></div></td>
      <td><div align="center"><?=$r['tempid']?'模板式':'页面式'?></div></td>
      <td height="25"> <div align="center">[<a href="AddPage.php?melve=EditUserpage&id=<?=$r[id]?>&cid=<?=$classid?>&gid=<?=$gid?>">修改</a>]&nbsp;[<a href="AddPage.php?melve=AddUserpage&docopy=1&id=<?=$r[id]?>&cid=<?=$classid?>&gid=<?=$gid?>">复制</a>]&nbsp;[<a href="../elvecom.php?melve=DelUserpage&id=<?=$r[id]?>&cid=<?=$classid?>&gid=<?=$gid?>" onclick="return confirm('确认要删除？');">删除</a>]</div></td>
    </tr>
    <?
  }
  ?>
    <tr bgcolor="#FFFFFF"> 
      <td height="25" colspan="5"> 
        <?=$returnpage?>
        &nbsp;&nbsp;&nbsp; <input type="submit" name="Submit3" value="刷新"> <input name="melve" type="hidden" id="melve" value="DoReUserpage"> 
      </td>
    </tr>
  </form>
</table>
</body>
</html>
<?
db_close();
$Elves=null;
?>
