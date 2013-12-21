<?php
//提交反馈
function AddMemberFeedback($add){
	global $Elves,$dbtbpre;
	//验证码
	$keyvname='checkspacefbkey';
	elveCheckShowKey($keyvname,$add['key'],1);
	//用户
	$userid=intval($add['userid']);
	$ur=$Elves->fetch1("select ".egetmf('userid')." from ".eReturnMemberTable()." where ".egetmf('userid')."='$userid' limit 1");
	if(empty($ur['userid']))
	{
		printerror("NotUsername","",1);
	}
	//发表者
	$uid=(int)getcvar('mluserid');
	if($uid)
	{
		$uname=RepPostVar(getcvar('mlusername'));
	}
	else
	{
		$uid=0;
		$uname='';
	}
	$uname=RepPostStr($uname);
	$name=RepPostStr($add['name']);
	$company=RepPostStr($add['company']);
	$phone=RepPostStr($add['phone']);
	$fax=RepPostStr($add['fax']);
	$email=RepPostStr($add['email']);
	$address=RepPostStr($add['address']);
	$zip=RepPostStr($add['zip']);
	$title=RepPostStr($add['title']);
	$ftext=RepPostStr($add['ftext']);
	if(!trim($name)||!trim($title)||!trim($ftext))
	{
		printerror("EmptyMemberFeedback","history.go(-1)",1);
    }
	$addtime=date("Y-m-d H:i:s");
	$ip=egetip();
	$sql=$Elves->query("insert into {$dbtbpre}melvememberfeedback(name,company,phone,fax,email,address,zip,title,ftext,userid,ip,uid,uname,addtime) values('$name','$company','$phone','$fax','$email','$address','$zip','$title','$ftext',$userid,'$ip',$uid,'$uname','$addtime');");
	elveEmptyShowKey($keyvname);//清空验证码
	if($sql)
	{
		printerror("AddMemberFeedbackSuccess",$_SERVER['HTTP_REFERER'],1);
	}
	else
	{
		printerror("DbError","history.go(-1)",1);
	}
}

//删除反馈
function DelMemberFeedback($add){
	global $Elves,$dbtbpre;
	$user_r=islogin();//是否登陆
	$fid=intval($add['fid']);
	if(!$fid)
	{
		printerror("NotDelMemberFeedbackid","history.go(-1)",1);
	}
	$sql=$Elves->query("delete from {$dbtbpre}melvememberfeedback where fid='$fid' and userid='$user_r[userid]'");
	if($sql)
	{
		printerror("DelMemberFeedbackSuccess",$_SERVER['HTTP_REFERER'],1);
	}
	else
	{
		printerror("DbError","history.go(-1)",1);
	}
}

//批量删除反馈
function DelMemberFeedback_All($add){
	global $Elves,$dbtbpre;
	$user_r=islogin();//是否登陆
	$fid=$add['fid'];
	$count=count($fid);
	if(empty($count))
	{
		printerror("NotDelMemberFeedbackid","history.go(-1)",1);
	}
	for($i=0;$i<$count;$i++)
	{
		$addsql.="fid='".intval($fid[$i])."' or ";
    }
	$addsql=substr($addsql,0,strlen($addsql)-4);
	$sql=$Elves->query("delete from {$dbtbpre}melvememberfeedback where (".$addsql.") and userid='$user_r[userid]'");
	if($sql)
	{
		printerror("DelMemberFeedbackSuccess",$_SERVER['HTTP_REFERER'],1);
	}
	else
	{
		printerror("DbError","history.go(-1)",1);
	}
}
?>