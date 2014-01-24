<?php
/*
 * -+------------------------------------------------------------------------+-
 * | Author : pkkgu （QQ：910111100）
 * | Contact: http://t.qq.com/ly0752
 * | LastUpdate: 2012-12-14
 * -+------------------------------------------------------------------------+-
 */ 

/********************************************************************** 公共部分 **********************************************************************/
/********************************************************************** 公共部分 **********************************************************************/
/**
 * 编码转换
 * @param $num   值为非0时执行转换操作
 * @param $mgxe 0为UTF-8转为GBK2312 1为GBK转为UTF-8
 * @param $str   要转换的字符串
 * doUtfAndGbk_pkkgu(1,0,$str);
 */
function doUtfAndGbk_pkkgu($num=0,$mgxe=0,$str){
	if(empty($num))//正常编码
	{
		return $str;
    }
	if(!function_exists("iconv"))//是否支持iconv
	{
		$fun="DoIconvVal";
		$code="UTF8";
		$targetcode="GB2312";
	}
	else
	{
		$fun="iconv";
		$code="UTF-8";
		$targetcode="GBK";
	}
	if(empty($mgxe))
	{
		$str=$fun($code,$targetcode,$str);
	}
	else
	{
		$str=$fun($targetcode,$code,$str);
	}
	return addslashes($str);
}

//远程保存
function DoTranUrl_pkkgu($url,$classid){
	global $public_r,$class_r,$elve_config,$efileftp_fr;
	//处理地址
	$url=trim($url);
	$url=str_replace(" ","%20",$url);
    $r[tran]=1;
	//附件地址
	$r[url]=$url;
	//文件类型
	$r[filetype]=GetFiletype($url);
	if(CheckSaveTranFiletype($r[filetype]))
	{
		$r[tran]=0;
		return $r;
	}
	//是否已上传的文件
	$havetr=CheckNotSaveUrl($url);
	if($havetr)
	{
		$r[tran]=0;
		return $r;
	}
	//是否地址
	if(!strstr($url,'://'))
	{
		$r[tran]=0;
		return $r;
	}
	$string=ReadFiletext($url);
	if(empty($string))//读取不了
	{
		$r[tran]=0;
		return $r;
	}
	//文件名
	$r[insertfile]=ReturnDoTranFilename($file_name,$classid);
	$r[filename]=$r[insertfile].$r[filetype];
	//日期目录
	$r[filepath]=FormatFilePath($classid,$mynewspath,0);
	$filepath=$r[filepath]?$r[filepath].'/':$r[filepath];
	//存放目录
	$fspath=ReturnFileSavePath($classid);
	$r[savepath]=elve_PATH.$fspath['filepath'].$filepath;
	//附件地址
	$r[url]=$fspath['fileurl'].$filepath.$r[filename];
	//缩图文件
	$r[name]=$r[savepath]."small".$r[insertfile];
	//附件文件
	$r[yname]=$r[savepath].$r[filename];
	WriteFiletext_n($r[yname],$string);
	$r[filesize]=@filesize($r[yname]);
	//返回类型
	if(strstr($elve_config['sets']['tranflashtype'],','.$r[filetype].','))
	{
		$r[type]=2;
	}
	elseif(strstr($elve_config['sets']['tranpicturetype'],','.$r[filetype].','))
	{
		$r[type]=1;
	}
	elseif(strstr($elve_config['sets']['mediaplayertype'],','.$r[filetype].',')||strstr($elve_config['sets']['realplayertype'],','.$r[filetype].','))//多媒体
	{
		$r[type]=3;
	}
	else
	{
		$r[type]=0;
	}
	//FileServer
	if($public_r['openfileserver'])
	{
		$efileftp_fr[]=$r['yname'];
	}
	return $r;
}
//建立目录函数
function DoMkdir_pkkgu($path){
	global $public_r;
	//不存在则建立
	if(!file_exists($path))
	{
		//安全模式
		if($public_r[phpmode])
		{
			$pr[0]=$path;
			FtpMkdir($ftpid,$pr,0777);
			$mk=1;
		}
		else
		{
			$mk=@mkdir($path,0777);
			@chmod($path,0777);
		}
		if(empty($mk))
		{
			echo $path;
			printerror_pkkgu("CreatePathFail","history.go(-1)");
		}
	}
	return true;
}
//格式化附件目录
function FormatFilePath_pkkgu($classid,$mynewspath,$melve=0){
	global $public_r;
	if($melve)
	{
		$newspath=$mynewspath;
	}
	else
	{
		$newspath=date($public_r['filepath']);
	}
	if(empty($newspath))
	{
		return "";
	}
	$fspath=ReturnFileSavePath($classid);
	$path=elve_PATH.$fspath['filepath'];
	$returnpath="";
	$r=explode("/",$newspath);
	$count=count($r);
	for($i=0;$i<$count;$i++){
		if($i>0){
			$returnpath.="/".$r[$i];
		}
		else{
			$returnpath.=$r[$i];
		}
		$createpath=$path.$returnpath;
		$mk=DoMkdir_pkkgu($createpath);
		if(empty($mk)){
			FormatFilePath_pkkgu("CreatePathFail","");
		}
	}
	return $returnpath;
}
//上传文件 $elve=1时为涂鸦上传
function DoTranFile_pkkgu($file,$file_name,$file_type,$file_size,$classid,$elve=0){
	global $public_r,$class_r,$doetran,$efileftp_fr;
	//文件类型
	$r[filetype]=GetFiletype($file_name);
	//文件名
	$r[insertfile]=ReturnDoTranFilename($file_name,$classid);
	$r[filename]=$r[insertfile].$r[filetype];
	//日期目录
	$r[filepath]=FormatFilePath_pkkgu($classid,$mynewspath,0);
	$filepath=$r[filepath]?$r[filepath].'/':$r[filepath];
	//存放目录
	$fspath=ReturnFileSavePath($classid);
	$r[savepath]=elve_PATH.$fspath['filepath'].$filepath;
	//附件地址
	$r[url]=$fspath['fileurl'].$filepath.$r[filename];
	//缩图文件
	$r[name]=$r[savepath]."small".$r[insertfile];
	//附件文件
	$r[yname]=$r[savepath].$r[filename];
	$r[tran]=1;
	//验证类型
	if(CheckSaveTranFiletype($r[filetype]))
	{
		if($doetran)
		{
			$r[tran]=0;
			return $r;
		}
		else
		{
			printerror_pkkgu('TranFail','',$elve);
		}
	}
	if(empty($elve))
	{
		//上传文件
		$cp=@move_uploaded_file($file,$r[yname]);
		if(empty($cp))
		{
			if($doetran)
			{
				$r[tran]=0;
				return $r;
			}
			else
			{
				printerror_pkkgu('TranFail','');
			}
		}
	}
	DoChmodFile($r[yname]);
	$r[filesize]=(int)$file_size;
	//FileServer
	if($public_r['openfileserver'])
	{
		$efileftp_fr[]=$r['yname'];
	}
	return $r;
}
/**
 * 返回成功提示
 * $type      附件类型
 * $ptype     图片附加类型
 * $url       附件地址
 * $MD5_name  附件加密名称或者pictitle图片描述
 * $old_name  附件原名名称
 * $filetype  附件类型 (.jpg .rar 等等，swfupload上传附件时使用)
 */
