<?php
define('ElvesCMSAdmin','1');
require("../class/connect.php");
require("../class/db_sql.php");
require("../class/functions.php");
require LoadLang("pub/fun.php");
$link=db_connect();
$Elves=new mysqlquery();
//验证用户
$lur=is_login();
$logininid=(int)$lur['userid'];
$loginin=$lur['username'];
$loginrnd=$lur['rnd'];
$loginlevel=$lur['groupid'];
$loginadminstyleid=$lur['adminstyleid'];

//显示无限级栏目缓存
function CreateClassCache($bclassid,$exp,$expjs,$expmodjs,$adminclass,$doall,$mid,$addminfocid,$oldmid,$oldaddminfocid,$userid){
	global $Elves,$fun_r,$dbtbpre,$public_r;
	if(empty($bclassid))
	{
		$bclassid=0;
		$exp='';
		$expjs='|-';
		$expmodjs='|-';
    }
	else
	{
		$exp='&nbsp;&nbsp;&nbsp;'.$exp;
		$expjs='&nbsp;&nbsp;'.$expjs;
		$expmodjs="&nbsp;&nbsp;".$expmodjs;
	}
	$sql=$Elves->query("select classid,classname,bclassid,islast,classpath,classurl,listdt,sonclass,tbname,modid,myorder,onclick,openadd,wburl from {$dbtbpre}melveclass where bclassid='$bclassid' order by myorder,classid");
	$returnr['listclass']='';
	$returnr['listclasshidden']='';
	$returnr['listmelve']='';
	$returnr['usermelve']='';
	$returnr['jsstr']='';
	$returnr['jsmod']='';
	$returnr['oldjsmod']='';
	$returnr['userjs']='';
	$num=$Elves->num1($sql);
	if($num==0)
	{
		return $returnr;
	}
	$returnr['listmelve'].='<table border=0 cellspacing=0 cellpadding=0>';
	$returnr['usermelve'].='<table border=0 cellspacing=0 cellpadding=0>';
	$i=1;
	while($r=$Elves->fetch($sql))
	{
		$classurl=sys_ReturnBqClassUrl($r);
		//------ 管理栏目页面 ------
		$divonclick="";
		$start_tbody="";
		$end_tbody="";
		$start_tbody1="";
		$docinfo="";
		$classinfotype='';
		//终级栏目
		if($r[islast])
		{
			$img="<a href='AddNews.php?melve=AddNews&classid=".$r[classid]."' target=_blank><img src='../data/images/txt.gif' border=0></a>";
			$bgcolor="#ffffff";
			$rmelvehtml=" <a href='#e' onclick=rmelve(".$r[classid].",'".$r[tbname]."')>".$fun_r['news']."</a> ";
			$docinfo=" <a href='#e' onclick=docinfo(".$r[classid].")>归档</a>";
			$classinfotype=" <a href='#e' onclick=ttc(".$r[classid].")>分类</a>";
		}
		else
		{
			$img="<img src='../data/images/dir.gif'>";
			if(empty($r[bclassid]))
			{
				$bgcolor="#DBEAF5";
				$divonclick=" onMouseUp='turnit(classdiv".$r[classid].");' style='CURSOR:hand'";
				$start_tbody="<tbody id='classdiv".$r[classid]."'>";
				$end_tbody="</tbody>";
				//缩
				$start_tbody1="<tbody id='classdiv".$r[classid]."' style='display=none'>";
		    }
			else
			{$bgcolor="#ffffff";}
			$rmelvehtml=" <a href='#e' onclick=rmelve(".$r[classid].",'".$r[tbname]."')>".$fun_r['news']."</a> ";
		}
		//外部栏目
		$classname=$r[classname];
		if($r['wburl'])
		{
			$classname="<font color='#666666'>".$classname."&nbsp;(外部)</font>";
		}
		$onelistclass="<tr bgcolor='".$bgcolor."' height=25><td><input type=text name=myorder[] value=".$r[myorder]." size=2><input type=hidden name=classid[] value=".$r[classid]."></td><td".$divonclick.">".$exp.$img."</td><td align=center>".$r[classid]."</td><td><input type=checkbox name=reclassid[] value=".$r[classid]."> <a href='".$classurl."' target=_blank>".$classname."</a></td><td align=center>".$r[onclick]."</td><td><a href='#e' onclick=editc(".$r[classid].")>".$fun_r['edit']."</a> <a href='#e' onclick=copyc(".$r[classid].")>".$fun_r['copyclass']."</a> <a href='#e' onclick=delc(".$r[classid].")>".$fun_r['del']."</a></td><td><a href='#e' onclick=relist(".$r[classid].")>".$fun_r['re']."</a>".$rmelvehtml."<a href='#e' onclick=rejs(".$r[classid].")>JS</a> <a href='#e' onclick=tvurl(".$r[classid].")>调用</a>".$classinfotype.$docinfo."</td></tr>";
		$returnr['listclass'].=$onelistclass;
		$returnr['listclasshidden'].=$onelistclass;
		if(empty($r['wburl']))
		{
		//------ 管理信息页面 ------
		//链接地址
		$infoclassurl='';
		//终级栏目
		if($r[islast])
		{
			//最后一个子栏目
			if($i==$num)
			{$menutype="file1";}
			else
			{$menutype="file";}
			$infoclassname="<a onclick=tourl($r[bclassid],$r[classid]) onmouseout=chft(this,0,$r[classid]) onmouseover=chft(this,1,$r[classid]) oncontextmenu=ShRM(this,".$r[bclassid].",".$r[classid].",'".$infoclassurl."',1)>".$r[classname]."</a>";
			$onmouseup="";
		}
		else
		{
			//最后一个大栏目
			if($i==$num)
			{
				$menutype="menu3";
				$listtype="list1";
				$onmouseup="chengstate('".$r[classid]."')";
			}
			else
			{
				$menutype="menu1";
				$listtype="list";
				$onmouseup="chengstate('".$r[classid]."')";
			}
			$infoclassname="<a onmouseout=chft(this,0,$r[classid]) onmouseover=chft(this,1,$r[classid]) oncontextmenu=ShRM(this,".$r[bclassid].",".$r[classid].",'".$infoclassurl."',0)>".$r[classname]."</a>";
		}
		$returnr['listmelve'].='<tr><td id="pr'.$r[classid].'" class="'.$menutype.'" onclick="'.$onmouseup.'">'.$infoclassname.'</td></tr>';
		//JS颜色
		if($r[islast])
		{
			$jscolor=" style='background:".$public_r['chclasscolor']."'";
		}
		else
		{
			$jscolor="";
		}
		//------ 权限栏目显示 ------
		$havelevel=0;
		if($userid&&empty($doall))
		{
			if(CheckHaveInClassid($r,$adminclass))
			{
				$returnr['usermelve'].='<tr><td id="pr'.$r[classid].'" class="'.$menutype.'" onclick="'.$onmouseup.'">'.$infoclassname.'</td></tr>';
				$returnr['userjs'].="<option value='".$r[classid]."'".$jscolor.">".$expjs.$r[classname]."</option>";
				$havelevel=1;
			}
		}
		//------ JS显示 ------
		$returnr['jsstr'].="<option value='".$r[classid]."'".$jscolor.">".$expjs.$r[classname]."</option>";
		//------ 投稿 ------
		$haveadd=0;
		if($mid)
		{
			if($r[openadd]==0&&CheckHaveInClassid($r,$addminfocid))
			{
				$returnr['jsmod'].="<option value='".$r[classid]."'".$jscolor.">".$expmodjs.$r[classname]."</option>";
				$haveadd=1;
			}
		}
		$oldhaveadd=0;
		if($oldmid)
		{
			if($r[openadd]==0&&CheckHaveInClassid($r,$oldaddminfocid))
			{
				$returnr['oldjsmod'].="<option value='".$r[classid]."'".$jscolor.">".$expmodjs.$r[classname]."</option>";
				$oldhaveadd=1;
			}
		}
		}
		//取得子栏目
		if(empty($r[islast]))
		{
			$retr=CreateClassCache($r['classid'],$exp,$expjs,$expmodjs,$adminclass,$doall,$mid,$addminfocid,$oldmid,$oldaddminfocid,$userid);
			$returnr['listclass'].=$start_tbody.$retr['listclass'].$end_tbody;
			$returnr['listclasshidden'].=$start_tbody1.$retr['listclasshidden'].$end_tbody;
			if(empty($r['wburl']))
			{
			$returnr['listmelve'].='<tr id="item'.$r[classid].'" style="display:none"><td class="'.$listtype.'">'.$retr['listmelve'].'</td></tr>';
			if($havelevel)
			{
				$returnr['usermelve'].='<tr id="item'.$r[classid].'" style="display:none"><td class="'.$listtype.'">'.$retr['usermelve'].'</td></tr>';
				$returnr['userjs'].=$retr['userjs'];
			}
			$returnr['jsstr'].=$retr['jsstr'];
			if($haveadd)
			{
				$returnr['jsmod'].=$retr['jsmod'];
			}
			if($oldhaveadd)
			{
				$returnr['oldjsmod'].=$retr['oldjsmod'];
			}
			}
		}
		$i+=1;
	}
	$returnr['listmelve'].='</table>';
	$returnr['usermelve'].='</table>';
	return $returnr;
}

