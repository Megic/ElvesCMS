<?php
define('ElvesCMSAdmin','1');
require("./lib/ewechat.class.php");
require("../../class/connect.php");
require("../../class/db_sql.php");
require("../../class/functions.php");
$link=db_connect();
$elves=new mysqlquery();
$editor=1;
//验证用户
$lur=is_login();
//ehash
$elve_hashur=hReturnElveHashStrAll();
//加载微信配置文件
$ised=0;
$configpath="./config/config.php";
if(!empty($_GET['config'])){ 
$configpath="./config/".$_GET['config'].".php";
$ised=1;
}
require($configpath);
$weObj = new EWechat($wechat_config['options']); //创建实例对象
if($_POST['add']=='1'){ //添加微信配置
$file=$_POST['file'];
if(empty($file)){ $file=time(); }
$handle = fopen('./config/'.$file.'.php','w');
$StrConents='<?php $wechat_config=array();
$wechat_config["options"]=array(
    "token"=>"'.$_POST['token'].'", //填写你设定的key
    "encodingaeskey"=>"'.$_POST['encodingaeskey'].'", //填写加密用的EncodingAESKey
    "appid"=>"'.$_POST['appid'].'", //填写高级调用功能的app id, 请在微信开发模式后台查询
    "appsecret"=>"'.$_POST['appsecret'].'", //填写高级调用功能的密钥
    "partnerid"=>"'.$_POST['partnerid'].'", //财付通商户身份标识，支付权限专用，没有可不填
    "partnerkey"=>"'.$_POST['partnerkey'].'", //财付通商户权限密钥Key，支付权限专用
    "paysignkey"=>"'.$_POST['paysignkey'].'" //商户签名密钥Key，支付权限专用
    );
$wechat_config["elves"]=array(
    "table"=>"'.$_POST['table'].'",//自定回复数据表
    "class"=>"'.$_POST['class'].'",//栏目ID
    "default"=>"'.$_POST['default'].'",//默认回复关键字
    "follow"=>"'.$_POST['follow'].'",//关注回复关键字
    "keyword"=>"'.$_POST['keyword'].'",//回复关键字字段名
    "type"=>"'.$_POST['type'].'",//信息类型文字1/ 图文2/ 字段名
    "url"=>"'.$_POST['url'].'",//链接地址字段名
    "title"=>"'.$_POST['title'].'",//信息标题字段名
    "description"=>"'.$_POST['description'].'",//文字类型为回复主题，图文类型为回复描述
    "pic"=>"'.$_POST['pic'].'"//信息图片字段名
    ); ?>';
if(!fwrite ($handle,$StrConents)){ //将信息写入文件
        echo ("添加失败");
        fclose($handle);
        exit();       
} 
fclose($handle);
if(empty($_POST['file'])){
$handle2 = fopen('./config/list.json','r');
$content = '';
while (!feof($handle2)){
    $content .= fread($handle2, 10000);
}
fclose($handle2);
$list=json_decode($content);//读取列表数据
if(empty($list)){$list=array();}
$handle2 = fopen('./config/list.json','w+');
array_push($list,array('name' =>$_POST['name'],'file'=>$file));
fwrite ($handle2,json_encode($list));
fclose($handle2);
}
if($_POST['menudata']){ //如果存在菜单数据
 // print_r(json_decode($_POST['menudata'],true));exit();
$menu = $weObj->createMenu(json_decode($_POST['menudata'],true));

}
header("Location: admin.php".$elve_hashur['whehref']);   
//确保重定向后，后续代码不会被执行   
exit; 
}
if($ised){ //配置修改 菜单相关操作
$menu = $weObj->getMenu();
}
db_close();                        //关闭MYSQL链接
$elves=null;                       //注消操作类变量
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>微信公共号</title>
<link href="../../admin/adminstyle/1/adminstyle.css" rel="stylesheet" type="text/css">
</head>
<body>
<form action="add.php?config=<?=$_GET['config']?><?=$elve_hashur['ehref']?>" method="POST" onsubmit="menu.menudata=JSON.stringify(menu.data.$model);">
<input type="hidden" name="add" value="1">
<input type="hidden" name="file" value="<?=$_GET['config']?>">
<table width="100%" border="0" cellspacing="1" cellpadding="3">
  <tr> 
    <td>位置: 微信公共号配置   <div align="right"> </div></td>
  </tr>
</table>
<br>
<table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" class="tableborder">
 <tr class="header"> 
    <td  width="120"height="25" colspan="2"> <div align="center">基础配置</div></td>
  </tr>
  <tr bgcolor="#FFFFFF" > 
    <td  width="120"height="25">名称</td><td><input name="name" type="text"  value="<?=$_GET['name']?>" <?=$ised?'readonly':''?>></td>
  </tr>
