<?php
//--------------- 会员相关处理函数 ---------------

//点卡冲值
function CardGetFen($username,$reusername,$card_no,$password){
	global $Elves,$dbtbpre;
	$card_no=RepPostVar($card_no);
	$password=RepPostVar($password);
	$username=RepPostVar($username);
	if(!trim($username)||!trim($card_no)||!trim($password))
	{
		printerror("EmptyGetCard","history.go(-1)",1);
	}
	if($username!=$reusername)
	{
		printerror("DifCardUsername","history.go(-1)",1);
	}
	$user=$Elves->fetch1("select ".eReturnSelectMemberF('userid,userdate,username')." from ".eReturnMemberTable()." where ".egetmf('username')."='$username' limit 1");
	if(!$user['userid'])
	{
		printerror("ExiestCardUsername","history.go(-1)",1);
	}
	$num=$Elves->gettotal("select count(*) as total from {$dbtbpre}melvecard where card_no='".$card_no."' and password='".$password."' limit 1");
	if(!$num)
	{
		printerror("CardPassError","history.go(-1)",1);
	}
	//是否过期
	$buytime=date("Y-m-d H:i:s");
	$r=$Elves->fetch1("select cardfen,money,endtime,carddate,cdgroupid,cdzgroupid from {$dbtbpre}melvecard where card_no='$card_no' limit 1");
	if($r[endtime]<>"0000-00-00")
	{
		$endtime=to_date($r[endtime]);
		if($endtime<time())
		{
			printerror("CardOutDate","history.go(-1)",1);
	    }
    }
	//充值
	eAddFenToUser($r[cardfen],$r[carddate],$r[cdgroupid],$r[cdzgroupid],$user);
	$sql1=$Elves->query("delete from {$dbtbpre}melvecard where card_no='$card_no'");//删除卡号
	//备份购买记录
	BakBuy($user['userid'],$username,$card_no,$r[cardfen],$r[money],$r[carddate],0);
	printerror("CardGetFenSuccess","../member/card/",1);
}
?>