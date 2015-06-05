<?php
//访问jsticket.php?config=[]&url=[]
require("./lib/ewechat.class.php");
$configpath="./config/config.php";
if(!empty($_GET['config'])){ 
$configpath="./config/".$_GET['config'].".php";
}
require($configpath);
$we =  new EWechat($wechat_config['options']); //创建实例对象

$js_ticket = $we->getJsTicket();
if (!$js_ticket) {
  echo "获取js_ticket失败！<br>";
    echo '错误码：'.$we->errCode;
    echo ' 错误原因：'.ErrCode::getErrText($weObj->errCode);
    exit;
}
$timestamp = time();
$noncestr = $we->generateNonceStr();
$url =$_GET['url'];
$js_sign = $we->getJsSign($url, $timestamp, $noncestr); //会自己检测调用checkAuth方法获取access_token
echo json_encode($js_sign);

?>