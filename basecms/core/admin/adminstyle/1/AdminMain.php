<?php
if(!defined('InElvesCMS'))
{
	exit();
}
$r=ReturnLeftLevel($loginlevel);
//菜单显示
$showfastmenu=$Elves->gettotal("select count(*) as total from {$dbtbpre}melvemenuclass where classtype=1 limit 1");//常用菜单
$showextmenu=$Elves->gettotal("select count(*) as total from {$dbtbpre}melvemenuclass where classtype=3 limit 1");//扩展菜单
$showshopmenu=stristr($public_r['closehmenu'],',shop,')?0:1;
//图片识别
if(stristr($_SERVER['HTTP_USER_AGENT'],'MSIE 6.0'))
{
	$menufiletype='.gif';
}
else
{
	$menufiletype='.png';
}
?>
<HTML>
<HEAD>
<META http-equiv=Content-Type content="text/html; charset=utf-8">
<TITLE>Elves网站管理系统 － 最安全、最稳定的开源CMS系统</TITLE>
<LINK href="adminstyle/1/adminmain.css" rel=stylesheet>
<STYLE>
.flyoutLink A {
	COLOR: black; TEXT-DECORATION: none
}
.flyoutLink A:hover {
	COLOR: black; TEXT-DECORATION: none
}
.flyoutLink A:visited {
	COLOR: black; TEXT-DECORATION: none
}
.flyoutLink A:active {
	COLOR: black; TEXT-DECORATION: none
}
.flyoutMenu {
	BACKGROUND-COLOR: #C9F1FF
}
.flyoutMenu TD.flyoutLink {
	BORDER-RIGHT: #C9F1FF 1px solid; BORDER-TOP: #C9F1FF 1px solid; BORDER-LEFT: #C9F1FF 1px solid; CURSOR: hand; PADDING-TOP: 1px; BORDER-BOTTOM: #C9F1FF 1px solid
}
.flyoutMenu1 {
	BACKGROUND-COLOR: #fbf9f9
}
.flyoutMenu1 TD.flyoutLink1 {
	BORDER-RIGHT: #fbf9f9 1px solid; BORDER-TOP: #fbf9f9 1px solid; BORDER-LEFT: #fbf9f9 1px solid; CURSOR: hand; PADDING-TOP: 1px; BORDER-BOTTOM: #fbf9f9 1px solid
}
</STYLE>
<SCRIPT>
function switchSysBar(){
	if(switchPoint.innerText==3)
	{
		switchPoint.innerText=4
		document.all("frmTitle").style.display="none"
	}
	else
	{
		switchPoint.innerText=3
		document.all("frmTitle").style.display=""
	}
} 
</SCRIPT>
</HEAD>
<BODY bgColor="#C9F1FF" leftMargin=0 topMargin=0>
<TABLE width="100%" height="100%" border=0 cellpadding="0" cellSpacing=0>
<tr>
<td height="60">

  <TABLE width="100%" height="60" border=0 cellpadding="0" cellSpacing=0 style="background-color: #6699cc;">
  <form name="menuform" id="menuform">
    <TBODY>
	<input type="hidden" name="onclickmenu" value="">
      <TR> 
            <TD width="180"><div align="center"><a href="main.php" target="main" title="Elves网站管理系统"><img src="adminstyle/1/images/logo.png" border="0"></a></div></TD>
