<?php
//*********************** 专题 *********************

//返回字段值
function ReturnZFvalue($value)
{
	$value=str_replace("\r\n","|",$value);
	return $value;
}

//取得专题表单元素html代码
function GetZtFform($type,$f,$fvalue,$fformsize=''){
	if($type=="select"||$type=="radio"||$type=="checkbox")
	{
		return GetZFformSelect($type,$f,$fvalue,$fformsize);
	}
	$file="../data/html/classfhtml.txt";
	$data=ReadFiletext($file);
	$exp="[!--".$type."--]";
	$r=explode($exp,$data);
	$string=str_replace("[!--melve.var--]",$f,$r[1]);
	$string=str_replace("[!--melve.def.val--]",$fvalue,$string);
	if($type=='editor')//编辑器
	{
		$editortype='Default';
		$string=str_replace("[!--editor.type--]",$editortype,$string);
		$string=str_replace("[!--editor.basepath--]",'../elveeditor/infoeditor/',$string);
	}
	elseif($type=='img'||$type=='flash'||$type=='file')//附件
	{
		$string=str_replace("[!--melve.modtype--]",'2',$string);
		$string=str_replace("[!--melve.path--]",'../',$string);
	}
	$string=RepZFformSize($f,$string,$type,$fformsize);
	return fAddAddsData($string);
}

//取得select/radio元素代码
function GetZFformSelect($type,$f,$fvalue,$fformsize=''){
	$vr=explode("|",$fvalue);
	$count=count($vr);
	$change="";
	$def=':default';
	for($i=0;$i<$count;$i++)
	{
		$val=$vr[$i];
		$isdef="";
		if(strstr($val,$def))
		{
			$dr=explode($def,$val);
			$val=$dr[0];
			$isdef="||\$elvefirstpost==1";
		}
		if($type=='select')
		{
			$change.="<option value=\"".$val."\"<?=\$r[".$f."]==\"".$val."\"".$isdef."?' selected':''?>>".$val."</option>";
		}
		elseif($type=='checkbox')
		{
			$change.="<input name=\"".$f."[]\" type=\"checkbox\" value=\"".$val."\"<?=strstr(\$r[".$f."],\"|".$val."|\")".$isdef."?' checked':''?>>".$val;
		}
		else
		{
			$change.="<input name=\"".$f."\" type=\"radio\" value=\"".$val."\"<?=\$r[".$f."]==\"".$val."\"".$isdef."?' checked':''?>>".$val;
		}
	}
	if($type=="select")
	{
		if($fformsize)
		{
			$addsize=' style="width:'.$fformsize.'"';
		}
		$change="<select name=\"".$f."\" id=\"".$f."\"".$addsize.">".$change."</select>";
	}
	return $change;
}

//替换表单元素长度
function RepZFformSize($f,$string,$type,$fformsize=''){
	$fformsize=ReturnDefZFformSize($f,$type,$fformsize);
	if($type=='textarea'||$type=='editor')
	{
		$r=explode(',',$fformsize);
		$string=str_replace('[!--fsize.w--]',$r[0],$string);
		$string=str_replace('[!--fsize.h--]',$r[1],$string);
	}
	else
	{
		$string=str_replace('[!--fsize.w--]',$fformsize,$string);
	}
	return $string;
}

//返回默认长度
function ReturnDefZFformSize($f,$type,$fformsize){
	if(empty($fformsize))
	{
		if($type=='textarea')
		{
			$fformsize='60,10';
		}
		elseif($type=='img')
		{
			$fformsize='45';
		}
		elseif($type=='file')
		{
			$fformsize='45';
		}
		elseif($type=='flash')
		{
			$fformsize='45';
		}
		elseif($type=='date')
		{
			$fformsize='12';
		}
		elseif($type=='color')
		{
			$fformsize='10';
		}
		elseif($type=='linkfield')
		{
			$fformsize='45';
		}
		elseif($type=='downpath')
		{
			$fformsize='45';
		}
		elseif($type=='onlinepath')
		{
			$fformsize='45';
		}
		elseif($type=='editor')
		{
			$fformsize='100%,300';
		}
	}
	return $fformsize;
}

//更新栏目表单文件
function ChangeZtForm(){
	global $Elves,$dbtbpre;
	$file='../data/html/ztaddform.php';
	$mtemp='';
	$sql=$Elves->query("select fname,f,fhtml from {$dbtbpre}melveztf order by myorder,fid");
	while($r=$Elves->fetch($sql))
	{
		$mtemp.="<tr bgcolor='#FFFFFF' height=25><td>".$r['fname']."</td><td>".$r['fhtml']."</td></tr>";
    }
	$mtemp="<?php
if(!defined('InElvesCMS'))
{exit();}
?>".$mtemp;
	WriteFiletext($file,$mtemp);
}

//增加专题字段
function AddZtF($add,$userid,$username){
	global $Elves,$dbtbpre;
	//验证权限
	CheckLevel($userid,$username,$classid,"ztf");
	$add[f]=RepPostVar($add[f]);
	if(empty($add[f])||empty($add[fname]))
	{
		printerror("EmptyF","");
	}
	//字段是否重复
	$s=$Elves->query("SHOW FIELDS FROM {$dbtbpre}melveztadd");
	$b=0;
	while($r=$Elves->fetch($s))
	{
		if($r[Field]==$add[f])
		{
			$b=1;
			break;
		}
    }
	if($b)
	{
		printerror("ReF","");
	}
	$s=$Elves->query("SHOW FIELDS FROM {$dbtbpre}melvezt");
	$b=0;
	while($r=$Elves->fetch($s))
	{
		if($r[Field]==$add[f])
		{
			$b=1;
			break;
		}
    }
	if($b)
	{
		printerror("ReF","");
	}
	$add[fvalue]=ReturnZFvalue($add[fvalue]);//初始化值
	//字段类型
	if($add[ftype]=="TINYINT"||$add[ftype]=="SMALLINT"||$add[ftype]=="INT"||$add[ftype]=="BIGINT"||$add[ftype]=="FLOAT"||$add[ftype]=="DOUBLE")
	{
		$def=" default '0'";
	}
	elseif($add[ftype]=="VARCHAR")
	{
		$def=" default ''";
	}
	else
	{
		$def="";
	}
	$type=$add[ftype];
	//VARCHAR
	if($add[ftype]=='VARCHAR'&&empty($add[flen]))
	{
		$add[flen]='255';
	}
	//字段长度
	if($add[flen]){
		if($add[ftype]!="TEXT"&&$add[ftype]!="MEDIUMTEXT"&&$add[ftype]!="LONGTEXT"){
			$type.="(".$add[flen].")";
		}
	}
	$field="`".$add[f]."` ".$type." NOT NULL".$def;
	//新增字段
	$asql=$Elves->query("alter table {$dbtbpre}melveztadd add ".$field);
	//替换代码
	$fhtml=GetZtFform($add[fform],$add[f],$add[fvalue],$add[fformsize]);
	if($add[fform]=='select'||$add[fform]=='radio'||$add[fform]=='checkbox')
	{
		$fhtml=str_replace("\$r[","\$addr[",$fhtml);
	}
	//处理变量
	$add[myorder]=(int)$add[myorder];
	$sql=$Elves->query("insert into {$dbtbpre}melveztf(f,fname,fform,fhtml,fzs,myorder,ftype,flen,fvalue,fformsize) values('$add[f]','$add[fname]','$add[fform]','".eaddslashes2($fhtml)."','".eaddslashes($add[fzs])."',$add[myorder],'$add[ftype]','$add[flen]','".eaddslashes2($add[fvalue])."','$add[fformsize]');");
	$lastid=$Elves->lastid();
	//更新表单
	ChangeZtForm();
	if($asql&&$sql)
	{
		//操作日志
		insert_dolog("fid=".$lastid."<br>f=".$add[f]);
		printerror("AddFSuccess","special/AddZtF.php?melve=AddZtF");
	}
	else
	{
		printerror("DbError","history.go(-1)");
	}
}

//修改专题字段
function EditZtF($add,$userid,$username){
	global $Elves,$dbtbpre;
	//验证权限
	CheckLevel($userid,$username,$classid,"ztf");
	$fid=(int)$add['fid'];
	$add[f]=RepPostVar($add[f]);
	$add[oldf]=RepPostVar($add[oldf]);
	if(empty($add[f])||empty($add[fname])||!$fid){
		printerror("EmptyF","history.go(-1)");
	}
	if($add[f]<>$add[oldf]){
		//字段是否重复
		$s=$Elves->query("SHOW FIELDS FROM {$dbtbpre}melveztadd");
		$b=0;
		while($r=$Elves->fetch($s)){
			if($r[Field]==$add[f]){
				$b=1;
				break;
			}
		}
		if($b){
			printerror("ReF","history.go(-1)");
		}
		$s=$Elves->query("SHOW FIELDS FROM {$dbtbpre}melvezt");
		$b=0;
		while($r=$Elves->fetch($s))
		{
			if($r[Field]==$add[f])
			{
				$b=1;
				break;
			}
		}
		if($b)
		{
			printerror("ReF","");
		}
	}
	$add[fvalue]=ReturnZFvalue($add[fvalue]);//初始化值
	//字段类型
	if($add[ftype]=="TINYINT"||$add[ftype]=="SMALLINT"||$add[ftype]=="INT"||$add[ftype]=="BIGINT"||$add[ftype]=="FLOAT"||$add[ftype]=="DOUBLE")
	{
		$def=" default '0'";
	}
	elseif($add[ftype]=="VARCHAR")
	{
		$def=" default ''";
	}
	else
	{
		$def="";
	}
	$type=$add[ftype];
	//VARCHAR
	if($add[ftype]=='VARCHAR'&&empty($add[flen]))
	{
		$add[flen]='255';
	}
	//字段长度
	if($add[flen]){
		if($add[ftype]!="TEXT"&&$add[ftype]!="MEDIUMTEXT"&&$add[ftype]!="LONGTEXT"){
			$type.="(".$add[flen].")";
		}
	}
	$field="`".$add[f]."` ".$type." NOT NULL".$def;
	$usql=$Elves->query("alter table {$dbtbpre}melveztadd change `".$add[oldf]."` ".$field);
	//替换代码
	if($add[f]<>$add[oldf]||$add[fform]<>$add[oldfform]||$add[fvalue]<>$add[oldfvalue]||$add[fformsize]<>$add[oldfformsize]){
		$fhtml=GetZtFform($add[fform],$add[f],$add[fvalue],$add[fformsize]);
		if($add[fform]=='select'||$add[fform]=='radio'||$add[fform]=='checkbox')
		{
			$fhtml=str_replace("\$r[","\$addr[",$fhtml);
		}
	}
	else{
		$fhtml=$add[fhtml];
	}
	//处理变量
	$add[myorder]=(int)$add[myorder];
	$sql=$Elves->query("update {$dbtbpre}melveztf set f='$add[f]',fname='$add[fname]',fform='$add[fform]',fhtml='".eaddslashes2($fhtml)."',fzs='".eaddslashes($add[fzs])."',myorder=$add[myorder],ftype='$add[ftype]',flen='$add[flen]',fvalue='".eaddslashes2($add[fvalue])."',fformsize='$add[fformsize]' where fid=$fid");
	//更新表单
	ChangeZtForm();
	if($usql&&$sql)
	{
		insert_dolog("fid=".$fid."<br>f=".$add[f]);//操作日志
		printerror("EditFSuccess","special/ListZtF.php");
	}
	else
	{printerror("DbError","history.go(-1)");}
}

//删除专题字段
function DelZtF($add,$userid,$username){
	global $Elves,$dbtbpre;
	//验证权限
	CheckLevel($userid,$username,$classid,"ztf");
	$fid=(int)$add['fid'];
	if(empty($fid)){
		printerror("EmptyFid","history.go(-1)");
	}
	$r=$Elves->fetch1("select f from {$dbtbpre}melveztf where fid='$fid'");
	if(!$r[f]){
		printerror("EmptyFid","history.go(-1)");
	}
	$usql=$Elves->query("alter table {$dbtbpre}melveztadd drop COLUMN `".$r[f]."`");
	$sql=$Elves->query("delete from {$dbtbpre}melveztf where fid='$fid'");
	//更新表单表
	ChangeZtForm();
	if($usql&&$sql)
	{
		insert_dolog("fid=".$fid."<br>f=".$r[f]);//操作日志
		printerror("DelFSuccess","special/ListZtF.php");
	}
	else
	{printerror("DbError","history.go(-1)");}
}

//修改专题字段顺序
function EditZtFOrder($fid,$myorder,$userid,$username){
	global $Elves,$dbtbpre;
	//验证权限
	CheckLevel($userid,$username,$classid,"ztf");
	for($i=0;$i<count($myorder);$i++)
	{
		$fid[$i]=(int)$fid[$i];
		$newmyorder=(int)$myorder[$i];
		$usql=$Elves->query("update {$dbtbpre}melveztf set myorder=$newmyorder where fid='$fid[$i]'");
    }
	//更新表单表
	ChangeZtForm();
	printerror("EditFOrderSuccess","special/ListZtF.php");
}

//返回专题字段
function ReturnZtAddF($add,$elve=0){
	global $Elves,$dbtbpre;
	$ret_r[0]='';
	$ret_r[1]='';
	$fsql=$Elves->query("select f from {$dbtbpre}melveztf");
	if($elve==0)//增加
	{
		while($fr=$Elves->fetch($fsql))
		{
			$f=$fr['f'];
			$fval=$add[$f];
			$fval=RepPhpAspJspcode($fval);
			$ret_r[0].=",`".$f."`";
			$ret_r[1].=",'".AddAddsData($fval)."'";
		}
	}
	else//修改
	{
		while($fr=$Elves->fetch($fsql))
		{
			$f=$fr['f'];
			$fval=$add[$f];
			$fval=RepPhpAspJspcode($fval);
			$ret_r[0].=",`".$f."`='".AddAddsData($fval)."'";
		}
	}
	return $ret_r;
}