function ok_print($type,$url,$MD5_name,$old_name='',$filetype='',$ptype=0){
	if($type==1) //图片
	{
		/**
		 * 向浏览器返回数据json数据
		 * {
		 *   'url'      :'a.jpg',   //保存后的文件路径
		 *   'title'    :'hello',   //文件描述，对图片来说在前端会添加到title属性上
		 *   'original' :'b.jpg',   //原始文件名
		 *   'state'    :'SUCCESS'  //上传状态，成功时返回SUCCESS,其他任何值将原样返回至图片上传框中
		 * }
		 */
		//涂鸦
		if($ptype==3)
		{
			echo '{"url":"'.$url.'","state":"SUCCESS"}';
		}
		//涂鸦背景
		elseif($ptype==4)
		{
			echo "<script>parent.ue_callback('".$url."','SUCCESS')</script>";
		}
		//其他图片类型
		else
		{
			echo "{'url':'".$url."','title':'".$MD5_name."','original':'".$old_name."','state':'SUCCESS'}";
		}
	}else{ //附件
		/**
		 * 向浏览器返回数据json数据
		 * {
		 *   'url'      :'a.rar',        //保存后的文件路径
		 *   'fileType' :'.rar',         //文件描述，对图片来说在前端会添加到title属性上
		 *   'original' :'编辑器.jpg',   //原始文件名
		 *   'state'    :'SUCCESS'       //上传状态，成功时返回SUCCESS,其他任何值将原样返回至图片上传框中
		 * }
		 */
		echo '{"url":"'.$url.'","fileType":"'.$filetype.'","original":"'.$old_name.'","state":"SUCCESS"}';
	}
	db_close();
	$Elves=null;
	exit();
}
//返回错误提示$elve 0后台，1前台
function printerror_pkkgu($customMsg,$url=0,$elve=0){
	global $utf_gbk;
	if(empty($elve)){
		@include "../../../".LoadLang("pub/message.php");
		$msg=$message_r[$customMsg];
	}else{
		@include "../../../".LoadLang("pub/q_message.php");
		$msg=$qmessage_r[$customMsg];
	}
	if(empty($msg)){
		$msg=$customMsg;
	}
	$msg=doUtfAndGbk_pkkgu($utf_gbk,1,$msg);
	$msg=array("state"=>$msg);
	echo json_encode($msg);
	db_close();
	$Elves=null;
	exit();
}
/********************************************************************** 后台图片和附件部分 **********************************************************************/
/********************************************************************** 后台图片和附件部分 **********************************************************************/
//是否登陆
function is_login_pkkgu($uid=0,$uname='',$urnd='',$mladmin=''){
	global $Elves,$public_r,$dbtbpre;
	$userid=$uid?$uid:getcvar('loginuserid',1);
	$username=$uname?$uname:getcvar('loginusername',1);
	$rnd=$urnd?$urnd:getcvar('loginrnd',1);
	$userid=(int)$userid;
	$username=RepPostVar($username);
	$rnd=RepPostVar($rnd);
	if(!$userid||!$username||!$rnd)
	{
		printerror_pkkgu("NotLogin","index.php");
	}
	$mladmin=RepPostVar($mladmin);
	$admin_arr=explode("|",$mladmin);
	$admin=array();
	$admin['loginuserid']       =$admin_arr[0];
	$admin['loginusername']     =$admin_arr[1];
	$admin['loginrnd']          =$admin_arr[2];
	$admin['loginlevel']        =$admin_arr[3];
	$admin['loginadminstyleid'] =$admin_arr[4];
	$admin['truelogintime']     =$admin_arr[5];
	$admin['elvedodbdata']      =$admin_arr[6];
	$admin['logintime']         =$admin_arr[7];
	$admin['eloginlic']         =$admin_arr[8];
	$admin['loginelveckpass']   =$admin_arr[9];
	$admin['session']           =$admin_arr[10];
	$loginelveckpass=RepPostVar(getcvar('loginelveckpass',1));
	$loginelveckpass?"":$loginelveckpass=$admin['loginelveckpass']; // pkkgu
	$session=RepPostVar($_SESSION['elveckhspass']);;
	$session?"":$session=$admin['session']; // pkkgu
	$groupid=(int)getcvar('loginlevel',1);
	$groupid?"":$groupid=$admin['loginlevel']; // pkkgu
	$adminstyle=(int)getcvar('loginadminstyleid',1);
	$adminstyle?"":$adminstyle=$admin['adminstyle']; // pkkgu
	if(!strstr($public_r['adminstyle'],','.$adminstyle.','))
	{
		$adminstyle=$public_r['defadminstyle']?$public_r['defadminstyle']:1;
	}
	$truelogintime=(int)getcvar('truelogintime',1);
	$truelogintime?"":$truelogintime=$admin['truelogintime']; // pkkgu
	//COOKIE验证
	$loginusername=getcvar('loginusername',1);
	$loginusername?"":$loginusername=$admin['loginusername']; // pkkgu
	if($loginusername)
	{
		//$cdbdata=getcvar('elvedodbdata',1)?1:0; //pkkgu
		if(getcvar('elvedodbdata',1))
		{
			$cdbdata=1;
		}else if($admin['elvedodbdata']){
			$cdbdata=1;
		}else{
			$cdbdata=0;
		}
		DoChECookieRnd_pkkgu($userid,$username,$rnd,'',$cdbdata,$groupid,$adminstyle,$truelogintime,$loginelveckpass,$session); // pkkgu
	}
	//db
	$adminr=$Elves->fetch1("select userid,groupid,classid,userprikey from {$dbtbpre}melveuser where userid='$userid' and username='".$username."' and rnd='".$rnd."' and checked=0 limit 1");
	if(!$adminr['userid'])
	{
		printerror_pkkgu("SingleUser","index.php");
	}
	DoECheckAndAuthRnd($userid,$username,$rnd,$adminr['userprikey'],$cdbdata,$groupid,$adminstyle,$truelogintime,$loginelveckpass,$session); // pkkgu
	//登陆超时
	$logintime=getcvar('logintime',1);
	if($logintime)
	{
		if(time()-$logintime>$public_r['exittime']*60)
		{
			printerror_pkkgu("LoginTime","index.php");
	    }
		esetcookie("logintime",time(),0,1);
	}
	if(getcvar('eloginlic',1)<>"Elvescmslic")
	{
		printerror_pkkgu("NotLogin","index.php");
	}
	$ur[userid]=$userid;
	$ur[username]=$username;
	$ur[rnd]=$rnd;
	$ur[groupid]=$adminr[groupid];
	$ur[adminstyleid]=(int)$adminstyle;
	$ur[classid]=$adminr[classid];
	return $ur;
}
function DoChECookieRnd_pkkgu($userid,$username,$rnd,$userkey,$dbdata,$groupid,$adminstyle,$truelogintime,$loginelveckpass,$session){
	global $elve_config;
	$ip=$elve_config['esafe']['ckhloginip']==0?'127.0.0.1':egetip();
	$otherinfo=DoECkOtherInfo();
	$sessval=ReESessionRnd_pkkgu($session);
	$elveckpass=md5(md5($rnd.$elve_config['esafe']['ecookiernd']).'-'.$ip.'-'.$otherinfo.'-'.$userid.'-'.$username.'-'.$dbdata.$rnd.$groupid.'-'.$adminstyle.$sessval);
	if($elveckpass<>$loginelveckpass)
	{
		printerror("NotLogin","index.php");
	}
	if(empty($elve_config['esafe']['ckhloginfile']))
	{
		DoECheckFileRnd_pkkgu($userid,$username,$rnd,$dbdata,$groupid,$adminstyle,$truelogintime,$ip,$sessval);
	}
}
//返回SESSION验证
function ReESessionRnd_pkkgu($session){
	global $elve_config;
	if(empty($elve_config['esafe']['ckhsession']))
	{
		return '';
	}
	return $session;
	//return $_SESSION['elveckhspass'];
}
function DoECheckFileRnd_pkkgu($userid,$username,$rnd,$dbdata,$groupid,$adminstyle,$truelogintime,$ip,$sessval){
	global $elve_config;
	$file=elve_PATH.'core/data/adminlogin/user'.$userid.'_'.md5(md5($username.'-Elvescms!check.file'.$truelogintime.'-'.$rnd.$elve_config['esafe']['ecookiernd']).'-'.$ip.'-'.$userid.'-'.$rnd.$adminstyle.'-'.$groupid.'-'.$dbdata.$sessval).'.log';
	if(!file_exists($file))
	{
		printerror_pkkgu('NotLogin','index.php');
	}
}
// 后台文件类型验证 pkkgu
function ChckeFileType_H_pkkgu($type,$filetype,$file_size){
	global $public_r,$elve_config;
	//如果是.php文件
	if(CheckSaveTranFiletype($filetype))
	{
		printerror_pkkgu("TranPHP","history.go(-1)");
	}
	$type_r=explode("|".$filetype."|",$public_r['filetype']);
	if(count($type_r)<2)
	{
		printerror_pkkgu("TranFiletypeFail","history.go(-1)");
	}
	if($file_size>$public_r['filesize']*1024)
	{
		printerror_pkkgu("TranFilesizeFail","history.go(-1)");
	}
	if($type==1)//上传图片
	{
		if(!strstr($elve_config['sets']['tranpicturetype'],','.$filetype.','))
		{
			printerror_pkkgu("NotTranImg","history.go(-1)");
		}
	}
	elseif($type==2)//上传flash
	{
		if(!strstr($elve_config['sets']['tranflashtype'],','.$filetype.','))
		{
			printerror_pkkgu("NotTranFlash","history.go(-1)");
		}
	}
	elseif($type==3)//上传多媒体
	{}
	else//上传附件
	{}
}
// 后台 上传附件
function TranFile_pkkgu($add,$file,$file_name,$file_type,$file_size,$userid,$username,$rnd,$tranurl){
	global $Elves,$public_r,$loginrnd,$dbtbpre,$elve_config,$utf_gbk;
	$tranfrom=(int)$add['tranfrom'];
	$classid=(int)$add['classid'];
	//$modtype=(int)$add['modtype'];
	$modtype=0;
	$infoid=(int)$add['infoid'];
	$filepass=(int)$add['filepass'];
	$type=(int)$add['type'];
	$ptype=(int)$add['ptype'];
	$fstb=0;
	if(!$filepass||!$classid)
	{
		printerror_pkkgu("EmptyQTranFile");
	}
	if(empty($modtype))
	{
		$fstb=GetInfoTranFstb($classid,$infoid,0);
	}
	if($ptype==3) //涂鸦
	{
		$r=DoTranFile_pkkgu('','srcawl.png','.png',0,$classid,1);
		$base64Data=$add['content'];
		if(empty($r[tran])&&empty($r[yname])&&empty($base64Data))
		{
			printerror_pkkgu("TranFail");
		}
		$content=base64_decode($base64Data);
		$r[filesize]=file_put_contents($r[yname],$content); //生成文件 返回文件大小
		if (empty($r[filesize])) {
			printerror_pkkgu("上传不成功".$r[yname]);
		}
    }
	else
	{
		$filetype=GetFiletype($file_name);//取得文件类型
		ChckeFileType_H_pkkgu($type,$filetype,$file_size); //后台文件类型验证 pkkgu
		//本地上传
		$r=DoTranFile_pkkgu($file,$file_name,$file_type,$file_size,$classid);
		if(empty($r[tran]))
		{
			printerror_pkkgu("TranFail");
		}
	}
	//写入数据库
	$r[filesize]=(int)$r[filesize];
	$classid=(int)$classid;
	$add[filepass]=(int)$add[filepass];
	$type=(int)$type;	
	$filename=RepPostStr($file_name);
	$add_name='';
	if($type==1) //图片带标题图片批量上传 no值为pictitle
	{
		if(empty($ptype))
		{
			$pictitle=RepPostStr($add['pictitle']);
			if($pictitle) //图片描述
			{
				$filename=$pictitle;
			}
		}
		else if($ptype==1)
		{
			$filename=RepPostStr($r[filename]);
			$add_name='[远程]';
		}
		elseif($ptype==3)
		{
			$filename=RepPostStr($r[filename]);
			$add_name='[涂鸦]';
		}
		elseif($ptype==4)
		{
			$add_name='[涂鸦背景]';
		}
		else if($ptype==5) //屏幕截图
		{
			$filename=RepPostStr($r[filename]);
			$add_name='[截图]';
		}
	}
	$filenameg=$add_name.doUtfAndGbk_pkkgu($utf_gbk,0,$filename);
	$r[filesize]=(int)$r[filesize];
	$classid=(int)$classid;
	$HQ=0;
	if(empty($HQ)){
		$username="[pkkgu_H]".$username;
	}else{
		$username="[pkkgu_Q]".$username;
	}
	$sql=eInsertFileTable($r[filename],$r[filesize],$r[filepath],$username,$classid,$filenameg,$type,$add[filepass],$add[filepass],$public_r[fpath],0,$modtype,$fstb);
	$fileid=$Elves->lastid();
	//导入gd.php文件
	if($type==1&&($add['getsmall']||$add['getmark']))
	{
		@include(elve_PATH."core/class/gd.php");
	}
	//缩略图
	if($type==1&&$add['getsmall'])
	{
		GetMySmallImg($classid,$no,$r[insertfile],$r[filepath],$r[yname],$post[width],$post[height],$r[name],$post['filepass'],$post['filepass'],$userid,$username,$modtype,$fstb);
	}
	//水印
	if($type==1&&$add['getmark'])
	{
		GetMyMarkImg($r['yname']);
	}
	if($sql)
	{
		//上传成功返回前端
		ok_print($type,$r['url'],$filename,$r[filename],$filetype,$ptype);
	}
	else
	{
		printerror_pkkgu("InTranRecordFail","history.go(-1)");
	}
}

