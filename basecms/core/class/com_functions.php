<?php
//增加留言分类
function AddGbookClass($add,$do=0,$userid,$username){
	global $Elves,$dbtbpre;
	if(empty($add[bname]))
	{
		printerror("EmptyGbookClass","history.go(-1)");
    }
	if(empty($do))
	{
		$add['checked']=(int)$add['checked'];
		$add['groupid']=(int)$add['groupid'];
		$level="gbook";
		$table="{$dbtbpre}melvegbookclass";
		$location="GbookClass.php";
		$mychecked=",checked,groupid";
		$mycheckedvalue=",".$add['checked'].",".$add['groupid'];
	}
	else
	{
		$level="feedback";
		$table="{$dbtbpre}melvefeedbackclass";
		$location="FeedbackClass.php";
		$mychecked="";
		$mycheckedvalue="";
	}
	//验证权限
	CheckLevel($userid,$username,$classid,$level);
	$sql=$Elves->query("insert into ".$table."(bname".$mychecked.") values('$add[bname]'".$mycheckedvalue.");");
	if($sql)
	{
		$bid=$Elves->lastid();
		//操作日志
		insert_dolog("bid=".$bid."<br>bname=".$add[bname]);
		printerror("AddGbookClassSuccess",$location);
    }
	else
	{printerror("DbError","history.go(-1)");}
}

//修改留言分类
function EditGbookClass($add,$do=0,$userid,$username){
	global $Elves,$dbtbpre;
	$add[bid]=(int)$add[bid];
	if(empty($add[bname])||!$add[bid])
	{
		printerror("EmptyGbookClass","history.go(-1)");
    }
	if(empty($do))
	{
		$add['checked']=(int)$add['checked'];
		$add['groupid']=(int)$add['groupid'];
		$level="gbook";
		$table="{$dbtbpre}melvegbookclass";
		$location="GbookClass.php";
		$mychecked=",checked=".$add['checked'].",groupid=".$add['groupid'];
	}
	else
	{
		$level="feedback";
		$table="{$dbtbpre}melvefeedbackclass";
		$location="FeedbackClass.php";
		$mychecked="";
	}
	//验证权限
	CheckLevel($userid,$username,$classid,$level);
	$sql=$Elves->query("update ".$table." set bname='$add[bname]'".$mychecked." where bid='$add[bid]';");
	if($sql)
	{
		//操作日志
		insert_dolog("bid=".$add[bid]."<br>bname=".$add[bname]);
		printerror("EditGbookClassSuccess",$location);
    }
	else
	{printerror("DbError","history.go(-1)");}
}

//删除留言分类
function DelGbookClass($bid,$do=0,$userid,$username){
	global $Elves,$dbtbpre;
	$bid=(int)$bid;
	if(!$bid)
	{
		printerror("NotChangeGbookClassid","history.go(-1)");
    }
	if(empty($do))
	{
		$level="gbook";
		$table="{$dbtbpre}melvegbookclass";
		$tabledata="{$dbtbpre}melvegbook";
		$location="GbookClass.php";
	}
	else
	{
		$level="feedback";
		$table="{$dbtbpre}melvefeedbackclass";
		$tabledata="{$dbtbpre}melvefeedback";
		$location="FeedbackClass.php";
	}
	//验证权限
	CheckLevel($userid,$username,$classid,$level);
	$r=$Elves->fetch1("select bname from ".$table." where bid='$bid';");
	$sql=$Elves->query("delete from ".$table." where bid='$bid';");
	$sql1=$Elves->query("delete from ".$tabledata." where bid='$bid';");
	if($sql)
	{
		//操作日志
		insert_dolog("bid=".$bid."<br>bname=".$r[bname]);
		printerror("DelGbookClassSuccess",$location);
    }
	else
	{printerror("DbError","history.go(-1)");}
}

//---------返回留言/反馈分类
function ReturnGbookClass($bid,$do=0){
	global $Elves,$dbtbpre;
	$bid=(int)$bid;
	if(empty($do))
	{
		$table="{$dbtbpre}melvegbookclass";
	}
	else
	{
		$table="{$dbtbpre}melvefeedbackclass";
	}
	$sql=$Elves->query("select bid,bname from ".$table." order by bid");
	while($r=$Elves->fetch($sql))
	{
		if($bid==$r[bid])
		{$selected=" selected";}
		else
		{$selected="";}
		$select.="<option value=".$r[bid].$selected.">".$r[bname]."</option>";
	}
	return $select;
}

//回复留言板
function ReGbook($lyid,$retext,$bid,$userid,$username){
	global $Elves,$dbtbpre;
	$lyid=(int)$lyid;
	$bid=(int)$bid;
	if(!$lyid||!$retext)
	{
		printerror("EmptyReGbooktext","history.go(-1)");
    }
	//验证权限
	CheckLevel($userid,$username,$classid,"gbook");
	$sql=$Elves->query("update {$dbtbpre}melvegbook set retext='$retext' where lyid='$lyid';");
	if($sql)
	{
		//操作日志
		insert_dolog("lyid=".$lyid);
		echo"<script>opener.parent.main.location.href='gbook.php?bid=$bid';window.close();</script>";
		exit();
	}
	else
	{printerror("DbError","history.go(-1)");}
}