//处理专题提交变量
function DoPostZtVar($add){
	if(empty($add[zttype])){
		$add[zttype]=".html";
	}
	if(empty($add[ztnum])){
		$add[ztnum]=25;
	}
	$add[zcid]=(int)$add['zcid'];
	$add[ztname]=eaddslashes(ehtmlspecialchars($add[ztname]));
	$add[intro]=eaddslashes(RepPhpAspJspcode($add[intro]));
	$add[ztpagekey]=eaddslashes(RepPhpAspJspcode($add[ztpagekey]));
	$add[ztnum]=(int)$add[ztnum];
	$add[listtempid]=(int)$add[listtempid];
	$add[classid]=(int)$add[classid];
	$add[islist]=(int)$add[islist];
	$add[maxnum]=(int)$add[maxnum];
	$add[showzt]=(int)$add[showzt];
	$add[classtempid]=(int)$add[classtempid];
	$add['myorder']=(int)$add['myorder'];
	$add[reorder]=RepPostVar2($add[reorder]);
	$add[classtext]=RepPhpAspJspcode($add[classtext]);
	$add[usezt]=(int)$add[usezt];
	$add[yhid]=(int)$add[yhid];
	$add['endtime']=$add['endtime']?to_time($add['endtime']):0;
	$add['closepl']=(int)$add['closepl'];
	$add['checkpl']=(int)$add['checkpl'];
	$add['from']=(int)$add['from'];
	$add['filepass']=(int)$add['filepass'];
	$add['pltempid']=(int)$add['pltempid'];
	if($add['usernames'])
	{
		$add['usernames']=','.$add['usernames'].',';
	}
	//目录
	$add[ztpath]=$add['pripath'].$add['ztpath'];
	return $add;
}

//增加专题
function AddZt($add,$userid,$username){
	global $Elves,$class_r,$dbtbpre,$public_r;
	$add[ztpath]=trim($add[ztpath]);
	if(!$add[ztname]||!$add[listtempid]||!$add[ztpath]){
		printerror("EmptyZt","");
	}
	CheckLevel($userid,$username,$classid,"zt");
	$add=DoPostZtVar($add);
	$createpath='../../'.$add[ztpath];
	//检测目录是否存在
	if(file_exists($createpath)){
		printerror("ReZtpath","");
	}
	CreateZtPath($add[ztpath]);//建立专题目录
	$addtime=time();
	//取得表名
	$tabler=GetModTable(GetListtempMid($add[listtempid]));
	$tabler[tid]=(int)$tabler[tid];
	$sql=$Elves->query("insert into {$dbtbpre}melvezt(ztname,ztnum,listtempid,onclick,ztpath,zttype,zturl,classid,islist,maxnum,reorder,intro,ztimg,zcid,showzt,ztpagekey,classtempid,myorder,usezt,yhid,endtime,closepl,checkpl,restb,usernames,addtime,pltempid) values('$add[ztname]',$add[ztnum],$add[listtempid],0,'$add[ztpath]','$add[zttype]','$add[zturl]',$add[classid],$add[islist],$add[maxnum],'$add[reorder]','$add[intro]','$add[ztimg]',$add[zcid],$add[showzt],'$add[ztpagekey]','$add[classtempid]',$add[myorder],'$add[usezt]','$add[yhid]','$add[endtime]','$add[closepl]','$add[checkpl]','$public_r[pldeftb]','$add[usernames]','$addtime','$add[pltempid]');");
	$ztid=$Elves->lastid();
	//副表
	$ret_zr=ReturnZtAddF($add,0);
	$Elves->query("replace into {$dbtbpre}melveztadd(ztid,classtext".$ret_zr[0].") values('$ztid','".eaddslashes2($add[classtext])."'".$ret_zr[1].");");
	//更新附件
	UpdateTheFileOther(2,$ztid,$add['filepass'],'other');
	//生成页面
	if($add[islist]==0||$add[islist]==2)
	{
		$classtemp=$add[islist]==2?GetZtText($ztid):GetClassTemp($add['classtempid']);
		NewsBq($ztid,$classtemp,3,1);
    }
	GetClass();//更新缓存
	if($sql){
		insert_dolog("ztid=".$ztid."<br>ztname=".$add[ztname]);//操作日志
		printerror("AddZtSuccess","special/AddZt.php?melve=AddZt");
	}
	else{
		printerror("DbError","");
	}
}

//修改专题
function EditZt($add,$userid,$username){
	global $Elves,$class_r,$dbtbpre,$loginlevel;
	$add[ztid]=(int)$add[ztid];
	$add[ztpath]=trim($add[ztpath]);
	if(!$add[ztname]||!$add[listtempid]||!$add[ztpath]||!$add[ztid]){
		printerror("EmptyZt","");
	}
	$add=DoPostZtVar($add);
	//CheckLevel($userid,$username,$classid,"zt");
	$returnandlevel=CheckAndUsernamesLevel('dozt',$add[ztid],$userid,$username,$loginlevel);
	$upusernames='';
	if($returnandlevel==2)
	{
		$upusernames=",usernames='$add[usernames]'";
	}
	//改变目录
	if($add[oldztpath]<>$add[ztpath]){
		$createpath='../../'.$add[ztpath];
		if(file_exists($createpath)){
			printerror("ReZtpath","");
		}
		if($add['oldpripath']==$add['pripath']){
			$new="../../";
			@rename($new.$add[oldztpath],$new.$add[ztpath]);//改变目录名
		}
		else{
			CreateZtPath($add[ztpath]);//建立专题目录
		}
    }
	//取得表名
	$tabler=GetModTable(GetListtempMid($add[listtempid]));
	$tabler[tid]=(int)$tabler[tid];
	$sql=$Elves->query("update {$dbtbpre}melvezt set ztname='$add[ztname]',ztnum=$add[ztnum],listtempid=$add[listtempid],ztpath='$add[ztpath]',zttype='$add[zttype]',zturl='$add[zturl]',classid=$add[classid],islist=$add[islist],maxnum=$add[maxnum],reorder='$add[reorder]',intro='$add[intro]',ztimg='$add[ztimg]',zcid=$add[zcid],showzt=$add[showzt],ztpagekey='$add[ztpagekey]',classtempid='$add[classtempid]',myorder=$add[myorder],usezt='$add[usezt]',yhid='$add[yhid]',endtime='$add[endtime]',closepl='$add[closepl]',checkpl='$add[checkpl]',pltempid='$add[pltempid]'".$upusernames." where ztid='$add[ztid]'");
	//副表
	$ret_zr=ReturnZtAddF($add,1);
	$Elves->query("update {$dbtbpre}melveztadd set classtext='".eaddslashes2($add[classtext])."'".$ret_zr[0]." where ztid='$add[ztid]'");
	//更新专题子类
	if($add['endtime']!=$add['oldendtime'])
	{
		$Elves->query("update {$dbtbpre}melvezttype set endtime='$add[endtime]' where ztid='$add[ztid]'");
	}
	//更新附件
	UpdateTheFileEditOther(2,$add['ztid'],'other');
	GetClass();//更新缓存
	//生成页面
	if($add[islist]==0||$add[islist]==2)
	{
		$classtemp=$add[islist]==2?GetZtText($add[ztid]):GetClassTemp($add['classtempid']);
		NewsBq($add[ztid],$classtemp,3,1);
    }
	if($sql)
	{
		$returnurl='special/ListZt.php';
		if($add['from'])
		{
			$returnurl='special/AddZt.php?melve=EditZt&ztid='.$add[ztid].'&from=1';
		}
		insert_dolog("ztid=".$add[ztid]."<br>ztname=".$add[ztname]);//操作日志
		printerror("EditZtSuccess",$returnurl);
	}
	else
	{
		printerror("DbError","");
	}
}

//删除专题
function DelZt($ztid,$userid,$username){
	global $Elves,$dbtbpre;
	$ztid=(int)$ztid;
	if(!$ztid){
		printerror("NotDelZtid","");
	}
	CheckLevel($userid,$username,$classid,"zt");
	$r=$Elves->fetch1("select * from {$dbtbpre}melvezt where ztid='$ztid'");
	if(empty($r[ztid])){
		printerror("NotDelZtid","history.go(-1)");
	}
	//删除专题
	$sql=$Elves->query("delete from {$dbtbpre}melvezt where ztid='$ztid'");
	$Elves->query("delete from {$dbtbpre}melveztadd where ztid='$ztid'");
	$delpath="../../".$r[ztpath];
	$del=DelPath($delpath);
	//删除专题子类
	$zttypesql=$Elves->query("select cid from {$dbtbpre}melvezttype where ztid='$ztid'");
	while($zttyper=$Elves->fetch($zttypesql))
	{
		$Elves->query("delete from {$dbtbpre}melvezttypeadd where cid='$zttyper[cid]'");
	}
	$Elves->query("delete from {$dbtbpre}melvezttype where ztid='$ztid'");
	$Elves->query("delete from {$dbtbpre}melveztinfo where ztid='$ztid'");
	//删除附件
	DelFileOtherTable("id='$ztid' and modtype=2");
	GetClass();//更新缓存
	if($sql){
		insert_dolog("ztid=".$ztid."<br>ztname=".$r[ztname]);//操作日志
		printerror("DelZtSuccess","special/ListZt.php");
	}
	else{
		printerror("DbError","");
	}
}

//组合专题
function TogZt($add,$userid,$username){
	global $Elves,$class_r,$dbtbpre;
	$ztid=(int)$add['ztid'];
	if(empty($ztid))
	{
		printerror("ErrorUrl","history.go(-1)");
    }
	$r=$Elves->fetch1("select ztid,ztname from {$dbtbpre}melvezt where ztid='$ztid'");
	if(empty($r['ztid']))
	{
		printerror("ErrorUrl","history.go(-1)");
	}
	$zcid=(int)$add['zcid'];
	$tbname=RepPostVar($add['tbname']);
	if(!$tbname)
	{
		printerror('EmptyTogZt','history.go(-1)');
	}
	$tbr=$Elves->fetch1("select tid from {$dbtbpre}melvetable where tbname='$tbname' limit 1");
	if(!$tbr['tid'])
	{
		printerror('EmptyTogZt','history.go(-1)');
	}
	$wheresql="";
	$formvar="";
	//关键字
	$keyboard=RepPostVar2($add['keyboard']);
	if($keyboard)
	{
		$formvar.=ReturnFormHidden('keyboard',$add['keyboard']);
		$searchfsql='';
		if($add['stitle'])//标题
		{
			$searchfsql.="title like '%$keyboard%'";
			$formvar.=ReturnFormHidden('stitle',$add['stitle']);
		}
		if($add['susername'])//增加者
		{
			if($searchfsql)
			{
				$or=" or ";
			}
			$searchfsql.=$or."username like '%$keyboard%'";
			$formvar.=ReturnFormHidden('susername',$add['susername']);
		}
		if($searchfsql)
		{
			$wheresql=" and (".$searchfsql.")";
		}
	}
	//是否推荐
	if($add['isgood'])
	{
		$wheresql.=" and isgood>0";
		$formvar.=ReturnFormHidden('isgood',$add['isgood']);
	}
	//头条
	if($add['firsttitle'])
	{
		$wheresql.=" and firsttitle>0";
		$formvar.=ReturnFormHidden('firsttitle',$add['firsttitle']);
	}
	//有标题图片
	if($add['titlepic'])
	{
		$wheresql.=" and ispic=1";
		$formvar.=ReturnFormHidden('titlepic',$add['titlepic']);
	}
	//按栏目刷新
	$classid=(int)$add['classid'];
    if($classid)
	{
		$formvar.=ReturnFormHidden('classid',$classid);
		if(empty($class_r[$classid][islast]))//大栏目
		{
			$where=ReturnClass($class_r[$classid][sonclass]);
		}
		else//终极栏目
		{
			$where="classid='$classid'";
		}
		$wheresql.=" and (".$where.")";
    }
	$startid=(int)$add[startid];
	$endid=(int)$add[endid];
	$startday=RepPostVar($add[startday]);
	$endday=RepPostVar($add[endday]);
	$formvar.=ReturnFormHidden('retype',$add['retype']);
	//按ID
    if($add['retype'])
	{
		if($endid)
		{
			$wheresql.=" and id>=$startid and id<=$endid";
			$formvar.=ReturnFormHidden('startid',$add[startid]).ReturnFormHidden('endid',$add[endid]);
	    }
    }
    else
	{
		if($startday&&$endday)
		{
			$wheresql.=" and truetime>=".to_time($startday." 00:00:00")." and truetime<=".to_time($endday." 23:59:59");
			$formvar.=ReturnFormHidden('startday',$add[startday]).ReturnFormHidden('endday',$add[endday]);
	    }
    }
	//附件sql条件
	$query=$add['query'];
	if($query)
	{
		$query=ClearAddsData($query);//去除adds
		$wheresql.=" and (".$query.")";
		$formvar.=ReturnFormHidden('query',$add['query']);
	}
	if(empty($wheresql))
	{
		printerror('EmptyTogZt','history.go(-1)');
	}
	$wheresql=substr($wheresql,5);
	if($add['doelvezt'])
	{
		$togtype=(int)$add['togtype'];
		if($togtype==1)//组合选中
		{
			$add['inid']=eReturnInids($add['inid']);
			$wheresql="id in (".$add['inid'].")";
		}
		else//排除选中
		{
			if($add['inid'])
			{
				$add['inid']=eReturnInids($add['inid']);
				$wheresql.=" and id not in (".$add['inid'].")";
			}
		}
		AddMoreInfoToZt($ztid,$zcid,$tbname,$wheresql);
		//操作日志
	    insert_dolog("ztid=$ztid&ztname=$r[ztname]");
		printerror("TogZtSuccess","TogZt.php?ztid=$ztid");
	}
	$re[0]=$wheresql;
	$re[1]=$formvar.ReturnFormHidden('ztid',$ztid).ReturnFormHidden('zcid',$zcid).ReturnFormHidden('tbname',$tbname).ReturnFormHidden('pline',$add[pline]).ReturnFormHidden('doelvezt',$add[doelvezt]).ReturnFormHidden('melve',$add[melve]).ReturnFormHidden('inid',$add[inid]);
	$re[2]=$tbname;
	$re[3]=$r['ztname'];
	return $re;
}