<td>
  <div id="menu">
    <span id="m-list"><a href="main.php" class="on" target="main"><b class="ico">&#xe600;</b><p>后台首页</p></a>
      <a href="adminstyle/1/left.php?elve=system" target="left"><b class="ico">&#xe605;</b><p>系统</p></a>
        <a href="Listmelve.php" target="left"><b class="ico">&#xe601;</b><p>信息</p></a>
          <a href="adminstyle/1/left.php?elve=classdata" target="left"><b class="ico">&#xe604;</b><p>栏目</p></a>
          <a href="adminstyle/1/left.php?elve=template" target="left"><b class="ico">&#xe609;</b><p>模板</p></a>
           <a href="adminstyle/1/left.php?elve=usercp" target="left"><b class="ico">&#xe603;</b><p>用户</p></a> 
            <a href="adminstyle/1/left.php?elve=tool" target="left"><b class="ico">&#xe606;</b><p>插件</p></a> 
             <a href="openpage/AdminPage.php?leftfile=<?=urlencode('../ShopSys/pageleft.php')?>&mainfile=<?=urlencode('../other/OtherMain.php')?>&title=<?=urlencode('商城系统管理')?>"target="main" style="CURSOR: hand;<?=$showshopmenu?'':'display:none'?>"><b class="ico">&#xe602;</b><p>商城</p></a> 
             <a href="adminstyle/1/left.php?elve=other" target="left"   ><b class="ico">&#xe608;</b><p>其他</p></a> 
             <a href="adminstyle/1/left.php?elve=extend" target="left"   style="CURSOR:hand;<?=$showextmenu?'':'display:none'?>"><b class="ico">&#xe60e;</b><p>扩展</p></a> 
               <a href="adminstyle/1/left.php?elve=fastmenu" target="left" style="CURSOR:hand;<?=$showfastmenu?'':'display:none'?>"><b class="ico">&#xe60f;</b><p>常用菜单</p></a>
              <a href="ReHtml/ChangeData.php" target="main"><b class="ico">&#xe60a;</b><p>刷新</p></a> 
             </span>
             <a href="../../" target="_blank" ><b class="ico">&#xe60b;</b><p>站点首页</p></a>
             <a href="#e" onclick="if(confirm('确认要退出?')){window.location.href='elveadmin.php?melve=exit';}"><b class="ico">&#xe607;</b><p>退出</p></a> 
  </div>
  <script>
var m=document.getElementById("m-list");  
var mList=m.getElementsByTagName('a');
for (var i =0;i<mList.length;i++) {
mList[i].onclick=function(){
   for (var j =0;j<mList.length;j++) {mList[j].className='';}
this.className='on';
}
};
  </script>
</td>	
  
      </TR>
    </TBODY>
	</form>
  </TABLE>

</td></tr>

<tr><td height="100%" bgcolor="#ffffff">

  <TABLE width="100%" height="100%" cellpadding="0" cellSpacing=0 border=0 borderColor="#ff0000">
  <TBODY>
    <TR> 
      <TD width="123" valign="top" bgcolor="#C9F1FF">
		<IFRAME frameBorder="0" id="dorepage" name="dorepage" scrolling="no" src="DoTimeRepage.php" style="HEIGHT:0;VISIBILITY:inherit;WIDTH:0;Z-INDEX:1"></IFRAME>
      </TD>
      <TD noWrap id="frmTitle">
		<IFRAME frameBorder="0" id="left" name="left" scrolling="auto" src="Listmelve.php" style="HEIGHT:100%;VISIBILITY:inherit;WIDTH:200px;Z-INDEX:2"></IFRAME>
      </TD>
      <TD>
		<TABLE border=0 cellPadding=0 cellSpacing=0 height="100%" bgcolor="#f8f8f8" style="border-left: 1px solid #eee;">
          <TBODY>
            <tr> 
              <TD onclick="switchSysBar()" style="HEIGHT:100%;"> <font style="COLOR:666666;CURSOR:hand;FONT-FAMILY:Webdings;FONT-SIZE:9pt;"> 
                <SPAN id="switchPoint" title="打开/关闭左边导航栏">3</SPAN></font> 
          </TBODY>
        </TABLE>
      </TD>
      <TD width="100%">
		<TABLE height="100%" cellSpacing=0 cellPadding=0 width="100%" align="right" border=0>
          <TBODY>
            <TR> 
              <TD align=right>
				<IFRAME id="main" name="main" style="WIDTH: 100%; HEIGHT: 100%" src="main.php" frameBorder=0></IFRAME>
              </TD>
            </TR>
          </TBODY>
        </TABLE>
      </TD>
    </TR>
  </TBODY>
  </TABLE>

</td></tr>
</TABLE>

</BODY>
</HTML>