//删除留言
function DelGbook($lyid,$bid,$userid,$username){
	global $Elves,$dbtbpre;
	$lyid=(int)$lyid;
	$bid=(int)$bid;
	if(!$lyid)
	{
		printerror("NotChangeLyid","history.go(-1)");
    }
	//验证权限
	CheckLevel($userid,$username,$classid,"gbook");
	$sql=$Elves->query("delete from {$dbtbpre}melvegbook where lyid='$lyid';");
	if($sql)
	{
		//操作日志
		insert_dolog("lyid=".$lyid);
		printerror("DelGbookSuccess",$_SERVER['HTTP_REFERER']);
	}
	else
	{printerror("DbError","history.go(-1)");}
}

//--------------------------批量删除留言(3.6)
function DelGbook_all($lyid,$bid,$userid,$username){
	global $Elves,$dbtbpre;
	//验证权限
	CheckLevel($userid,$username,$classid,"gbook");
	$bid=(int)$bid;
	$count=count($lyid);
	if(empty($count))
	{printerror("NotChangeLyid","history.go(-1)");}
	for($i=0;$i<$count;$i++)
	{
		$lyid[$i]=(int)$lyid[$i];
		$add.="lyid='$lyid[$i]' or ";
	}
	$add=substr($add,0,strlen($add)-4);
	$sql=$Elves->query("delete from {$dbtbpre}melvegbook where ".$add);
	if($sql)
	{
		//操作日志
		insert_dolog("");
		printerror("DelGbookSuccess",$_SERVER['HTTP_REFERER']);
	}
	else
	{printerror("DbError","history.go(-1)");}
}

//--------------------------批量审核留言(3.6)
function CheckGbook_all($lyid,$bid,$userid,$username){
	global $Elves,$dbtbpre;
	//验证权限
	CheckLevel($userid,$username,$classid,"gbook");
	$bid=(int)$bid;
	$count=count($lyid);
	if(empty($count))
	{printerror("NotChangeCheckLyid","history.go(-1)");}
	for($i=0;$i<$count;$i++)
	{
		$lyid[$i]=(int)$lyid[$i];
		$add.="lyid='$lyid[$i]' or ";
	}
	$add=substr($add,0,strlen($add)-4);
	$sql=$Elves->query("update {$dbtbpre}melvegbook set checked=0 where ".$add);
	if($sql)
	{
		//操作日志
		insert_dolog("");
		printerror("CheckLysuccess",$_SERVER['HTTP_REFERER']);
	}
	else
	{printerror("DbError","history.go(-1)");}
}

//删除反馈附件
function DelFeedbackFile($filename,$filepath){
	global $Elves,$dbtbpre,$public_r,$efileftp_dr;
	if($filename)
	{
		$fpath=0;
		$getfpath=0;
		$addfilepath=$filepath?$filepath.'/':'';
		$filer=explode(",",$filename);
		$fcount=count($filer);
		for($j=0;$j<$fcount;$j++)
		{
			if(!$getfpath)
			{
				$ftr=$Elves->fetch1("select fpath from {$dbtbpre}melvefile_other where modtype=4 and path='$filepath' and filename='".$filer[$j]."' limit 1");
				$fpath=$ftr[fpath];
				$getfpath=1;
			}
			$fspath=ReturnFileSavePath(0,$fpath);
			$delfile=elve_PATH.$fspath['filepath'].$addfilepath.$filer[$j];
			DelFiletext($delfile);
			$where.=$or."filename='".$filer[$j]."'";
			$or=" or ";
			//FileServer
			if($public_r['openfileserver'])
			{
				$efileftp_dr[]=$delfile;
			}
		}
		$delsql=$Elves->query("delete from {$dbtbpre}melvefile_other where modtype=4 and path='$filepath' and (".$where.")");
	}
}

//删除反馈信息
function DelFeedback($id,$bid,$userid,$username){
	global $Elves,$dbtbpre;
	$id=(int)$id;
	$bid=(int)$bid;
	if(!$id)
	{
		printerror("NotChangeFeedbackid","history.go(-1)");
    }
	//验证权限
	//CheckLevel($userid,$username,$classid,"feedback");
	$r=$Elves->fetch1("select id,title,filepath,filename,bid from {$dbtbpre}melvefeedback where id='$id';");
	if(!$r['id'])
	{
		printerror("NotChangeFeedbackid","history.go(-1)");
    }
	//反馈权限
	$bidr=ReturnAdminFeedbackClass($r['bid'],$userid,$username);
	$sql=$Elves->query("delete from {$dbtbpre}melvefeedback where id='$id';");
	//删除附件
	DelFeedbackFile($r['filename'],$r['filepath']);
	if($sql)
	{
		//操作日志
		insert_dolog("id=".$id."<br>title=$r[title]");
		printerror("DelFeedbackSuccess",$_SERVER['HTTP_REFERER']);
	}
	else
	{printerror("DbError","history.go(-1)");}
}