//保存专题信息
function SaveTogZtInfo($add,$userid,$username){
	global $Elves,$dbtbpre;
	if(!trim($add[togztname]))
	{
		printerror('EmptySaveTogZtname','history.go(-1)');
	}
	$add['doelvezt']=(int)$add['doelvezt'];
	$add[classid]=(int)$add[classid];
	//搜索字段
	$searchf=',';
	if($add[stitle]==1)
	{
		$searchf.='stitle,';
	}
	if($add[susername]==1)
	{
		$searchf.='susername,';
	}
	if($add[snewstext]==1)
	{
		$searchf.='snewstext,';
	}
	//特殊字段
	$specialsearch=',';
	if($add[isgood])
	{
		$specialsearch.='isgood,';
	}
	if($add[firsttitle])
	{
		$specialsearch.='firsttitle,';
	}
	if($add[titlepic])
	{
		$specialsearch.='titlepic,';
	}
	$add['retype']=(int)$add['retype'];
	$add['startid']=(int)$add['startid'];
	$add['endid']=(int)$add['endid'];
	$add['pline']=(int)$add['pline'];
	$r=$Elves->fetch1("select togid from {$dbtbpre}melvetogzts where togztname='$add[togztname]'");
	if($r[togid])
	{
		$sql=$Elves->query("update {$dbtbpre}melvetogzts set keyboard='".eaddslashes($add[keyboard])."',searchf='$searchf',query='".eaddslashes($add[query])."',specialsearch='$specialsearch',classid=$add[classid],retype=$add[retype],startday='".eaddslashes($add[startday])."',endday='".eaddslashes($add[endday])."',startid=$add[startid],endid=$add[endid],pline=$add[pline],doelvezt=$add[doelvezt] where togid='$r[togid]'");
		$togid=$r[togid];
	}
	else
	{
		$sql=$Elves->query("insert into {$dbtbpre}melvetogzts(keyboard,searchf,query,specialsearch,classid,retype,startday,endday,startid,endid,pline,doelvezt,togztname) values('".eaddslashes($add[keyboard])."','$searchf','".eaddslashes($add[query])."','$specialsearch',$add[classid],$add[retype],'".eaddslashes($add[startday])."','".eaddslashes($add[endday])."',$add[startid],$add[endid],$add[pline],$add[doelvezt],'".eaddslashes($add[togztname])."');");
		$togid=$Elves->lastid();
	}
	if($sql)
	{
		insert_dolog("togid=$togid&togztname=$add[togztname]");//操作日志
		printerror("SaveTogZtInfoSuccess","TogZt.php?ztid=$add[ztid]&togid=$togid");
	}
	else
	{
		printerror("DbError","history.go(-1)");
	}
}

//删除保存专题信息
function DelTogZtInfo($add,$userid,$username){
	global $Elves,$dbtbpre;
	$togid=intval($add[togid]);
	if(!$togid)
	{
		printerror('EmptyDelTogztid','history.go(-1)');
	}
	$r=$Elves->fetch1("select togid,togztname from {$dbtbpre}melvetogzts where togid='$togid'");
	if(!$r[togid])
	{
		printerror('EmptyDelTogztid','history.go(-1)');
	}
	$sql=$Elves->query("delete from {$dbtbpre}melvetogzts where togid='$togid'");
	if($sql)
	{
		insert_dolog("togid=$togid&togztname=$r[togztname]");//操作日志
		printerror('DelTogZtInfoSuccess',$_SERVER['HTTP_REFERER']);
	}
	else
	{
		printerror("DbError","history.go(-1)");
	}
}


//************************************ 栏目 ************************************

//返回字段值
function ReturnCFvalue($value)
{
	$value=str_replace("\r\n","|",$value);
	return $value;
}

//取得栏目表单元素html代码
function GetClassFform($type,$f,$fvalue,$fformsize=''){
	if($type=="select"||$type=="radio"||$type=="checkbox")
	{
		return GetCFformSelect($type,$f,$fvalue,$fformsize);
	}
	$file="../data/html/classfhtml.txt";
	$data=ReadFiletext($file);
	$exp="[!--".$type."--]";
	$r=explode($exp,$data);
	$string=str_replace("[!--melve.var--]",$f,$r[1]);
	$string=str_replace("[!--melve.def.val--]",$fvalue,$string);
	if($type=='editor')//编辑器
	{
		$editortype='Default';
		$string=str_replace("[!--editor.type--]",$editortype,$string);
		$string=str_replace("[!--editor.basepath--]",'',$string);
	}
	elseif($type=='img'||$type=='flash'||$type=='file')//附件
	{
		$string=str_replace("[!--melve.modtype--]",'1',$string);
		$string=str_replace("[!--melve.path--]",'',$string);
	}
	$string=RepCFformSize($f,$string,$type,$fformsize);
	return fAddAddsData($string);
}

//取得select/radio元素代码
function GetCFformSelect($type,$f,$fvalue,$fformsize=''){
	$vr=explode("|",$fvalue);
	$count=count($vr);
	$change="";
	$def=':default';
	for($i=0;$i<$count;$i++)
	{
		$val=$vr[$i];
		$isdef="";
		if(strstr($val,$def))
		{
			$dr=explode($def,$val);
			$val=$dr[0];
			$isdef="||\$elvefirstpost==1";
		}
		if($type=='select')
		{
			$change.="<option value=\"".$val."\"<?=\$r[".$f."]==\"".$val."\"".$isdef."?' selected':''?>>".$val."</option>";
		}
		elseif($type=='checkbox')
		{
			$change.="<input name=\"".$f."[]\" type=\"checkbox\" value=\"".$val."\"<?=strstr(\$r[".$f."],\"|".$val."|\")".$isdef."?' checked':''?>>".$val;
		}
		else
		{
			$change.="<input name=\"".$f."\" type=\"radio\" value=\"".$val."\"<?=\$r[".$f."]==\"".$val."\"".$isdef."?' checked':''?>>".$val;
		}
	}
	if($type=="select")
	{
		if($fformsize)
		{
			$addsize=' style="width:'.$fformsize.'"';
		}
		$change="<select name=\"".$f."\" id=\"".$f."\"".$addsize.">".$change."</select>";
	}
	return $change;
}

//替换表单元素长度
function RepCFformSize($f,$string,$type,$fformsize=''){
	$fformsize=ReturnDefCFformSize($f,$type,$fformsize);
	if($type=='textarea'||$type=='editor')
	{
		$r=explode(',',$fformsize);
		$string=str_replace('[!--fsize.w--]',$r[0],$string);
		$string=str_replace('[!--fsize.h--]',$r[1],$string);
	}
	else
	{
		$string=str_replace('[!--fsize.w--]',$fformsize,$string);
	}
	return $string;
}

//返回默认长度
function ReturnDefCFformSize($f,$type,$fformsize){
	if(empty($fformsize))
	{
		if($type=='textarea')
		{
			$fformsize='60,10';
		}
		elseif($type=='img')
		{
			$fformsize='45';
		}
		elseif($type=='file')
		{
			$fformsize='45';
		}
		elseif($type=='flash')
		{
			$fformsize='45';
		}
		elseif($type=='date')
		{
			$fformsize='12';
		}
		elseif($type=='color')
		{
			$fformsize='10';
		}
		elseif($type=='linkfield')
		{
			$fformsize='45';
		}
		elseif($type=='downpath')
		{
			$fformsize='45';
		}
		elseif($type=='onlinepath')
		{
			$fformsize='45';
		}
		elseif($type=='editor')
		{
			$fformsize='100%,300';
		}
	}
	return $fformsize;
}

//更新栏目表单文件
function ChangeClassForm(){
	global $Elves,$dbtbpre;
	$file='../data/html/classaddform.php';
	$mtemp='';
	$sql=$Elves->query("select fname,f,fhtml from {$dbtbpre}melveclassf order by myorder,fid");
	while($r=$Elves->fetch($sql))
	{
		$mtemp.="<tr bgcolor='#FFFFFF' height=25><td>".$r['fname']."</td><td>".$r['fhtml']."</td></tr>";
    }
	$mtemp="<?php
if(!defined('InElvesCMS'))
{exit();}
?>".$mtemp;
	WriteFiletext($file,$mtemp);
}

//增加栏目字段
function AddClassF($add,$userid,$username){
	global $Elves,$dbtbpre;
	//验证权限
	CheckLevel($userid,$username,$classid,"classf");
	$add[f]=RepPostVar($add[f]);
	if(empty($add[f])||empty($add[fname]))
	{
		printerror("EmptyF","");
	}
	//字段是否重复
	$s=$Elves->query("SHOW FIELDS FROM {$dbtbpre}melveclassadd");
	$b=0;
	while($r=$Elves->fetch($s))
	{
		if($r[Field]==$add[f])
		{
			$b=1;
			break;
		}
    }
	if($b)
	{
		printerror("ReF","");
	}
	$s=$Elves->query("SHOW FIELDS FROM {$dbtbpre}melveclass");
	$b=0;
	while($r=$Elves->fetch($s))
	{
		if($r[Field]==$add[f])
		{
			$b=1;
			break;
		}
    }
	if($b)
	{
		printerror("ReF","");
	}
	$add[fvalue]=ReturnCFvalue($add[fvalue]);//初始化值
	//字段类型
	if($add[ftype]=="TINYINT"||$add[ftype]=="SMALLINT"||$add[ftype]=="INT"||$add[ftype]=="BIGINT"||$add[ftype]=="FLOAT"||$add[ftype]=="DOUBLE")
	{
		$def=" default '0'";
	}
	elseif($add[ftype]=="VARCHAR")
	{
		$def=" default ''";
	}
	else
	{
		$def="";
	}
	$type=$add[ftype];
	//VARCHAR
	if($add[ftype]=='VARCHAR'&&empty($add[flen]))
	{
		$add[flen]='255';
	}
	//字段长度
	if($add[flen]){
		if($add[ftype]!="TEXT"&&$add[ftype]!="MEDIUMTEXT"&&$add[ftype]!="LONGTEXT"){
			$type.="(".$add[flen].")";
		}
	}
	$field="`".$add[f]."` ".$type." NOT NULL".$def;
	//新增字段
	$asql=$Elves->query("alter table {$dbtbpre}melveclassadd add ".$field);
	//替换代码
	$fhtml=GetClassFform($add[fform],$add[f],$add[fvalue],$add[fformsize]);
	if($add[fform]=='select'||$add[fform]=='radio'||$add[fform]=='checkbox')
	{
		$fhtml=str_replace("\$r[","\$addr[",$fhtml);
	}
	//处理变量
	$add[myorder]=(int)$add[myorder];
	$sql=$Elves->query("insert into {$dbtbpre}melveclassf(f,fname,fform,fhtml,fzs,myorder,ftype,flen,fvalue,fformsize) values('$add[f]','$add[fname]','$add[fform]','".eaddslashes2($fhtml)."','".eaddslashes($add[fzs])."',$add[myorder],'$add[ftype]','$add[flen]','".eaddslashes2($add[fvalue])."','$add[fformsize]');");
	$lastid=$Elves->lastid();
	//更新表单
	ChangeClassForm();
	if($asql&&$sql)
	{
		//操作日志
		insert_dolog("fid=".$lastid."<br>f=".$add[f]);
		printerror("AddFSuccess","info/AddClassF.php?melve=AddClassF");
	}
	else
	{
		printerror("DbError","history.go(-1)");
	}
}

//修改栏目字段
function EditClassF($add,$userid,$username){
	global $Elves,$dbtbpre;
	//验证权限
	CheckLevel($userid,$username,$classid,"classf");
	$fid=(int)$add['fid'];
	$add[f]=RepPostVar($add[f]);
	$add[oldf]=RepPostVar($add[oldf]);
	if(empty($add[f])||empty($add[fname])||!$fid){
		printerror("EmptyF","history.go(-1)");
	}
	if($add[f]<>$add[oldf]){
		//字段是否重复
		$s=$Elves->query("SHOW FIELDS FROM {$dbtbpre}melveclassadd");
		$b=0;
		while($r=$Elves->fetch($s)){
			if($r[Field]==$add[f]){
				$b=1;
				break;
			}
		}
		if($b){
			printerror("ReF","history.go(-1)");
		}
		$s=$Elves->query("SHOW FIELDS FROM {$dbtbpre}melveclass");
		$b=0;
		while($r=$Elves->fetch($s))
		{
			if($r[Field]==$add[f])
			{
				$b=1;
				break;
			}
		}
		if($b)
		{
			printerror("ReF","");
		}
	}
	$add[fvalue]=ReturnCFvalue($add[fvalue]);//初始化值
	//字段类型
	if($add[ftype]=="TINYINT"||$add[ftype]=="SMALLINT"||$add[ftype]=="INT"||$add[ftype]=="BIGINT"||$add[ftype]=="FLOAT"||$add[ftype]=="DOUBLE")
	{
		$def=" default '0'";
	}
	elseif($add[ftype]=="VARCHAR")
	{
		$def=" default ''";
	}
	else
	{
		$def="";
	}
	$type=$add[ftype];
	//VARCHAR
	if($add[ftype]=='VARCHAR'&&empty($add[flen]))
	{
		$add[flen]='255';
	}
	//字段长度
	if($add[flen]){
		if($add[ftype]!="TEXT"&&$add[ftype]!="MEDIUMTEXT"&&$add[ftype]!="LONGTEXT"){
			$type.="(".$add[flen].")";
		}
	}
	$field="`".$add[f]."` ".$type." NOT NULL".$def;
	$usql=$Elves->query("alter table {$dbtbpre}melveclassadd change `".$add[oldf]."` ".$field);
	//替换代码
	if($add[f]<>$add[oldf]||$add[fform]<>$add[oldfform]||$add[fvalue]<>$add[oldfvalue]||$add[fformsize]<>$add[oldfformsize]){
		$fhtml=GetClassFform($add[fform],$add[f],$add[fvalue],$add[fformsize]);
		if($add[fform]=='select'||$add[fform]=='radio'||$add[fform]=='checkbox')
		{
			$fhtml=str_replace("\$r[","\$addr[",$fhtml);
		}
	}
	else{
		$fhtml=$add[fhtml];
	}
	//处理变量
	$add[myorder]=(int)$add[myorder];
	$sql=$Elves->query("update {$dbtbpre}melveclassf set f='$add[f]',fname='$add[fname]',fform='$add[fform]',fhtml='".eaddslashes2($fhtml)."',fzs='".eaddslashes($add[fzs])."',myorder=$add[myorder],ftype='$add[ftype]',flen='$add[flen]',fvalue='".eaddslashes2($add[fvalue])."',fformsize='$add[fformsize]' where fid=$fid");
	//更新表单
	ChangeClassForm();
	if($usql&&$sql)
	{
		insert_dolog("fid=".$fid."<br>f=".$add[f]);//操作日志
		printerror("EditFSuccess","info/ListClassF.php");
	}
	else
	{printerror("DbError","history.go(-1)");}
}

//删除栏目字段
function DelClassF($add,$userid,$username){
	global $Elves,$dbtbpre;
	//验证权限
	CheckLevel($userid,$username,$classid,"classf");
	$fid=(int)$add['fid'];
	if(empty($fid)){
		printerror("EmptyFid","history.go(-1)");
	}
	$r=$Elves->fetch1("select f from {$dbtbpre}melveclassf where fid='$fid'");
	if(!$r[f]){
		printerror("EmptyFid","history.go(-1)");
	}
	$usql=$Elves->query("alter table {$dbtbpre}melveclassadd drop COLUMN `".$r[f]."`");
	$sql=$Elves->query("delete from {$dbtbpre}melveclassf where fid='$fid'");
	//更新表单表
	ChangeClassForm();
	if($usql&&$sql)
	{
		insert_dolog("fid=".$fid."<br>f=".$r[f]);//操作日志
		printerror("DelFSuccess","info/ListClassF.php");
	}
	else
	{printerror("DbError","history.go(-1)");}
}