//验证缓存
function HaveNavClassCache($where){
	global $Elves,$dbtbpre;
	if(empty($where))
	{
		return '';
	}
	$navcachenum=$Elves->gettotal("select count(*) as total from {$dbtbpre}melveclassnavcache where ".$where." limit 1");
	return $navcachenum;
}

//写入缓存
function InsertNavClassCache($navtype,$userid,$modid){
	global $Elves,$dbtbpre;
	$userid=(int)$userid;
	$modid=(int)$modid;
	$Elves->query("insert into {$dbtbpre}melveclassnavcache(navtype,userid,modid) values('$navtype','$userid','$modid');");
}

$melve=RepPostVar($_GET['melve']);
$mess=RepPostVar($_GET['mess']);
$elvetourl=$_GET['elvetourl'];
if(!$mess)
{
	db_close();
	$Elves=null;
	exit();
}
if(!$melve)
{
	printerror($mess,$elvetourl);
}
$uid=(int)$_GET['uid'];
if(empty($uid))
{
	$thisuid=$logininid;
}
else
{
	$thisuid=$uid;
}
$user_r=$Elves->fetch1("select adminclass,groupid from {$dbtbpre}melveuser where userid='$thisuid'");
if(!$user_r['groupid'])
{
	db_close();
	$Elves=null;
	exit();
}
//用户组权限
$gr=$Elves->fetch1("select doall from {$dbtbpre}melvegroup where groupid='$user_r[groupid]'");
//用户
$userid=$thisuid;
if($gr['doall'])
{
	$userid=0;
}
//模型
$mid=(int)$_GET['mid'];
if($mid&&$emod_r[$mid]['mid'])
{
	$modr=$Elves->fetch1("select sonclass from {$dbtbpre}melvemod where mid='$mid'");
	$addminfocid=$modr['sonclass'];
}
else
{
	$mid=0;
	$addminfocid='';
}
//模型2
$oldmid=(int)$_GET['oldmid'];
if($oldmid&&$emod_r[$oldmid]['mid'])
{
	$oldmodr=$Elves->fetch1("select sonclass from {$dbtbpre}melvemod where mid='$oldmid'");
	$oldaddminfocid=$oldmodr['sonclass'];
}
else
{
	$oldmid=0;
	$oldaddminfocid='';
}
$cacher=CreateClassCache(0,'','','',$user_r['adminclass'],$gr['doall'],$mid,$addminfocid,$oldmid,$oldaddminfocid,$userid);
$melve=','.$melve.',';
//------ 管理栏目缓存 ------
if(stristr($melve,',doclass,'))
{
	if(!HaveNavClassCache("navtype='listclass'"))
	{
		$classfcfile='../data/fc/ListClass0.php';
		$classfcfile2='../data/fc/ListClass1.php';
		WriteFiletext($classfcfile,AddCheckViewTempCode().$cacher['listclass']);
		WriteFiletext($classfcfile2,AddCheckViewTempCode().$cacher['listclasshidden']);
		InsertNavClassCache('listclass',0,0);
	}
}
//------ 管理信息缓存 ------
$notrecordword="您还未添加栏目,<br><a href='AddClass.php?melve=AddClass' target='main'><u><b>点击这里</b></u></a>进行添加操作";
if(stristr($melve,',doinfo,'))
{
	if(!HaveNavClassCache("navtype='listmelve'"))
	{
		if(empty($cacher['listmelve']))
		{
			$cacher['listmelve']=$notrecordword;
		}
		$infofcfile='../data/fc/Listmelve.php';
		WriteFiletext($infofcfile,AddCheckViewTempCode().$cacher['listmelve']);
		InsertNavClassCache('listmelve',0,0);
	}
}
//用户信息缓存
if(stristr($melve,',douserinfo,'))
{
	if($userid)
	{
		if(!HaveNavClassCache("navtype='usermelve' and userid='$userid'"))
		{
			$userinfofcfile='../data/fc/Listmelve'.$userid.'.php';
			WriteFiletext($userinfofcfile,AddCheckViewTempCode().$cacher['usermelve']);
			$userinfojsfile='../data/fc/userclass'.$userid.'.js';
			WriteFiletext_n($userinfojsfile,"document.write(\"".addslashes($cacher['userjs'])."\");");
			InsertNavClassCache('usermelve',$userid,0);
		}
	}
}
//------ JS ------
if(stristr($melve,',doinfo,'))
{
	if(!HaveNavClassCache("navtype='jsclass'"))
	{
		$jsfile="../data/fc/cmsclass.js";
		$search_jsfile="../data/fc/searchclass.js";
		$search_jsstr=str_replace(" style='background:".$public_r['chclasscolor']."'","",$cacher['jsstr']);
		WriteFiletext_n($jsfile,"document.write(\"".addslashes($cacher['jsstr'])."\");");
		WriteFiletext_n($search_jsfile,"document.write(\"".addslashes($search_jsstr)."\");");
		InsertNavClassCache('jsclass',0,0);
	}
}
//------ 投稿JS ------
if(stristr($melve,',domod,'))
{
	if($mid)
	{
		if(!HaveNavClassCache("navtype='modclass' and modid='$mid'"))
		{
			$addinfofile="../../d/js/js/addinfo".$mid.".js";
			$addnews_class="document.write(\"".addslashes($cacher['jsmod'])."\");";
			WriteFiletext_n($addinfofile,$addnews_class);
			InsertNavClassCache('modclass',0,$mid);
		}
	}
	if($oldmid)
	{
		if(!HaveNavClassCache("navtype='modclass' and modid='$oldmid'"))
		{
			$oldaddinfofile="../../d/js/js/addinfo".$oldmid.".js";
			$oldaddnews_class="document.write(\"".addslashes($cacher['oldjsmod'])."\");";
			WriteFiletext_n($oldaddinfofile,$oldaddnews_class);
			InsertNavClassCache('modclass',0,$oldmid);
		}
	}
}
//------ 更新模板 ------
if(stristr($melve,',dostemp,'))
{
	GetSearch();
}

printerror($mess,$elvetourl);
//echo"<meta http-equiv=\"refresh\" content=\"0;url=$elvetourl\">缓存更新完毕，正在返回......";
?>