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

$wechatTable=$wechat_config['elves']['table'];
$wechatKey=$wechat_config['elves']['keyword'];
$mgsType=$wechat_config['elves']['type'];
$mgsText=$wechat_config['elves']['description'];
$mgsTitle=$wechat_config['elves']['title'];
$mgsPic=$wechat_config['elves']['pic'];
$mgsUrl=$wechat_config['elves']['url'];
$mgsDefault=$wechat_config['elves']['default'];
$mgsClass=$wechat_config['elves']['class'];
$mgsFollow=$wechat_config['elves']['follow'];

function reply($r){ //自动回复处理
   global $weObj,$mgsType,$mgsTitle,$mgsText,$mgsPic,$mgsUrl;
  if($r[$mgsType]==1){ //回复文字
       $weObj->text($r[$mgsText])->reply();
    }
     if($r[$mgsType]==2){ //回复图文
        $arr[0]=array('Title'=>$r[$mgsTitle], 'Description'=>$r[$mgsText], 'PicUrl'=>$r[$mgsPic], 'Url'=>$r[$mgsUrl] );
         $weObj->news($arr)->reply();
    }
}

function replyEven(){ 
 $evenType=$weObj->getRevEvent();
    if( $evenType==EWechat::EVENT_SUBSCRIBE){ //订阅事件
      $r=$elves->fetch1("select * from $wechatTable  where $wechatKey='".$mgsFollow."' and classid=".$mgsClass);//查找订阅回复
        if(!empty($r[$mgsType])){reply($r);exit();} 
    }
}

$link=db_connect();
$elves=new mysqlquery();
$weObj = new EWechat($wechat_config['options']); //创建实例对象
//自定义回复
$weObj->valid();//明文或兼容模式可以在接口验证通过后注释此句，但加密模式一定不能注释，否则会验证失败
$type = $weObj->getRev()->getRevType();
switch($type) {
    case EWechat::MSGTYPE_TEXT://用户输入文字
     $str=$weObj->getRevContent();
    $r=$elves->fetch1("select * from $wechatTable  where $wechatKey='".$str."' and classid=".$mgsClass);//查找关键字回复
    if(!empty($r[$mgsType])){reply($r);exit();} 
            break;
    case EWechat::MSGTYPE_EVENT:
           replyEven();
            break;
    case EWechat::MSGTYPE_IMAGE:
            break;
    default: break;
}

//默认回复
$r=$elves->fetch1("select * from $wechatTable  where $wechatKey='".$mgsDefault."' and classid=".$mgsClass);//查找默认回复
 if(!empty($r[$mgsType])){
       reply($r);
 }else{ 
 //$weObj->text("没有相关回复")->reply();
 }

db_close();                        //关闭MYSQL链接
$elves=null;                        //注消操作类变量
?>