// 后台 批量远程保存图片
function TranMoreFile_H_pkkgu($add,$userid,$username,$rnd,$tranurl){
	global $Elves,$public_r,$loginrnd,$dbtbpre;
	//$modtype=(int)$add['modtype'];
	$modtype=0;
	$infoid=(int)$add['infoid'];
	$classid=(int)$add['classid'];
	$filepass=(int)$add['filepass'];
	$type=(int)$add['type'];
	$ptype=(int)$add['ptype'];
	$fstb=0;
	if(!$filepass||!$classid)
	{
		printerror_pkkgu("EmptyQTranFile");
	}
	if(empty($modtype))
	{
		$fstb=GetInfoTranFstb($classid,$infoid,0);
	}
	if(empty($tranurl)||$tranurl=="http://")
	{
		printerror_pkkgu("EmptyHttp","history.go(-1)");
	}
	$tmpNames=array();
	$uri=$tranurl;
	$arr_url=explode("ue_separate_ue",$tranurl);
	$count=count($arr_url);
	for($i=0;$i<=$count-1;$i++)
	{
		$tranurl=$arr_url[$i];
		$filetype=GetFiletype($tranurl);//取得文件类型
		ChckeFileType_H_pkkgu($type,$filetype,0); //后台文件类型验证 pkkgu
		//保存远程图片
		$r=DoTranUrl_pkkgu($tranurl,$classid);
		if(empty($r[tran]))
		{
			printerror_pkkgu("TranFail");
		}
		//写入数据库
		$filenameg='[远程]'.doUtfAndGbk_pkkgu($utf_gbk,0,$filename);
		$HQ=0;
		if(empty($HQ)){
			$username="[pkkgu_H]".$username;
		}else{
			$username="[pkkgu_Q]".$username;
		}
		$sql=eInsertFileTable($r[filename],$r[filesize],$r[filepath],$username,$classid,$filenameg,$type,$add[filepass],$add[filepass],$public_r[fpath],0,$modtype,$fstb);
		$fileid=$Elves->lastid();
		$tmpNames[]=$r['url'];
		//导入gd.php文件
		if($type==1&&($add['getsmall']||$add['getmark']))
		{
			@include_once(elve_PATH."core/class/gd.php");
		}
		//缩略图
		if($type==1&&$add['getsmall'])
		{
			GetMySmallImg($classid,$no,$r[insertfile],$r[filepath],$r[yname],$post[width],$post[height],$r[name],$post['filepass'],$post['filepass'],$userid,$username,$modtype,$fstb);
		}
		//水印
		if($type==1&&$add['getmark'])
		{
			GetMyMarkImg($r['yname']);
		}
	}
	if($sql)
	{
		//上传成功返回前端
		echo "{'url':'".implode("ue_separate_ue",$tmpNames )."','tip':'远程图片抓取成功！','srcUrl':'".$uri."'}";
		db_close();
		$Elves=null;
		exit();
	}
	else
	{
		printerror_pkkgu("InTranRecordFail","history.go(-1)");
	}
}
/********************************************************************** 前台图片和附件部分 **********************************************************************/
/********************************************************************** 前台图片和附件部分 **********************************************************************/
//----------------------------------是否登陆
//转向会员组
function OutTimeZGroup_pkkgu($userid,$zgroupid){
	global $Elves,$dbtbpre;
	if($zgroupid)
	{
		$sql=$Elves->query("update ".eReturnMemberTable()." set ".egetmf('groupid')."='".$zgroupid."',".egetmf('userdate')."=0 where ".egetmf('userid')."='$userid'");
	}
	else
	{
		$sql=$Elves->query("update ".eReturnMemberTable()." set ".egetmf('userdate')."=0 where ".egetmf('userid')."='$userid'");
	}
}
//是否登录
function islogin_pkkgu($uid=0,$uname='',$urnd=''){
	global $Elves,$dbtbpre,$public_r,$elvereurl,$elve_config;
	if($uid)
	{$userid=(int)$uid;}
	else
	{$userid=(int)getcvar('mluserid');}
	if($uname)
	{$username=$uname;}
	else
	{$username=getcvar('mlusername');}
	$username=RepPostVar($username);
	if($urnd)
	{$rnd=$urnd;}
	else
	{$rnd=getcvar('mlrnd');}
	if($elve_config['member']['loginurl'])
	{$gotourl=$elve_config['member']['loginurl'];}
	else
	{$gotourl=$public_r['newsurl']."core/member/login/";}
	$petype=1;
	if(!$userid)
	{
		printerror_pkkgu("NotLogin",'','');
	}
	$rnd=RepPostVar($rnd);
	$cr=$Elves->fetch1("select ".eReturnSelectMemberF('userid,username,email,groupid,userfen,money,userdate,zgroupid,havemsg,checked,registertime')." from ".eReturnMemberTable()." where ".egetmf('userid')."='$userid' and ".egetmf('username')."='$username' and ".egetmf('rnd')."='$rnd' limit 1");
	if(!$cr['userid'])
	{
		EmptyelveCookie();
		printerror("NotSingleLogin",'');
	}
	if($cr['checked']==0)
	{
		EmptyelveCookie();
		printerror("NotCheckedUser",'');
	}
	//默认会员组
	if(empty($cr['groupid']))
	{
		$user_groupid=eReturnMemberDefGroupid();
		$usql=$Elves->query("update ".eReturnMemberTable()." set ".egetmf('groupid')."='$user_groupid' where ".egetmf('userid')."='".$cr[userid]."'");
		$cr['groupid']=$user_groupid;
	}
	//是否过期
	if($cr['userdate'])
	{
		if($cr['userdate']-time()<=0)
		{
			OutTimeZGroup_pkkgu($cr['userid'],$cr['zgroupid']);
			$cr['userdate']=0;
			if($cr['zgroupid'])
			{
				$cr['groupid']=$cr['zgroupid'];
				$cr['zgroupid']=0;
			}
		}
	}
	$re[userid]=$cr['userid'];
	$re[rnd]=$rnd;
	$re[username]=$cr['username'];
	$re[email]=$cr['email'];
	$re[userfen]=$cr['userfen'];
	$re[money]=$cr['money'];
	$re[groupid]=$cr['groupid'];
	$re[userdate]=$cr['userdate'];
	$re[zgroupid]=$cr['zgroupid'];
	$re[havemsg]=$cr['havemsg'];
	$re[registertime]=$cr['registertime'];
	return $re;
}
//验证提交IP
function eCheckAccessDoIp_pkkgu($doing){
	global $public_r,$Elves,$dbtbpre;
	$pr=$Elves->fetch1("select opendoip,closedoip,doiptype from {$dbtbpre}melvepublic limit 1");
	if(!strstr($pr['doiptype'],','.$doing.','))
	{
		return '';
	}
	$userip=egetip();
	//允许IP
	if($pr['opendoip'])
	{
		$close=1;
		foreach(explode("\n",$pr['opendoip']) as $ctrlip)
		{
			if(preg_match("/^(".preg_quote(($ctrlip=trim($ctrlip)),'/').")/",$userip))
			{
				$close=0;
				break;
			}
		}
		if($close==1)
		{
			printerror_pkkgu('NotCanPostIp','history.go(-1)',1);
		}
	}
	//禁止IP
	if($pr['closedoip'])
	{
		foreach(explode("\n",$pr['closedoip']) as $ctrlip)
		{
			if(preg_match("/^(".preg_quote(($ctrlip=trim($ctrlip)),'/').")/",$userip))
			{
				printerror_pkkgu('NotCanPostIp','history.go(-1)',1);
			}
		}
	}
}
//检测点数是否足够
function MCheckEnoughFen_pkkgu($userfen,$userdate,$fen){
	if(!($userdate-time()>0))
	{
		if($userfen+$fen<0)
		{
			printerror_pkkgu("HaveNotFenAQinfo","history.go(-1)",1);
		}
	}
}
//检查投稿数
function DoQCheckAddNum_pkkgu($userid,$groupid){
	global $Elves,$dbtbpre,$level_r,$public_r;
	$ur=$Elves->fetch1("select userid,todayinfodate,todayaddinfo from {$dbtbpre}melvememberpub where userid='$userid' limit 1");
	$thetoday=date("Y-m-d");
	if($ur['userid'])
	{
		if($thetoday!=$ur['todayinfodate'])
		{
			$query="update {$dbtbpre}melvememberpub set todayinfodate='$thetoday',todayaddinfo=1 where userid='$userid'";
		}
		else
		{
			if($ur['todayaddinfo']>=$level_r[$groupid]['dayaddinfo'])
			{
				printerror_pkkgu("CrossDayInfo",$public_r['newsurl'],1);
			}
			$query="update {$dbtbpre}melvememberpub set todayaddinfo=todayaddinfo+1 where userid='$userid'";
		}
	}
	else
	{
		$query="replace into {$dbtbpre}melvememberpub(userid,todayinfodate,todayaddinfo) values('$userid','$thetoday',1);";
	}
	return $query;
}
//新用户投稿验证
function qCheckNewMemberAddInfo_pkkgu($registertime){
	global $public_r;
	if(empty($public_r['newaddinfotime']))
	{
		return '';
	}
	$registertime=eReturnMemberIntRegtime($registertime);
	if(time()-$registertime<=$public_r['newaddinfotime']*60)
	{
		printerror_pkkgu('NewMemberAddInfoError','',1);
	}
}
//投稿权限检测
function DoQCheckAddLevel_pkkgu($classid,$userid,$username,$rnd,$elve=0,$isadd=0){
	global $Elves,$dbtbpre,$level_r,$public_r;
	$r=$Elves->fetch1("select * from {$dbtbpre}melveclass where classid='$classid'");
	if(!$r['classid']||$r[wburl])
	{
		printerror_pkkgu("EmptyQinfoCid","",1);
	}
	if(!$r['islast'])
	{
		printerror_pkkgu("MustLast","",1);
	}
	if($r['openadd'])
	{
		printerror_pkkgu("NotOpenCQInfo","",1);
	}
	//是否登陆
	if($elve==1||$elve==2||($r['qaddgroupid']&&$r['qaddgroupid']<>','))
	{
		$user=islogin($userid,$username,$rnd);
		//验证新会员投稿
		if($isadd==1&&$public_r['newaddinfotime'])
		{
			qCheckNewMemberAddInfo_pkkgu($user[registertime]);
		}
	}
	//会员组
	if($r['qaddgroupid']&&$r['qaddgroupid']<>',')
	{
		if(!strstr($r['qaddgroupid'],','.$user[groupid].','))
		{
			printerror_pkkgu("HaveNotLevelAQinfo","history.go(-1)",1);
		}
	}
	if($isadd==1)
	{
		//检测是否足够点数
		if($r['addinfofen']<0&&$user['userid'])
		{
			MCheckEnoughFen_pkkgu($user['userfen'],$user['userdate'],$r['addinfofen']);
		}
		//检测投稿数
		if($r['qaddgroupid']&&$r['qaddgroupid']<>','&&$level_r[$user[groupid]]['dayaddinfo'])
		{
			$r['checkaddnumquery']=DoQCheckAddNum_pkkgu($user['userid'],$user['groupid']);
		}
	}
	//审核
	if(($elve==0||$elve==1)&&$userid)
	{
		if(!$user[groupid])
		{
			$user=islogin($userid,$username,$rnd);
		}
		if($level_r[$user[groupid]]['infochecked'])
		{
			$r['checkqadd']=1;
			$r['qeditchecked']=0;
		}
	}
	return $r;
}
//前台文件类型验证 pkkgu
function ChckeFileType_Q_pkkgu($type,$filetype,$file_size){
	global $Elves,$dbtbpre,$elve_config;
	if(CheckSaveTranFiletype($filetype))
	{
		printerror_pkkgu("NotQTranFiletype","",9);
	}
	$pr=$Elves->fetch1("select qaddtran,qaddtransize,qaddtranimgtype,qaddtranfile,qaddtranfilesize,qaddtranfiletype from {$dbtbpre}melvepublic limit 1");
	if($type==1)//图片
	{
		if(!$pr['qaddtran'])
		{
			printerror_pkkgu("CloseQTranPic","",9);
		}
		if(!strstr($pr['qaddtranimgtype'],"|".$filetype."|"))
		{
			printerror_pkkgu("NotQTranFiletype","",9);
		}
		if($file_size>$pr['qaddtransize']*1024)
		{
			printerror_pkkgu("TooBigQTranFile","",9);
		}
		if(!strstr($elve_config['sets']['tranpicturetype'],','.$filetype.','))
		{
			printerror_pkkgu("NotQTranFiletype","",9);
		}
	}
	elseif($type==2)//flash
	{
		if(!$pr['qaddtranfile'])
		{
			printerror_pkkgu("CloseQTranFile","",9);
		}
		if(!strstr($pr['qaddtranfiletype'],"|".$filetype."|"))
		{
			printerror_pkkgu("NotQTranFiletype","",9);
		}
		if($file_size>$pr['qaddtranfilesize']*1024)
		{
			printerror_pkkgu("TooBigQTranFile","",9);
		}
		if(!strstr($elve_config['sets']['tranflashtype'],','.$filetype.','))
		{
			printerror_pkkgu("NotQTranFiletype","",9);
		}
	}
	else//附件
	{
		if(!$pr['qaddtranfile'])
		{
			printerror_pkkgu("CloseQTranFile","",9);
		}
		if(!strstr($pr['qaddtranfiletype'],"|".$filetype."|"))
		{
			printerror_pkkgu("NotQTranFiletype","",9);
		}
		if($file_size>$pr['qaddtranfilesize']*1024)
		{
			printerror_pkkgu("TooBigQTranFile","",9);
		}
	}
}
//验证提交来源
function CheckCanPostUrl_pkkgu(){
	global $public_r;
	if($public_r['canposturl'])
	{
		$r=explode("\r\n",$public_r['canposturl']);
		$count=count($r);
		$b=0;
		for($i=0;$i<$count;$i++)
		{
			if(strstr($_SERVER['HTTP_REFERER'],$r[$i]))
			{
				$b=1;
				break;
			}
		}
		if($b==0)
		{
			printerror_pkkgu('NotCanPostUrl','',1);
		}
	}
}
// 前台 上传附件
function DoQTranFile_pkkgu($add,$file,$file_name,$file_type,$file_size,$userid,$username,$rnd,$elve=0,$tranurl=''){
	global $Elves,$dbtbpre,$public_r;
	//验证来源
	if($elve==0||$elve==1)
	{
		CheckCanPostUrl_pkkgu();
	}
	if($public_r['addnews_ok'])//关闭投稿
	{
		printerror_pkkgu("NotOpenCQInfo","",9);
	}
	//$modtype=(int)$add['modtype'];
	$modtype=0;
	$infoid=(int)$add['infoid'];
	$classid=(int)$add['classid'];
	$filepass=(int)$add['filepass'];
	$type=(int)$add['type'];
	$ptype=(int)$add['ptype'];
	if(!$filepass||!$classid)
	{
		printerror_pkkgu("EmptyQTranFile","",9);
	}
	//验证权限
	$userid=(int)$userid;
	$username=RepPostVar($username);
	$rnd=RepPostVar($rnd);
	DoQCheckAddLevel_pkkgu($classid,$userid,$username,$rnd,0,0); //投稿权限检测 pkkgu
	if(!$username){
		$username='游客';
	}
	if($ptype==3) //涂鸦
	{
		$file='';
		$file_name='srcawl.png';
		$file_type='.png';
		$file_size=1;
		$r=DoTranFile_pkkgu($file,$file_name,$file_type,$file_size,$classid,1);
		$base64Data=$add['content'];
		if(empty($r[tran])&&empty($r[yname])&&empty($base64Data))
		{
			printerror_pkkgu("TranFail","",9);
		}
		$content=base64_decode($base64Data);
		$r[filesize]=file_put_contents($r[yname],$content); //生成文件 返回文件大小
		if (empty($r[filesize])) {
			printerror_pkkgu("上传不成功".$r[yname]);
		}
	}
	else
	{
		$filetype=GetFiletype($file_name);//取得文件类型
		ChckeFileType_Q_pkkgu($type,$filetype,$file_size); //前台文件类型检测 pkkgu
		//本地上传
		$r=DoTranFile_pkkgu($file,$file_name,$file_type,$file_size,$classid);
		if(empty($r[tran]))
		{
			printerror_pkkgu("TranFail","",9);
		}
	}
	//写入数据库
	$r[filesize]=(int)$r[filesize];
	$classid=(int)$classid;
	$add[filepass]=(int)$add[filepass];
	$type=(int)$type;	
	$filename=RepPostStr($file_name);
	$add_name='';
	if($type==1) //图片带标题图片批量上传 no值为pictitle
	{
		if(empty($ptype))
		{
			$pictitle=RepPostStr($add['pictitle']);
			if($pictitle) //图片描述
			{
				$filename=$pictitle;
			}
		}
		else if($ptype==1)
		{
			$filename=RepPostStr($r[filename]);
			$add_name='[远程]';
		}
		elseif($ptype==3)
		{
			$filename=RepPostStr($r[filename]);
			$add_name='[涂鸦]';
		}
		elseif($ptype==4)
		{
			$add_name='[涂鸦背景]';
		}
		else if($ptype==5) //屏幕截图
		{
			$filename=RepPostStr($r[filename]);
			$add_name='[截图]';
		}
	}
	$filenameg=$add_name.doUtfAndGbk_pkkgu($utf_gbk,0,$filename);
	$r[filesize]=(int)$r[filesize];
	$classid=(int)$classid;
	$HQ=1;
	if(empty($HQ)){
		$username="[pkkgu_H]".$username;
	}else{
		$username="[pkkgu_Q]".$username;
	}
	$sql=eInsertFileTable($r[filename],$r[filesize],$r[filepath],$username,$classid,$filenameg,$type,$add[filepass],$add[filepass],$public_r[fpath],0,$modtype,$fstb);
	$fileid=$Elves->lastid();
	//导入gd.php文件
	if($type==1&&($add['getsmall']||$add['getmark']))
	{
		@include(elve_PATH."core/class/gd.php");
	}
	//缩略图
	if($type==1&&$add['getsmall'])
	{
		GetMySmallImg($classid,$no,$r[insertfile],$r[filepath],$r[yname],$post[width],$post[height],$r[name],$post['filepass'],$post['filepass'],$userid,$username,$modtype,$fstb);
	}
	//水印
	if($type==1&&$add['getmark'])
	{
		GetMyMarkImg($r['yname']);
	}
	if($sql)
	{
		//上传成功返回前端
		ok_print($type,$r['url'],$filename,$r[filename],$filetype,$ptype);
	}
	else
	{
		printerror_pkkgu("InTranRecordFail","history.go(-1)");
	}
}
// 前台 批量远程保存图片
function TranMoreFile_Q_pkkgu($add,$userid,$username,$rnd,$tranurl){
	global $Elves,$dbtbpre,$public_r;
	if($public_r['addnews_ok'])//关闭投稿
	{
		printerror_pkkgu("NotOpenCQInfo","",9);
	}
	//$modtype=(int)$add['modtype'];
	$modtype=0;
	$infoid=(int)$add['infoid'];
	$classid=(int)$add['classid'];
	$filepass=(int)$add['filepass'];
	$type=(int)$add['type'];
	$ptype=(int)$add['ptype'];
	$fstb=0;
	if(!$filepass||!$classid)
	{
		printerror_pkkgu("EmptyQTranFile");
	}
	if(empty($modtype))
	{
		$fstb=GetInfoTranFstb($classid,$infoid,0);
	}
	//验证权限
	$userid=(int)$userid;
	$username=RepPostVar($username);
	$rnd=RepPostVar($rnd);
	DoQCheckAddLevel_pkkgu($classid,$userid,$username,$rnd,0,0); //投稿权限检测 pkkgu
	if(!$username){
		$username='游客';
	}
	if(empty($tranurl)||$tranurl=="http://")
	{
		printerror_pkkgu("EmptyHttp","history.go(-1)",1);
	}
	$tmpNames=array();
	$uri=$tranurl;
	$arr_url=explode("ue_separate_ue",$tranurl);
	$count=count($arr_url);
	for($i=0;$i<=$count-1;$i++)
	{
		$tranurl=$arr_url[$i];
		$filetype=GetFiletype($tranurl);//取得文件类型
		ChckeFileType_Q_pkkgu($type,$filetype,0); //前台文件类型检测 pkkgu
		//保存远程图片
		$r=DoTranUrl_pkkgu($tranurl,$classid);
		if(empty($r[tran]))
		{
			printerror_pkkgu("TranFail","",9);
		}
		//写入数据库
		$filenameg='[远程]'.doUtfAndGbk_pkkgu($utf_gbk,0,$filename);
		$HQ=1;
		if(empty($HQ)){
			$username="[pkkgu_H]".$username;
		}else{
			$username="[pkkgu_Q]".$username;
		}
		$sql=eInsertFileTable($r[filename],$r[filesize],$r[filepath],$username,$classid,$r[filename],$type,$add[filepass],$add[filepass],$public_r[fpath],0,$modtype,$fstb);
		$fileid=$Elves->lastid();
		$tmpNames[]=$r['url'];
		//导入gd.php文件
		if($type==1&&($add['getsmall']||$add['getmark']))
		{
			@include_once(elve_PATH."core/class/gd.php");
		}
		//缩略图
		if($type==1&&$add['getsmall'])
		{
			GetMySmallImg($classid,$no,$r[insertfile],$r[filepath],$r[yname],$post[width],$post[height],$r[name],$post['filepass'],$post['filepass'],$userid,$username,$modtype,$fstb);
		}
		//水印
		if($type==1&&$add['getmark'])
		{
			GetMyMarkImg($r['yname']);
		}
	}
	//编辑器
	if($sql)
	{
		 echo "{'url':'".implode("ue_separate_ue",$tmpNames )."','tip':'远程图片抓取成功！','srcUrl':'".$uri."'}";
	}
	else
	{
		printerror_pkkgu("EmptyQTranFile","history.go(-1)",1);
	}
}
/********************************************************************** 在线部分 **********************************************************************/
/********************************************************************** 在线部分 **********************************************************************/
// 前台会员显在线显示图片
function Show_Image_User_pkkgu($add,$userid,$username,$rnd){
	global $Elves,$dbtbpre,$public_r,$class_r;
	$user=islogin_pkkgu($userid,$username,$rnd); //是否登陆 pkkgu
	$classid=(int)$add['classid'];
	$type=1;
	$add="";
	//登录
	$user=islogin_pkkgu($userid,$username,$rnd);
	if($user[username])
	{
		$add.=" and adduser='[pkkgu_Q]".$user[username]."'";
	}
	else
	{
		printerror_pkkgu("NotCheckedUser");
	}
	//栏目
	if($classid)
	{
		if($class_r[$classid]['islast'])
		{
			$add.=" and classid='$classid'";
		}
		else
		{
			$add.=" and ".ReturnClass($class_r[$searchclassid]['sonclass']);
		}
		/*//当前信息
		$filepass=(int)$add['filepass'];
		if($sinfo)
		{
			$add.=" and id='$filepass'";
		}*/
	}
	else
	{
		printerror_pkkgu("ErrorUrl");
	}
	$fstb=1;
	$query="select fileid,filename,filesize,path,filetime,classid,no,fpath from {$dbtbpre}melvefile_{$fstb} where type='$type'".$add;
	$query.=" order by fileid desc limit 100";
	$sql=$Elves->query($query);
	$file_url='';
	while($r=$Elves->fetch($sql))
	{
		$ono=$r[no];
		$r[no]=sub($r[no],0,$sub,false);
		$filesize=ChTheFilesize($r[filesize]);//文件大小
		$filetype=GetFiletype($r[filename]);//取得文件扩展名
		//文件
		$fspath=ReturnFileSavePath($r[classid],$r[fpath]);
		$filepath=$r[path]?$r[path].'/':$r[path];
		$file_url.=$fspath['fileurl'].$filepath.$r[filename].'ue_separate_ue';
	}
	echo $file_url;
}
// 后台管理员显在线显示图片
function Show_Image_admin_pkkgu($add,$userid,$username,$rnd){
	global $Elves,$dbtbpre,$public_r,$class_r;
	$classid=(int)$add['classid'];
	$type=1;
	$add="";
	//栏目
	if($classid)
	{
		if($class_r[$classid]['islast'])
		{
			$add.=" and classid='$classid'";
		}
		else
		{
			$add.=" and ".ReturnClass($class_r[$searchclassid]['sonclass']);
		}
		/*//当前信息
		$filepass=(int)$add['filepass'];
		//$select_sinfo='';
		if($sinfo)
		{
			$add.=" and id='$filepass'";
		}*/
	}
	else
	{
		printerror_pkkgu("ErrorUrl");
	}

	$fstb=1;
	$query="select fileid,filename,filesize,path,filetime,classid,no,fpath from {$dbtbpre}melvefile_{$fstb} where type='$type'".$add;
	$query.=" order by fileid desc limit 100";
	$sql=$Elves->query($query);
	$file_url='';
	while($r=$Elves->fetch($sql))
	{
		$ono=$r[no];
		$r[no]=sub($r[no],0,$sub,false);
		$filesize=ChTheFilesize($r[filesize]);//文件大小
		$filetype=GetFiletype($r[filename]);//取得文件扩展名
		//文件
		$fspath=ReturnFileSavePath($r[classid],$r[fpath]);
		$filepath=$r[path]?$r[path].'/':$r[path];
		$file_url.=$fspath['fileurl'].$filepath.$r[filename].'ue_separate_ue';
	}
	echo $file_url;
	db_close();
	$Elves=null;
}
?>