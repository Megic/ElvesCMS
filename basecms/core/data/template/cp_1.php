<?php
if(!defined('InElvesCMS'))
{
	exit();
}
?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><?=defined('Elvescms')?$public_diyr[pagetitle]:'用户控制面板'?> - Powered by ElvesCMS</title>
<meta name="keywords" content="<?=defined('Elvescms')?$public_diyr[pagetitle]:'用户控制面板'?>" />
<meta name="description" content="<?=defined('Elvescms')?$public_diyr[pagetitle]:'用户控制面板'?>" />
<link href="http://localhost/mask/skin/default/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="http://localhost/mask/skin/default/js/tabs.js"></script>
</head>
<body class="listpage">
<!-- 页头 -->
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="top">
<tr>
<td><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td width="63%">
<!-- 登录 -->
<script>
document.write('<script src="http://localhost/mask/core/member/login/loginjs.php?t='+Math.random()+'"><'+'/script>');
</script>
</td>
<td align="right">
<a onclick="window.external.addFavorite(location.href,document.title)" href="#elve">加入收藏</a> | <a onclick="this.style.behavior='url(#default#homepage)';this.setHomePage('http://localhost/mask/')" href="#elve">设为首页</a> | <a href="http://localhost/mask/core/member/cp/">会员中心</a> | <a href="http://localhost/mask/core/DoInfo/">我要投稿</a> | <a href="http://localhost/mask/core/web/?type=rss2" target="_blank">RSS<img src="http://localhost/mask/skin/default/images/rss.gif" border="0" hspace="2" /></a>
</td>
</tr>
</table></td>
</tr>
</table>
<table width="100%" border="0" cellpadding="0" cellspacing="10">
<tr valign="middle">
<td width="240" align="center"><a href="http://localhost/mask/"><img src="http://localhost/mask/skin/default/images/logo.gif" width="200" height="65" border="0" /></a></td>
<td align="center"><a href="http://www.webelves.org/OpenSource/" target="_blank"><img src="http://localhost/mask/skin/default/images/opensource.gif" width="100%" height="70" border="0" /></a></td>
</tr>
</table>
<!-- 导航tab选项卡 -->
<table width="920" border="0" align="center" cellpadding="0" cellspacing="0" class="nav">
  <tr> 
    <td class="nav_global"><ul>
        <li class="curr" id="tabnav_btn_0" onmouseover="tabit(this)"><a href="http://localhost/mask/">首页</a></li>
        <li id="tabnav_btn_1" onmouseover="tabit(this)"><a href="http://localhost/mask/news/">新闻中心</a></li>
        <li id="tabnav_btn_2" onmouseover="tabit(this)"><a href="http://localhost/mask/download/">下载中心</a></li>
        <li id="tabnav_btn_3" onmouseover="tabit(this)"><a href="http://localhost/mask/movie/">影视频道</a></li>
        <li id="tabnav_btn_4" onmouseover="tabit(this)"><a href="http://localhost/mask/shop/">网上商城</a></li>
        <li id="tabnav_btn_5" onmouseover="tabit(this)"><a href="http://localhost/mask/flash/">FLASH频道</a></li>
        <li id="tabnav_btn_6" onmouseover="tabit(this)"><a href="http://localhost/mask/photo/">图片频道</a></li>
        <li id="tabnav_btn_7" onmouseover="tabit(this)"><a href="http://localhost/mask/article/">文章中心</a></li>
        <li id="tabnav_btn_8" onmouseover="tabit(this)"><a href="http://localhost/mask/info/">分类信息</a></li>
      </ul></td>
  </tr>