//修改栏目字段顺序
function EditClassFOrder($fid,$myorder,$userid,$username){
	global $Elves,$dbtbpre;
	//验证权限
	CheckLevel($userid,$username,$classid,"classf");
	for($i=0;$i<count($myorder);$i++)
	{
		$fid[$i]=(int)$fid[$i];
		$newmyorder=(int)$myorder[$i];
		$usql=$Elves->query("update {$dbtbpre}melveclassf set myorder=$newmyorder where fid='$fid[$i]'");
    }
	//更新表单表
	ChangeClassForm();
	printerror("EditFOrderSuccess","info/ListClassF.php");
}

//返回栏目字段
function ReturnClassAddF($add,$elve=0){
	global $Elves,$dbtbpre;
	$ret_r[0]='';
	$ret_r[1]='';
	$fsql=$Elves->query("select f from {$dbtbpre}melveclassf");
	if($elve==0)//增加
	{
		while($fr=$Elves->fetch($fsql))
		{
			$f=$fr['f'];
			$fval=$add[$f];
			$fval=RepPhpAspJspcode($fval);
			$ret_r[0].=",`".$f."`";
			$ret_r[1].=",'".AddAddsData($fval)."'";
		}
	}
	else//修改
	{
		while($fr=$Elves->fetch($fsql))
		{
			$f=$fr['f'];
			$fval=$add[$f];
			$fval=RepPhpAspJspcode($fval);
			$ret_r[0].=",`".$f."`='".AddAddsData($fval)."'";
		}
	}
	return $ret_r;
}


//组合不生成的栏目信息
function TogNotReClass($changecache=0){
	global $Elves,$dbtbpre;
	$sql=$Elves->query("select classid,nreclass,nreinfo,nrejs,nottobq from {$dbtbpre}melveclass where nreclass=1 or nreinfo=1 or nrejs=1 or nottobq=1");
	$nreclass=',';
	$nreinfo=',';
	$nrejs=',';
	$nottobq=',';
	while($r=$Elves->fetch($sql))
	{
		if($r['nreclass']==1)
		{
			$nreclass.=$r['classid'].',';
		}
		if($r['nreinfo']==1)
		{
			$nreinfo.=$r['classid'].',';
		}
		if($r['nrejs']==1)
		{
			$nrejs.=$r['classid'].',';
		}
		if($r['nottobq']==1)
		{
			$nottobq.=$r['classid'].',';
		}
	}
	$Elves->query("update {$dbtbpre}melvepublic set nreclass='$nreclass',nreinfo='$nreinfo',nrejs='$nrejs',nottobq='$nottobq' limit 1");
	if($changecache==1)
	{
		GetConfig();
	}
}

//返回投稿权限
function DoPostClassQAddGroupid($groupid){
	$count=count($groupid);
	if(!$count)
	{
		return '';
	}
	$qg=',';
	for($i=0;$i<$count;$i++)
	{
		$groupid[$i]=(int)$groupid[$i];
		$qg.=$groupid[$i].',';
	}
	return $qg;
}

//处理栏目提交变量
function DoPostClassVar($add){
	if(empty($add[classtype])){
		$add[classtype]=".html";
	}
	$add[classname]=eaddslashes(ehtmlspecialchars($add[classname]));
	$add[intro]=eaddslashes(RepPhpAspJspcode($add[intro]));
	$add[classpagekey]=eaddslashes(RepPhpAspJspcode($add[classpagekey]));
	//过滤字符
	$add[listorder]=RepPostVar2($add[listorder]);
	$add[reorder]=RepPostVar2($add[reorder]);
	//处理变量
	$add[jstempid]=(int)$add['jstempid'];
	$add[bclassid]=(int)$add[bclassid];
	$add[link_num]=(int)$add[link_num];
	$add[newstempid]=(int)$add[newstempid];
	$add[islast]=(int)$add[islast];
	$add[filename]=(int)$add[filename];
	$add[openpl]=(int)$add[openpl];
	$add[openadd]=(int)$add[openadd];
	$add[newline]=(int)$add[newline];
	$add[hotline]=(int)$add[hotline];
	$add[goodline]=(int)$add[goodline];
	$add[groupid]=(int)$add[groupid];
	$add[hotplline]=(int)$add[hotplline];
	$add[modid]=(int)$add[modid];
	$add[checked]=(int)$add[checked];
	$add[firstline]=(int)$add[firstline];
	$add[islist]=(int)$add[islist];
	$add[searchtempid]=(int)$add[searchtempid];
	$add[checkpl]=(int)$add[checkpl];
	$add[down_num]=(int)$add[down_num];
	if(empty($add[down_num])){
		$add[down_num]=1;
	}
	$add[online_num]=(int)$add[online_num];
	if(empty($add[online_num])){
		$add[online_num]=1;
	}
	$add[addinfofen]=(int)$add[addinfofen];
	$add[listdt]=(int)$add[listdt];
	$add[showdt]=(int)$add[showdt];
	$add[maxnum]=(int)$add[maxnum];
	$add[showclass]=(int)$add[showclass];
	$add[checkqadd]=(int)$add[checkqadd];
	$add[qaddlist]=(int)$add[qaddlist];
	$add[qaddgroupid]=DoPostClassQAddGroupid($add[qaddgroupidck]);
	$add[qaddshowkey]=(int)$add[qaddshowkey];
	$add[adminqinfo]=(int)$add[adminqinfo];
	$add[doctime]=(int)$add[doctime];
	$add[nreclass]=(int)$add[nreclass];
	$add[nreinfo]=(int)$add[nreinfo];
	$add[nrejs]=(int)$add[nrejs];
	$add[nottobq]=(int)$add[nottobq];
	$add[lencord]=(int)$add[lencord];
	$add[listtempid]=(int)$add[listtempid];
	$add[dtlisttempid]=(int)$add[dtlisttempid];
	$add[classtempid]=(int)$add[classtempid];
	if(empty($add[bname])){
		$add[bname]=$add[classname];
	}
	$add[myorder]=(int)$add[myorder];
	if($add[infopath]==0)
	{
		$add[ipath]='';
	}
	$add[addreinfo]=(int)$add[addreinfo];
	$add[haddlist]=(int)$add[haddlist];
	$add[sametitle]=(int)$add[sametitle];
	$add[definfovoteid]=(int)$add[definfovoteid];
	$add[qeditchecked]=(int)$add[qeditchecked];
	$add[wapstyleid]=(int)$add[wapstyleid];
	$add[repreinfo]=(int)$add[repreinfo];
	$add[pltempid]=(int)$add[pltempid];
	$add[classtext]=RepPhpAspJspcode($add[classtext]);
	$add[yhid]=(int)$add[yhid];
	$add[wfid]=(int)$add[wfid];
	$add['repagenum']=(int)$add['repagenum'];
	$add['keycid']=(int)$add['keycid'];
	$add['filepass']=(int)$add['filepass'];
	if($add['islist']==3)
	{
		$add['bdinfoid']=RepPostVar($add['bdinfoid']);
	}
	else
	{
		$add['bdinfoid']='';
	}
	if($add[islast]&&$add['smallbdinfoid'])
	{
		$add['smallbdinfoid']=RepPostVar($add['smallbdinfoid']);
	}
	else
	{
		$add['smallbdinfoid']='';
	}
	//设置访问权限
	$add[cgroupid]=DoPostClassQAddGroupid($add[cgroupidck]);
	$add[cgtoinfo]=(int)$add[cgtoinfo];
	if($add[cgroupid])
	{
		$add[classtype]='.php';
		if($add[cgtoinfo])
		{
			$add[filetype]='.php';
		}
	}
	else
	{
		$add[cgtoinfo]=0;
	}
	return $add;
}

//增加外部栏目
function AddWbClass($add,$userid,$username){
	global $Elves,$dbtbpre;
	//操作权限
	CheckLevel($userid,$username,$classid,"class");
	$add=DoPostClassVar($add);
	if(!$add[classname]||!$add[wburl])
	{
		printerror("EmptyWbClass","");
	}
	$add[islast]=0;
	$addtime=time();
	//取得表名
	$tabler=GetModTable($add[modid]);
	$tabler[tid]=(int)$tabler[tid];
	if(empty($add[bclassid]))//主栏目
	{
		$sonclass="";
		$featherclass="";
	}
	else//中级栏目
	{
		//取得上一级父栏目
		$r=$Elves->fetch1("select featherclass,islast,wburl from {$dbtbpre}melveclass where classid='$add[bclassid]'");
		if($r[islast])//是否终极栏目
		{
			printerror("BclassNotLast","");
		}
		if($r[wburl])
		{
			printerror("BclassNotWb","");
		}
		if(empty($r[featherclass]))
		{
			$r[featherclass]="|";
		}
		$featherclass=$r[featherclass].$add[bclassid]."|";
		$sonclass="";
	}
	$sql=$Elves->query("insert into {$dbtbpre}melveclass(bclassid,classname,is_zt,sonclass,lencord,link_num,newstempid,onclick,listtempid,featherclass,islast,classpath,classtype,newspath,filename,filetype,openpl,openadd,newline,hotline,goodline,classurl,groupid,myorder,filename_qz,hotplline,modid,checked,firstline,bname,islist,searchtempid,tid,tbname,maxnum,checkpl,down_num,online_num,listorder,reorder,intro,classimg,jstempid,addinfofen,listdt,showclass,showdt,checkqadd,qaddlist,qaddgroupid,qaddshowkey,adminqinfo,doctime,classpagekey,dtlisttempid,classtempid,nreclass,nreinfo,nrejs,nottobq,ipath,addreinfo,haddlist,sametitle,definfovoteid,wburl,qeditchecked,wapstyleid,repreinfo,pltempid,cgroupid,yhid,wfid,cgtoinfo,bdinfoid,repagenum,keycid,addtime) values($add[bclassid],'$add[classname]',0,'$sonclass',$add[lencord],$add[link_num],$add[newstempid],0,$add[listtempid],'$featherclass',$add[islast],'$classpath','$add[classtype]','$add[newspath]',$add[filename],'$add[filetype]',$add[openpl],$add[openadd],$add[newline],$add[hotline],$add[goodline],'$add[classurl]',$add[groupid],$add[myorder],'$add[filename_qz]',$add[hotplline],$add[modid],$add[checked],$add[firstline],'$add[bname]',$add[islist],$add[searchtempid],$tabler[tid],'$tabler[tbname]',$add[maxnum],$add[checkpl],$add[down_num],$add[online_num],'$add[listorder]','$add[reorder]','$add[intro]','$add[classimg]',$add[jstempid],$add[addinfofen],$add[listdt],$add[showclass],$add[showdt],$add[checkqadd],$add[qaddlist],'$add[qaddgroupid]',$add[qaddshowkey],$add[adminqinfo],$add[doctime],'$add[classpagekey]','$add[dtlisttempid]','$add[classtempid]',$add[nreclass],$add[nreinfo],$add[nrejs],$add[nottobq],'$add[ipath]',$add[addreinfo],$add[haddlist],$add[sametitle],$add[definfovoteid],'$add[wburl]',$add[qeditchecked],$add[wapstyleid],'$add[repreinfo]','$add[pltempid]','$add[cgroupid]','$add[yhid]','$add[wfid]','$add[cgtoinfo]','$add[bdinfoid]','$add[repagenum]','$add[keycid]','$addtime');");
	$lastid=$Elves->lastid();
	//副表
	$ret_cr=ReturnClassAddF($add,0);
	$Elves->query("replace into {$dbtbpre}melveclassadd(classid,classtext".$ret_cr[0].") values('$lastid','".eaddslashes2($add[classtext])."'".$ret_cr[1].");");
	//统计表
	$Elves->query("replace into {$dbtbpre}melveclass_stats(classid) values('$lastid');");
	//更新附件
	UpdateTheFileOther(1,$lastid,$add['filepass'],'other');
	GetClass();
	//DelListmelve();//删除缓存文件
	if($sql)
	{
		//删除导航缓存
		$Elves->query("delete from {$dbtbpre}melveclassnavcache where navtype='listclass'");
		$cache_melve='doclass';
		$cache_elvetourl=urlencode("AddClass.php?melve=AddClass&from=$add[from]");
		$cache_mess='AddClassSuccess';
		$cache_url="CreateCache.php?melve=$cache_melve&elvetourl=$cache_elvetourl&mess=$cache_mess";
		insert_dolog("classid=".$lastid."<br>classname=".$add[classname]);//操作日志
		//printerror("AddClassSuccess","AddClass.php?melve=AddClass&from=$add[from]");
		echo'<meta http-equiv="refresh" content="0;url='.$cache_url.'">';
		db_close();
		$Elves=null;
		exit();
	}
	else
	{
		printerror("DbError","");
	}
}

