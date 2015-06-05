<?php
$wechat_config=array();
$wechat_config['options']=array(
    'token'=>'xsx454545xxsq4545', //填写你设定的key
    'encodingaeskey'=>'398BBuHk8TpqzN8Q2AbhHeMdjuUqtYovuSk3tcGyj0C', //填写加密用的EncodingAESKey
    'appid'=>'wx297942d2464aab59', //填写高级调用功能的app id, 请在微信开发模式后台查询
    'appsecret'=>'fce5dbce2a03eef54bd88fe977eb613b', //填写高级调用功能的密钥
    'partnerid'=>'88888888', //财付通商户身份标识，支付权限专用，没有可不填
    'partnerkey'=>'', //财付通商户权限密钥Key，支付权限专用
    'paysignkey'=>'' //商户签名密钥Key，支付权限专用
    );
$wechat_config['elves']=array(
    'table'=>'base_elve_xinyika',//自定回复数据表
    'default'=>'默认回复',//默认回复关键字
    'follow'=>'关注回复',//关注回复关键字
    'keyword'=>'keyword',//回复关键字字段名
    'type'=>'type',//信息类型文字1/ 图文2/ 字段名
    'url'=>'url',//链接地址字段名
    'title'=>'title',//信息标题字段名
    'description'=>'description',//文字类型为回复主题，图文类型为回复描述
    'pic'=>'titlepic'//信息图片字段名
    );
?>