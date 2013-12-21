<?php

//商城参数设置
function ShopSys_set($add,$userid,$username){
	global $Elves,$dbtbpre;
	//验证权限
	CheckLevel($userid,$username,$classid,"public");
	$add['shopddgroupid']=(int)$add['shopddgroupid'];
	$add['buycarnum']=(int)$add['buycarnum'];
	$add['havefp']=(int)$add['havefp'];
	$add['fpnum']=(int)$add['fpnum'];
	$add['fpname']=ehtmlspecialchars($add['fpname']);
	$add['haveatt']=(int)$add['haveatt'];
	$add['buystep']=(int)$add['buystep'];
	$add['shoppsmust']=(int)$add['shoppsmust'];
	$add['shoppayfsmust']=(int)$add['shoppayfsmust'];
	$add['dddeltime']=(int)$add['dddeltime'];
	$add['cutnumtype']=(int)$add['cutnumtype'];
	$add['cutnumtime']=(int)$add['cutnumtime'];
	$add['freepstotal']=(int)$add['freepstotal'];
	$add['singlenum']=(int)$add['singlenum'];
	//必填项
	$ddmuststr='';
	$ddmustf=$add['ddmustf'];
	$mfcount=count($ddmustf);
	for($i=0;$i<$mfcount;$i++)
	{
		if(empty($ddmustf[$i]))
		{
			continue;
		}
		$ddmuststr.=','.$ddmustf[$i];
	}
	if($ddmuststr)
	{
		$ddmuststr.=',';
	}
	//商城表
	$shoptbs='';
	$tbname=$add['tbname'];
	$tbcount=count($tbname);
	for($ti=0;$ti<$tbcount;$ti++)
	{
		if(empty($tbname[$ti]))
		{
			continue;
		}
		$shoptbs.=','.$tbname[$ti];
	}
	if($shoptbs)
	{
		$shoptbs.=',';
	}
	$sql=$Elves->query("update {$dbtbpre}melveshop_set set shopddgroupid='$add[shopddgroupid]',buycarnum='$add[buycarnum]',havefp='$add[havefp]',fpnum='$add[fpnum]',fpname='".eaddslashes($add[fpname])."',ddmust='$ddmuststr',haveatt='$add[haveatt]',shoptbs='$shoptbs',buystep='$add[buystep]',shoppsmust='$add[shoppsmust]',shoppayfsmust='$add[shoppayfsmust]',dddeltime='$add[dddeltime]',cutnumtype='$add[cutnumtype]',cutnumtime='$add[cutnumtime]',freepstotal='$add[freepstotal]',singlenum='$add[singlenum]' limit 1");
	if($sql)
	{
		insert_dolog("");//操作日志
		printerror('SetShopSysSuccess','SetShopSys.php');
	}
	else
	{
		printerror('DbError','history.go(-1)');
	}
}

//返回商城参数
function ShopSys_hReturnSet(){
	global $Elves,$dbtbpre;
	$shoppr=$Elves->fetch1("select * from {$dbtbpre}melveshop_set limit 1");
	return $shoppr;
}

//后台订单增加备注
function ShopSys_DdRetext($add,$userid,$username){
	global $Elves,$dbtbpre;
	//验证权限
	CheckLevel($userid,$username,$classid,"shopdd");
	$ddid=(int)$add['ddid'];
	$retext=eaddslashes(ehtmlspecialchars($add['retext']));
	if(!$ddid)
	{
		printerror('ErrorUrl','');
	}
	$r=$Elves->fetch1("select ddid,ddno from {$dbtbpre}melveshopdd where ddid='$ddid'");
	if(!$r['ddid'])
	{
		printerror('ErrorUrl','');
	}
	$sql=$Elves->query("update {$dbtbpre}melveshopdd_add set retext='$retext' where ddid='$ddid'");
	if($sql)
	{
		$log_bz='';
		$log_addbz="";
		ShopSys_DdInsertLog($ddid,'DdRetext',$log_bz,$log_addbz);//订单日志
		insert_dolog("ddid=$ddid<br>ddno=$r[ddno]");//操作日志
		printerror('DdRetextSuccess',"ShowDd.php?ddid=$ddid");
	}
	else
	{
		printerror('DbError','history.go(-1)');
	}
}

//修改优惠金额
function ShopSys_EditPretotal($add,$userid,$username){
	global $Elves,$dbtbpre;
	//验证权限
	CheckLevel($userid,$username,$classid,"shopdd");
	$ddid=(int)$add['ddid'];
	$bz=eaddslashes(ehtmlspecialchars($add['bz']));
	$pretotal=(float)$add['pretotal'];
	if(!$ddid)
	{
		printerror('ErrorUrl','');
	}
	$r=$Elves->fetch1("select ddid,ddno,pretotal from {$dbtbpre}melveshopdd where ddid='$ddid'");
	if(!$r['ddid'])
	{
		printerror('ErrorUrl','');
	}
	$sql=$Elves->query("update {$dbtbpre}melveshopdd set pretotal='$pretotal' where ddid='$ddid'");
	if($sql)
	{
		$log_bz=$bz;
		$log_addbz="oldpre=$r[pretotal]&newpre=$pretotal";
		ShopSys_DdInsertLog($ddid,'EditPretotal',$log_bz,$log_addbz);//订单日志
		insert_dolog("ddid=$ddid&ddno=$r[ddno]<br>oldpre=$r[pretotal]&newpre=$pretotal");//操作日志
		printerror('DdEditPretotalSuccess',"ShowDd.php?ddid=$ddid");
	}
	else
	{
		printerror('DbError','history.go(-1)');
	}
}

