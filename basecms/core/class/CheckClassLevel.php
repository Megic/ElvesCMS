<?php
if(!defined('Elvescms'))
{
	exit();
}
//扣点
require_once($check_path."core/class/connect.php");
if(!defined('InElvesCMS'))
{
	exit();
}
require_once(elve_PATH."core/class/db_sql.php");
$check_classid=(int)$check_classid;
$toreturnurl=eReturnSelfPage(0);	//返回页面地址
$gotourl=$elve_config['member']['loginurl']?$elve_config['member']['loginurl']:$public_r['newsurl']."core/member/login/";	//登陆地址
$loginuserid=(int)getcvar('mluserid');
$logingroupid=(int)getcvar('mlgroupid');
if(!$loginuserid)
{
	printerror2('本栏目需要会员级别以上才能查看','');
}
if(!strstr($check_groupid,','.$logingroupid.','))
{
	printerror2('您没有足够权限查看此栏目','');
}
?>