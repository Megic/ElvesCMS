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
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">

  <tr> 
    <td><table width="98%" border="0" align="center" cellpadding="3" cellspacing="1" class="tableborder">
        <tr class="header"> 
          <td height="25">我的状态</td>
        </tr>
        <tr> 
          <td height="25" bgcolor="#FFFFFF"> <table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr> 
                <td height="22">登录者:&nbsp;<b>
                  <?=$loginin?>
                  </b>&nbsp;&nbsp;,所属用户组:&nbsp;<b>
                  <?=$gr[groupname]?>
                  </b></td>
              </tr>
              <tr>
                <td height="22">这是您第 <b>
                  <?=$user_r[loginnum]?>
                  </b> 次登录，上次登录时间：
                  <?=$user_r[pretime]?date('Y-m-d H:i:s',$user_r[pretime]):'---'?>
                  ，登录IP：
                  <?=$user_r[preip]?$user_r[preip]:'---'?>
                </td>
              </tr>
            </table>
          </td>
        </tr>
      </table></td>
  </tr>
  <tr> 
    <td></td>
  </tr>
  <tr> 
    <td><table width="98%" border="0" align="center" cellpadding="3" cellspacing="1" class="tableborder">
        <tr class="header"> 
          <td width="100%" height="25"> 
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="50%"><strong><a href="#elve">快捷菜单</a></strong></td>
                <td></td>
              </tr>
            </table></td>
        </tr>
        <tr> 
          <td height="25" bgcolor="#FFFFFF"><strong>信息操作</strong>：&nbsp;&nbsp;<a href="AddInfoChClass.php">增加信息</a>&nbsp;&nbsp; 
            <a href="ListAllInfo.php">管理信息</a>&nbsp;&nbsp; <a href="ListAllInfo.php?elvecheck=1">审核信息</a> 
            &nbsp;&nbsp; <a href="workflow/ListWfInfo.php">签发信息</a>&nbsp;&nbsp; <a href="openpage/AdminPage.php?leftfile=<?=urlencode('../pl/PlNav.php')?>&mainfile=<?=urlencode('../pl/PlMain.php')?>&title=<?=urlencode('管理评论')?>">管理评论</a>&nbsp;&nbsp; <a href="sp/UpdateSp.php">更新碎片</a>&nbsp;&nbsp; 
            <a href="ReHtml/ChangeData.php">数据更新中心</a></td>
          &nbsp;&nbsp; </tr>
        <tr> 
          <td height="25" bgcolor="#FFFFFF"><strong>栏目操作</strong>：&nbsp;&nbsp;<a href="ListClass.php">管理栏目</a>&nbsp;&nbsp; 
            <a href="special/ListZt.php">管理专题</a>&nbsp;&nbsp; <a href="ListInfoClass.php">管理采集</a> 
            &nbsp;&nbsp; <a href="openpage/AdminPage.php?leftfile=<?=urlencode('../file/FileNav.php')?>&title=<?=urlencode('管理附件')?>">附件管理</a>&nbsp;&nbsp; 
            <a href="Setmelve.php">系统参数设置</a></td>
        </tr>
        <tr> 
          <td height="25" bgcolor="#FFFFFF"><strong>用户操作</strong>：&nbsp;&nbsp;<a href="member/ListMember.php?sear=1&schecked=1">审核会员</a>&nbsp;&nbsp; 
            <a href="member/ListMember.php">管理会员</a> &nbsp; <a href="user/ListLog.php">管理登陆日志</a> 
            &nbsp;&nbsp; <a href="user/ListDolog.php">管理操作日志</a>&nbsp;&nbsp; <a href="user/EditPassword.php">修改个人资料</a>&nbsp;&nbsp; 
            <a href="user/UserTotal.php">用户发布统计</a></td>
        </tr>
        <tr> 
          <td height="25" bgcolor="#FFFFFF"><strong>反馈管理</strong>：&nbsp;&nbsp;<a href="tool/gbook.php">管理留言</a>&nbsp;&nbsp; 
            <a href="tool/feedback.php">管理反馈信息</a>&nbsp;&nbsp;<a href="DownSys/ListError.php">管理错误报告</a>&nbsp;&nbsp; 
            <a href="#Elvescms" onclick="window.open('openpage/AdminPage.php?leftfile=<?=urlencode('../ShopSys/pageleft.php')?>&mainfile=<?=urlencode('../ShopSys/ListDd.php')?>&title=<?=urlencode('商城系统管理')?>','AdminShopSys','');">管理订单</a>&nbsp;&nbsp;<a href="pay/ListPayRecord.php">管理支付记录</a>&nbsp;&nbsp; 
            <a href="PathLevel.php">查看目录权限状态</a></td>
        </tr>
      </table></td>
  </tr>
 <tr>
    <td>&nbsp;</td>
  </tr>
  <tr> 
    <td><table width="98%" border="0" align="center" cellpadding="3" cellspacing="1" class="tableborder">
        <tr class="header"> 
          <td height="25" colspan="2"> <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr> 
                <td width="50%"><a href="#"><strong>系统信息</strong></a></td>
                <td></td>
              </tr>
            </table></td>
        </tr>
        <tr> 
          <td width="43%"><strong>网站信息</strong></td>
          <td width="57%"><strong>服务器信息</strong></td>
        </tr>
        <tr> 
          <td valign="top" bgcolor="#FFFFFF"><table width="100%" border="0" cellspacing="1" cellpadding="3">
              <tr> 
                <td width="28%" height="23">会员注册:</td>
                <td width="72%"> 
                  <?=$register_ok?>
                </td>
              </tr>
              <tr> 
                <td height="23">会员投稿:</td>
                <td> 
                  <?=$addnews_ok?>
                </td>
              </tr>
              <tr> 
                <td height="23">管理员个数:</td>
                <td><a href="user/ListUser.php"><?=$adminnum?></a> 人</td>
              </tr>
              <tr> 
                <td height="23">未审核评论:</td>
                <td><a href="openpage/AdminPage.php?leftfile=<?=urlencode('../pl/PlNav.php')?>&mainfile=<?=urlencode('../pl/ListAllPl.php?checked=2')?>&title=<?=urlencode('管理评论')?>"><?=$noplnum?></a> 条</td>
              </tr>
              <tr> 
                <td height="23">未审核会员:</td>
                <td><a href="member/ListMember.php?sear=1&schecked=1"><?=$nomembernum?></a> 人</td>
              </tr>
              <tr> 
                <td height="23">过期广告:</td>
                <td><a href="tool/ListAd.php?time=1"><?=$outtimeadnum?></a> 个</td>
              </tr>
              <tr> 
                <td height="23">登陆者IP:</td>
                <td><? echo egetip();?></td>
              </tr>
              <tr> 
                <td height="23">程序版本:</td>
                <td> <a href="http://www.webelves.org" target="_blank"><strong>ElvesCMS </strong></a></td>
              </tr>
              <tr>
                <td height="23">程序编码:</td>
                <td><?=ElvesCMS_CHARVER?></td>
              </tr>
            </table></td>
          <td valign="top" bgcolor="#FFFFFF"> <table width="100%" border="0" cellspacing="1" cellpadding="3">
              <tr> 
                <td width="25%" height="23">服务器软件:</td>
                <td width="75%"> 
                  <?=$_SERVER['SERVER_SOFTWARE']?>
                </td>
              </tr>
              <tr> 
                <td height="23">操作系统:</td>
                <td><? echo defined('PHP_OS')?PHP_OS:'未知';?></td>
              </tr>
              <tr> 
                <td height="23">PHP版本:</td>
                <td><? echo @phpversion();?></td>
              </tr>
              <tr> 
                <td height="23">MYSQL版本:</td>
                <td><? echo @mysql_get_server_info();?></td>
              </tr>
              <tr> 
                <td height="23">全局变量:</td>
                <td> 
                  <?=$onoff?>
                  <font color="#666666">(建议关闭)</font></td>
              </tr>
              <tr>
                <td height="23">魔术引用:</td>
                <td> 
                  <?=MAGIC_QUOTES_GPC?'开启':'关闭'?>
                  <font color="#666666">(建议开启)</font></td>
              </tr>
              <tr> 
                <td height="23">上传文件:</td>
                <td> 
                  <?=$upload?>
                  <font color="#666666">(最大文件：<?=$uploadsize?>，表单：<?=$uploadpostsize?>)</font> </td>
              </tr>
              <tr> 
                <td height="23">当前时间:</td>
                <td><? echo date("Y-m-d H:i:s");?></td>
              </tr>
              <tr> 
                <td height="23">使用域名:</td>
                <td> 
                  <?=$_SERVER['HTTP_HOST']?>
                </td>
              </tr>
            </table></td>
        </tr>
      </table></td>
  </tr>

  <tr>
    <td>&nbsp;</td>
  </tr>
</table>
</body>
</html>
<?php
db_close();
$Elves=null;
?>