//减少或恢复库存
function Shopsys_DoCutMaxnum($add,$userid,$username){
	global $Elves,$dbtbpre;
	//验证权限
	CheckLevel($userid,$username,$classid,"shopdd");
	$ddid=$add['ddid'];
	$elve=(int)$add['cutmaxnum'];
	$count=count($ddid);
	if(!$count)
	{
		printerror('NotSetDdid','');
	}
	$log_elve='DoCutMaxnum';
	$log_bz='';
	$log_addbz="elve=$elve";
	$shoppr=ShopSys_hReturnSet();
	$ids='';
	$dh='';
	for($i=0;$i<$count;$i++)
	{
		$doddid=(int)$ddid[$i];
		if(!$doddid)
		{
			continue;
		}
		$ddaddr=$Elves->fetch1("select buycar from {$dbtbpre}melveshopdd_add where ddid='$doddid'");
		if(empty($ddaddr['buycar']))
		{
			continue;
		}
		$ddr=$Elves->fetch1("select havecutnum from {$dbtbpre}melveshopdd where ddid='$doddid'");
		Shopsys_hCutMaxnum($doddid,$ddaddr['buycar'],$ddr['havecutnum'],$shoppr,$elve);
		$ids.=$dh.$doddid;
		$dh=',';
		//写入订单日志
		ShopSys_DdInsertLog($doddid,$log_elve,$log_bz,$log_addbz);
	}
	insert_dolog("ddid=$ids<br>elve=$elve");//操作日志
	printerror('CutMaxnumSuccess',$_SERVER['HTTP_REFERER']);
}

//减少库存
function Shopsys_hCutMaxnum($ddid,$buycar,$havecut,$shoppr,$elve=0){
	global $class_r,$Elves,$dbtbpre,$public_r;
	if(empty($buycar))
	{
		return '';
	}
	if($elve==0&&$havecut)
	{
		return '';
	}
	if($elve==1&&!$havecut)
	{
		return '';
	}
	if($elve==0)
	{
		$fh='-';
		$salefh='+';
	}
	else
	{
		$fh='+';
		$salefh='-';
	}
	$record="!";
	$field="|";
	$buycarr=explode($record,$buycar);
	$bcount=count($buycarr);
	for($i=0;$i<$bcount-1;$i++)
	{
		$pr=explode($field,$buycarr[$i]);
		$productid=$pr[1];
		$fr=explode(",",$pr[1]);
		//ID
		$classid=(int)$fr[0];
		$id=(int)$fr[1];
		//数量
		$pnum=(int)$pr[3];
		if($pnum<1)
		{
			$pnum=1;
		}
		if(empty($class_r[$classid][tbname]))
		{
			continue;
		}
		$Elves->query("update {$dbtbpre}elve_".$class_r[$classid][tbname]." set pmaxnum=pmaxnum".$fh.$pnum.",psalenum=psalenum".$salefh.$pnum." where id='$id'");
	}
	$newhavecut=$elve==0?1:0;
	$Elves->query("update {$dbtbpre}melveshopdd set havecutnum='$newhavecut' where ddid='$ddid'");
}

//过期取消订单并还原库存
function ShopSys_hTimeCutMaxnum($userid,$shoppr){
	global $Elves,$dbtbpre,$class_r;
	if($shoppr['cutnumtype']==1||$shoppr['cutnumtime']==0)
	{
		return '';
	}
	$userid=(int)$userid;
	$where=$userid?"userid='$userid' and ":"";
	$time=time()-($shoppr['cutnumtime']*60);
	$ddsql=$Elves->query("select ddid,havecutnum from {$dbtbpre}melveshopdd where ".$where."haveprice=0 and checked=0 and havecutnum=1 and ddtruetime<$time");
	while($ddr=$Elves->fetch($ddsql))
	{
		$ddaddr=$Elves->fetch1("select buycar from {$dbtbpre}melveshopdd_add where ddid='$ddr[ddid]'");
		Shopsys_hCutMaxnum($ddr['ddid'],$ddaddr['buycar'],$ddr['havecutnum'],$shoppr,1);
	}
	$Elves->query("update {$dbtbpre}melveshopdd set checked=2 where ".$where."haveprice=0 and checked=0 and havecutnum=1 and ddtruetime<$time");
}

//写入订单日志
function ShopSys_DdInsertLog($ddid,$elve,$bz,$addbz){
	global $Elves,$dbtbpre,$logininid,$loginin;
	$ddid=(int)$ddid;
	$elve=RepPostVar($elve);
	$logtime=date("Y-m-d H:i:s");
	if(empty($addbz))
	{$addbz="---";}
	$bz=hRepPostStr($bz,1);
	$addbz=addslashes(stripSlashes($addbz));
	$Elves->query("insert into {$dbtbpre}melveshop_ddlog(ddid,userid,username,elve,bz,addbz,logtime) values('$ddid','$logininid','$loginin','$elve','$bz','$addbz','$logtime');");
}
?>