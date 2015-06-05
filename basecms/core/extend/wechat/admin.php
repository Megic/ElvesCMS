<?php
define('ElvesCMSAdmin','1');
require("../../class/connect.php");
require("../../class/db_sql.php");
require("../../class/functions.php");
$link=db_connect();
$elves=new mysqlquery();
$editor=1;
//验证用户
$lur=is_login();
//ehash
$elve_hashur=hReturnElveHashStrAll();

if($_GET['type']=='del'){ //删除
  $id=$_GET['id'];
  $handle = fopen('./config/list.json','rb');
$content = '';
while (!feof($handle)){
    $content .= fread($handle, 10000);
}
fclose($handle);
$list=json_decode($content);
if(empty($list)){$list=array();}
if($list[$id]){ 
 unset($list[$id]);
 unlink('./config/'.$_GET['file'].'.php');
}
$handle2 = fopen('./config/list.json','w+');
fwrite ($handle2,json_encode($list));
fclose($handle2);
}

$handle = fopen('./config/list.json','rb');
$content = '';
while (!feof($handle)){
    $content .= fread($handle, 10000);
}
fclose($handle);
$list=json_decode($content);
//print_r(json_decode($content));
if(empty($list)){$list=array();}
db_close();                        //关闭MYSQL链接
$elves=null;                       //注消操作类变量
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>微信公共号</title>
<link href="../../admin/adminstyle/1/adminstyle.css" rel="stylesheet" type="text/css">
</head>
<body>
<table width="100%" border="0" cellspacing="1" cellpadding="3">
  <tr> 
    <td>位置: 微信公共号配置   <div align="right"> </div></td>
  </tr>
</table><br>
<div align="left" class="emenubutton"> 
                <input type=button name=button value="增加公共号" onClick="self.location.href='add.php<?=$elve_hashur['whehref']?>'">
              </div>
<br>
<table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" class="tableborder">
  <tr class="header"> 
    <td  width="120"height="25"> <div align="center">公共号名称</div></td>
    <td  height="25"><div align="center">绑定地址</div></td>
    <td  height="25"><div align="center">微信授权登录地址</div></td>
    <td  width="120" height="25"><div align="center">操作</div></td>
  </tr>
<?php
$num=0;

foreach ($list as $key=>$value) {?>
 <tr bgcolor="#FFFFFF" align="center"> <td><?php echo  $value->name;?></td>
 <td><?php echo  $public_r['newsurl'].'core/extend/wechat/main.php?config='.$value->file;?></td>
 <td><?php echo  $public_r['newsurl'].'core/extend/wechat/auth.php?type=getlogin&groupid=[会员组ID]&elvefrom=[返回地址]&config='.$value->file;?></td>
 <td><a href="add.php<?=$elve_hashur['whehref']?>&name=<?=$value->name?>&config=<?=$value->file?>">修改</a>&nbsp;|&nbsp;<a href="admin.php<?=$elve_hashur['whehref']?>&type=del&id=<?=$key?>&file=<?=$value->file?>">删除</a></td></tr>
<?php 
$num++;
}
?>
    <tr bgcolor="#FFFFFF"> 
    <td height="25" colspan="4">&nbsp; 
      <span class="epages"><a title="总数">&nbsp;<b><?php echo $num;?></b> </a>&nbsp;&nbsp;</span>    </td>
  </tr>
</table>
</body>
