<?php
if(!defined('InElvesCMS'))
{
  exit();
}
?>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>信息提示</title>
 <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" /> 

<?php
if(!$noautourl)
{
?>
<SCRIPT language=javascript>
var secs=3;//3秒
for(i=1;i<=secs;i++) 
{ window.setTimeout("update(" + i + ")", i * 1000);} 
function update(num) 
{ 
if(num == secs) 
{ <?=$gotourl_js?>; } 
else 
{ } 
}
</SCRIPT>
<?
}
?>
</head>

<body>
  <style> table{margin-top: 200px;}table td{background-color: #ffcc66;font-family: '微软雅黑';} td{border: 10px solid #ffcc66;} .tips{background-color: #cc9966;color: #fff;line-height: 20px;text-align: center;} .tips p{font-size: 12px;padding: 0px;margin: 0px;} b{font-size: 14px;color: #333;} a{color: #996633;font-size: 12px;} 
.tableborder{width: 500px}
@media screen and (max-width: 650px) {
.tableborder{width: 100%;max-width: 500px}
}
  </style>

<table width="500" height="100" border="0" align="center" cellpadding="0" cellspacing="0" class="tableborder">
  <tr> 
    <td width="100px" class="tips">信息提示 <p>Message</p></td> 
    <td height="80">
<p><b><?=$error?></b></p>
<a href="<?=$gotourl?>">如果您的浏览器没有自动跳转，请点击这里</a>
</td>
  </tr>
</table>
</body>
</html>