<?php
$img = base64_decode($_POST['base64']);
$filePath='../../../d/file/';
$path='image/';
$path=$path.date("Ymd");
mkdir($filePath.$path,0777,true);
file_put_contents($filePath.$path.'/'.time().'.jpg', $img);
 echo $path.'/'.time().'.jpg';



?>