//批量删除反馈信息
function DelFeedback_all($id,$bid,$userid,$username){
	global $Elves,$dbtbpre;
	$bid=(int)$bid;
	$count=count($id);
	if(!$count)
	{
		printerror("NotChangeFeedbackid","history.go(-1)");
    }
	//反馈权限
	$bidr=ReturnAdminFeedbackClass(0,$userid,$username);
	$dh='';
	$inid='';
	for($i=0;$i<$count;$i++)
	{
		$id[$i]=(int)$id[$i];
		//删除附件
		$r=$Elves->fetch1("select id,filepath,filename,bid from {$dbtbpre}melvefeedback where id='".$id[$i]."';");
		if(!strstr(','.$bidr['bids'].',',','.$r['bid'].','))
		{
			continue;
		}
		DelFeedbackFile($r['filename'],$r['filepath']);
		$inid.=$dh.$id[$i];
		$dh=",";
	}
	if($inid)
	{
		$sql=$Elves->query("delete from {$dbtbpre}melvefeedback where id in (".$inid.");");
	}
	if($sql)
	{
		//操作日志
		insert_dolog("");
		printerror("DelFeedbackSuccess",$_SERVER['HTTP_REFERER']);
	}
	else
	{printerror("DbError","history.go(-1)");}
}

//返回字段值
function ReturnFBFvalue($value){
	$value=str_replace("\r\n","|",$value);
	return $value;
}

//增加反馈字段
function AddFeedbackF($add,$userid,$username){
	global $Elves,$dbtbpre;
	$add[f]=RepPostVar($add[f]);
	if(empty($add[f])||empty($add[fname]))
	{printerror("EmptyF","history.go(-1)");}
	//验证权限
	//CheckLevel($userid,$username,$classid,"feedbackf");
	//字段是否重复
	$s=$Elves->query("SHOW FIELDS FROM {$dbtbpre}melvefeedback");
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
	{printerror("ReF","history.go(-1)");}
	$add[fvalue]=ReturnFBFvalue($add[fvalue]);//初始化值
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
	if($add[flen])
	{
		if($add[ftype]!="TEXT"&&$add[ftype]!="MEDIUMTEXT"&&$add[ftype]!="LONGTEXT")
		{
			$type.="(".$add[flen].")";
		}
	}
	$field="`".$add[f]."` ".$type." NOT NULL".$def;
	//新增字段
	$asql=$Elves->query("alter table {$dbtbpre}melvefeedback add ".$field);
	//处理变量
	$add[myorder]=(int)$add[myorder];
	$sql=$Elves->query("insert into {$dbtbpre}melvefeedbackf(f,fname,fform,fzs,myorder,ftype,flen,fformsize,fvalue) values('$add[f]','$add[fname]','$add[fform]','".eaddslashes($add[fzs])."',$add[myorder],'$add[ftype]','$add[flen]','$add[fformsize]','".eaddslashes2($add[fvalue])."');");
	$lastid=$Elves->lastid();
	if($asql&&$sql)
	{
		//操作日志
		insert_dolog("fid=".$lastid."<br>f=".$add[f]);
		printerror("AddFSuccess","AddFeedbackF.php?melve=AddFeedbackF");
	}
	else
	{
		printerror("DbError","history.go(-1)");
	}
}

