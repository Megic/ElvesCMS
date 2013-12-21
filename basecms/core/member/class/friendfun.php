<?php
//--------------- 会员好友函数 ---------------

//增加好友
function AddFriend($add){
	global $Elves,$dbtbpre;
	//是否登陆
	$user_r=islogin();
	$fname=RepPostVar(trim($add['fname']));
	if(!$fname)
	{
		printerror("EmptyFriend","",1);
	}
	//加自己为好友
	if($fname==$user_r['username'])
	{
		printerror("NotAddFriendSelf","",1);
	}
	$num=$Elves->gettotal("select count(*) as total from ".eReturnMemberTable()." where ".egetmf('username')."='$fname' limit 1");
	if(!$num)
	{
		printerror("NotFriendUsername","",1);
	}
	//重复提交
	$num=$Elves->gettotal("select count(*) as total from {$dbtbpre}melvehy where fname='$fname' and userid='$user_r[userid]' limit 1");
	if($num)
	{
		printerror("ReAddFriend","",1);
	}
	$cid=(int)$add['cid'];
	$fsay=RepPostStr($add['fsay']);
	$sql=$Elves->query("insert into {$dbtbpre}melvehy(userid,fname,cid,fsay) values('$user_r[userid]','".addslashes($fname)."',$cid,'".addslashes($fsay)."');");
	if($sql)
	{
		printerror("AddFriendSuccess","../member/friend/?cid=$add[fcid]",1);
	}
	else
	{
		printerror("DbError","",1);
	}
}

//修改好友
function EditFriend($add){
	global $Elves,$dbtbpre;
	//是否登陆
	$user_r=islogin();
	$fid=(int)$add['fid'];
	$fname=RepPostVar(trim($add['fname']));
	if(!$fname||!$fid)
	{
		printerror("EmptyFriend","",1);
	}
	//加自己为好友
	if($fname==$user_r['username'])
	{
		printerror("NotAddFriendSelf","",1);
	}
	$num=$Elves->gettotal("select count(*) as total from ".eReturnMemberTable()." where ".egetmf('username')."='$fname' limit 1");
	if(!$num)
	{
		printerror("NotFriendUsername","",1);
	}
	//重复提交
	if($fname!=$add['oldfname'])
	{
		$num=$Elves->gettotal("select count(*) as total from {$dbtbpre}melvehy where fname='$fname' and userid='$user_r[userid]' limit 1");
		if($num)
		{
			printerror("ReAddFriend","",1);
		}
	}
	$cid=(int)$add['cid'];
	$fsay=RepPostStr($add['fsay']);
	$sql=$Elves->query("update {$dbtbpre}melvehy set fname='".addslashes($fname)."',cid=$cid,fsay='".addslashes($fsay)."' where fid=$fid and userid='$user_r[userid]'");
	if($sql)
	{
		printerror("EditFriendSuccess","../member/friend/?cid=$add[fcid]",1);
	}
	else
	{
		printerror("DbError","",1);
	}
}

//删除好友
function DelFriend($add){
	global $Elves,$dbtbpre;
	//是否登陆
	$user_r=islogin();
	$fid=(int)$add['fid'];
	if(!$fid)
	{
		printerror("EmptyFriendId","",1);
	}
	$num=$Elves->gettotal("select count(*) as total from {$dbtbpre}melvehy where fid=$fid and userid='$user_r[userid]'");
	if(!$num)
	{
		printerror("EmptyFriendId","",1);
	}
	$sql=$Elves->query("delete from {$dbtbpre}melvehy where fid=$fid and userid='$user_r[userid]'");
	if($sql)
	{
		printerror("DelFriendSuccess","../member/friend/?cid=$add[fcid]",1);
	}
	else
	{
		printerror("DbError","",1);
	}
}

//增加好友分类
function AddFriendClass($add){
	global $Elves,$dbtbpre;
	if(!trim($add[cname]))
	{
		printerror('EmptyFavaClassname','history.go(-1)',1);
    }
	//是否登陆
	$user_r=islogin();
	$add[cname]=RepPostStr($add[cname]);
	$sql=$Elves->query("insert into {$dbtbpre}melvehyclass(cname,userid) values('$add[cname]','$user_r[userid]');");
	if($sql)
	{
		printerror('AddFavaClassSuccess','../member/friend/FriendClass/',1);
	}
	else
	{
		printerror('DbError','history.go(-1)',1);
	}
}

//修改好友分类
function EditFriendClass($add){
	global $Elves,$dbtbpre;
	$add[cid]=(int)$add[cid];
	if(!trim($add[cname])||!$add[cid])
	{
		printerror('EmptyFavaClassname','history.go(-1)',1);
    }
	//是否登陆
	$user_r=islogin();
	$add[cname]=RepPostStr($add[cname]);
	$sql=$Elves->query("update {$dbtbpre}melvehyclass set cname='$add[cname]' where cid='$add[cid]' and userid='$user_r[userid]'");
	if($sql)
	{
		printerror('EditFavaClassSuccess','../member/friend/FriendClass/',1);
	}
	else
	{
		printerror('DbError','history.go(-1)',1);
	}
}

//删除好友分类
function DelFriendClass($cid){
	global $Elves,$dbtbpre;
	$cid=(int)$cid;
	if(!$cid)
	{
		printerror('EmptyFavaClassid','history.go(-1)',1);
    }
	//是否登陆
	$user_r=islogin();
	$sql=$Elves->query("delete from {$dbtbpre}melvehyclass where cid='$cid' and userid='$user_r[userid]'");
	if($sql)
	{
		printerror('DelFavaClassSuccess','../member/friend/FriendClass/',1);
	}
	else
	{
		printerror('DbError','history.go(-1)',1);
	}
}

//返回好友分类
function ReturnFriendclass($userid,$cid){
	global $Elves,$dbtbpre;
	$sql=$Elves->query("select cid,cname from {$dbtbpre}melvehyclass where userid='$userid' order by cid");
	$select='';
	while($r=$Elves->fetch($sql))
	{
		if($r[cid]==$cid)
		{$selected=' selected';}
		else
		{$selected='';}
		$select.='<option value="'.$r[cid].'"'.$selected.'>'.$r[cname].'</option>';
    }
	return $select;
}
?>