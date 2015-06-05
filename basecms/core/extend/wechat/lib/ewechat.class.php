<?php
/**
*微信sdk缓存重写
 *  
 */
include('wechat/wechat.class.php');
include('FileCache.class.php');
class EWechat extends Wechat
{
  const CACHE_PATH = '../cache/';
    /**
     * log overwrite
     * @see Wechat::log()
     */
    protected function log($log){
        return false;
    }

    /**
     * 重载设置缓存
     * @param string $cachename
     * @param mixed $value
     * @param int $expired
     * @return boolean
     */
    protected function setCache($cachename,$value,$expired){
        return FileCache::set($cachename,$value,$expired,CACHE_PATH);
    }

    /**
     * 重载获取缓存
     * @param string $cachename
     * @return mixed
     */
    protected function getCache($cachename){
        echo 123;exit();
        return FileCache::get($cachename,CACHE_PATH);
    }

    /**
     * 重载清除缓存
     * @param string $cachename
     * @return boolean
     */
    protected function removeCache($cachename){
        return FileCache::un_set($cachename,CACHE_PATH);
    }
}