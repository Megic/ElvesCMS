<?php
define('ElvesCMSAdmin','1');
require("../class/connect.php");
require("../class/db_sql.php");
require("../class/functions.php");
require("../member/class/user.php");
$link=db_connect();
$Elves=new mysqlquery();
//验证用户
$lur=is_login();
$logininid=(int)$lur['userid'];
$loginin=$lur['username'];
$loginrnd=$lur['rnd'];
$loginlevel=(int)$lur['groupid'];
$loginadminstyleid=$lur['adminstyleid'];
//我的状态
$user_r=$Elves->fetch1("select pretime,preip,loginnum from {$dbtbpre}melveuser where userid='$logininid'");
$gr=$Elves->fetch1("select groupname from {$dbtbpre}melvegroup where groupid='$loginlevel'");
//管理员统计
$adminnum=$Elves->gettotal("select count(*) as total from {$dbtbpre}melveuser");
$date=date("Y-m-d");
$noplnum=$Elves->gettotal("select count(*) as total from {$dbtbpre}melvepl_".$public_r['pldeftb']." where checked=1");
//未审核会员
$nomembernum=$Elves->gettotal("select count(*) as total from ".eReturnMemberTable()." where ".egetmf('checked')."=0");
//过期广告
$outtimeadnum=$Elves->gettotal("select count(*) as total from {$dbtbpre}melvead where endtime<'$date' and endtime<>'0000-00-00'");
//系统信息
	if(function_exists('ini_get')){
        $onoff = ini_get('register_globals');
    } else {
        $onoff = get_cfg_var('register_globals');
    }
    if($onoff){
        $onoff="打开";
    }else{
        $onoff="关闭";
    }
    if(function_exists('ini_get')){
        $upload = ini_get('file_uploads');
    } else {
        $upload = get_cfg_var('file_uploads');
    }
    if ($upload){
        $upload="可以";
    }else{
        $upload="不可以";
    }
	if(function_exists('ini_get')){
        $uploadsize = ini_get('upload_max_filesize');
    } else {
        $uploadsize = get_cfg_var('upload_max_filesize');
    }
	if(function_exists('ini_get')){
        $uploadpostsize = ini_get('post_max_size');
    } else {
        $uploadpostsize = get_cfg_var('post_max_size');
    }
//开启
$register_ok="开启";
if($public_r[register_ok])
{$register_ok="关闭";}
$addnews_ok="开启";
if($public_r[addnews_ok])
{$addnews_ok="关闭";}
//版本
@include("../class/ElvesCMS_version.php");
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Elves网站管理系统</title>
<link href="adminstyle/<?=$loginadminstyleid?>/adminstyle.css" rel="stylesheet" type="text/css">
</head>
<body>
<table width="100%" id="mainf" border="0" align="center" cellpadding="0" cellspacing="0">
<tr>
  <td width="350">
    <div class="cbox">
      <div class="info">
      <b class="ico">&#xe603;</b>
      <span>
        <b> <?=$loginin?></b>
        <p>所属用户组:&nbsp;<b>
                  <?=$gr[groupname]?>
                  </b></p>
      </span>
      </div>
      <p class="c-p">
        这是您第 <b>
                  <?=$user_r[loginnum]?>
                  </b> 次登录<br>登录IP：<?=$user_r[preip]?$user_r[preip]:'---'?>
                  <br>上次登录时间：
                  <?=$user_r[pretime]?date('Y-m-d H:i:s',$user_r[pretime]):'---'?>
      </p>
    </div>
  </td><td>
    <div class="cbox bg-b">
     <b class="title">网站信息</b>
     <table  width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
       <tr>
          <td width="28%" height="28">会员注册:</td>
                <td> 
                  <?=$register_ok?>
                </td> <td height="28" width="28%">会员投稿:</td>
                <td> 
                  <?=$addnews_ok?>
                </td>
       </tr>
        <tr> 
                <td height="28">管理员个数:</td>
                <td><a href="user/ListUser.php"><?=$adminnum?></a> 人</td>
                 <td height="28">未审核评论:</td>
                <td><a href="openpage/AdminPage.php?leftfile=<?=urlencode('../pl/PlNav.php')?>&mainfile=<?=urlencode('../pl/ListAllPl.php?checked=2')?>&title=<?=urlencode('管理评论')?>"><?=$noplnum?></a> 条</td>
              </tr>
               <tr> 
                <td height="28">未审核会员:</td>
                <td><a href="member/ListMember.php?sear=1&schecked=1"><?=$nomembernum?></a> 人</td>
                 <td height="28">过期广告:</td>
                <td><a href="tool/ListAd.php?time=1"><?=$outtimeadnum?></a> 个</td>
              </tr>
              <tr> 
                <td height="28">登陆者IP:</td>
                <td><? echo egetip();?></td>
                 <td height="28">程序版本:</td>
                <td> <a href="http://www.webelves.org" target="_blank"><strong>ElvesCMS </strong></a></td>
              </tr>
     </table>
    </div>
  </td>
</tr>
</table>
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
<tr>
  <td>
 <div class="cbox bg-last">
     <b class="title">服务器信息</b>
     <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
<tr> 
                <td width="28%" height="28">服务器软件:</td>
                <td> 
                  <?=$_SERVER['SERVER_SOFTWARE']?>
                </td>
                <td width="28%" height="28">操作系统:</td>
                <td><? echo defined('PHP_OS')?PHP_OS:'未知';?></td>
              </tr>
               <tr> 
                <td height="28">PHP版本:</td>
                <td><? echo @phpversion();?></td> <td height="28">MYSQL版本:</td>
                <td><? echo @mysql_get_server_info();?></td>
              </tr>
               <tr> 
                <td height="28">全局变量:</td>
                <td> 
                  <?=$onoff?>
                  <font color="#eee">(建议关闭)</font></td>
                     <td height="28">魔术引用:</td>
                <td> 
                  <?=MAGIC_QUOTES_GPC?'开启':'关闭'?>
                  <font color="#eee">(建议开启)</font></td>
              </tr>
               <tr> 
                <td height="28">上传文件:</td>
                <td> 
                  <?=$upload?>
                  <font color="#eee">(最大文件：<?=$uploadsize?>，表单：<?=$uploadpostsize?>)</font> </td>
                <td height="28">当前时间:</td>
                <td><? echo date("Y-m-d H:i:s");?></td>
              </tr>
              <tr> 
                <td height="28">使用域名:</td>
                <td colspan="3"> 
                  <?=$_SERVER['HTTP_HOST']?>
                </td>
              </tr>
     </table>
</div>
  </td>
</tr>
</table>

</body>
</html>
<?php
db_close();
$Elves=null;
?>