//增加栏目
function AddClass($add,$userid,$username){
	global $Elves,$dbtbpre;
	//增加外部栏目
	if($add[elveclasstype])
	{
		AddWbClass($add,$userid,$username);
	}
	$add[classpath]=trim($add[classpath]);
	if(!$add[classname]||!$add[classpath]||!$add[modid])
	{
		printerror("EmptyClass","");
	}
	if($add[islast]&&(!$add[newstempid]||!$add[listtempid]))
	{
		printerror("LastMustChange","");
	}
	//操作权限
	CheckLevel($userid,$username,$classid,"class");
	$add=DoPostClassVar($add);
	//目录已存在
	if(strstr($add[classpath],".")||strstr($add[classpath],"/")||strstr($add[classpath],"\\"))
	{
		printerror("badpath","");
	}
	$classpath=$add[pripath].$add[classpath];
	if(file_exists("../../".$classpath))
	{
		printerror("ReClasspath","");
	}
	$addtime=time();
	//取得表名
	$tabler=GetModTable($add[modid]);
	$tabler[tid]=(int)$tabler[tid];
	//增加大栏目
	if(!$add[islast])
	{
		if(empty($add[bclassid]))//主栏目
		{
			$sonclass="";
			$featherclass="";
	    }
		else//中级栏目
		{
			//取得上一级父栏目
			$r=$Elves->fetch1("select featherclass,islast,wburl from {$dbtbpre}melveclass where classid='$add[bclassid]'");
			if($r[islast])//是否终极栏目
			{
				printerror("BclassNotLast","");
			}
			if($r[wburl])
			{
				printerror("BclassNotWb","");
			}
			if(empty($r[featherclass]))
			{
				$r[featherclass]="|";
			}
			$featherclass=$r[featherclass].$add[bclassid]."|";
			$sonclass="";
	    }
		//建立目录
		CreateClassPath($classpath);
		$sql=$Elves->query("insert into {$dbtbpre}melveclass(bclassid,classname,is_zt,sonclass,lencord,link_num,newstempid,onclick,listtempid,featherclass,islast,classpath,classtype,newspath,filename,filetype,openpl,openadd,newline,hotline,goodline,classurl,groupid,myorder,filename_qz,hotplline,modid,checked,firstline,bname,islist,searchtempid,tid,tbname,maxnum,checkpl,down_num,online_num,listorder,reorder,intro,classimg,jstempid,addinfofen,listdt,showclass,showdt,checkqadd,qaddlist,qaddgroupid,qaddshowkey,adminqinfo,doctime,classpagekey,dtlisttempid,classtempid,nreclass,nreinfo,nrejs,nottobq,ipath,addreinfo,haddlist,sametitle,definfovoteid,wburl,qeditchecked,wapstyleid,repreinfo,pltempid,cgroupid,yhid,wfid,cgtoinfo,bdinfoid,repagenum,keycid,addtime) values($add[bclassid],'$add[classname]',0,'$sonclass',$add[lencord],$add[link_num],$add[newstempid],0,$add[listtempid],'$featherclass',$add[islast],'$classpath','$add[classtype]','$add[newspath]',$add[filename],'$add[filetype]',$add[openpl],$add[openadd],$add[newline],$add[hotline],$add[goodline],'$add[classurl]',$add[groupid],$add[myorder],'$add[filename_qz]',$add[hotplline],$add[modid],$add[checked],$add[firstline],'$add[bname]',$add[islist],$add[searchtempid],$tabler[tid],'$tabler[tbname]',$add[maxnum],$add[checkpl],$add[down_num],$add[online_num],'$add[listorder]','$add[reorder]','$add[intro]','$add[classimg]',$add[jstempid],$add[addinfofen],$add[listdt],$add[showclass],$add[showdt],$add[checkqadd],$add[qaddlist],'$add[qaddgroupid]',$add[qaddshowkey],$add[adminqinfo],$add[doctime],'$add[classpagekey]','$add[dtlisttempid]','$add[classtempid]',$add[nreclass],$add[nreinfo],$add[nrejs],$add[nottobq],'$add[ipath]',$add[addreinfo],$add[haddlist],$add[sametitle],$add[definfovoteid],'',$add[qeditchecked],$add[wapstyleid],'$add[repreinfo]','$add[pltempid]','$add[cgroupid]','$add[yhid]','$add[wfid]','$add[cgtoinfo]','$add[bdinfoid]','$add[repagenum]','$add[keycid]','$addtime');");
		$lastid=$Elves->lastid();
		//副表
		$ret_cr=ReturnClassAddF($add,0);
		$Elves->query("replace into {$dbtbpre}melveclassadd(classid,classtext".$ret_cr[0].") values('$lastid','".eaddslashes2($add[classtext])."'".$ret_cr[1].");");
		//统计表
		$Elves->query("replace into {$dbtbpre}melveclass_stats(classid) values('$lastid');");
		//更新附件
		UpdateTheFileOther(1,$lastid,$add['filepass'],'other');
		TogNotReClass(1);
		GetClass();
		if($add[islist]==0||$add[islist]==2)
		{
			$classtemp=$add[islist]==2?GetClassText($lastid):GetClassTemp($add['classtempid']);
			NewsBq($lastid,$classtemp,0,1);
		}
		elseif($add[islist]==3)//栏目绑定信息
		{
			ReClassBdInfo($lastid);
		}
		DelListmelve();//删除缓存文件
		//GetSearch($add[modid]);//更新缓存
		if($sql)
		{
			//删除导航缓存
			$Elves->query("delete from {$dbtbpre}melveclassnavcache where navtype='listclass' or navtype='listmelve' or navtype='jsclass' or (navtype='modclass' and modid='$add[modid]')");
			DelFiletext("../d/js/js/addinfo".$add[modid].".js");
			$cache_melve='doclass,doinfo,domod,dostemp';
			$cache_elvetourl=urlencode("AddClass.php?melve=AddClass&from=$add[from]");
			$cache_mess='AddClassSuccess';
			$cache_mid=$add[modid];
			$cache_url="CreateCache.php?melve=$cache_melve&mid=$cache_mid&elvetourl=$cache_elvetourl&mess=$cache_mess";
			insert_dolog("classid=".$lastid."<br>classname=".$add[classname]);//操作日志
			//printerror("AddClassSuccess","AddClass.php?melve=AddClass&from=$add[from]");
			echo'<meta http-equiv="refresh" content="0;url='.$cache_url.'">';
			db_close();
			$Elves=null;
			exit();
		}
		else
		{
			printerror("DbError","");
		}
    }
	//增加终级栏目
	else
	{
		//文件前缀
		$add[filename_qz]=RepFilenameQz($add[filename_qz]);
		if(empty($add[bclassid]))//主类别为终级栏目时
		{
			$sonclass="";
			$featherclass="";
	    }
		else//子栏目
		{
			//取得上一级父栏目
			$r=$Elves->fetch1("select featherclass,islast,wburl from {$dbtbpre}melveclass where classid='$add[bclassid]'");
			//是否终极类别
			if($r[islast])
			{
				printerror("BclassNotLast","");
			}
			if($r[wburl])
			{
				printerror("BclassNotWb","");
			}
			if(empty($r[featherclass])){
				$r[featherclass]="|";
			}
			$featherclass=$r[featherclass].$add[bclassid]."|";
			$sonclass="";
		}
		//建立栏目目录
		CreateClassPath($classpath);
		$sql=$Elves->query("insert into {$dbtbpre}melveclass(bclassid,classname,sonclass,is_zt,lencord,link_num,newstempid,onclick,listtempid,featherclass,islast,classpath,classtype,newspath,filename,filetype,openpl,openadd,newline,hotline,goodline,classurl,groupid,myorder,filename_qz,hotplline,modid,checked,firstline,bname,islist,searchtempid,tid,tbname,maxnum,checkpl,down_num,online_num,listorder,reorder,intro,classimg,jstempid,addinfofen,listdt,showclass,showdt,checkqadd,qaddlist,qaddgroupid,qaddshowkey,adminqinfo,doctime,classpagekey,dtlisttempid,classtempid,nreclass,nreinfo,nrejs,nottobq,ipath,addreinfo,haddlist,sametitle,definfovoteid,wburl,qeditchecked,wapstyleid,repreinfo,pltempid,cgroupid,yhid,wfid,cgtoinfo,bdinfoid,repagenum,keycid,addtime) values($add[bclassid],'$add[classname]','$sonclass',0,$add[lencord],$add[link_num],$add[newstempid],0,$add[listtempid],'$featherclass',$add[islast],'$classpath','$add[classtype]','$add[newspath]',$add[filename],'$add[filetype]',$add[openpl],$add[openadd],$add[newline],$add[hotline],$add[goodline],'$add[classurl]',$add[groupid],$add[myorder],'$add[filename_qz]',$add[hotplline],$add[modid],$add[checked],$add[firstline],'$add[bname]',$add[islist],$add[searchtempid],$tabler[tid],'$tabler[tbname]',$add[maxnum],$add[checkpl],$add[down_num],$add[online_num],'$add[listorder]','$add[reorder]','$add[intro]','$add[classimg]',$add[jstempid],$add[addinfofen],$add[listdt],$add[showclass],$add[showdt],$add[checkqadd],$add[qaddlist],'$add[qaddgroupid]',$add[qaddshowkey],$add[adminqinfo],$add[doctime],'$add[classpagekey]','$add[dtlisttempid]','$add[classtempid]',$add[nreclass],$add[nreinfo],$add[nrejs],$add[nottobq],'$add[ipath]',$add[addreinfo],$add[haddlist],$add[sametitle],$add[definfovoteid],'',$add[qeditchecked],$add[wapstyleid],'$add[repreinfo]','$add[pltempid]','$add[cgroupid]','$add[yhid]','$add[wfid]','$add[cgtoinfo]','$add[smallbdinfoid]','$add[repagenum]','$add[keycid]','$addtime');");
		$lastid=$Elves->lastid();
		//副表
		$ret_cr=ReturnClassAddF($add,0);
		$Elves->query("replace into {$dbtbpre}melveclassadd(classid,classtext".$ret_cr[0].") values('$lastid','".eaddslashes2($add[classtext])."'".$ret_cr[1].");");
		//统计表
		$Elves->query("replace into {$dbtbpre}melveclass_stats(classid) values('$lastid');");
		//修改父栏目的子栏目
		if($add[bclassid])
		{
			$b_r=$Elves->fetch1("select sonclass,featherclass from {$dbtbpre}melveclass where classid='$add[bclassid]'");
			if(empty($b_r[sonclass]))
			{
				$b_r[sonclass]="|";
			}
			$new_sonclass=$b_r[sonclass].$lastid."|";
			$update=$Elves->query("update {$dbtbpre}melveclass set sonclass='$new_sonclass' where classid='$add[bclassid]'");
			//更改父类别的父栏目的子栏目
			$where=ReturnClass($b_r[featherclass]);
			if(empty($where)){
				$where="classid=0";
			}
			$bsql=$Elves->query("select sonclass,classid from {$dbtbpre}melveclass where ".$where);
			while($br=$Elves->fetch($bsql))
			{
				if(empty($br[sonclass]))
				{
					$br[sonclass]="|";
				}
				$new_sonclass=$br[sonclass].$lastid."|";
				$update=$Elves->query("update {$dbtbpre}melveclass set sonclass='$new_sonclass' where classid='$br[classid]'");
            }
	    }
		//更新附件
		UpdateTheFileOther(1,$lastid,$add['filepass'],'other');
		DelListmelve();//删除缓存文件
		TogNotReClass(1);
		GetClass();
		//GetSearch($add[modid]);//更新缓存
		if($sql)
		{
			//删除导航缓存
			$Elves->query("delete from {$dbtbpre}melveclassnavcache where navtype='listclass' or navtype='listmelve' or navtype='jsclass' or (navtype='modclass' and modid='$add[modid]')");
			DelFiletext("../d/js/js/addinfo".$add[modid].".js");
			$cache_melve='doclass,doinfo,domod,dostemp';
			$cache_elvetourl=urlencode("AddClass.php?melve=AddClass&from=$add[from]");
			$cache_mess='AddLastClassSuccess';
			$cache_mid=$add[modid];
			$cache_url="CreateCache.php?melve=$cache_melve&mid=$cache_mid&elvetourl=$cache_elvetourl&mess=$cache_mess";
			insert_dolog("classid=".$lastid."<br>classname=".$add[classname]);//操作日志
			//printerror("AddLastClassSuccess","AddClass.php?melve=AddClass&from=$add[from]");
			echo'<meta http-equiv="refresh" content="0;url='.$cache_url.'">';
			db_close();
			$Elves=null;
			exit();
		}
		else
		{
			printerror("DbError","history.go(-1)");
		}
    }
}

//绑定域名应用于子栏目
function UpdateSmallClassDomain($classid,$classurl,$classpath){
	global $Elves,$dbtbpre;
	if(empty($classurl)){
		$query="update {$dbtbpre}melveclass set classurl='' where featherclass like '%|".$classid."|%'";
    }
	else{
		$query="update {$dbtbpre}melveclass set classurl=CONCAT('".$classurl."',SUBSTRING(classpath,LENGTH('".$classpath."')+1)) where featherclass like '%|".$classid."|%'";
    }
	$sql=$Elves->query($query);
}

//栏目目录修改
function AlterClassPath($classid,$islast,$oldclasspath,$classpath){
	global $Elves,$dbtbpre;
	//更新目录名
	if($oldclasspath!=$classpath)
	{
		@rename("../../".$oldclasspath,"../../".$classpath);
		@rename("../../d/file/".$oldclasspath,"../../d/file/".$classpath);
		if(empty($islast))
		{
			$sql=$Elves->query("update {$dbtbpre}melveclass set classpath=REPLACE(classpath,'".$oldclasspath."/','".$classpath."/') where featherclass like '%|".$classid."|%'");
		}
		DelListmelve();
	}
}

//修改外部栏目
function EditWbClass($add,$userid,$username){
	global $Elves,$class_r,$dbtbpre;
	//操作权限
	CheckLevel($userid,$username,$classid,"class");
	$add=DoPostClassVar($add);
	$add[classid]=(int)$add[classid];
	if(!$add[classname]||!$add[classid]||!$add[wburl])
	{
		printerror("EmptyWbClass","");
	}
	$add[islast]=0;
	//取得表名
	$tabler=GetModTable($add[modid]);
	$tabler[tid]=(int)$tabler[tid];
	//改变大栏目
	if($add[bclassid]<>$add[oldbclassid])
	{
		//转到主栏目
		if(empty($add[bclassid]))
		{
			$sonclass="";
			$featherclass="";
		}
		//转到中级栏目
		else
		{
			//大栏目跟原栏目相同
			if($add[classid]==$add[bclassid])
			{
				printerror("BclassIsself","");
			}
			//取得现在大栏目的值
	 		$b=$Elves->fetch1("select featherclass,sonclass,islast,wburl from {$dbtbpre}melveclass where classid='$add[bclassid]'");
			//检测大栏目是否为终级栏目
			if($b[islast])
			{
				printerror("BclassNotLast","");
			}
			if($b[wburl])
			{
				printerror("BclassNotWb","");
			}
			//是否非法父栏目
			if($b[featherclass])
			{
				$c_nb_r=explode("|".$add[classid]."|",$b[featherclass]);
				if(count($c_nb_r)<>1)
				{
					printerror("BclassIssmall","");
				}
			}
			if(empty($b[featherclass]))
			{
				$b[featherclass]="|";
			}
			$featherclass=$b[featherclass].$add[bclassid]."|";
		}
		$change=",bclassid=$add[bclassid],featherclass='$featherclass'";
	}
	//修改数据库资料
	$sql=$Elves->query("update {$dbtbpre}melveclass set classname='$add[classname]',classpath='$classpath',classtype='$add[classtype]',newline=$add[newline],hotline=$add[hotline],goodline=$add[goodline],classurl='$add[classurl]',groupid=$add[groupid],myorder=$add[myorder],filename_qz='$add[filename_qz]',hotplline=$add[hotplline],modid=$add[modid],checked=$add[checked],firstline=$add[firstline],bname='$add[bname]',islist=$add[islist],listtempid=$add[listtempid],lencord=$add[lencord],searchtempid=$add[searchtempid],tid=$tabler[tid],tbname='$tabler[tbname]',maxnum=$add[maxnum],checkpl=$add[checkpl],down_num=$add[down_num],online_num=$add[online_num],listorder='$add[listorder]',reorder='$add[reorder]',intro='$add[intro]',classimg='$add[classimg]',jstempid=$add[jstempid],listdt=$add[listdt],showclass=$add[showclass],showdt=$add[showdt],qaddgroupid='$add[qaddgroupid]',qaddshowkey=$add[qaddshowkey],adminqinfo=$add[adminqinfo],doctime=$add[doctime],classpagekey='$add[classpagekey]',dtlisttempid='$add[dtlisttempid]',classtempid='$add[classtempid]',nreclass=$add[nreclass],nreinfo=$add[nreinfo],nrejs=$add[nrejs],nottobq=$add[nottobq],ipath='$add[ipath]',addreinfo=$add[addreinfo],haddlist=$add[haddlist],sametitle=$add[sametitle],definfovoteid=$add[definfovoteid],wburl='$add[wburl]',qeditchecked=$add[qeditchecked],openadd=$add[openadd],wapstyleid='$add[wapstyleid]',repreinfo='$add[repreinfo]',pltempid='$add[pltempid]',cgroupid='$add[cgroupid]',yhid='$add[yhid]',wfid='$add[wfid]',cgtoinfo='$add[cgtoinfo]',bdinfoid='$add[bdinfoid]',repagenum='$add[repagenum]',keycid='$add[keycid]'".$change." where classid='$add[classid]'");
	//副表
	$ret_cr=ReturnClassAddF($add,1);
	$Elves->query("update {$dbtbpre}melveclassadd set classtext='".eaddslashes2($add[classtext])."'".$ret_cr[0]." where classid='$add[classid]'");
	//更新附件
	UpdateTheFileEditOther(1,$add['classid'],'other');
	GetClass();
	//删除缓存文件
	$updatecache=0;
	if($add[oldclassname]<>$add[classname]||$add[bclassid]<>$add[oldbclassid]||$add[wburl]<>$add[oldwburl])
	{
		//DelListmelve();
		$updatecache=1;
    }
	//来源
	if($add['from'])
	{
		$returnurl="ListPageClass.php";
	}
	else
	{
		$returnurl="ListClass.php";
	}
	if($sql)
	{
		insert_dolog("classid=".$add[classid]."<br>classname=".$add[classname]);//操作日志
		if($updatecache)
		{
			//删除导航缓存
			$Elves->query("delete from {$dbtbpre}melveclassnavcache where navtype='listclass'");
			$cache_melve='doclass';
			$cache_elvetourl=$returnurl;
			$cache_mess='EditClassSuccess';
			$cache_url="CreateCache.php?melve=$cache_melve&elvetourl=$cache_elvetourl&mess=$cache_mess";
			echo'<meta http-equiv="refresh" content="0;url='.$cache_url.'">';
			db_close();
			$Elves=null;
			exit();
		}
		printerror("EditClassSuccess",$returnurl);
	}
	else
	{
		printerror("DbError","history.go(-1)");
	}
}

