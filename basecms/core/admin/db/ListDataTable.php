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
CheckLevel($logininid,$loginin,$classid,"table");
$tid=(int)$_GET['tid'];
$tbname=RepPostVar($_GET['tbname']);
if(!$tid||!$tbname)
{
	printerror("ErrorUrl","history.go(-1)");
}
$r=$Elves->fetch1("select tid,datatbs,deftb from {$dbtbpre}melvetable where tid='$tid'");
if(!$r[tid])
{
	printerror("ErrorUrl","history.go(-1)");
}
$tr=explode(',',$r[datatbs]);
$url="数据表:[".$dbtbpre."elve_".$tbname."]&nbsp;>&nbsp;<a href=ListDataTable.php?tid=$tid&tbname=$tbname>管理副表分表</a>";
$datatbname=$dbtbpre.'elve_'.$tbname.'_data_';
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>管理副表分表</title>
<link href="../adminstyle/<?=$loginadminstyleid?>/adminstyle.css" rel="stylesheet" type="text/css">
</head>

<body>
<table width="100%" border="0" align="center" cellpadding="3" cellspacing="1">
  <tr>
    <td>位置：<?=$url?></td>
  </tr>
</table>
<form name="adddatatableform" method="post" action="../elvemod.php" onsubmit="return confirm('确认要增加?');">
  <table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" class="tableborder">
    <tr class="header">
      <td>增加副表分表
        <input name="melve" type="hidden" id="melve" value="AddDataTable">
        <input name="tid" type="hidden" id="tid" value="<?=$tid?>"> <input name="tbname" type="hidden" id="tbname" value="<?=$tbname?>"></td>
    </tr>
    <tr> 
      <td bgcolor="#FFFFFF">
        <?=$datatbname?>
        <input name="datatb" type="text" id="datatb" value="0" size="6">
        <input type="submit" name="Submit" value="增加">
        <font color="#666666">(表名要用数字)</font></td>
    </tr>
  </table>
</form>
<table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" class="tableborder">
  <tr class="header"> 
    <td width="38%" height="25"><div align="center">表名</div></td>
    <td width="33%" height="25"><div align="center">记录数</div></td>
    <td width="29%" height="25"><div align="center">操作</div></td>
  </tr>
  <?php
  $count=count($tr)-1;
  $maxtb=0;
  for($i=1;$i<$count;$i++)
  {
  	$total_r=$Elves->fetch1("SHOW TABLE STATUS LIKE '".$datatbname.$tr[$i]."';");
	$bgcolor="#ffffff";
	$movejs=' onmouseout="this.style.backgroundColor=\'#ffffff\'" onmouseover="this.style.backgroundColor=\'#C3EFFF\'"';
	if($tr[$i]==$r['deftb'])
	{
		$bgcolor="#DBEAF5";
		$movejs='';
	}
	if($tr[$i]>$maxtb)
	{
		$maxtb=$tr[$i];
	}
	$dostr=$tr[$i]==1?"":"&nbsp;&nbsp;&nbsp;[<a href=\"../elvemod.php?tid=$tid&tbname=$tbname&melve=DelDataTable&datatb=".$tr[$i]."\" onclick=\"return confirm('确认要删除，删除会删除表里的所有信息?');\">删除</a>]";
  ?>
  <tr bgcolor="<?=$bgcolor?>"<?=$movejs?>> 
    <td height="25"> 
      <?=$datatbname?><b><?=$tr[$i]?></b>
    </td>
    <td height="25"><div align="center"> 
        <?=$total_r['Rows']?>
      </div></td>
    <td height="25"><div align="center">[<a href="../elvemod.php?tid=<?=$tid?>&tbname=<?=$tbname?>&melve=DefDataTable&datatb=<?=$tr[$i]?>" onclick="return confirm('确认要将这个表设为当前存放表?');">设为当前存放表</a>]<?=$dostr?></div></td>
  </tr>
  <?php
	}
	?>
</table>
<script>
document.adddatatableform.datatb.value="<?=$maxtb+1?>";
</script>
</body>
</html>
<?php
db_close();
$Elves=null;
?>