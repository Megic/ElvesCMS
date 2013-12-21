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
//参数
$returnform=$_GET['returnform'];
//基目录
$openpath="../../data/face";
$hand=@opendir($openpath);
db_close();
$Elves=null;
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>选择文件</title>
<link href="../adminstyle/<?=$loginadminstyleid?>/adminstyle.css" rel="stylesheet" type="text/css">
</head>

<body>
<table width="100%" border="0" align="center" cellpadding="3" cellspacing="1">
  <tr> 
    <td width="56%">位置：<a href="ChangePlfaceFile.php">选择文件</a></td>
    <td width="44%"><div align="right"> </div></td>
  </tr>
</table>
<form name="chfile" method="post" action="../melve.php">
  <table width="100%" border="0" align="center" cellpadding="3" cellspacing="1">
    <tr class="header"> 
      <td height="25">文件名 (当前目录：<strong>/core/data/face/</strong>)</td>
    </tr>
    <?php
	while($file=@readdir($hand))
	{
		$truefile=$file;
		if($file=="."||$file=="..")
		{
			continue;
		}
		//目录
		if(is_dir($openpath."/".$file))
		{
			continue;
		}
		$filetype=GetFiletype($file);
		if(!strstr($elve_config['sets']['tranpicturetype'],','.$filetype.','))
		{
			continue;
		}
	 ?>
    <tr> 
      <td width="88%" height="25"><a href="#elve" onclick="<?=$returnform?>='<?=$truefile?>';window.close();" title="选择"> 
        <img src="../../data/face/<?=$truefile?>" border=0>&nbsp;<?=$truefile?>
        </a></td>
    </tr>
    <?
	}
	@closedir($hand);
	?>
  </table>
</form>
</body>
</html>