//修改栏目
function EditClass($add,$userid,$username){
	global $Elves,$class_r,$dbtbpre;
	//修改外部栏目
	if($add[elveclasstype])
	{
		EditWbClass($add,$userid,$username);
	}
	$add[classid]=(int)$add[classid];
	$add[classpath]=trim($add[classpath]);
	$checkclasspath=$add['classpath'];
	if($add['oldclasspath']<>$add['pripath'].$add['oldcpath'])//更换父栏目
	{
		$add[classpath]=$add['oldcpath'];
	}
	if(!$add[classname]||!$add[classpath]||!$add[modid]||!$add[classid]){
		printerror("EmptyClass","");
	}
	if($add[islast]&&(!$add[newstempid]||!$add[listtempid])){
		printerror("LastMustChange","");
	}
	//操作权限
	CheckLevel($userid,$username,$classid,"class");
	$add=DoPostClassVar($add);
	$add[oldmodid]=(int)$add[oldmodid];
	//改变目录
	$classpath=$add[pripath].$add[classpath];
	if($add[oldclasspath]<>$classpath&&$checkclasspath==$add['oldcpath']){
		if(file_exists("../../".$classpath)){//检测目录是否存在
			printerror("ReClasspath","");
		}
    }
	//取得表名
	$tabler=GetModTable($add[modid]);
	$tabler[tid]=(int)$tabler[tid];
	//修改大栏目
	if(!$add[islast]){
		//改变大栏目
		if($add[bclassid]<>$add[oldbclassid]){
			//转到主栏目
			if(empty($add[bclassid])){
				$sonclass="";
				$featherclass="";
				//取得本栏目的子栏目
				$r=$Elves->fetch1("select sonclass,featherclass,classpath from {$dbtbpre}melveclass where classid='$add[classid]'");
				//改变父栏目的子栏目
				$where=ReturnClass($r[featherclass]);
				if(empty($where)){
					$where="classid=0";
				}
				$osql=$Elves->query("select sonclass,classid from {$dbtbpre}melveclass where ".$where);
				while($o=$Elves->fetch($osql)){
					$newsonclass=str_replace($r[sonclass],"|",$o[sonclass]);
					$uosql=$Elves->query("update {$dbtbpre}melveclass set sonclass='$newsonclass' where classid='$o[classid]'");
				}
				//修改子栏目的父栏目
				$osql=$Elves->query("select featherclass,classid,classpath from {$dbtbpre}melveclass where featherclass like '%|".$add[classid]."%|'");
				while($o=$Elves->fetch($osql)){
					$newclasspath=str_replace($r[classpath]."/",$classpath."/",$o[classpath]);
					$newfeatherclass=str_replace($r[featherclass],"|",$o[featherclass]);
					$uosql=$Elves->query("update {$dbtbpre}melveclass set featherclass='$newfeatherclass',classpath='$newclasspath' where classid='$o[classid]'");
				}
			}
			//转到中级栏目
			else
			{
				//大栏目跟原栏目相同
				if($add[classid]==$add[bclassid]){
				  printerror("BclassIsself","");
				}
				//取得现在大栏目的值
	 			$b=$Elves->fetch1("select featherclass,sonclass,islast,wburl from {$dbtbpre}melveclass where classid='$add[bclassid]'");
				//检测大栏目是否为终级栏目
				if($b[islast])
				{
					printerror("BclassNotLast","");
				}
				if($b[wburl])
				{
					printerror("BclassNotWb","");
				}
				//是否非法父栏目
				if($b[featherclass]){
					$c_nb_r=explode("|".$add[classid]."|",$b[featherclass]);
					if(count($c_nb_r)<>1){
						printerror("BclassIssmall","");
					}
				}
				if(empty($b[featherclass])){
					$b[featherclass]="|";
				}
				$featherclass=$b[featherclass].$add[bclassid]."|";
				//取得现在栏目本身的值
				$o=$Elves->fetch1("select featherclass,sonclass,classpath from {$dbtbpre}melveclass where classid='$add[classid]'");
				//修改子栏目的父栏目
				$osql=$Elves->query("select featherclass,classid,classpath from {$dbtbpre}melveclass where featherclass like '%|".$add[classid]."|%'");
				while($or=$Elves->fetch($osql)){
					$newclasspath=str_replace($o[classpath]."/",$classpath."/",$or[classpath]);
					if(empty($o[featherclass])){
						$newfeatherclass=$b[featherclass].$add[bclassid].$or[featherclass];
					}
					else{
						$newfeatherclass=str_replace($o[featherclass],$featherclass,$or[featherclass]);
					}
					$uosql=$Elves->query("update {$dbtbpre}melveclass set featherclass='$newfeatherclass',classpath='$newclasspath' where classid='$or[classid]'");
				}
				//改变旧大栏目的所有子栏目
				$owhere=ReturnClass($o[featherclass]);
				if(empty($owhere)){
					$owhere="classid=0";
				}
				$oosql=$Elves->query("select sonclass,classid from {$dbtbpre}melveclass where ".$owhere);
				while($oo=$Elves->fetch($oosql)){
					$newsonclass=str_replace($o[sonclass],"|",$oo[sonclass]);
					$usql=$Elves->query("update {$dbtbpre}melveclass set sonclass='$newsonclass' where classid='$oo[classid]'");
				}
				//改变新大栏目的子栏目
				$where=ReturnClass($featherclass);
				if(empty($where)){
					$where="classid=0";
				}
				$nbsql=$Elves->query("select sonclass,classid from {$dbtbpre}melveclass where ".$where);
				while($nb=$Elves->fetch($nbsql)){
					if(empty($nb[sonclass]))
					{$nb[sonclass]="|";}
					$newsonclass=$nb[sonclass].substr($o[sonclass],1);
					$usql=$Elves->query("update {$dbtbpre}melveclass set sonclass='$newsonclass' where classid='$nb[classid]'");
				}
			}
			$change=",bclassid=$add[bclassid],featherclass='$featherclass'";
		}
		//绑定域名应用于子栏目
		if($add['UrlToSmall']){
			UpdateSmallClassDomain($add['classid'],$add['classurl'],$classpath);
		}
		//wap模板应用于子栏目
		if($add['wapstylesclass'])
		{
			$Elves->query("update {$dbtbpre}melveclass set wapstyleid='$add[wapstyleid]' where featherclass like '%|".$add[classid]."|%'");
		}
		//修改数据库资料
		$sql=$Elves->query("update {$dbtbpre}melveclass set classname='$add[classname]',classpath='$classpath',classtype='$add[classtype]',newline=$add[newline],hotline=$add[hotline],goodline=$add[goodline],classurl='$add[classurl]',groupid=$add[groupid],myorder=$add[myorder],filename_qz='$add[filename_qz]',hotplline=$add[hotplline],modid=$add[modid],checked=$add[checked],firstline=$add[firstline],bname='$add[bname]',islist=$add[islist],listtempid=$add[listtempid],lencord=$add[lencord],searchtempid=$add[searchtempid],tid=$tabler[tid],tbname='$tabler[tbname]',maxnum=$add[maxnum],checkpl=$add[checkpl],down_num=$add[down_num],online_num=$add[online_num],listorder='$add[listorder]',reorder='$add[reorder]',intro='$add[intro]',classimg='$add[classimg]',jstempid=$add[jstempid],listdt=$add[listdt],showclass=$add[showclass],showdt=$add[showdt],qaddgroupid='$add[qaddgroupid]',qaddshowkey=$add[qaddshowkey],adminqinfo=$add[adminqinfo],doctime=$add[doctime],classpagekey='$add[classpagekey]',dtlisttempid='$add[dtlisttempid]',classtempid='$add[classtempid]',nreclass=$add[nreclass],nreinfo=$add[nreinfo],nrejs=$add[nrejs],nottobq=$add[nottobq],ipath='$add[ipath]',addreinfo=$add[addreinfo],haddlist=$add[haddlist],sametitle=$add[sametitle],definfovoteid=$add[definfovoteid],wburl='',qeditchecked=$add[qeditchecked],openadd=$add[openadd],wapstyleid='$add[wapstyleid]',repreinfo='$add[repreinfo]',pltempid='$add[pltempid]',cgroupid='$add[cgroupid]',yhid='$add[yhid]',wfid='$add[wfid]',cgtoinfo='$add[cgtoinfo]',bdinfoid='$add[bdinfoid]',repagenum='$add[repagenum]',keycid='$add[keycid]'".$change." where classid='$add[classid]'");
		//副表
		$ret_cr=ReturnClassAddF($add,1);
		$Elves->query("update {$dbtbpre}melveclassadd set classtext='".eaddslashes2($add[classtext])."'".$ret_cr[0]." where classid='$add[classid]'");
		//更新附件
		UpdateTheFileEditOther(1,$add['classid'],'other');
		GetClass();
		//生成栏目文件
		if($add[islist]==0||$add[islist]==2)
		{
			$classtemp=$add[islist]==2?GetClassText($add[classid]):GetClassTemp($add['classtempid']);
			NewsBq($add[classid],$classtemp,0,1);
		}
		elseif($add[islist]==3)
		{
			ReClassBdInfo($add[classid]);
		}
		if($add[islist]==2)
		{
			//删除动态模板缓存文件
			DelOneTempTmpfile('classpage'.$add[classid]);
		}
	}
	//终级栏目
	else
	{
		if($add[modid]<>$add[oldmodid])//换系统模型
		{
			$chmtbr=GetModTable($add[oldmodid]);
			if($chmtbr[tid]<>$tabler[tid]&&$chmtbr[tbname])
			{
				$chmchecknum=$Elves->gettotal("select count(*) as total from {$dbtbpre}elve_".$chmtbr[tbname]."_index where classid='$add[classid]'");
				if($chmchecknum)
				{
					printerror("ClassChangeModHaveInfo","history.go(-1)");
				}
			}
		}
		//改变大栏目
		if($add[bclassid]<>$add[oldbclassid]){
			//转到主栏目
			if(empty($add[bclassid])){
				$sonclass="";
				$featherclass="";
				//取得栏目原本的大栏目
				$r=$Elves->fetch1("select featherclass,classpath from {$dbtbpre}melveclass where classid='$add[classid]'");
				//改变原本大栏目的子栏目
				$where=ReturnClass($r[featherclass]);
				if(empty($where)){
					$where="classid=0";
				}
				$bsql=$Elves->query("select classid,sonclass from {$dbtbpre}melveclass where ".$where);
				while($br=$Elves->fetch($bsql)){
					$newsonclass=str_replace("|".$add[classid]."|","|",$br[sonclass]);
					$usql=$Elves->query("update {$dbtbpre}melveclass set sonclass='$newsonclass' where classid='$br[classid]'");
				}
			}
			//转到中级栏目
			else
			{
				//取得现在大栏目的值
				$b=$Elves->fetch1("select featherclass,islast,wburl from {$dbtbpre}melveclass where classid='$add[bclassid]'");
				//检测大栏目是否为终级栏目
				if($b[islast])
				{
					printerror("BclassNotLast","");
				}
				if($b[wburl])
				{
					printerror("BclassNotWb","");
				}
				if(empty($b[featherclass])){
					$b[featherclass]="|";
				}
				$featherclass=$b[featherclass].$add[bclassid]."|";
				//改变新大栏目的子栏目
				$where=ReturnClass($featherclass);
				if(empty($where)){
					$where="classid=0";
				}
				$bsql=$Elves->query("select sonclass,classid from {$dbtbpre}melveclass where ".$where);
				while($nb=$Elves->fetch($bsql))
				{
					if(empty($nb[sonclass]))
					{$nb[sonclass]="|";}
					$newsonclass=$nb[sonclass].$add[classid]."|";
					$usql=$Elves->query("update {$dbtbpre}melveclass set sonclass='$newsonclass' where classid='$nb[classid]'");
				}
				//改变旧大栏目的子栏目
				$o=$Elves->fetch1("select sonclass,featherclass from {$dbtbpre}melveclass where classid='$add[classid]'");
				$where=ReturnClass($o[featherclass]);
				if(empty($where)){
					$where="classid=0";
				}
				$osql=$Elves->query("select sonclass,classid from {$dbtbpre}melveclass where ".$where);
				while($ob=$Elves->fetch($osql)){
				   $newsonclass=str_replace("|".$add[classid]."|","|",$ob[sonclass]);
				   $usql=$Elves->query("update {$dbtbpre}melveclass set sonclass='$newsonclass' where classid='$ob[classid]'");
			   }
			}
			$change=",bclassid=$add[bclassid],featherclass='$featherclass'";
		}
		//应用于已生成的信息
		if($add['tobetempinfo'])
		{
			UpdateAllDataTbField($tabler['tbname'],"newstempid='$add[newstempid]'"," where classid='$add[classid]'",1);
		}
		//文件前缀
	    $add[filename_qz]=RepFilenameQz($add[filename_qz]);
		$sql=$Elves->query("update {$dbtbpre}melveclass set classname='$add[classname]',classpath='$classpath',classtype='$add[classtype]',link_num=$add[link_num],lencord=$add[lencord],newstempid=$add[newstempid],listtempid=$add[listtempid],newspath='$add[newspath]',filename=$add[filename],filetype='$add[filetype]',openpl=$add[openpl],openadd=$add[openadd],newline=$add[newline],hotline=$add[hotline],goodline=$add[goodline],classurl='$add[classurl]',groupid=$add[groupid],myorder=$add[myorder],filename_qz='$add[filename_qz]',hotplline=$add[hotplline],modid=$add[modid],checked=$add[checked],firstline=$add[firstline],bname='$add[bname]',searchtempid=$add[searchtempid],tid=$tabler[tid],tbname='$tabler[tbname]',maxnum=$add[maxnum],checkpl=$add[checkpl],down_num=$add[down_num],online_num=$add[online_num],listorder='$add[listorder]',reorder='$add[reorder]',intro='$add[intro]',classimg='$add[classimg]',jstempid=$add[jstempid],addinfofen=$add[addinfofen],listdt=$add[listdt],showclass=$add[showclass],showdt=$add[showdt],checkqadd=$add[checkqadd],qaddlist=$add[qaddlist],qaddgroupid='$add[qaddgroupid]',qaddshowkey=$add[qaddshowkey],adminqinfo=$add[adminqinfo],doctime=$add[doctime],classpagekey='$add[classpagekey]',dtlisttempid='$add[dtlisttempid]',classtempid='$add[classtempid]',nreclass=$add[nreclass],nreinfo=$add[nreinfo],nrejs=$add[nrejs],nottobq=$add[nottobq],ipath='$add[ipath]',addreinfo=$add[addreinfo],haddlist=$add[haddlist],sametitle=$add[sametitle],definfovoteid=$add[definfovoteid],wburl='',qeditchecked=$add[qeditchecked],wapstyleid='$add[wapstyleid]',repreinfo='$add[repreinfo]',pltempid='$add[pltempid]',cgroupid='$add[cgroupid]',yhid='$add[yhid]',wfid='$add[wfid]',cgtoinfo='$add[cgtoinfo]',bdinfoid='$add[smallbdinfoid]',repagenum='$add[repagenum]',keycid='$add[keycid]'".$change." where classid='$add[classid]'");
		//副表
		$ret_cr=ReturnClassAddF($add,1);
		$Elves->query("update {$dbtbpre}melveclassadd set classtext='".eaddslashes2($add[classtext])."'".$ret_cr[0]." where classid='$add[classid]'");
		//更新附件
		UpdateTheFileEditOther(1,$add['classid'],'other');
		GetClass();
	}
	//移动目录
	if($add[bclassid]<>$add[oldbclassid]||($add[oldclasspath]<>$classpath&&$add['classpath']==$add['oldcpath'])){
		$opath="../../".$add[oldclasspath];
		$newpath="../../".$classpath;
		MovePath($opath,$newpath);
		$opath="../../d/file/".$add[oldclasspath];
		$npath="../../d/file/".$classpath;
		CopyPath($opath,$npath);
    }
	else{
		if($add['oldcpath']<>$add['classpath'])//更换栏目目录
		{
			AlterClassPath($add['classid'],$add['islast'],$add['oldclasspath'],$classpath);
			//删除导航缓存
			$Elves->query("delete from {$dbtbpre}melveclassnavcache where navtype='listclass' or navtype='listmelve' or navtype='jsclass' or navtype='usermelve'");
			GetClass();
		}
	}
	//删除缓存文件
	$cache_mid=0;
	$cache_oldmid=0;
	if($add[oldclassname]<>$add[classname]||$add[bclassid]<>$add[oldbclassid])
	{
		DelListmelve();
		//GetSearch($add[modid]);
		DelFiletext("../d/js/js/addinfo".$add[modid].".js");
		//删除导航缓存
		$Elves->query("delete from {$dbtbpre}melveclassnavcache where navtype='listclass' or navtype='listmelve' or navtype='jsclass' or navtype='usermelve' or (navtype='modclass' and modid='$add[modid]')");
		$cache_mid=$add[modid];
    }
	else
	{
		if(($add[oldclasspath]<>$classpath&&$add['classpath']==$add['oldcpath'])||$add[listdt]<>$add[oldlistdt])
		{
			DelListmelve();
			//删除导航缓存
			$Elves->query("delete from {$dbtbpre}melveclassnavcache where navtype='listclass' or navtype='listmelve' or navtype='jsclass' or navtype='usermelve'");
		}
		if($add[openadd]<>$add[oldopenadd]||$add[modid]<>$add[oldmodid])
		{
			//GetSearch($add[modid]);
			DelFiletext("../d/js/js/addinfo".$add[modid].".js");
			//删除导航缓存
			$Elves->query("delete from {$dbtbpre}melveclassnavcache where navtype='modclass' and modid='$add[modid]'");
			$cache_mid=$add[modid];
			if($add[modid]<>$add[oldmodid])
			{
				//GetSearch($add[oldmodid]);
				DelFiletext("../d/js/js/addinfo".$add[oldmodid].".js");
				//删除导航缓存
				$Elves->query("delete from {$dbtbpre}melveclassnavcache where navtype='modclass' and modid='$add[oldmodid]'");
				$cache_oldmid=$add[oldmodid];
			}
		}
	}
	//修改栏目扩展名
	if($add[oldclasstype]<>$add[classtype]){
		$todaytime=date("Y-m-d H:i:s");
		if($add[islast]){
			$query="select count(*) as total from {$dbtbpre}elve_".$class_r[$add[classid]][tbname]." where classid='$add[classid]'";
			$lencord=$add[oldlencord];
			$num=$Elves->gettotal($query);
		}
		else{
			$lencord=$add[oldlencord];
			if($add[oldislist]==1){
				$where=ReturnClass($class_r[$add[classid]][sonclass]);
				$query="select count(*) as total from {$dbtbpre}elve_".$class_r[$add[classid]][tbname]." where (".$where.")";
				$num=$Elves->gettotal($query);
			}
			else
			{
				$num=1;
			}
		}
		RenameListfile($add[classid],$lencord,$num,$add[oldclasstype],$add[classtype],$classpath);
	}
	//来源
	if($add['from']){
		$returnurl="ListPageClass.php";
	}
	else{
		$returnurl="ListClass.php";
	}
	TogNotReClass(1);
	if($sql)
	{
		insert_dolog("classid=".$add[classid]."<br>classname=".$add[classname]);//操作日志
		$cache_melve='doclass,doinfo,douserinfo,domod,dostemp';
		$cache_elvetourl=urlencode($returnurl);
		$cache_mess='EditClassSuccess';
		$cache_url="CreateCache.php?melve=$cache_melve&mid=$cache_mid&oldmid=$cache_oldmid&elvetourl=$cache_elvetourl&mess=$cache_mess";
		//printerror("EditClassSuccess",$returnurl);
		echo'<meta http-equiv="refresh" content="0;url='.$cache_url.'">';
		db_close();
		$Elves=null;
		exit();
	}
	else
	{
		printerror("DbError","history.go(-1)");
	}
}

