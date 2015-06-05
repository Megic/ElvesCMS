<?php 

// echo '修改成功';
if($_POST['localhost']){

$dbhost = $_POST['localhost'];//数据库服务器地址
$dbuser =$_POST['dbuser'];//帐号
$dbpw = $_POST['dbpw'];//密码
$dbname = $_POST['dbname'];//数据库设备
$dbcharset = 'utf8';
$dbport= $_POST['dbport'];//端口
$dbport=$dbport?$dbport:3306;
$sqlfile = 'baselve.sql';//本机导出的Sql文件
$dbfixed= $_POST['dbfixed'];//密码

$filename='../config/config.php';
$content = file_get_contents($filename);
$content= str_replace("#数据库地址",$dbhost,$content);
$content= str_replace("#数据库端口",$dbport,$content);
$content= str_replace("#数据库用户名",$dbuser,$content);
$content= str_replace("#数据库密码",$dbpw,$content);
$content= str_replace("#数据库名",$dbname,$content);
$content= str_replace("#数据表前缀",$dbfixed,$content);
file_put_contents($filename, $content);
$filename2='baselve.sql';
$content2 = file_get_contents($filename2);
$content2= str_replace($dbfixed."_","base_",$content2);
file_put_contents($filename2, $content2);
/**
 * 函数:将从PHPMyAdmin导出的sql文件导入到数据库,并兼容了版本问题,以及可以重新设置字符集
 *
 * @param string $file:sql文件名
 */
function Import_sql($file)
{
  global $dbhost,$dbuser,$dbpw,$dbname,$dbcharset;
 $link =  mysql_connect($dbhost,$dbuser,$dbpw);
  $sql = 'CREATE DATABASE '.$dbname;
  if (mysql_query($sql, $link)) {
    echo "创建数据库成功！";
} else {
    echo  mysql_error() . "\n";
}
  mysql_select_db($dbname);
  if( mysql_get_server_info() < '4.1' )
  //返回 link_identifier 所使用的服务器版本。如果省略 link_identifier，则使用上一个打开的连接。 
  {
    $dbcharset='';//设置字符集,如果mysql版本低于4.1,则不设置字符集信息  
  }
  $dbcharset && mysql_query("SET NAMES '$dbcharset'");
  if( mysql_get_server_info() > '5.0' )
  {
    mysql_query("SET sql_mode=''");
  }
  $file2 = file_get_contents($file);//读取sql内容
  if($dbcharset)
  {
    //$file2=str_replace("TYPE=MyISAM"," ENGINE=MyISAM DEFAULT CHARSET=$dbcharset ",$file2);
  }
  $file2=explode("\n",$file2);//将文件内容按行读入到数组
  $c1=count($file2);
  for($j=0;$j<$c1;$j++)
  {
    $ck=substr($file2[$j],0,4);//取每行的前4个字符
    if( ereg("#",$ck)||ereg("--",$ck) )//去掉注释
    {
      continue;
    }
    $arr[]=$file2[$j];//将去掉注释的文件内容按行读入数组$arr,数组每个元素对应一行
  }
  $read=implode("\n",$arr); //重新组织文件内容到一个字符串,(按照原来分好的一行一行的)
  $sql=str_replace("\r",'',$read);//去掉"\r(回车符)"
  $detail=explode(";\n",$sql);
  //将经上述整理过的文件内容再次按一条完整的sql语句(以;和\n分隔)导入到数组$detail,
  //此时数组detail的每个元素对应一条完整的sql语句
  $count=count($detail);
  for($i=0;$i<$count;$i++)
  {
    $sql=str_replace("\r",'',$detail[$i]);//去掉每行sql中的回车符
    $sql=str_replace("\n",'',$sql);//去掉换行符
    $sql=trim($sql);//去掉前后空格
    //现在的$sql
    echo '...';
    if($sql)
    {
      if(eregi("CREATE TABLE",$sql))//如果当前的sql语句是创建新表,则考虑版本兼容,以及重设字符集
      {
        //$mysqlV=mysql_get_server_info();
        $sql=preg_replace("/DEFAULT CHARSET=([a-z0-9]+)/is","",$sql);//去除原来的字符集设置信息
        $sql=preg_replace("/TYPE=MyISAM/is","ENGINE=MyISAM",$sql);
        if($dbcharset)
        {
          $sql=str_replace("ENGINE=MyISAM"," ENGINE=MyISAM DEFAULT CHARSET=$dbcharset ",$sql);
        }
        if(mysql_get_server_info()<'4.1')
        {
          $sql=preg_replace("/ENGINE=MyISAM/is","TYPE=MyISAM",$sql);//
        }
      }
      mysql_query($sql);
    }
  }
}
 
Import_sql($sqlfile);//导入sql文件
echo '<br>安装完成!';
}else{
?>
<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>安装</title>
</head>
<body>
  <form action="index.php" method="POST">
    <div><b>数据库链接地址：</b><input type="text" name="localhost" value="localhost"></div>
    <div><b>数据库端口：</b><input type="text" name="dbport" value="3306"></div>
        <div><b>数据库名称：</b><input type="text" name="dbname" value=""></div>
            <div><b>数据库用户名：</b><input type="text" name="dbuser" value="root"></div>
                <div><b>数据库密码：</b><input type="text" name="dbpw" value=""></div>
                    <div><b>数据库前缀：</b><input type="text" name="dbfixed" value="base"></div>
<button type="submit">安装</button>
  </form>
</body>
</html>
<?php }?>