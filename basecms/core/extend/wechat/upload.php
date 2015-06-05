<?php
//上传图片返回地址
require("./lib/ewechat.class.php");
$configpath="./config/config.php";
if(!empty($_GET['config'])){ 
$configpath="./config/".$_GET['config'].".php";
}
require($configpath);
$filePath='../../../d/file/';
$weObj =  new EWechat($wechat_config['options']); //创建实例对象
if($_GET['type']=='getfile'&&!empty($_GET['fid'])){
    $fid=$_GET['fid'];
    $r=$weObj->getMedia($fid);
    $path='voice/';
    $ext='.amr';
    if($_GET['filetype']=='image'){
        $ext='.jpg';
        $path='image/';
    }
    $path=$path.date("Ymd");
   mkdir($path,0777,true);
   file_put_contents($filePath.$path.'/'.$fid.$ext,$r);
  $data['url']=$path.'/'.$fid.$ext;
   echo json_encode($data);
}
?>