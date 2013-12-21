<?php
if(!function_exists('version_compare') || version_compare( phpversion(), '5', '<' ) )
	include_once(dirname(__FILE__).'/fckeditor_php4.php');
else
	include_once(dirname(__FILE__).'/fckeditor_php5.php');

//变量名,变量值,工具条模式,编辑器目录,高度,宽度
function elve_ShowEditorVar($varname,$varvalue,$toolbar='Default',$basepath='',$height='300',$width='100%'){
	if(empty($basepath))
	{
		$basepath='elveeditor/infoeditor/';
	}
	if(empty($height))
	{
		$height='300';
	}
	if(empty($width))
	{
		$width='100%';
	}
	//设置区域
	$oFCKeditor=new FCKeditor($varname);
	$oFCKeditor->BasePath=$basepath;
	$oFCKeditor->Value=$varvalue;
	$oFCKeditor->Height=$height;
	$oFCKeditor->Width=$width;
	$oFCKeditor->ToolbarSet=$toolbar;
	//区域的模板变量
	$area=$oFCKeditor->CreateHtml();
	return $area;
}

//附加参数
function elve_ReturnEditorCx(){
	global $classid,$filepass,$id,$r,$melve;
	if($melve=='AddClass'||$melve=='EditClass')
	{
		$modtype=1;
	}
	elseif($melve=='AddZt'||$melve=='EditZt')
	{
		$modtype=2;
	}
	else
	{
		$modtype=0;
	}
	$str="&classid=$classid&filepass=$filepass&infoid=$id&modtype=$modtype&sinfo=1";
	return $str;
}
?>