//修改反馈字段
function EditFeedbackF($add,$userid,$username){
	global $Elves,$dbtbpre;
	$fid=(int)$add['fid'];
	$add[f]=RepPostVar($add[f]);
	$add[oldf]=RepPostVar($add[oldf]);
	if(empty($add[f])||empty($add[fname])||!$fid)
	{printerror("EmptyF","history.go(-1)");}
	//验证权限
	//CheckLevel($userid,$username,$classid,"feedbackf");
	if($add[f]<>$add[oldf])
	{
		//字段是否重复
		$s=$Elves->query("SHOW FIELDS FROM {$dbtbpre}melvefeedback");
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
		{printerror("ReF","history.go(-1)");}
	}
	$add[fvalue]=ReturnFBFvalue($add[fvalue]);//初始化值
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
	if($add[flen])
	{
		if($add[ftype]!="TEXT"&&$add[ftype]!="MEDIUMTEXT"&&$add[ftype]!="LONGTEXT")
		{
			$type.="(".$add[flen].")";
		}
	}
	$field="`".$add[f]."` ".$type." NOT NULL".$def;
	$usql=$Elves->query("alter table {$dbtbpre}melvefeedback change `".$add[oldf]."` ".$field);
	//处理变量
	$add[myorder]=(int)$add[myorder];
	$sql=$Elves->query("update {$dbtbpre}melvefeedbackf set f='$add[f]',fname='$add[fname]',fform='$add[fform]',fzs='".eaddslashes($add[fzs])."',myorder=$add[myorder],ftype='$add[ftype]',flen='$add[flen]',fformsize='$add[fformsize]',fvalue='".eaddslashes2($add[fvalue])."' where fid=$fid");
	//字段名更换
	if($add[f]<>$add[oldf])
	{
		$record="<!--record-->";
		$field="<!--field--->";
		$like=$field.$add[oldf].$record;
		$newlike=$field.$add[f].$record;
		$slike=",".$add[oldf].",";
		$newslike=",".$add[f].",";
		$csql=$Elves->query("select bid,enter,mustenter,filef,checkboxf from {$dbtbpre}melvefeedbackclass where enter like '%$like%'");
		while($cr=$Elves->fetch($csql))
		{
			$setf="";
			if(strstr($cr['mustenter'],$slike))
			{
				$setf.=",mustenter=REPLACE(mustenter,'$slike','$newslike')";
			}
			if(strstr($cr['filef'],$slike))
			{
				$setf.=",filef=REPLACE(filef,'$slike','$newslike')";
			}
			if(strstr($cr['checkboxf'],$slike))
			{
				$setf.=",checkboxf=REPLACE(checkboxf,'$slike','$newslike')";
			}
			$cusql=$Elves->query("update {$dbtbpre}melvefeedbackclass set enter=REPLACE(enter,'$like','$newlike')".$setf." where bid='$cr[bid]'");
		}
	}
	if($usql&&$sql)
	{
		//操作日志
		insert_dolog("fid=".$fid."<br>f=".$add[f]);
		printerror("EditFSuccess","ListFeedbackF.php");
	}
	else
	{printerror("DbError","history.go(-1)");}
}

//删除反馈字段
function DelFeedbackF($add,$userid,$username){
	global $Elves,$dbtbpre;
	$fid=(int)$add['fid'];
	if(empty($fid))
	{printerror("EmptyFid","history.go(-1)");}
	//验证权限
	//CheckLevel($userid,$username,$classid,"feedbackf");
	$r=$Elves->fetch1("select f from {$dbtbpre}melvefeedbackf where fid=$fid");
	if(!$r[f])
	{
		printerror("EmptyFid","history.go(-1)");
	}
	if($r[f]=="title")
	{
		printerror("NotIsAdd","history.go(-1)");
	}
	$usql=$Elves->query("alter table {$dbtbpre}melvefeedback drop COLUMN `".$r[f]."`");
	$sql=$Elves->query("delete from {$dbtbpre}melvefeedbackf where fid=$fid");
	//更新分类表
	$record="<!--record-->";
	$field="<!--field--->";
	$like=$field.$r[f].$record;
	$slike=",".$r[f].",";
	$csql=$Elves->query("select bid,enter,mustenter,filef,checkboxf from {$dbtbpre}melvefeedbackclass where enter like '%$like%'");
	while($cr=$Elves->fetch($csql))
	{
		$setf="";
		if(strstr($cr['mustenter'],$slike))
		{
			$setf.=",mustenter=REPLACE(mustenter,'$slike',',')";
		}
		if(strstr($cr['filef'],$slike))
		{
			$setf.=",filef=REPLACE(filef,'$slike',',')";
		}
		if(strstr($cr['checkboxf'],$slike))
		{
			$setf.=",checkboxf=REPLACE(checkboxf,'$slike',',')";
		}
		//录入项
		$enter="";
		$re1=explode($record,$cr[enter]);
		for($i=0;$i<count($re1)-1;$i++)
		{
			if(strstr($re1[$i].$record,$like))
			{continue;}
			$enter.=$re1[$i].$record;
		}
		$cusql=$Elves->query("update {$dbtbpre}melvefeedbackclass set enter='$enter'".$setf." where bid='$cr[bid]'");
	}
	if($usql&&$sql)
	{
		//操作日志
		insert_dolog("fid=".$fid."<br>f=".$r[f]);
		printerror("DelFSuccess","ListFeedbackF.php");
	}
	else
	{printerror("DbError","history.go(-1)");}
}

//修改反馈字段顺序
function EditFeedbackFOrder($fid,$myorder,$userid,$username){
	global $Elves,$dbtbpre;
	//验证权限
	//CheckLevel($userid,$username,$classid,"feedbackf");
	for($i=0;$i<count($myorder);$i++)
	{
		$newmyorder=(int)$myorder[$i];
		$fid[$i]=(int)$fid[$i];
		$usql=$Elves->query("update {$dbtbpre}melvefeedbackf set myorder=$newmyorder where fid='$fid[$i]'");
    }
	printerror("EditFOrderSuccess","ListFeedbackF.php");
}