<tr bgcolor="#FFFFFF" > 
    <td  width="120"height="25">token</td><td><input name="token" type="text"  value="<?=$wechat_config['options']['token']?>" size=""></td>
  </tr>
  <tr bgcolor="#FFFFFF" > 
    <td  width="120"height="25">encodingaeskey</td><td><input name="encodingaeskey" type="text"  value="<?=$wechat_config['options']['encodingaeskey']?>" size=""></td>
  </tr>
  <tr bgcolor="#FFFFFF" > 
    <td  width="120"height="25">appid</td><td><input name="appid" type="text"  value="<?=$wechat_config['options']['appid']?>" size=""></td>
  </tr>
  <tr bgcolor="#FFFFFF" > 
    <td  width="120"height="25">appsecret</td><td><input name="appsecret" type="text"  value="<?=$wechat_config['options']['appsecret']?>" size=""></td>
  </tr>
  <tr bgcolor="#FFFFFF" > 
    <td  width="120"height="25">默认回复关键字</td><td><input name="default" type="text"  value="<?=$wechat_config['elves']['default']?>" size=""></td>
  </tr>
  <tr bgcolor="#FFFFFF" > 
    <td  width="120"height="25">关注回复关键字</td><td><input name="follow" type="text"  value="<?=$wechat_config['elves']['follow']?>" size=""></td>
  </tr>
</table><br>
<table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" class="tableborder">
<tr class="header"> 
    <td  width="120"height="25" colspan="2"> <div align="center">数据绑定</div></td>
  </tr>
  <tr bgcolor="#FFFFFF" > 
    <td  width="120"height="25">绑定数据表</td><td><input name="table" type="text"  value="<?=$wechat_config['elves']['table']?>" size=""></td>
  </tr>
  <tr bgcolor="#FFFFFF" > 
    <td  width="120"height="25">绑定栏目ID</td><td><input name="class" type="text"  value="<?=$wechat_config['elves']['class']?>" size=""></td>
  </tr>
  <tr bgcolor="#FFFFFF" > 
    <td  width="120"height="25">关键字字段名</td><td><input name="keyword" type="text"  value="<?=$wechat_config['elves']['keyword']?>" size=""></td>
  </tr>
  <tr bgcolor="#FFFFFF" > 
    <td  width="120"height="25">信息类型字段名</td><td><input name="type" type="text"  value="<?=$wechat_config['elves']['type']?>" size=""></td>
  </tr>
  <tr bgcolor="#FFFFFF" > 
    <td  width="120"height="25">信息链接字段名</td><td><input name="url" type="text"  value="<?=$wechat_config['elves']['url']?>" size=""></td>
  </tr>
  <tr bgcolor="#FFFFFF" > 
    <td  width="120"height="25">信息标题字段名</td><td><input name="title" type="text"  value="<?=$wechat_config['elves']['title']?>" size=""></td>
  </tr>
  <tr bgcolor="#FFFFFF" > 
    <td  width="120"height="25">信息描述字段名</td><td><input name="description" type="text"  value="<?=$wechat_config['elves']['description']?>" size=""></td>
  </tr>
  <tr bgcolor="#FFFFFF" > 
    <td  width="120"height="25">标题图片字段名</td><td><input name="pic" type="text"  value="<?=$wechat_config['elves']['pic']?>" size=""></td>
  </tr>
</table><br>
<table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" class="tableborder">
<tr class="header"> 
    <td  width="120"height="25" colspan="2"> <div align="center">公共号菜单</div></td>
  </tr>
  <tr bgcolor="#FFFFFF" > 
    <td  width="120"height="25">菜单</td>
    <td>
  <div ms-controller="menu"> 
    <input type="hidden" name="menudata" ms-duplex="menudata">
  <div>
  菜单类型：
  <select ms-duplex="type" >
  <option value="view">链接菜单</option>
  <option value="click">关键字</option>
  </select>&nbsp;&nbsp;
  上级栏目：
  <select ms-duplex="fid">
  <option value="root">无</option>
    <option ms-repeat="data['button']" ms-attr-value="$index">{{el['name']}}</option>
  </select>&nbsp;&nbsp;<br><br><span>菜单名称：<input type="text" ms-duplex="name" >&nbsp;&nbsp;</span>
  <span ms-if="type=='view'">菜单链接：<input type="text" ms-duplex="url" >&nbsp;&nbsp;</span>
  <span ms-if="type=='click'">关键字：<input type="text" ms-duplex="key" >&nbsp;&nbsp;</span>
  <button ms-click="add" type="button">添加</button>
  </div><br>
<div ms-repeat="data['button']"><b>{{el['name']}}</b>&nbsp;&nbsp;[&nbsp;<a ms-click="$remove">删除</a>&nbsp;]
<ul>
<li ms-repeat-cl="el['sub_button']">{{cl['name']}} &nbsp;&nbsp;[&nbsp;<a ms-click="$remove">删除</a>&nbsp;]</li>
</ul>
</div>
<p style="color:#666">目前自定义菜单最多包括3个一级菜单，每个一级菜单最多包含5个二级菜单。一级菜单最多4个汉字，二级菜单最多7个汉字，多出来的部分将会以“...”代替。请注意，创建自定义菜单后，由于微信客户端缓存，需要24小时微信客户端才会展现出来。<br><br></p>
</div>
<script src="js/avalon.min.js"></script>
<script>
var menu=avalon.define({ 
$id:'menu',
type:'view',
name:'',
url:'',
key:'',
fid:'root',
menudata:'',
add:function(){ 
  var obj={ 
      type:menu.type,
      name:menu.name,
      url:menu.url,
      key:menu.key,
      sub_button:[]
  };
if(menu.fid=='root'){ //添加一级菜单
menu.data['button'].push(obj);
}else{ 
menu.data['button'][menu.fid]['sub_button'].push(obj);
}
},
data:<?php $mdata=json_encode($menu['menu']);echo $mdata!='null'?$mdata:'{"button":[]}';?>
});

</script>
    </td>
  </tr>
  </table><br>
  <button type="submit">提交</button>
  </form>
</body>
