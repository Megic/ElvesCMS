<?php
define('ElvesCMSAdmin','1');
require("../class/connect.php");
require("../class/db_sql.php");
require("../class/functions.php");
require LoadLang("pub/fun.php");
require("../class/t_functions.php");
require("../data/dbcache/class.php");
require("../data/dbcache/MemberLevel.php");
$link=db_connect();
$Elves=new mysqlquery();
$melve=$_POST['melve'];
if(empty($melve))
{
	$melve=$_GET['melve'];
}
//验证用户
$lur=is_login();
$logininid=$lur['userid'];
$loginin=$lur['username'];
$loginrnd=$lur['rnd'];
$loginlevel=$lur['groupid'];
$loginadminstyleid=$lur['adminstyleid'];
$incftp=0;
if($public_r['phpmode'])
{
	include("../class/ftp.php");
	$incftp=1;
}
//防采集
if($public_r['opennotcj'])
{
	@include("../data/dbcache/notcj.php");
}
require("../class/tempfun.php");
if($melve=="EditGbooktemp")//修改留言板模板
{
	$temptext=$_POST[temptext];
	EditGbooktemp($temptext,$logininid,$loginin);
}
elseif($melve=="EditCptemp")//修改控制面板模板
{
	$temptext=$_POST[temptext];
	EditCptemp($temptext,$logininid,$loginin);
}
elseif($melve=="EditLoginIframe")//修改登陆状态模板
{
	$temptext=$_POST[temptext];
	EditLoginIframe($temptext,$logininid,$loginin);
}
elseif($melve=="EditLoginJstemp")//修改JS调用登陆状态模板
{
	$temptext=$_POST[temptext];
	EditLoginJstemp($temptext,$logininid,$loginin);
}
elseif($melve=="EditSchallTemp")//修改全站搜索模板
{
	$temptext=$_POST[temptext];
	EditSchallTemp($temptext,$_POST['schallsubnum'],$_POST['schalldate'],$logininid,$loginin);
}
elseif($melve=="AddBq")//增加标签
{
	$add=$_POST['add'];
	$bqsay=$_POST['bqsay'];
	AddBq($add,$bqsay,$logininid,$loginin);
}
elseif($melve=="EditBq")//修改标签
{
	$add=$_POST['add'];
	$bqsay=$_POST['bqsay'];
	EditBq($add,$bqsay,$logininid,$loginin);
}
elseif($melve=="DelBq")//删除标签
{
	$bqid=$_GET['bqid'];
	$cid=$_GET['cid'];
	DelBq($bqid,$cid,$logininid,$loginin);
}
elseif($melve=="EditSearchTemp")//修改搜索表单模板
{
	$tempname=$_POST['tempname'];
	$temptext=$_POST['temptext'];
	EditSearchTemp($tempname,$temptext,$logininid,$loginin);
}
elseif($melve=="EditOtherLinkTemp")//修改相关链接模板
{
	$tempname=$_POST['tempname'];
	$temptext=$_POST['temptext'];
	EditOtherLinkTemp($tempname,$temptext,$logininid,$loginin);
}
elseif($melve=="EditOtherPubTemp")//修改其它公共模板
{
	$tempname=$_POST['tempname'];
	$temptext=$_POST['temptext'];
	EditOtherPubTemp($tempname,$temptext,$logininid,$loginin);
}
elseif($melve=="EditPublicTemp")//修改首页模板
{
	$temptext=$_POST['temptext'];
	EditIndextemp($temptext,$logininid,$loginin);
}
elseif($melve=="LoadTempInClass")//批量导入栏目模板
{
	$path=$_GET['path'];
	$start=$_GET['start'];
	LoadTempInClass($path,$start,$logininid,$loginin);
}
elseif($melve=="ChangeClassListtemp")//批量更换栏目列表模板
{
	$classid=$_POST['classid'];
	$listtempid=$_POST['listtempid'];
	ChangeClassListtemp($classid,$listtempid,$logininid,$loginin);
}
elseif($melve=="LoadOutBq")//导出标签
{
	LoadOutBq($_POST,$logininid,$loginin);
}
elseif($melve=="ReEBakTemp")//还原模板备份
{
	ReEBakTemp($_GET,$logininid,$loginin);
}
elseif($melve=="PreviewIndexpage")//预览首页方案
{
	PreviewIndexpage($_GET['tempid'],$logininid,$loginin);
}
else
{
	printerror("ErrorUrl","history.go(-1)");
}
db_close();
$Elves=null;
?>