//终极栏目与非终极栏目之间的转换
function ChangeClassIslast($reclassid,$userid,$username){
	global $Elves,$dbtbpre;
	//操作权限
	CheckLevel($userid,$username,$classid,"class");
	$count=count($reclassid);
	$classid=(int)$reclassid[0];
	if($count==0||!$classid)
	{
		printerror("NotChangeIslastClassid","");
	}
	//取得本栏目信息
	$r=$Elves->fetch1("select classid,sonclass,featherclass,islist,islast,classname,modid,tbname,wburl from {$dbtbpre}melveclass where classid=$classid");
	if(empty($r[classid]))
	{
		printerror("NotChangeIslastClassid","");
	}
	if($r[wburl])
	{
		printerror("NotChangeWbClassid","");
	}
	//非终极栏目
	if(!$r[islast])
	{
		$num=$Elves->gettotal("select count(*) as total from {$dbtbpre}melveclass where bclassid=$classid");
		if($num)
		{
			printerror("LastTheClassHaveSonclass","history.go(-1)");
		}
		//修改父栏目的子栏目
		$where=ReturnClass($r[featherclass]);
		if(empty($where))
		{
			$where="classid=0";
		}
		$sql=$Elves->query("select classid,sonclass from {$dbtbpre}melveclass where ".$where);
		while($br=$Elves->fetch($sql))
		{
			if(empty($br[sonclass]))
			{
				$br[sonclass]="|";
			}
			$newsonclass=$br[sonclass].$classid."|";
			$usql=$Elves->query("update {$dbtbpre}melveclass set sonclass='$newsonclass' where classid=$br[classid]");
		}
		$dosql=$Elves->query("update {$dbtbpre}melveclass set islast=1 where classid=$classid");
		$mess="ChangeClassToLastSuccess";
	}
	//终极栏目
	else
	{
		$num=$Elves->gettotal("select count(*) as total from {$dbtbpre}elve_".$r[tbname]."_index where classid='$classid'");
		if($num)
		{
			printerror("LastTheClassHaveInfo","history.go(-1)");
		}
		//修改父栏目的子栏目
		$where=ReturnClass($r[featherclass]);
		if(empty($where))
		{
			$where="classid=0";
		}
		$sql=$Elves->query("select classid,sonclass from {$dbtbpre}melveclass where ".$where);
		while($br=$Elves->fetch($sql))
		{
			if(empty($br[sonclass]))
			{
				$br[sonclass]="|";
			}
			$newsonclass=str_replace("|".$classid."|","|",$br[sonclass]);
			$usql=$Elves->query("update {$dbtbpre}melveclass set sonclass='$newsonclass' where classid=$br[classid]");
		}
		$dosql=$Elves->query("update {$dbtbpre}melveclass set islast=0 where classid=$classid");
		$mess="ChangeClassToNolastSuccess";
	}
	//删除缓存文件
	DelListmelve();
	//更新缓存
	GetClass();
	//GetSearch($r[modid]);
	if($dosql)
	{
		//删除导航缓存
		$Elves->query("delete from {$dbtbpre}melveclassnavcache where navtype='listclass' or navtype='listmelve' or navtype='jsclass' or navtype='usermelve' or (navtype='modclass' and modid='$r[modid]')");
		DelFiletext("../d/js/js/addinfo".$r[modid].".js");
		$cache_melve='doclass,doinfo,douserinfo,domod,dostemp';
		$cache_elvetourl=urlencode($_SERVER['HTTP_REFERER']);
		$cache_mess=$mess;
		$cache_mid=$r[modid];
		$cache_url="CreateCache.php?melve=$cache_melve&mid=$cache_mid&elvetourl=$cache_elvetourl&mess=$cache_mess";
		//操作日志
		insert_dolog("classid=".$classid."<br>classname=".$r[classname]);
		//printerror($mess,$_SERVER['HTTP_REFERER']);
		echo'<meta http-equiv="refresh" content="0;url='.$cache_url.'">';
		db_close();
		$Elves=null;
		exit();
	}
	else
	{
		printerror("DbError","history.go(-1)");
	}
}

//删除栏目
function DelClass($classid,$userid,$username){
	global $Elves,$dbtbpre;
	$classid=(int)$classid;
	if(!$classid)
	{
		printerror("NotDelClassid","");
	}
	//操作权限
	CheckLevel($userid,$username,$classid,"class");
	$r=$Elves->fetch1("select * from {$dbtbpre}melveclass where classid='$classid'");
	if(empty($r[classid]))
	{
		printerror("NotClassid","history.go(-1)");
	}
    DelClass1($classid);
    GetClass();
	//GetSearch($r[modid]);
	//返回地址
	if($_GET['from'])
	{$returnurl="ListPageClass.php";}
	else
	{$returnurl="ListClass.php";}
	TogNotReClass(1);
	//删除导航缓存
	$Elves->query("delete from {$dbtbpre}melveclassnavcache where navtype='listclass' or navtype='listmelve' or navtype='jsclass' or navtype='usermelve' or (navtype='modclass' and modid='$r[modid]')");
	$cache_melve='doclass,doinfo,douserinfo,domod,dostemp';
	$cache_elvetourl=urlencode($returnurl);
	$cache_mess='DelClassSuccess';
	$cache_mid=$r[modid];
	$cache_url="CreateCache.php?melve=$cache_melve&mid=$cache_mid&elvetourl=$cache_elvetourl&mess=$cache_mess";
	insert_dolog("classid=".$classid."<br>classname=".$r[classname]);//操作日志
	//printerror("DelClassSuccess",$returnurl);
	echo'<meta http-equiv="refresh" content="0;url='.$cache_url.'">';
	db_close();
	$Elves=null;
	exit();
}

