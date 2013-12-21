<?php
//信息统计
function InfoOnclick($classid,$id){
	global $Elves,$dbtbpre,$public_r;
	if(!$classid||!$id)
	{
		return '';
	}
	$var='ecookieinforecord';
	$val=$classid.'-'.$id;
	if(!eCheckOnclickCookie($var,$val))
	{
		return '';
	}
	$r=$Elves->fetch1("select tbname,tid from {$dbtbpre}melveclass where classid='$classid'");
	if(empty($r[tbname]))
	{
		return '';
	}
	if($public_r['onclicktype']==0)
	{
		$Elves->query("update {$dbtbpre}elve_".$r[tbname]." set onclick=onclick+1 where id='$id'");
	}
	elseif($public_r['onclicktype']==1)
	{
		$filename=elve_PATH.'core/data/filecache/onclick/ocinfo'.$r[tid].'.log';
		eAddUpdateOnclick($id,$filename);
		eDoUpdateOnclick($dbtbpre.'elve_'.$r[tbname],'id','onclick',$filename);
	}
}

//栏目统计
function ClassOnclick($classid){
	global $Elves,$dbtbpre,$public_r;
	if(!$classid)
	{
		return '';
	}
	$var='ecookieclassrecord';
	$val=$classid;
	if(!eCheckOnclickCookie($var,$val))
	{
		return '';
	}
	if($public_r['onclicktype']==0)
	{
		$Elves->query("update {$dbtbpre}melveclass set onclick=onclick+1 where classid='$classid'");
	}
	elseif($public_r['onclicktype']==1)
	{
		$filename=elve_PATH.'core/data/filecache/onclick/occlass.log';
		eAddUpdateOnclick($classid,$filename);
		eDoUpdateOnclick($dbtbpre.'melveclass','classid','onclick',$filename);
	}
}

//专题统计
function ZtOnclick($ztid){
	global $Elves,$dbtbpre,$public_r;
	if(!$ztid)
	{
		return '';
	}
	$var='ecookieztrecord';
	$val=$ztid;
	if(!eCheckOnclickCookie($var,$val))
	{
		return '';
	}
	if($public_r['onclicktype']==0)
	{
		$Elves->query("update {$dbtbpre}melvezt set onclick=onclick+1 where ztid='$ztid'");
	}
	elseif($public_r['onclicktype']==1)
	{
		$filename=elve_PATH.'core/data/filecache/onclick/oczt.log';
		eAddUpdateOnclick($ztid,$filename);
		eDoUpdateOnclick($dbtbpre.'melvezt','ztid','onclick',$filename);
	}
}

//加入点击缓存
function eAddUpdateOnclick($id,$filename){
	if(@$fp=fopen($filename,'a'))
	{
		fwrite($fp,"$id\n");
		fclose($fp);
	}
}

//更新点击缓存
function eDoUpdateOnclick($table,$idf,$onclickf,$filename){
	global $Elves,$dbtbpre,$public_r;
	if(!file_exists($filename))
	{
		return '';
	}
	if(filesize($filename)>=$public_r['onclickfilesize']*1024||time()-filectime($filename)>=$public_r['onclickfiletime']*60)
	{
		$lr=$ocr=array();
		if(@$lr=file($filename))
		{
			if(!@unlink($filename))
			{
				if($fp=@fopen($filename,'w'))
				{
					fwrite($fp,'');
					fclose($fp);
				}
			}
			$lr=array_count_values($lr);
			foreach($lr as $id => $oc)
			{
				$ocr[$oc].=($id>0)?','.intval($id):'';
			}
			foreach($ocr as $oc => $ids)
			{
				$Elves->query("UPDATE LOW_PRIORITY $table SET $onclickf=$onclickf+'$oc' WHERE $idf IN (0$ids)");
			}
		}
	}
}

//COOKIE点击验证
function eCheckOnclickCookie($var,$val){
	$doupdate=1;
	$onclickrecord=getcvar($var);
	if(strstr($onclickrecord,','.$val.','))
	{
		$doupdate=0;
	}
	else
	{
		$newval=empty($onclickrecord)?','.$val.',':$onclickrecord.$val.',';
		esetcookie($var,$newval);
	}
	if(empty($_COOKIE))
	{
		$doupdate=0;
	}
	return $doupdate;
}
?>