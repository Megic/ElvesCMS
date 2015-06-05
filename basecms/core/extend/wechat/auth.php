<?php
require("./lib/ewechat.class.php");
require('../../class/connect.php');
require('../../class/db_sql.php');
require('../../member/class/user.php');
require('../../data/dbcache/MemberLevel.php');
//加载微信配置文件
$configpath="./config/config.php";
if(!empty($_GET['config'])){ 
$configpath="./config/".$_GET['config'].".php";
}
require($configpath);

$link=db_connect();
$elves=new mysqlquery();
$weObj = new EWechat($wechat_config['options']); //创建实例对象
//微信授权跳转
if($_GET['type']=='getlogin'){
$url=$weObj->getOauthRedirect('http://'.$_SERVER['HTTP_HOST'].$_SERVER['PHP_SELF'].'?type=loginback&config='.$_GET['config'].'&elvefrom='.$_GET['elvefrom'].'&groupid='.$_GET['groupid']);
header("Location: ".$url);
exit();
}

//微信授权回调
if($_GET['type']=='loginback'){

$r=$weObj->getOauthAccessToken();

$user=$weObj->getOauthUserinfo($r['access_token'],$r['openid']);
//注册&登录微信信息
$loginsign=$user['openid'];

$num=$elves->gettotal("select count(*) as total from ".eReturnMemberTable()." where ".egetmf('loginsign')."='$loginsign' limit 1");
    $add['lifetime']=315360000;//登录时间
    $logincookie=time()+$add['lifetime'];
    $set2=esetcookie("sex",$user['sex'],$logincookie);
    $set3=esetcookie("userpic",$user['headimgurl'],$logincookie);//设置头像
    $backURL=$_GET['elvefrom']!=''?$_GET['elvefrom']:'http://'.$_SERVER['HTTP_HOST'];
if($num)//已经存在-》登录
 {
    include('class/member_loginfun.php');
    $add['elvefrom']=$backURL;//跳转地址
    $add['username']=$user['nickname'];
    $add['loginsign']=$user['openid'];
    $add['tobind']=0;
    qlogin($add);
 }else{//-》注册
    include('class/member_registerfun.php');
    include('class/member_modfun.php');
    $add['groupid']=(int)$_GET['groupid'];
    $add['tobind']=0;
    $add['username']=$user['nickname'];
    $add['loginsign']=$user['openid'];
    $add['nickname']=$user['nickname'];
     $add['sex']=$user['sex'];
     $add['province']=$user['province'];
    $add['city']=$user['city'];
    $add['userpic']=$user['headimgurl'];
     $add['elvefrom']=$backURL;//跳转地址
    register($add);
 }
}

db_close();                        //关闭MYSQL链接
$elves=null;                        //注消操作类变量
?>