//删除栏目,不返回值
function DelClass1($classid){
	global $Elves,$class_r,$dbtbpre;
	$r=$Elves->fetch1("select * from {$dbtbpre}melveclass where classid='$classid'");
	//外部栏目
	if($r[wburl])
	{
		$sql=$Elves->query("delete from {$dbtbpre}melveclass where classid='$classid'");
		$Elves->query("delete from {$dbtbpre}melveclassadd where classid='$classid'");
		$Elves->query("delete from {$dbtbpre}melveclass_stats where classid='$classid'");
		//删除栏目附件
		DelFileOtherTable("modtype=1 and id='$classid'");
		//删除缓存
		DelListmelve();
		return "";
	}
	//删除终极栏目
	if($r[islast])
	{
		//删除主表信息
		$indexsql=$Elves->query("delete from {$dbtbpre}elve_".$r[tbname]."_index where classid='$classid'");
		$sql=$Elves->query("delete from {$dbtbpre}elve_".$r[tbname]." where classid='$classid'");
		$Elves->query("delete from {$dbtbpre}elve_".$r[tbname]."_check where classid='$classid'");
		$Elves->query("delete from {$dbtbpre}elve_".$r[tbname]."_doc where classid='$classid'");
		//删除副表信息
		DelAllDataTbInfo($r['tbname'],"classid='$classid'",1,1);
		//删除存文本文件
		DelInfoSaveTxtfile($r['modid'],$r['tbname'],"classid='$classid'");
		//删除信息附加表与附件
		DelMoreInfoOtherData($classid,0,0);
		$filepath="../../d/file/".$r[classpath];
		$delf=DelPath($filepath);
		DelFileOtherTable("modtype=1 and id='$classid'");
		//删除栏目本身
	    $sql1=$Elves->query("delete from {$dbtbpre}melveclass where classid='$classid'");
		$Elves->query("delete from {$dbtbpre}melveclassadd where classid='$classid'");
		$Elves->query("delete from {$dbtbpre}melveclass_stats where classid='$classid'");
		$delpath="../../".$r[classpath];
		$del=DelPath($delpath);
		//更新大栏目的子栏目
		$where=ReturnClass($r[featherclass]);
	    if(empty($where))
		{$where="classid=0";}
	    $bsql=$Elves->query("select sonclass,classid from {$dbtbpre}melveclass where ".$where);
		while($br=$Elves->fetch($bsql))
		{
			$newsonclass=str_replace("|".$classid."|","|",$br[sonclass]);
			$usql=$Elves->query("update {$dbtbpre}melveclass set sonclass='$newsonclass' where classid='$br[classid]'");
		}
	}
	//删除大栏目
	else
	{
	    //删除栏目
		$where=ReturnClass($r[sonclass]);
		if(empty($where))
		{$where="classid=0";}
		$delcr=explode("|",$r[sonclass]);
		$count=count($delcr);
		for($i=1;$i<$count-1;$i++)
		{
			$delcid=$delcr[$i];
			//删除主表信息
			$indexsql=$Elves->query("delete from {$dbtbpre}elve_".$class_r[$delcid][tbname]."_index where classid='$delcid'");
			$sql=$Elves->query("delete from {$dbtbpre}elve_".$class_r[$delcid][tbname]." where classid='$delcid'");
			$Elves->query("delete from {$dbtbpre}elve_".$class_r[$delcid][tbname]."_check where classid='$delcid'");
			$Elves->query("delete from {$dbtbpre}elve_".$class_r[$delcid][tbname]."_doc where classid='$delcid'");
			//删除副表信息
			DelAllDataTbInfo($class_r[$delcid][tbname],"classid='$delcid'",1,1);
			//删除存文本文件
			DelInfoSaveTxtfile($class_r[$delcid][modid],$class_r[$delcid][tbname],"classid='$delcid'");
			//删除信息附加表与附件
			DelMoreInfoOtherData($delcid,0,0);
		}
		//删除附件
		$filepath="../../d/file/".$r[classpath];
	    $delf=DelPath($filepath);
		if($where<>'classid=0')
		{
			DelFileOtherTable("modtype=1 and (".str_replace('classid','id',$where).")");
		}
		//删除子栏目副表
		$fcsql=$Elves->query("select classid from {$dbtbpre}melveclass where featherclass like '%|".$classid."|%'");
		while($fcr=$Elves->fetch($fcsql))
		{
			$Elves->query("delete from {$dbtbpre}melveclassadd where classid='$fcr[classid]'");
			$Elves->query("delete from {$dbtbpre}melveclass_stats where classid='$fcr[classid]'");
		}
		//删除子栏目
		$sql1=$Elves->query("delete from {$dbtbpre}melveclass where featherclass like '%|".$classid."|%'");
		//改变父栏目的子类
		$where=ReturnClass($r[featherclass]);
		if(empty($where))
		{$where="classid=0";}
		$bbsql=$Elves->query("select classid,sonclass from {$dbtbpre}melveclass where ".$where);
		while($bbr=$Elves->fetch($bbsql))
		{
			$newsonclass=str_replace($r[sonclass],"|",$bbr[sonclass]);
			$usql=$Elves->query("update {$dbtbpre}melveclass set sonclass='$newsonclass' where classid='$bbr[classid]'");
		}
		//删除栏目本身
		$sql2=$Elves->query("delete from {$dbtbpre}melveclass where classid='$classid'");
		$Elves->query("delete from {$dbtbpre}melveclassadd where classid='$classid'");
		$Elves->query("delete from {$dbtbpre}melveclass_stats where classid='$classid'");
		//删除栏目附件
		DelFileOtherTable("modtype=1 and id='$classid'");
		$delpath="../../".$r[classpath];
		$del=DelPath($delpath);
	}
	//删除缓存
	DelListmelve();
}

//修改栏目顺序
function EditClassOrder($classid,$myorder,$userid,$username){
	global $Elves,$dbtbpre;
	//验证权限
	CheckLevel($userid,$username,$classid,"class");
	for($i=0;$i<count($classid);$i++)
	{
		$newmyorder=(int)$myorder[$i];
		$sql=$Elves->query("update {$dbtbpre}melveclass set myorder=$newmyorder where classid='$classid[$i]'");
    }
	//删除缓存
	DelListmelve();
	//删除导航缓存
	$Elves->query("delete from {$dbtbpre}melveclassnavcache where navtype='listclass' or navtype='listmelve' or navtype='jsclass' or navtype='usermelve'");
	$cache_melve='doclass,doinfo,douserinfo';
	$cache_elvetourl=urlencode($_SERVER['HTTP_REFERER']);
	$cache_mess='EditClassOrderSuccess';
	$cache_url="CreateCache.php?melve=$cache_melve&elvetourl=$cache_elvetourl&mess=$cache_mess";
	//操作日志
	insert_dolog("");
	//printerror("EditClassOrderSuccess",$_SERVER['HTTP_REFERER']);
	echo'<meta http-equiv="refresh" content="0;url='.$cache_url.'">';
	db_close();
	$Elves=null;
	exit();
}

//更新栏目关系
function ChangeSonclass($start,$userid,$username){
	global $Elves,$public_r,$fun_r,$dbtbpre;
	//验证权限
	CheckLevel($userid,$username,$classid,"changedata");
	$start=(int)$start;
	$b=0;
	$sql=$Elves->query("select classid from {$dbtbpre}melveclass where islast=0 and classid>".$start." order by classid limit ".$public_r[relistnum]);
	while($r=$Elves->fetch($sql))
	{
		$b=1;
		$newstart=$r[classid];
		//子栏目
		$sonclass="|";
		$ssql=$Elves->query("select classid from {$dbtbpre}melveclass where islast=1 and featherclass like '%|".$r[classid]."|%' order by classid");
		while($sr=$Elves->fetch($ssql))
		{
			$sonclass.=$sr[classid]."|";
	    }
		$usql=$Elves->query("update {$dbtbpre}melveclass set sonclass='$sonclass' where classid='$r[classid]'");
    }
	//完毕
	if(empty($b))
	{
		GetClass();
		printerror("ChangeSonclassSuccess","ReHtml/ChangeData.php");
	}
	echo $fun_r['OneChangeSonclassSuccess']."(ID:<font color=red><b>".$newstart."</b></font>)<script>self.location.href='elveclass.php?melve=ChangeSonclass&start=$newstart';</script>";
	exit();
}

//删除栏目缓存文件
function DelFcListClass(){
	global $Elves,$dbtbpre;
	DelListmelve();
	//删除导航缓存
	$Elves->query("delete from {$dbtbpre}melveclassnavcache");
	$cache_melve='doclass,doinfo,douserinfo,domod,dostemp';
	$cache_elvetourl=urlencode("history.go(-1)");
	$cache_mess='DelListmelveSuccess';
	$cache_url="CreateCache.php?melve=$cache_melve&elvetourl=$cache_elvetourl&mess=$cache_mess";
	//操作日志
	insert_dolog("");
	//printerror("DelListmelveSuccess","history.go(-1)");
	echo'<meta http-equiv="refresh" content="0;url='.$cache_url.'">';
	db_close();
	$Elves=null;
	exit();
}

//批量设置栏目
function SetMoreClass($add,$userid,$username){
	global $Elves,$dbtbpre;
	//验证权限
	CheckLevel($userid,$username,$classid,"setmclass");
	//栏目
	$classid=$add['classid'];
	$count=count($classid);
	if($count==0)
	{
		printerror("NotChangeSetClass","");
	}
	$cids='';
	$dh='';
	for($i=0;$i<$count;$i++)
	{
		$cids.=$dh.intval($classid[$i]);
		$dh=',';
	}
	$whereclass='classid in ('.$cids.')';
	$seting='';
	//基本属性
	if($add['doclasstype'])
	{
		$seting.=",classtype='$add[classtype]'";
	}
	if($add['dolisttempid']&&$add[listtempid])
	{
		$seting.=",listtempid='$add[listtempid]'";
	}
	if($add['dodtlisttempid'])
	{
		$seting.=",dtlisttempid='$add[dtlisttempid]'";
	}
	if($add['domaxnum'])
	{
		$seting.=",maxnum='$add[maxnum]'";
	}
	if($add['dolencord'])
	{
		$seting.=",lencord='$add[lencord]'";
	}
	if($add['dosearchtempid'])
	{
		$seting.=",searchtempid='$add[searchtempid]'";
	}
	if($add['dowapstyleid'])
	{
		$seting.=",wapstyleid='$add[wapstyleid]'";
	}
	if($add['dolistorder'])
	{
		$seting.=",listorder='$add[listorder]'";
	}
	if($add['doreorder'])
	{
		$seting.=",reorder='$add[reorder]'";
	}
	if($add['dolistdt'])
	{
		$seting.=",listdt='$add[listdt]'";
	}
	if($add['doshowdt'])
	{
		$seting.=",showdt='$add[showdt]'";
	}
	if($add['doshowclass'])
	{
		$seting.=",showclass='$add[showclass]'";
	}
	if($add['doopenadd'])
	{
		$seting.=",openadd='$add[openadd]'";
	}
	//选项设置[大栏目]
	if($add['doclasstempid'])
	{
		$seting.=",classtempid='$add[classtempid]'";
	}
	if($add['doislist'])
	{
		$seting.=",islist='$add[islist]'";
	}
	//选项设置[终极栏目]
	if($add['donewstempid']&&$add[newstempid])
	{
		$seting.=",newstempid='$add[newstempid]'";
		if($add['tobetempinfo'])
		{
			$donewstemp=1;
		}
	}
	if($add['dopltempid'])
	{
		$seting.=",pltempid='$add[pltempid]'";
	}
	if($add['dolink_num'])
	{
		$seting.=",link_num='$add[link_num]'";
	}
	if($add['doinfopath'])
	{
		if($add['infopath']==0)
		{
			$add['ipath']='';
		}
		$seting.=",ipath='$add[ipath]'";
	}
	if($add['donewspath'])
	{
		$seting.=",newspath='$add[newspath]'";
	}
	if($add['dofilename_qz'])
	{
		$seting.=",filename_qz='$add[filename_qz]'";
	}
	if($add['dofilename'])
	{
		$seting.=",filename='$add[filename]'";
	}
	if($add['dofiletype'])
	{
		$seting.=",filetype='$add[filetype]'";
	}
	if($add['doopenpl'])
	{
		$seting.=",openpl='$add[openpl]'";
	}
	if($add['docheckpl'])
	{
		$seting.=",checkpl='$add[checkpl]'";
	}
	if($add['doqaddshowkey'])
	{
		$seting.=",qaddshowkey='$add[qaddshowkey]'";
	}
	if($add['docheckqadd'])
	{
		$seting.=",checkqadd='$add[checkqadd]'";
	}
	if($add['doqaddgroupid'])
	{
		$add[qaddgroupid]=DoPostClassQAddGroupid($add[qaddgroupidck]);
		$seting.=",qaddgroupid='$add[qaddgroupid]'";
	}
	if($add['doqaddlist'])
	{
		$seting.=",qaddlist='$add[qaddlist]'";
	}
	if($add['doaddinfofen'])
	{
		$seting.=",addinfofen='$add[addinfofen]'";
	}
	if($add['doadminqinfo'])
	{
		$seting.=",adminqinfo='$add[adminqinfo]'";
	}
	if($add['doqeditchecked'])
	{
		$seting.=",qeditchecked='$add[qeditchecked]'";
	}
	if($add['doaddreinfo'])
	{
		$seting.=",addreinfo='$add[addreinfo]'";
	}
	if($add['dohaddlist'])
	{
		$seting.=",haddlist='$add[haddlist]'";
	}
	if($add['dosametitle'])
	{
		$seting.=",sametitle='$add[sametitle]'";
	}
	if($add['dochecked'])
	{
		$seting.=",checked='$add[checked]'";
	}
	if($add['dorepreinfo'])
	{
		$seting.=",repreinfo='$add[repreinfo]'";
	}
	if($add['dodefinfovoteid'])
	{
		$seting.=",definfovoteid='$add[definfovoteid]'";
	}
	if($add['dogroupid'])
	{
		$seting.=",groupid='$add[groupid]'";
	}
	if($add['dodoctime'])
	{
		$seting.=",doctime='$add[doctime]'";
	}
	//特殊模型设置
	if($add['dodown_num'])
	{
		$seting.=",down_num='$add[down_num]'";
	}
	if($add['doonline_num'])
	{
		$seting.=",online_num='$add[online_num]'";
	}
	//JS调用设置
	if($add['dojstempid'])
	{
		$seting.=",jstempid='$add[jstempid]'";
	}
	if($add['donewjs'])
	{
		$seting.=",newline='$add[newline]'";
	}
	if($add['dohotjs'])
	{
		$seting.=",hotline='$add[hotline]'";
	}
	if($add['dogoodjs'])
	{
		$seting.=",goodline='$add[goodline]'";
	}
	if($add['dohotpljs'])
	{
		$seting.=",hotplline='$add[hotplline]'";
	}
	if($add['dofirstjs'])
	{
		$seting.=",firstline='$add[firstline]'";
	}
	if(empty($seting))
	{
		printerror("NotChangeSetClassInfo","");
	}
	$seting=substr($seting,1);
	$sql=$Elves->query("update {$dbtbpre}melveclass set ".$seting." where ".$whereclass);
	//内容模板应用于子生成的信息
	if($donewstemp==1)
	{
		$csql=$Elves->query("select classid,tbname from {$dbtbpre}melveclass where (".$whereclass.") and islast=1");
		while($r=$Elves->fetch($csql))
		{
			UpdateAllDataTbField($r['tbname'],"newstempid='$add[newstempid]'"," where classid='$r[classid]'",1);
		}
	}
	if($sql)
	{
		GetClass();
		//操作日志
		insert_dolog("");
		printerror("SetMoreClassSuccess","SetMoreClass.php");
	}
	else
	{printerror("DbError","");}
}
?>