//返回有权限的反馈分类
function ReturnAdminFeedbackClass($bid,$userid,$username){
	global $Elves,$dbtbpre;
	$bids='';
	$dh='';
	$select='';
	$no=0;
	$sql=$Elves->query("select bid,bname from {$dbtbpre}melvefeedbackclass where usernames='' or usernames like '%,".$username.",%'");
	while($r=$Elves->fetch($sql))
	{
		$no++;
		$bids.=$dh.$r['bid'];
		$dh=',';
		if($bid==$r['bid'])
		{$selected=' selected';}
		else
		{$selected='';}
		$select.='<option value='.$r['bid'].$selected.'>'.$r['bname'].'</option>';
	}
	if(!$bids)
	{
		printerror('NotLevel','history.go(-1)');
	}
	if($bid&&!strstr(','.$bids.',',','.$bid.','))
	{
		printerror('NotLevel','history.go(-1)');
	}
	$num=$Elves->gettotal("select count(*) as total from {$dbtbpre}melvefeedbackclass");
	$ret_r['allbid']=0;
	if($num==$no)
	{
		$ret_r['allbid']=1;
	}
	$ret_r['bids']=$bids;
	$ret_r['selects']=$select;
	return $ret_r;
}

//取得select/radio元素代码
function GetBFFformSelect($type,$f,$fvalue,$fformsize=''){
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
			$isdef=1;
		}
		if($type=='select')
		{
			$change.="<option value=\"".$val."\"".($isdef==1?' selected':'').">".$val."</option>";
		}
		elseif($type=='checkbox')
		{
			$change.="<input name=\"".$f."[]\" type=\"checkbox\" value=\"".$val."\"".($isdef==1?' checked':'').">".$val;
		}
		else
		{
			$change.="<input name=\"".$f."\" type=\"radio\" value=\"".$val."\"".($isdef==1?' checked':'').">".$val;
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

//自动生成反馈表单
function ReturnFeedbackBtemp($cname,$center,$mustenter){
	global $Elves,$dbtbpre,$fun_r;
	//表单元素
	$temp="<tr><td width='16%' height=25 bgcolor='ffffff'>melve.name</td><td bgcolor='ffffff'>melve.var</td></tr>";
	for($i=0;$i<count($center);$i++)
	{
		$v=$center[$i];
		$fr=$Elves->fetch1("select fform,fformsize,fvalue from {$dbtbpre}melvefeedbackf where f='$v' limit 1");
		if($fr['fform']=="file")
		{
			$fsize=$fr[fformsize]?" size='".$fr[fformsize]."'":"";
			$repform="<input type='file' name='".$v."'".$fsize.">";
		}
		elseif($fr['fform']=="textarea")
		{
			$fsr=explode(',',$fr[fformsize]);
			$cols=$fsr[0]?$fsr[0]:60;
			$rows=$fsr[1]?$fsr[1]:12;
			$repform="<textarea name='".$v."' cols='".$cols."' rows='".$rows."'>".$fr[fvalue]."</textarea>";
		}
		elseif($fr['fform']=="select"||$fr['fform']=="radio"||$fr['fform']=="checkbox")
		{
			$repform=GetBFFformSelect($fr['fform'],$v,$fr[fvalue],$fr[fformsize]);
		}
		else
		{
			$fsize=$fr[fformsize]?" size='".$fr[fformsize]."'":"";
			$repform="<input name='".$v."' type='text' value='".$fr[fvalue]."'".$fsize.">";
		}
		//必填
		$star="";
		if(strstr($mustenter,",".$v.","))
		{
			$star="(*)";
		}
		$data.=str_replace("melve.var",$repform.$star,str_replace("melve.name",$cname[$v],$temp));
    }
	return "[!--cp.header--]<table width=100% align=center cellpadding=3 cellspacing=1 bgcolor='#DBEAF5'><form name='feedback' method='post' enctype='multipart/form-data' action='../../melve/index.php'><input name='melve' type='hidden' value='AddFeedback'>".$data."<tr><td bgcolor='ffffff'></td><td bgcolor='ffffff'><input type='submit' name='submit' value='".$fun_r['onsubmit']."'></td></tr></form></table>[!--cp.footer--]";
}

//生成反馈表单文件
function ReFeedbackClassFile($bid){
	global $Elves,$dbtbpre;
	$r=$Elves->fetch1("select btemp from {$dbtbpre}melvefeedbackclass where bid='$bid'");
	//替换公共变量
	$url="<?=\$url?>";
	$pagetitle="<?=\$bname?>";
	$btemp=ReplaceSvars($r['btemp'],$url,0,$pagetitle,$pagetitle,$pagetitle,$add,1);
	$btemp=str_replace("[!--cp.header--]","<? include(\"../../data/template/cp_1.php\");?>",$btemp);
	$btemp=str_replace("[!--cp.footer--]","<? include(\"../../data/template/cp_2.php\");?>",$btemp);
	$btemp=str_replace("[!--member.header--]","<? include(\"../../template/incfile/header.php\");?>",$btemp);
	$btemp=str_replace("[!--member.footer--]","<? include(\"../../template/incfile/footer.php\");?>",$btemp);
	$file="../../tool/feedback/temp/feedback".$bid.".php";
	$btemp="<?
if(!defined('InElvesCMS'))
{exit();}
?>".$btemp;
	WriteFiletext($file,$btemp);
}

//批量生成反馈表单文件
function ReMoreFeedbackClassFile($start=0,$userid,$username){
	global $Elves,$dbtbpre;
	//验证权限
	CheckLevel($userid,$username,$classid,"changedata");
	$sql=$Elves->query("select bid from {$dbtbpre}melvefeedbackclass order by bid");
	while($r=$Elves->fetch($sql))
	{
		ReFeedbackClassFile($r['bid']);
	}
	printerror("ReMFeedbackFileSuccess","");
}

//组合投稿项
function TogFBqenter($cname,$cqenter){
	$record="<!--record-->";
	$field="<!--field--->";
	$c="";
	for($i=0;$i<count($cqenter);$i++)
	{
		$v=$cqenter[$i];
		$name=str_replace($field,"",$cname[$v]);
		$name=str_replace($record,"",$name);
		$c.=$name.$field.$v.$record;
	}
	return $c;
}

//组合必填项
function TogFBMustf($cname,$menter){
	$c="";
	for($i=0;$i<count($menter);$i++)
	{
		$v=$menter[$i];
		$c.=$v.",";
	}
	if($c)
	{
		$c=",".$c;
	}
	return $c;
}

//增加反馈分类
function AddFeedbackClass($add,$userid,$username){
	global $Elves,$dbtbpre;
	if(empty($add[bname]))
	{printerror("EmptyGbookClass","history.go(-1)");}
	//验证权限
	//CheckLevel($userid,$username,$classid,"feedbackf");
	$enter=TogFBqenter($add['cname'],$add['center']);
	$mustenter=TogFBMustf($add['cname'],$add['menter']);
	$filef=ReturnMFileF($enter,$dbtbpre."melvefeedbackf",0,"file");
	$checkboxf=ReturnMFileF($enter,$dbtbpre."melvefeedbackf",0,"checkbox");
	//自动生成表单
	if($add[btype])
	{
		$add[btemp]=ReturnFeedbackBtemp($add['cname'],$add['center'],$mustenter);
	}
	$groupid=(int)$add['groupid'];
	if($add['usernames'])
	{
		$add['usernames']=','.$add['usernames'].',';
	}
	$sql=$Elves->query("insert into {$dbtbpre}melvefeedbackclass(bname,btemp,bzs,enter,mustenter,filef,groupid,checkboxf,usernames) values('$add[bname]','".eaddslashes2($add[btemp])."','".eaddslashes($add[bzs])."','$enter','$mustenter','$filef',$groupid,'$checkboxf','$add[usernames]');");
	$bid=$Elves->lastid();
	//生成表单页面
	ReFeedbackClassFile($bid);
	if($sql)
	{
		//操作日志
	    insert_dolog("bid=".$bid."<br>bname=".$add[bname]);
		printerror("AddGbookClassSuccess","AddFeedbackClass.php?melve=AddFeedbackClass");
	}
	else
	{printerror("DbError","history.go(-1)");}
}

//修改反馈分类
function EditFeedbackClass($add,$userid,$username){
	global $Elves,$dbtbpre;
	$bid=(int)$add['bid'];
	if(empty($add[bname])||!$bid)
	{printerror("EmptyGbookClass","history.go(-1)");}
	//验证权限
	//CheckLevel($userid,$username,$classid,"feedbackf");
	$enter=TogFBqenter($add['cname'],$add['center']);
	$mustenter=TogFBMustf($add['cname'],$add['menter']);
	$filef=ReturnMFileF($enter,$dbtbpre."melvefeedbackf",0,"file");
	$checkboxf=ReturnMFileF($enter,$dbtbpre."melvefeedbackf",0,"checkbox");
	//自动生成表单
	if($add[btype])
	{
		$add[btemp]=ReturnFeedbackBtemp($add['cname'],$add['center'],$mustenter);
	}
	$groupid=(int)$add['groupid'];
	if($add['usernames'])
	{
		$add['usernames']=','.$add['usernames'].',';
	}
	$sql=$Elves->query("update {$dbtbpre}melvefeedbackclass set bname='$add[bname]',btemp='".eaddslashes2($add[btemp])."',bzs='".eaddslashes($add[bzs])."',enter='$enter',mustenter='$mustenter',filef='$filef',groupid=$groupid,checkboxf='$checkboxf',usernames='$add[usernames]' where bid=$bid");
	//生成表单页面
	ReFeedbackClassFile($bid);
	if($sql)
	{
		//操作日志
	    insert_dolog("bid=".$bid."<br>bname=".$add[bname]);
		printerror("EditGbookClassSuccess","FeedbackClass.php");
	}
	else
	{printerror("DbError","history.go(-1)");}
}

//删除反馈分类
function DelFeedbackClass($add,$userid,$username){
	global $Elves,$dbtbpre;
	$bid=(int)$add['bid'];
	if(!$bid)
	{printerror("NotChangeGbookClassid","history.go(-1)");}
	//验证权限
	//CheckLevel($userid,$username,$classid,"feedbackf");
	$r=$Elves->fetch1("select bid,bname from {$dbtbpre}melvefeedbackclass where bid=$bid;");
	if(!$r['bid'])
	{printerror("NotChangeGbookClassid","history.go(-1)");}
	$sql=$Elves->query("delete from {$dbtbpre}melvefeedbackclass where bid=$bid;");
	//删除附件
	$fsql=$Elves->query("select id,filepath,filename from {$dbtbpre}melvefeedback where bid=$bid");
	while($fr=$Elves->fetch($fsql))
	{
		DelFeedbackFile($fr['filename'],$fr['filepath']);
	}
	$sql1=$Elves->query("delete from {$dbtbpre}melvefeedback where bid=$bid;");
	//删除表单文件
	$file="../../tool/feedback/temp/feedback".$bid.".php";
	DelFiletext($file);
	if($sql)
	{
		//操作日志
	    insert_dolog("bid=".$bid."<br>bname=".$r[bname]);
		printerror("DelGbookClassSuccess","FeedbackClass.php");
	}
	else
	{printerror("DbError","history.go(-1)");}
}

//删除短消息
function DelMoreMsg($add,$userid,$username){
	global $Elves,$dbtbpre;
	$starttime=RepPostVar($add['starttime']);
	$endtime=RepPostVar($add['endtime']);
	if(!$starttime||!$endtime)
	{
		printerror("EmptyDelMoreMsg","history.go(-1)");
	}
	//信箱类型
	$msgtype=(int)$add['msgtype'];
	if($msgtype==1)//后台
	{
		$a='';
		$tbname="{$dbtbpre}melvehmsg";
	}
	elseif($msgtype==2)//前台系统消息
	{
		$a=' and issys=1';
		$tbname="{$dbtbpre}melveqmsg";
	}
	elseif($msgtype==3)//后台系统消息
	{
		$a=' and issys=1';
		$tbname="{$dbtbpre}melvehmsg";
	}
	else//前台
	{
		$a='';
		$tbname="{$dbtbpre}melveqmsg";
	}
	//发件人
	$from_username=RepPostVar($add['from_username']);
	if($from_username)
	{
		if($add['fromlike']==1)
		{
			$a.=" and from_username like '%$from_username%'";
		}
		else
		{
			$a.=" and from_username='$from_username'";
		}
	}
	$to_username=RepPostVar($add['to_username']);
	if($to_username)
	{
		if($add['tolike']==1)
		{
			$a.=" and to_username like '%$to_username%'";
		}
		else
		{
			$a.=" and to_username='$to_username'";
		}
	}
	//关键字
	$keyboard=RepPostVar2($add['keyboard']);
	if(trim($keyboard))
	{
		//检索字段
		$keyfield=(int)$add['keyfield'];
		if($keyfield==1)
		{
			$likef="title like '%[!--key--]%'";
		}
		elseif($keyfield==2)
		{
			$likef="msgtext like '%[!--key--]%'";
		}
		else
		{
			$likef="title like '%[!--key--]%' or msgtext like '%[!--key--]%'";
		}
		$r=explode(",",$keyboard);
		$likekey="";
		$count=count($r);
		for($i=0;$i<$count;$i++)
		{
			if($i==0)
			{
				$or="";
			}
			else
			{
				$or=" or ";
			}
			$likekey.=$or.str_replace("[!--key--]",$r[$i],$likef);
		}
		$a.=" and (".$likekey.")";
	}
	$sql=$Elves->query("delete from ".$tbname." where msgtime>'$starttime' and msgtime<'$endtime'".$a);
	if($sql)
	{
		//操作日志
		insert_dolog("starttime=$starttime&endtime=$endtime<br>msgtype=$msgtype");
		printerror("DelMoreMsgSuccess","DelMoreMsg.php");
	}
	else
	{printerror("DbError","history.go(-1)");}
}

//返回会员组
function ReturnSendMemberGroup($r){
	global $public_r,$elve_config;
	$user_groupid=eReturnMemberDefGroupid();
	$count=count($r);
	if($count==0)
	{
		printerror("EmptySendMemberGroup","");
	}
	for($i=0;$i<$count;$i++)
	{
		$r[$i]=(int)$r[$i];
		if($i==0)
		{
			$or="";
		}
		else
		{
			$or=" or ";
		}
		$a.=$or.egetmf('groupid')."='".$r[$i]."'";
		if($user_groupid==$r[$i])
		{
			$a.=" or ".egetmf('groupid')."=0";
		}
		$checkbox.="<input type=hidden name='groupid[]' value='".$r[$i]."'>";
	}
	$re[0]="(".$a.")";
	$re[1]=$checkbox;
	return $re;
}

//返回会员用户名
function ReturnSendMemberUsername($username){
	$r=explode('|',$username);
	$count=count($r);
	for($i=0;$i<$count;$i++)
	{
		$r[$i]=RepPostVar($r[$i]);
		if($i==0)
		{
			$or="";
		}
		else
		{
			$or=" or ";
		}
		$a.=$or.egetmf('username')."='".$r[$i]."'";
	}
	$re[0]="(".$a.")";
	$re[1]='<input type=hidden name="username" value="'.ClearAddsData($username).'">';
	return $re;
}

//批量发送站内信息
function DoSendMsg($add,$elve=0,$userid,$username){
	global $Elves,$dbtbpre;
	$start=(int)$add['start'];
	$line=(int)$add['line'];
	$title=ClearAddsData($add['title']);
	$msgtext=ClearAddsData($add['msgtext']);
	if(empty($title)||empty($msgtext))
	{printerror("EmptySendMsg","history.go(-1)");}
	if($elve==1)//发送邮件
	{
		$melve="SendEmail";
		$mess="SendEmailSuccess";
		$returnurl="SendEmail.php";
		$pr=$Elves->fetch1("select sendmailtype,smtphost,fromemail,loginemail,emailusername,emailpassword,smtpport,emailname from {$dbtbpre}melvepublic limit 1");
		//发送初使化
		$mailer=FirstSendMail($pr,$title,$msgtext);
	}
	else//发送短消息
	{
		$melve="SendMsg";
		$mess="SendMsgSuccess";
		$returnurl="SendMsg.php";
	}
	if($add['username'])//用户名
	{
		$gr=ReturnSendMemberUsername($add['username']);
	}
	else//会员组
	{
		$gr=ReturnSendMemberGroup($add['groupid']);
	}
	$a=" and ".$gr[0];
	$b=0;
	$msgtime=date("Y-m-d H:i:s");
	$sql=$Elves->query("select ".eReturnSelectMemberF('userid,username,havemsg,groupid,email')." from ".eReturnMemberTable()." where ".egetmf('userid').">$start".$a." order by ".egetmf('userid')." limit ".$line);
	while($r=$Elves->fetch($sql))
	{
		$b=1;
		$newstart=$r['userid'];
		if($elve==1)
		{
			$mailer->AddAddress($r['email']);
		}
		else
		{
			$ititle=str_replace("[!--username--]",$r['username'],$title);
			$imsgtext=str_replace("[!--username--]",$r['username'],$msgtext);
			SendSiteMsg($ititle,$imsgtext,$msgtime,$r['userid'],$r['username'],$r['havemsg']);
		}
	}
	if(empty($b))
	{
		//操作日志
		insert_dolog("title=$title");
		printerror($mess,$returnurl);
	}
	if($elve==1)
	{
		if(!$mailer->Send())
		{
			echo $mailer->ErrorInfo;
		}
	}
	//输出下一组提交表单
	EchoSendMsgForm($melve,$returnurl,$newstart,$line,$gr[1],$add);
}

//输出一组提交表单
function EchoSendMsgForm($melve,$returnurl,$start,$line,$checkbox,$add){
	global $fun_r;
	?>
	<?=$fun_r['OneSendMsg']?>(<b><font color=red><?=$start?></font></b>)
	<form name="sendform" method="post" action="<?=$returnurl?>">
		<input type=hidden name="melve" value="<?=$melve?>">
		<input type=hidden name="start" value="<?=$start?>">
		<input type=hidden name="line" value="<?=$line?>">
		<?=$checkbox?>
		<input type=hidden name="title" value="<?=ehtmlspecialchars($add[title])?>">
		<input type=hidden name="msgtext" value="<?=ehtmlspecialchars($add[msgtext])?>">
	</form>
	<script>
	document.sendform.submit();
	</script>
	<?
	exit();
}

//发送站内短消息
function SendSiteMsg($title,$msgtext,$msgtime,$userid,$username,$havemsg){
	global $Elves,$dbtbpre;
	$isql=$Elves->query("insert into {$dbtbpre}melveqmsg(title,msgtext,haveread,msgtime,to_username,from_userid,from_username,isadmin,issys) values('".addslashes($title)."','".addslashes($msgtext)."',0,'$msgtime','$username',0,'',1,1);");
	if(!$havemsg)
	{
		$newhavemsg=eReturnSetHavemsg($havemsg,0);
		$usql=$Elves->query("update ".eReturnMemberTable()." set ".egetmf('havemsg')."='$newhavemsg' where ".egetmf('userid')."='".$userid."' limit 1");
	}
}
?>