</table> 
<table width="100%" border="0" cellspacing="10" cellpadding="0">
<tr valign="top">
<td class="list_content"><table width="100%" border="0" cellspacing="0" cellpadding="0" class="position">
<tr>
<td>现在的位置：<?=$url?>
</td>
</tr>
</table>
      <table width="100%" border="0" cellspacing="0" cellpadding="0" class="box">
        <tr> 
          <td width="300" valign="top"> 
		  <?php
		  $lguserid=intval(getcvar('mluserid'));//登陆用户ID
		  $lgusername=RepPostVar(getcvar('mlusername'));//登陆用户
		  $lggroupid=intval(getcvar('mlgroupid'));//会员组ID
		  if($lggroupid)	//登陆会员显示菜单
		  {
		  ?>
            <table width="100%" border="0" cellpadding="3" cellspacing="1" class="tableborder">
              <tr class="header"> 
                <td height="20" bgcolor="#FFFFFF"> <div align="center"><strong><a href="http://localhost/mask/core/member/cp/">功能菜单</a></strong></div></td>
              </tr>
              <tr> 
                <td height="25" bgcolor="#FFFFFF" onmouseout="this.style.backgroundColor='#ffffff'" onmouseover="this.style.backgroundColor='#EBF3FC'"><div align="center"><a href="http://localhost/mask/core/member/EditInfo/">修改资料</a></div></td>
              </tr>
              <tr> 
                <td height="25" bgcolor="#FFFFFF" onmouseout="this.style.backgroundColor='#ffffff'" onmouseover="this.style.backgroundColor='#EBF3FC'"><div align="center"><a href="http://localhost/mask/core/member/my/">帐号状态</a></div></td>
              </tr>
              <tr> 
                <td height="25" bgcolor="#FFFFFF" onmouseout="this.style.backgroundColor='#ffffff'" onmouseover="this.style.backgroundColor='#EBF3FC'"><div align="center"><a href="http://localhost/mask/core/member/msg/">站内信息</a></div></td>
              </tr>
              <tr> 
                <td height="25" bgcolor="#FFFFFF" onmouseout="this.style.backgroundColor='#ffffff'" onmouseover="this.style.backgroundColor='#EBF3FC'"><div align="center"><a href="http://localhost/mask/core/member/mspace/SetSpace.php">空间设置</a></div></td>
              </tr>
              <tr> 
                <td height="25" bgcolor="#FFFFFF" onmouseout="this.style.backgroundColor='#ffffff'" onmouseover="this.style.backgroundColor='#EBF3FC'"><div align="center"><a href="http://localhost/mask/core/DoInfo/">管理信息</a></div></td>
              </tr>
              <tr> 
                <td height="25" bgcolor="#FFFFFF" onmouseout="this.style.backgroundColor='#ffffff'" onmouseover="this.style.backgroundColor='#EBF3FC'"><div align="center"><a href="http://localhost/mask/core/member/fava/">收藏夹</a></div></td>
              </tr>
              <tr> 
                <td height="25" bgcolor="#FFFFFF" onmouseout="this.style.backgroundColor='#ffffff'" onmouseover="this.style.backgroundColor='#EBF3FC'"><div align="center"><a href="http://localhost/mask/core/payapi/">在线支付</a></div></td>
              </tr>
              <tr> 
                <td height="25" bgcolor="#FFFFFF" onmouseout="this.style.backgroundColor='#ffffff'" onmouseover="this.style.backgroundColor='#EBF3FC'"><div align="center"><a href="http://localhost/mask/core/member/friend/">我的好友</a></div></td>
              </tr>
              <tr> 
                <td height="25" bgcolor="#FFFFFF" onmouseout="this.style.backgroundColor='#ffffff'" onmouseover="this.style.backgroundColor='#EBF3FC'"><div align="center"><a href="http://localhost/mask/core/member/buybak/">消费记录</a></div></td>
              </tr>
              <tr> 
                <td height="25" bgcolor="#FFFFFF" onmouseout="this.style.backgroundColor='#ffffff'" onmouseover="this.style.backgroundColor='#EBF3FC'"><div align="center"><a href="http://localhost/mask/core/member/buygroup/">在线充值</a></div></td>
              </tr>
              <tr> 
                <td height="25" bgcolor="#FFFFFF" onmouseout="this.style.backgroundColor='#ffffff'" onmouseover="this.style.backgroundColor='#EBF3FC'"><div align="center"><a href="http://localhost/mask/core/member/card/">点卡充值</a></div></td>
              </tr>
              <tr> 
                <td height="25" bgcolor="#FFFFFF" onmouseout="this.style.backgroundColor='#ffffff'" onmouseover="this.style.backgroundColor='#EBF3FC'"><div align="center"><a href="#elve" onclick="window.open('http://localhost/mask/core/ShopSys/buycar/','','width=680,height=500,scrollbars=yes,resizable=yes');">我的购物车</a></div></td>
              </tr>
              <tr> 
                <td height="25" bgcolor="#FFFFFF" onmouseout="this.style.backgroundColor='#ffffff'" onmouseover="this.style.backgroundColor='#EBF3FC'"><div align="center"><a href="http://localhost/mask/core/ShopSys/ListDd/">我的订单</a></div></td>
              </tr>
			  <tr> 
                <td height="25" bgcolor="#FFFFFF" onmouseout="this.style.backgroundColor='#ffffff'" onmouseover="this.style.backgroundColor='#EBF3FC'"><div align="center"><a href="http://localhost/mask/core/member/login/">重新登陆</a></div></td>
              </tr>
              <tr> 
                <td height="25" bgcolor="#FFFFFF" onmouseout="this.style.backgroundColor='#ffffff'" onmouseover="this.style.backgroundColor='#EBF3FC'"><div align="center"><a href="http://localhost/mask/core/member/doaction.php?melve=exit" onclick="return confirm('确认要退出?');">退出登陆</a></div></td>
              </tr>
            </table>
			<?php
			}
			else	//游客显示菜单
			{
			?>  
            <table width="100%" border="0" cellpadding="3" cellspacing="1" class="tableborder">
              <tr class="header"> 
                <td height="20" bgcolor="#FFFFFF"> <div align="center"><strong><a href="http://localhost/mask/core/member/cp/">功能菜单</a></strong></div></td>
              </tr>
              <tr> 
                <td height="25" bgcolor="#FFFFFF" onmouseout="this.style.backgroundColor='#ffffff'" onmouseover="this.style.backgroundColor='#EBF3FC'"><div align="center"><a href="http://localhost/mask/core/member/login/">会员登陆</a></div></td>
              </tr>
              <tr> 
                <td height="25" bgcolor="#FFFFFF" onmouseout="this.style.backgroundColor='#ffffff'" onmouseover="this.style.backgroundColor='#EBF3FC'"><div align="center"><a href="http://localhost/mask/core/member/register/">注册帐号</a></div></td>
              </tr>
              <tr> 
                <td height="25" bgcolor="#FFFFFF" onmouseout="this.style.backgroundColor='#ffffff'" onmouseover="this.style.backgroundColor='#EBF3FC'"><div align="center"><a href="http://localhost/mask/core/DoInfo/">发布投稿</a></div></td>
              </tr>
              <tr> 
                <td height="25" bgcolor="#FFFFFF" onmouseout="this.style.backgroundColor='#ffffff'" onmouseover="this.style.backgroundColor='#EBF3FC'"><div align="center"><a href="#elve" onclick="window.open('http://localhost/mask/core/ShopSys/buycar/','','width=680,height=500,scrollbars=yes,resizable=yes');">我的购物车</a></div></td>
              </tr>
            </table>
			<?php
			}
			?>
			</td>
          <td width="85%" valign="top">