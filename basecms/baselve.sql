-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2014 年 03 月 09 日 20:56
-- 服务器版本: 5.5.24-log
-- PHP 版本: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `elves_cms`
--

-- --------------------------------------------------------

--
-- 表的结构 `base_elve_article`
--

CREATE TABLE IF NOT EXISTS `base_elve_article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ttid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `onclick` int(10) unsigned NOT NULL DEFAULT '0',
  `plnum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `totaldown` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `newspath` char(20) NOT NULL DEFAULT '',
  `filename` char(36) NOT NULL DEFAULT '',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` char(20) NOT NULL DEFAULT '',
  `firsttitle` tinyint(1) NOT NULL DEFAULT '0',
  `isgood` tinyint(1) NOT NULL DEFAULT '0',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  `istop` tinyint(1) NOT NULL DEFAULT '0',
  `isqf` tinyint(1) NOT NULL DEFAULT '0',
  `ismember` tinyint(1) NOT NULL DEFAULT '0',
  `isurl` tinyint(1) NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  `groupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userfen` smallint(5) unsigned NOT NULL DEFAULT '0',
  `titlefont` char(14) NOT NULL DEFAULT '',
  `titleurl` char(200) NOT NULL DEFAULT '',
  `stb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `fstb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `restb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `keyboard` char(80) NOT NULL DEFAULT '',
  `title` char(100) NOT NULL DEFAULT '',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `titlepic` char(120) NOT NULL DEFAULT '',
  `ftitle` char(120) NOT NULL DEFAULT '',
  `smalltext` char(255) NOT NULL DEFAULT '',
  `writer` char(30) NOT NULL DEFAULT '',
  `befrom` char(60) NOT NULL DEFAULT '',
  `newstext` char(50) NOT NULL DEFAULT '',
  `diggtop` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `newstime` (`newstime`),
  KEY `ttid` (`ttid`),
  KEY `firsttitle` (`firsttitle`),
  KEY `isgood` (`isgood`),
  KEY `ispic` (`ispic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_elve_article_check`
--

CREATE TABLE IF NOT EXISTS `base_elve_article_check` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ttid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `onclick` int(10) unsigned NOT NULL DEFAULT '0',
  `plnum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `totaldown` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `newspath` char(20) NOT NULL DEFAULT '',
  `filename` char(36) NOT NULL DEFAULT '',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` char(20) NOT NULL DEFAULT '',
  `firsttitle` tinyint(1) NOT NULL DEFAULT '0',
  `isgood` tinyint(1) NOT NULL DEFAULT '0',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  `istop` tinyint(1) NOT NULL DEFAULT '0',
  `isqf` tinyint(1) NOT NULL DEFAULT '0',
  `ismember` tinyint(1) NOT NULL DEFAULT '0',
  `isurl` tinyint(1) NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  `groupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userfen` smallint(5) unsigned NOT NULL DEFAULT '0',
  `titlefont` char(14) NOT NULL DEFAULT '',
  `titleurl` char(200) NOT NULL DEFAULT '',
  `stb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `fstb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `restb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `keyboard` char(80) NOT NULL DEFAULT '',
  `title` char(100) NOT NULL DEFAULT '',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `titlepic` char(120) NOT NULL DEFAULT '',
  `ftitle` char(120) NOT NULL DEFAULT '',
  `smalltext` char(255) NOT NULL DEFAULT '',
  `writer` char(30) NOT NULL DEFAULT '',
  `befrom` char(60) NOT NULL DEFAULT '',
  `newstext` char(50) NOT NULL DEFAULT '',
  `diggtop` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `newstime` (`newstime`),
  KEY `ttid` (`ttid`),
  KEY `firsttitle` (`firsttitle`),
  KEY `isgood` (`isgood`),
  KEY `ispic` (`ispic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_elve_article_check_data`
--

CREATE TABLE IF NOT EXISTS `base_elve_article_check_data` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `keyid` char(255) NOT NULL DEFAULT '',
  `dokey` tinyint(1) NOT NULL DEFAULT '0',
  `newstempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `closepl` tinyint(1) NOT NULL DEFAULT '0',
  `haveaddfen` tinyint(1) NOT NULL DEFAULT '0',
  `infotags` char(80) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `base_elve_article_data_1`
--

CREATE TABLE IF NOT EXISTS `base_elve_article_data_1` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `keyid` char(255) NOT NULL DEFAULT '',
  `dokey` tinyint(1) NOT NULL DEFAULT '0',
  `newstempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `closepl` tinyint(1) NOT NULL DEFAULT '0',
  `haveaddfen` tinyint(1) NOT NULL DEFAULT '0',
  `infotags` char(80) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `base_elve_article_doc`
--

CREATE TABLE IF NOT EXISTS `base_elve_article_doc` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ttid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `onclick` int(10) unsigned NOT NULL DEFAULT '0',
  `plnum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `totaldown` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `newspath` char(20) NOT NULL DEFAULT '',
  `filename` char(36) NOT NULL DEFAULT '',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` char(20) NOT NULL DEFAULT '',
  `firsttitle` tinyint(1) NOT NULL DEFAULT '0',
  `isgood` tinyint(1) NOT NULL DEFAULT '0',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  `istop` tinyint(1) NOT NULL DEFAULT '0',
  `isqf` tinyint(1) NOT NULL DEFAULT '0',
  `ismember` tinyint(1) NOT NULL DEFAULT '0',
  `isurl` tinyint(1) NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  `groupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userfen` smallint(5) unsigned NOT NULL DEFAULT '0',
  `titlefont` char(14) NOT NULL DEFAULT '',
  `titleurl` char(200) NOT NULL DEFAULT '',
  `stb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `fstb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `restb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `keyboard` char(80) NOT NULL DEFAULT '',
  `title` char(100) NOT NULL DEFAULT '',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `titlepic` char(120) NOT NULL DEFAULT '',
  `ftitle` char(120) NOT NULL DEFAULT '',
  `smalltext` char(255) NOT NULL DEFAULT '',
  `writer` char(30) NOT NULL DEFAULT '',
  `befrom` char(60) NOT NULL DEFAULT '',
  `newstext` char(50) NOT NULL DEFAULT '',
  `diggtop` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `newstime` (`newstime`),
  KEY `ttid` (`ttid`),
  KEY `firsttitle` (`firsttitle`),
  KEY `isgood` (`isgood`),
  KEY `ispic` (`ispic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_elve_article_doc_data`
--

CREATE TABLE IF NOT EXISTS `base_elve_article_doc_data` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `keyid` char(255) NOT NULL DEFAULT '',
  `dokey` tinyint(1) NOT NULL DEFAULT '0',
  `newstempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `closepl` tinyint(1) NOT NULL DEFAULT '0',
  `haveaddfen` tinyint(1) NOT NULL DEFAULT '0',
  `infotags` char(80) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `base_elve_article_doc_index`
--

CREATE TABLE IF NOT EXISTS `base_elve_article_doc_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `checked` (`checked`),
  KEY `newstime` (`newstime`),
  KEY `truetime` (`truetime`,`id`),
  KEY `havehtml` (`classid`,`truetime`,`havehtml`,`checked`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_elve_article_index`
--

CREATE TABLE IF NOT EXISTS `base_elve_article_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `checked` (`checked`),
  KEY `newstime` (`newstime`),
  KEY `truetime` (`truetime`,`id`),
  KEY `havehtml` (`classid`,`truetime`,`havehtml`,`checked`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_elve_download`
--

CREATE TABLE IF NOT EXISTS `base_elve_download` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ttid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `onclick` int(10) unsigned NOT NULL DEFAULT '0',
  `plnum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `totaldown` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `newspath` varchar(20) NOT NULL DEFAULT '',
  `filename` varchar(36) NOT NULL DEFAULT '',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `firsttitle` tinyint(1) NOT NULL DEFAULT '0',
  `isgood` tinyint(1) NOT NULL DEFAULT '0',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  `istop` tinyint(1) NOT NULL DEFAULT '0',
  `isqf` tinyint(1) NOT NULL DEFAULT '0',
  `ismember` tinyint(1) NOT NULL DEFAULT '0',
  `isurl` tinyint(1) NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  `groupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userfen` smallint(5) unsigned NOT NULL DEFAULT '0',
  `titlefont` varchar(14) NOT NULL DEFAULT '',
  `titleurl` varchar(200) NOT NULL DEFAULT '',
  `stb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `fstb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `restb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `keyboard` varchar(80) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `titlepic` varchar(120) NOT NULL DEFAULT '',
  `softfj` varchar(255) NOT NULL DEFAULT '',
  `language` varchar(16) NOT NULL DEFAULT '',
  `softtype` varchar(16) NOT NULL DEFAULT '',
  `softsq` varchar(16) NOT NULL DEFAULT '',
  `star` tinyint(1) NOT NULL DEFAULT '0',
  `filetype` varchar(10) NOT NULL DEFAULT '',
  `filesize` varchar(16) NOT NULL DEFAULT '',
  `softsay` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `newstime` (`newstime`),
  KEY `ttid` (`ttid`),
  KEY `firsttitle` (`firsttitle`),
  KEY `isgood` (`isgood`),
  KEY `ispic` (`ispic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_elve_download_check`
--

CREATE TABLE IF NOT EXISTS `base_elve_download_check` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ttid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `onclick` int(10) unsigned NOT NULL DEFAULT '0',
  `plnum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `totaldown` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `newspath` varchar(20) NOT NULL DEFAULT '',
  `filename` varchar(36) NOT NULL DEFAULT '',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `firsttitle` tinyint(1) NOT NULL DEFAULT '0',
  `isgood` tinyint(1) NOT NULL DEFAULT '0',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  `istop` tinyint(1) NOT NULL DEFAULT '0',
  `isqf` tinyint(1) NOT NULL DEFAULT '0',
  `ismember` tinyint(1) NOT NULL DEFAULT '0',
  `isurl` tinyint(1) NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  `groupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userfen` smallint(5) unsigned NOT NULL DEFAULT '0',
  `titlefont` varchar(14) NOT NULL DEFAULT '',
  `titleurl` varchar(200) NOT NULL DEFAULT '',
  `stb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `fstb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `restb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `keyboard` varchar(80) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `titlepic` varchar(120) NOT NULL DEFAULT '',
  `softfj` varchar(255) NOT NULL DEFAULT '',
  `language` varchar(16) NOT NULL DEFAULT '',
  `softtype` varchar(16) NOT NULL DEFAULT '',
  `softsq` varchar(16) NOT NULL DEFAULT '',
  `star` tinyint(1) NOT NULL DEFAULT '0',
  `filetype` varchar(10) NOT NULL DEFAULT '',
  `filesize` varchar(16) NOT NULL DEFAULT '',
  `softsay` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `newstime` (`newstime`),
  KEY `ttid` (`ttid`),
  KEY `firsttitle` (`firsttitle`),
  KEY `isgood` (`isgood`),
  KEY `ispic` (`ispic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_elve_download_check_data`
--

CREATE TABLE IF NOT EXISTS `base_elve_download_check_data` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `keyid` varchar(255) NOT NULL DEFAULT '',
  `dokey` tinyint(1) NOT NULL DEFAULT '0',
  `newstempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `closepl` tinyint(1) NOT NULL DEFAULT '0',
  `haveaddfen` tinyint(1) NOT NULL DEFAULT '0',
  `infotags` varchar(80) NOT NULL DEFAULT '',
  `softwriter` varchar(30) NOT NULL DEFAULT '',
  `homepage` varchar(80) NOT NULL DEFAULT '',
  `demo` varchar(120) NOT NULL DEFAULT '',
  `downpath` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `base_elve_download_data_1`
--

CREATE TABLE IF NOT EXISTS `base_elve_download_data_1` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `keyid` varchar(255) NOT NULL DEFAULT '',
  `dokey` tinyint(1) NOT NULL DEFAULT '0',
  `newstempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `closepl` tinyint(1) NOT NULL DEFAULT '0',
  `haveaddfen` tinyint(1) NOT NULL DEFAULT '0',
  `infotags` varchar(80) NOT NULL DEFAULT '',
  `softwriter` varchar(30) NOT NULL DEFAULT '',
  `homepage` varchar(80) NOT NULL DEFAULT '',
  `demo` varchar(120) NOT NULL DEFAULT '',
  `downpath` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `base_elve_download_doc`
--

CREATE TABLE IF NOT EXISTS `base_elve_download_doc` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ttid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `onclick` int(10) unsigned NOT NULL DEFAULT '0',
  `plnum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `totaldown` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `newspath` varchar(20) NOT NULL DEFAULT '',
  `filename` varchar(36) NOT NULL DEFAULT '',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `firsttitle` tinyint(1) NOT NULL DEFAULT '0',
  `isgood` tinyint(1) NOT NULL DEFAULT '0',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  `istop` tinyint(1) NOT NULL DEFAULT '0',
  `isqf` tinyint(1) NOT NULL DEFAULT '0',
  `ismember` tinyint(1) NOT NULL DEFAULT '0',
  `isurl` tinyint(1) NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  `groupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userfen` smallint(5) unsigned NOT NULL DEFAULT '0',
  `titlefont` varchar(14) NOT NULL DEFAULT '',
  `titleurl` varchar(200) NOT NULL DEFAULT '',
  `stb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `fstb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `restb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `keyboard` varchar(80) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `titlepic` varchar(120) NOT NULL DEFAULT '',
  `softfj` varchar(255) NOT NULL DEFAULT '',
  `language` varchar(16) NOT NULL DEFAULT '',
  `softtype` varchar(16) NOT NULL DEFAULT '',
  `softsq` varchar(16) NOT NULL DEFAULT '',
  `star` tinyint(1) NOT NULL DEFAULT '0',
  `filetype` varchar(10) NOT NULL DEFAULT '',
  `filesize` varchar(16) NOT NULL DEFAULT '',
  `softsay` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `newstime` (`newstime`),
  KEY `ttid` (`ttid`),
  KEY `firsttitle` (`firsttitle`),
  KEY `isgood` (`isgood`),
  KEY `ispic` (`ispic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_elve_download_doc_data`
--

CREATE TABLE IF NOT EXISTS `base_elve_download_doc_data` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `keyid` varchar(255) NOT NULL DEFAULT '',
  `dokey` tinyint(1) NOT NULL DEFAULT '0',
  `newstempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `closepl` tinyint(1) NOT NULL DEFAULT '0',
  `haveaddfen` tinyint(1) NOT NULL DEFAULT '0',
  `infotags` varchar(80) NOT NULL DEFAULT '',
  `softwriter` varchar(30) NOT NULL DEFAULT '',
  `homepage` varchar(80) NOT NULL DEFAULT '',
  `demo` varchar(120) NOT NULL DEFAULT '',
  `downpath` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `base_elve_download_doc_index`
--

CREATE TABLE IF NOT EXISTS `base_elve_download_doc_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `checked` (`checked`),
  KEY `newstime` (`newstime`),
  KEY `truetime` (`truetime`,`id`),
  KEY `havehtml` (`classid`,`truetime`,`havehtml`,`checked`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_elve_download_index`
--

CREATE TABLE IF NOT EXISTS `base_elve_download_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `checked` (`checked`),
  KEY `newstime` (`newstime`),
  KEY `truetime` (`truetime`,`id`),
  KEY `havehtml` (`classid`,`truetime`,`havehtml`,`checked`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_elve_flash`
--

CREATE TABLE IF NOT EXISTS `base_elve_flash` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ttid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `onclick` int(10) unsigned NOT NULL DEFAULT '0',
  `plnum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `totaldown` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `newspath` varchar(20) NOT NULL DEFAULT '',
  `filename` varchar(36) NOT NULL DEFAULT '',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `firsttitle` tinyint(1) NOT NULL DEFAULT '0',
  `isgood` tinyint(1) NOT NULL DEFAULT '0',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  `istop` tinyint(1) NOT NULL DEFAULT '0',
  `isqf` tinyint(1) NOT NULL DEFAULT '0',
  `ismember` tinyint(1) NOT NULL DEFAULT '0',
  `isurl` tinyint(1) NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  `groupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userfen` smallint(5) unsigned NOT NULL DEFAULT '0',
  `titlefont` varchar(14) NOT NULL DEFAULT '',
  `titleurl` varchar(200) NOT NULL DEFAULT '',
  `stb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `fstb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `restb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `keyboard` varchar(80) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `titlepic` varchar(120) NOT NULL DEFAULT '',
  `flashwriter` varchar(30) NOT NULL DEFAULT '',
  `email` varchar(80) NOT NULL DEFAULT '',
  `star` tinyint(1) NOT NULL DEFAULT '0',
  `filesize` varchar(16) NOT NULL DEFAULT '',
  `flashurl` varchar(255) NOT NULL DEFAULT '',
  `width` varchar(12) NOT NULL DEFAULT '',
  `height` varchar(12) NOT NULL DEFAULT '',
  `flashsay` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `newstime` (`newstime`),
  KEY `ttid` (`ttid`),
  KEY `firsttitle` (`firsttitle`),
  KEY `isgood` (`isgood`),
  KEY `ispic` (`ispic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_elve_flash_check`
--

CREATE TABLE IF NOT EXISTS `base_elve_flash_check` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ttid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `onclick` int(10) unsigned NOT NULL DEFAULT '0',
  `plnum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `totaldown` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `newspath` varchar(20) NOT NULL DEFAULT '',
  `filename` varchar(36) NOT NULL DEFAULT '',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `firsttitle` tinyint(1) NOT NULL DEFAULT '0',
  `isgood` tinyint(1) NOT NULL DEFAULT '0',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  `istop` tinyint(1) NOT NULL DEFAULT '0',
  `isqf` tinyint(1) NOT NULL DEFAULT '0',
  `ismember` tinyint(1) NOT NULL DEFAULT '0',
  `isurl` tinyint(1) NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  `groupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userfen` smallint(5) unsigned NOT NULL DEFAULT '0',
  `titlefont` varchar(14) NOT NULL DEFAULT '',
  `titleurl` varchar(200) NOT NULL DEFAULT '',
  `stb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `fstb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `restb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `keyboard` varchar(80) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `titlepic` varchar(120) NOT NULL DEFAULT '',
  `flashwriter` varchar(30) NOT NULL DEFAULT '',
  `email` varchar(80) NOT NULL DEFAULT '',
  `star` tinyint(1) NOT NULL DEFAULT '0',
  `filesize` varchar(16) NOT NULL DEFAULT '',
  `flashurl` varchar(255) NOT NULL DEFAULT '',
  `width` varchar(12) NOT NULL DEFAULT '',
  `height` varchar(12) NOT NULL DEFAULT '',
  `flashsay` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `newstime` (`newstime`),
  KEY `ttid` (`ttid`),
  KEY `firsttitle` (`firsttitle`),
  KEY `isgood` (`isgood`),
  KEY `ispic` (`ispic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_elve_flash_check_data`
--

CREATE TABLE IF NOT EXISTS `base_elve_flash_check_data` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `keyid` char(255) NOT NULL DEFAULT '',
  `dokey` tinyint(1) NOT NULL DEFAULT '0',
  `newstempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `closepl` tinyint(1) NOT NULL DEFAULT '0',
  `haveaddfen` tinyint(1) NOT NULL DEFAULT '0',
  `infotags` char(80) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `base_elve_flash_data_1`
--

CREATE TABLE IF NOT EXISTS `base_elve_flash_data_1` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `keyid` char(255) NOT NULL DEFAULT '',
  `dokey` tinyint(1) NOT NULL DEFAULT '0',
  `newstempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `closepl` tinyint(1) NOT NULL DEFAULT '0',
  `haveaddfen` tinyint(1) NOT NULL DEFAULT '0',
  `infotags` char(80) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `base_elve_flash_doc`
--

CREATE TABLE IF NOT EXISTS `base_elve_flash_doc` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ttid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `onclick` int(10) unsigned NOT NULL DEFAULT '0',
  `plnum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `totaldown` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `newspath` varchar(20) NOT NULL DEFAULT '',
  `filename` varchar(36) NOT NULL DEFAULT '',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `firsttitle` tinyint(1) NOT NULL DEFAULT '0',
  `isgood` tinyint(1) NOT NULL DEFAULT '0',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  `istop` tinyint(1) NOT NULL DEFAULT '0',
  `isqf` tinyint(1) NOT NULL DEFAULT '0',
  `ismember` tinyint(1) NOT NULL DEFAULT '0',
  `isurl` tinyint(1) NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  `groupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userfen` smallint(5) unsigned NOT NULL DEFAULT '0',
  `titlefont` varchar(14) NOT NULL DEFAULT '',
  `titleurl` varchar(200) NOT NULL DEFAULT '',
  `stb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `fstb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `restb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `keyboard` varchar(80) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `titlepic` varchar(120) NOT NULL DEFAULT '',
  `flashwriter` varchar(30) NOT NULL DEFAULT '',
  `email` varchar(80) NOT NULL DEFAULT '',
  `star` tinyint(1) NOT NULL DEFAULT '0',
  `filesize` varchar(16) NOT NULL DEFAULT '',
  `flashurl` varchar(255) NOT NULL DEFAULT '',
  `width` varchar(12) NOT NULL DEFAULT '',
  `height` varchar(12) NOT NULL DEFAULT '',
  `flashsay` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `newstime` (`newstime`),
  KEY `ttid` (`ttid`),
  KEY `firsttitle` (`firsttitle`),
  KEY `isgood` (`isgood`),
  KEY `ispic` (`ispic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_elve_flash_doc_data`
--

CREATE TABLE IF NOT EXISTS `base_elve_flash_doc_data` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `keyid` char(255) NOT NULL DEFAULT '',
  `dokey` tinyint(1) NOT NULL DEFAULT '0',
  `newstempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `closepl` tinyint(1) NOT NULL DEFAULT '0',
  `haveaddfen` tinyint(1) NOT NULL DEFAULT '0',
  `infotags` char(80) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `base_elve_flash_doc_index`
--

CREATE TABLE IF NOT EXISTS `base_elve_flash_doc_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `checked` (`checked`),
  KEY `newstime` (`newstime`),
  KEY `truetime` (`truetime`,`id`),
  KEY `havehtml` (`classid`,`truetime`,`havehtml`,`checked`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_elve_flash_index`
--

CREATE TABLE IF NOT EXISTS `base_elve_flash_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `checked` (`checked`),
  KEY `newstime` (`newstime`),
  KEY `truetime` (`truetime`,`id`),
  KEY `havehtml` (`classid`,`truetime`,`havehtml`,`checked`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_elve_info`
--

CREATE TABLE IF NOT EXISTS `base_elve_info` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ttid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `onclick` int(10) unsigned NOT NULL DEFAULT '0',
  `plnum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `totaldown` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `newspath` varchar(20) NOT NULL DEFAULT '',
  `filename` varchar(36) NOT NULL DEFAULT '',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `firsttitle` tinyint(1) NOT NULL DEFAULT '0',
  `isgood` tinyint(1) NOT NULL DEFAULT '0',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  `istop` tinyint(1) NOT NULL DEFAULT '0',
  `isqf` tinyint(1) NOT NULL DEFAULT '0',
  `ismember` tinyint(1) NOT NULL DEFAULT '0',
  `isurl` tinyint(1) NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  `groupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userfen` smallint(5) unsigned NOT NULL DEFAULT '0',
  `titlefont` varchar(14) NOT NULL DEFAULT '',
  `titleurl` varchar(200) NOT NULL DEFAULT '',
  `stb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `fstb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `restb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `keyboard` varchar(80) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `titlepic` varchar(120) NOT NULL DEFAULT '',
  `smalltext` text NOT NULL,
  `myarea` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `newstime` (`newstime`),
  KEY `ttid` (`ttid`),
  KEY `firsttitle` (`firsttitle`),
  KEY `isgood` (`isgood`),
  KEY `ispic` (`ispic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_elve_infoclass_article`
--

CREATE TABLE IF NOT EXISTS `base_elve_infoclass_article` (
  `classid` int(10) unsigned NOT NULL DEFAULT '0',
  `zz_title` text NOT NULL,
  `z_title` varchar(255) NOT NULL DEFAULT '',
  `qz_title` varchar(255) NOT NULL DEFAULT '',
  `save_title` varchar(10) NOT NULL DEFAULT '',
  `zz_titlepic` text NOT NULL,
  `z_titlepic` varchar(255) NOT NULL DEFAULT '',
  `qz_titlepic` varchar(255) NOT NULL DEFAULT '',
  `save_titlepic` varchar(10) NOT NULL DEFAULT '',
  `zz_newstime` text NOT NULL,
  `z_newstime` varchar(255) NOT NULL DEFAULT '',
  `qz_newstime` varchar(255) NOT NULL DEFAULT '',
  `save_newstime` varchar(10) NOT NULL DEFAULT '',
  `zz_ftitle` text NOT NULL,
  `z_ftitle` varchar(255) NOT NULL DEFAULT '',
  `qz_ftitle` varchar(255) NOT NULL DEFAULT '',
  `save_ftitle` varchar(10) NOT NULL DEFAULT '',
  `zz_smalltext` text NOT NULL,
  `z_smalltext` varchar(255) NOT NULL DEFAULT '',
  `qz_smalltext` varchar(255) NOT NULL DEFAULT '',
  `save_smalltext` varchar(10) NOT NULL DEFAULT '',
  `zz_writer` text NOT NULL,
  `z_writer` varchar(255) NOT NULL DEFAULT '',
  `qz_writer` varchar(255) NOT NULL DEFAULT '',
  `save_writer` varchar(10) NOT NULL DEFAULT '',
  `zz_befrom` text NOT NULL,
  `z_befrom` varchar(255) NOT NULL DEFAULT '',
  `qz_befrom` varchar(255) NOT NULL DEFAULT '',
  `save_befrom` varchar(10) NOT NULL DEFAULT '',
  `zz_newstext` text NOT NULL,
  `z_newstext` varchar(255) NOT NULL DEFAULT '',
  `qz_newstext` varchar(255) NOT NULL DEFAULT '',
  `save_newstext` varchar(10) NOT NULL DEFAULT '',
  `zz_diggtop` text NOT NULL,
  `z_diggtop` varchar(255) NOT NULL DEFAULT '',
  `qz_diggtop` varchar(255) NOT NULL DEFAULT '',
  `save_diggtop` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `base_elve_infoclass_download`
--

CREATE TABLE IF NOT EXISTS `base_elve_infoclass_download` (
  `classid` int(10) unsigned NOT NULL DEFAULT '0',
  `zz_title` text NOT NULL,
  `z_title` varchar(255) NOT NULL DEFAULT '',
  `qz_title` varchar(255) NOT NULL DEFAULT '',
  `save_title` varchar(10) NOT NULL DEFAULT '',
  `zz_titlepic` text NOT NULL,
  `z_titlepic` varchar(255) NOT NULL DEFAULT '',
  `qz_titlepic` varchar(255) NOT NULL DEFAULT '',
  `save_titlepic` varchar(10) NOT NULL DEFAULT '',
  `zz_newstime` text NOT NULL,
  `z_newstime` varchar(255) NOT NULL DEFAULT '',
  `qz_newstime` varchar(255) NOT NULL DEFAULT '',
  `save_newstime` varchar(10) NOT NULL DEFAULT '',
  `zz_softwriter` text NOT NULL,
  `z_softwriter` varchar(255) NOT NULL DEFAULT '',
  `qz_softwriter` varchar(255) NOT NULL DEFAULT '',
  `save_softwriter` varchar(10) NOT NULL DEFAULT '',
  `zz_homepage` text NOT NULL,
  `z_homepage` varchar(255) NOT NULL DEFAULT '',
  `qz_homepage` varchar(255) NOT NULL DEFAULT '',
  `save_homepage` varchar(10) NOT NULL DEFAULT '',
  `zz_demo` text NOT NULL,
  `z_demo` varchar(255) NOT NULL DEFAULT '',
  `qz_demo` varchar(255) NOT NULL DEFAULT '',
  `save_demo` varchar(10) NOT NULL DEFAULT '',
  `zz_softfj` text NOT NULL,
  `z_softfj` varchar(255) NOT NULL DEFAULT '',
  `qz_softfj` varchar(255) NOT NULL DEFAULT '',
  `save_softfj` varchar(10) NOT NULL DEFAULT '',
  `zz_language` text NOT NULL,
  `z_language` varchar(255) NOT NULL DEFAULT '',
  `qz_language` varchar(255) NOT NULL DEFAULT '',
  `save_language` varchar(10) NOT NULL DEFAULT '',
  `zz_softtype` text NOT NULL,
  `z_softtype` varchar(255) NOT NULL DEFAULT '',
  `qz_softtype` varchar(255) NOT NULL DEFAULT '',
  `save_softtype` varchar(10) NOT NULL DEFAULT '',
  `zz_softsq` text NOT NULL,
  `z_softsq` varchar(255) NOT NULL DEFAULT '',
  `qz_softsq` varchar(255) NOT NULL DEFAULT '',
  `save_softsq` varchar(10) NOT NULL DEFAULT '',
  `zz_star` text NOT NULL,
  `z_star` varchar(255) NOT NULL DEFAULT '',
  `qz_star` varchar(255) NOT NULL DEFAULT '',
  `save_star` varchar(10) NOT NULL DEFAULT '',
  `zz_filetype` text NOT NULL,
  `z_filetype` varchar(255) NOT NULL DEFAULT '',
  `qz_filetype` varchar(255) NOT NULL DEFAULT '',
  `save_filetype` varchar(10) NOT NULL DEFAULT '',
  `zz_filesize` text NOT NULL,
  `z_filesize` varchar(255) NOT NULL DEFAULT '',
  `qz_filesize` varchar(255) NOT NULL DEFAULT '',
  `save_filesize` varchar(10) NOT NULL DEFAULT '',
  `zz_downpath` text NOT NULL,
  `z_downpath` varchar(255) NOT NULL DEFAULT '',
  `qz_downpath` varchar(255) NOT NULL DEFAULT '',
  `save_downpath` varchar(10) NOT NULL DEFAULT '',
  `zz_softsay` text NOT NULL,
  `z_softsay` varchar(255) NOT NULL DEFAULT '',
  `qz_softsay` varchar(255) NOT NULL DEFAULT '',
  `save_softsay` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `base_elve_infoclass_flash`
--

CREATE TABLE IF NOT EXISTS `base_elve_infoclass_flash` (
  `classid` int(10) unsigned NOT NULL DEFAULT '0',
  `zz_title` text NOT NULL,
  `z_title` varchar(255) NOT NULL DEFAULT '',
  `qz_title` varchar(255) NOT NULL DEFAULT '',
  `save_title` varchar(10) NOT NULL DEFAULT '',
  `zz_titlepic` text NOT NULL,
  `z_titlepic` varchar(255) NOT NULL DEFAULT '',
  `qz_titlepic` varchar(255) NOT NULL DEFAULT '',
  `save_titlepic` varchar(10) NOT NULL DEFAULT '',
  `zz_newstime` text NOT NULL,
  `z_newstime` varchar(255) NOT NULL DEFAULT '',
  `qz_newstime` varchar(255) NOT NULL DEFAULT '',
  `save_newstime` varchar(10) NOT NULL DEFAULT '',
  `zz_flashwriter` text NOT NULL,
  `z_flashwriter` varchar(255) NOT NULL DEFAULT '',
  `qz_flashwriter` varchar(255) NOT NULL DEFAULT '',
  `save_flashwriter` varchar(10) NOT NULL DEFAULT '',
  `zz_email` text NOT NULL,
  `z_email` varchar(255) NOT NULL DEFAULT '',
  `qz_email` varchar(255) NOT NULL DEFAULT '',
  `save_email` varchar(10) NOT NULL DEFAULT '',
  `zz_star` text NOT NULL,
  `z_star` varchar(255) NOT NULL DEFAULT '',
  `qz_star` varchar(255) NOT NULL DEFAULT '',
  `save_star` varchar(10) NOT NULL DEFAULT '',
  `zz_filesize` text NOT NULL,
  `z_filesize` varchar(255) NOT NULL DEFAULT '',
  `qz_filesize` varchar(255) NOT NULL DEFAULT '',
  `save_filesize` varchar(10) NOT NULL DEFAULT '',
  `zz_flashurl` text NOT NULL,
  `z_flashurl` varchar(255) NOT NULL DEFAULT '',
  `qz_flashurl` varchar(255) NOT NULL DEFAULT '',
  `save_flashurl` varchar(10) NOT NULL DEFAULT '',
  `zz_width` text NOT NULL,
  `z_width` varchar(255) NOT NULL DEFAULT '',
  `qz_width` varchar(255) NOT NULL DEFAULT '',
  `save_width` varchar(10) NOT NULL DEFAULT '',
  `zz_height` text NOT NULL,
  `z_height` varchar(255) NOT NULL DEFAULT '',
  `qz_height` varchar(255) NOT NULL DEFAULT '',
  `save_height` varchar(10) NOT NULL DEFAULT '',
  `zz_flashsay` text NOT NULL,
  `z_flashsay` varchar(255) NOT NULL DEFAULT '',
  `qz_flashsay` varchar(255) NOT NULL DEFAULT '',
  `save_flashsay` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `base_elve_infoclass_info`
--

CREATE TABLE IF NOT EXISTS `base_elve_infoclass_info` (
  `classid` int(10) unsigned NOT NULL DEFAULT '0',
  `zz_title` text NOT NULL,
  `z_title` varchar(255) NOT NULL DEFAULT '',
  `qz_title` varchar(255) NOT NULL DEFAULT '',
  `save_title` varchar(10) NOT NULL DEFAULT '',
  `zz_titlepic` text NOT NULL,
  `z_titlepic` varchar(255) NOT NULL DEFAULT '',
  `qz_titlepic` varchar(255) NOT NULL DEFAULT '',
  `save_titlepic` varchar(10) NOT NULL DEFAULT '',
  `zz_newstime` text NOT NULL,
  `z_newstime` varchar(255) NOT NULL DEFAULT '',
  `qz_newstime` varchar(255) NOT NULL DEFAULT '',
  `save_newstime` varchar(10) NOT NULL DEFAULT '',
  `zz_smalltext` text NOT NULL,
  `z_smalltext` varchar(255) NOT NULL DEFAULT '',
  `qz_smalltext` varchar(255) NOT NULL DEFAULT '',
  `save_smalltext` varchar(10) NOT NULL DEFAULT '',
  `zz_myarea` text NOT NULL,
  `z_myarea` varchar(255) NOT NULL DEFAULT '',
  `qz_myarea` varchar(255) NOT NULL DEFAULT '',
  `save_myarea` varchar(10) NOT NULL DEFAULT '',
  `zz_email` text NOT NULL,
  `z_email` varchar(255) NOT NULL DEFAULT '',
  `qz_email` varchar(255) NOT NULL DEFAULT '',
  `save_email` varchar(10) NOT NULL DEFAULT '',
  `zz_mycontact` text NOT NULL,
  `z_mycontact` varchar(255) NOT NULL DEFAULT '',
  `qz_mycontact` varchar(255) NOT NULL DEFAULT '',
  `save_mycontact` varchar(10) NOT NULL DEFAULT '',
  `zz_address` text NOT NULL,
  `z_address` varchar(255) NOT NULL DEFAULT '',
  `qz_address` varchar(255) NOT NULL DEFAULT '',
  `save_address` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `base_elve_infoclass_movie`
--

CREATE TABLE IF NOT EXISTS `base_elve_infoclass_movie` (
  `classid` int(10) unsigned NOT NULL DEFAULT '0',
  `zz_title` text NOT NULL,
  `z_title` varchar(255) NOT NULL DEFAULT '',
  `qz_title` varchar(255) NOT NULL DEFAULT '',
  `save_title` varchar(10) NOT NULL DEFAULT '',
  `zz_titlepic` text NOT NULL,
  `z_titlepic` varchar(255) NOT NULL DEFAULT '',
  `qz_titlepic` varchar(255) NOT NULL DEFAULT '',
  `save_titlepic` varchar(10) NOT NULL DEFAULT '',
  `zz_newstime` text NOT NULL,
  `z_newstime` varchar(255) NOT NULL DEFAULT '',
  `qz_newstime` varchar(255) NOT NULL DEFAULT '',
  `save_newstime` varchar(10) NOT NULL DEFAULT '',
  `zz_movietype` text NOT NULL,
  `z_movietype` varchar(255) NOT NULL DEFAULT '',
  `qz_movietype` varchar(255) NOT NULL DEFAULT '',
  `save_movietype` varchar(10) NOT NULL DEFAULT '',
  `zz_company` text NOT NULL,
  `z_company` varchar(255) NOT NULL DEFAULT '',
  `qz_company` varchar(255) NOT NULL DEFAULT '',
  `save_company` varchar(10) NOT NULL DEFAULT '',
  `zz_movietime` text NOT NULL,
  `z_movietime` varchar(255) NOT NULL DEFAULT '',
  `qz_movietime` varchar(255) NOT NULL DEFAULT '',
  `save_movietime` varchar(10) NOT NULL DEFAULT '',
  `zz_player` text NOT NULL,
  `z_player` varchar(255) NOT NULL DEFAULT '',
  `qz_player` varchar(255) NOT NULL DEFAULT '',
  `save_player` varchar(10) NOT NULL DEFAULT '',
  `zz_playadmin` text NOT NULL,
  `z_playadmin` varchar(255) NOT NULL DEFAULT '',
  `qz_playadmin` varchar(255) NOT NULL DEFAULT '',
  `save_playadmin` varchar(10) NOT NULL DEFAULT '',
  `zz_filetype` text NOT NULL,
  `z_filetype` varchar(255) NOT NULL DEFAULT '',
  `qz_filetype` varchar(255) NOT NULL DEFAULT '',
  `save_filetype` varchar(10) NOT NULL DEFAULT '',
  `zz_filesize` text NOT NULL,
  `z_filesize` varchar(255) NOT NULL DEFAULT '',
  `qz_filesize` varchar(255) NOT NULL DEFAULT '',
  `save_filesize` varchar(10) NOT NULL DEFAULT '',
  `zz_star` text NOT NULL,
  `z_star` varchar(255) NOT NULL DEFAULT '',
  `qz_star` varchar(255) NOT NULL DEFAULT '',
  `save_star` varchar(10) NOT NULL DEFAULT '',
  `zz_playdk` text NOT NULL,
  `z_playdk` varchar(255) NOT NULL DEFAULT '',
  `qz_playdk` varchar(255) NOT NULL DEFAULT '',
  `save_playdk` varchar(10) NOT NULL DEFAULT '',
  `zz_playtime` text NOT NULL,
  `z_playtime` varchar(255) NOT NULL DEFAULT '',
  `qz_playtime` varchar(255) NOT NULL DEFAULT '',
  `save_playtime` varchar(10) NOT NULL DEFAULT '',
  `zz_moviefen` text NOT NULL,
  `z_moviefen` varchar(255) NOT NULL DEFAULT '',
  `qz_moviefen` varchar(255) NOT NULL DEFAULT '',
  `save_moviefen` varchar(10) NOT NULL DEFAULT '',
  `zz_downpath` text NOT NULL,
  `z_downpath` varchar(255) NOT NULL DEFAULT '',
  `qz_downpath` varchar(255) NOT NULL DEFAULT '',
  `save_downpath` varchar(10) NOT NULL DEFAULT '',
  `zz_playerid` text NOT NULL,
  `z_playerid` varchar(255) NOT NULL DEFAULT '',
  `qz_playerid` varchar(255) NOT NULL DEFAULT '',
  `save_playerid` varchar(10) NOT NULL DEFAULT '',
  `zz_onlinepath` text NOT NULL,
  `z_onlinepath` varchar(255) NOT NULL DEFAULT '',
  `qz_onlinepath` varchar(255) NOT NULL DEFAULT '',
  `save_onlinepath` varchar(10) NOT NULL DEFAULT '',
  `zz_moviesay` text NOT NULL,
  `z_moviesay` varchar(255) NOT NULL DEFAULT '',
  `qz_moviesay` varchar(255) NOT NULL DEFAULT '',
  `save_moviesay` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `base_elve_infoclass_news`
--

CREATE TABLE IF NOT EXISTS `base_elve_infoclass_news` (
  `classid` int(10) unsigned NOT NULL DEFAULT '0',
  `zz_title` text NOT NULL,
  `z_title` varchar(255) NOT NULL DEFAULT '',
  `qz_title` varchar(255) NOT NULL DEFAULT '',
  `save_title` varchar(10) NOT NULL DEFAULT '',
  `zz_titlepic` text NOT NULL,
  `z_titlepic` varchar(255) NOT NULL DEFAULT '',
  `qz_titlepic` varchar(255) NOT NULL DEFAULT '',
  `save_titlepic` varchar(10) NOT NULL DEFAULT '',
  `zz_newstime` text NOT NULL,
  `z_newstime` varchar(255) NOT NULL DEFAULT '',
  `qz_newstime` varchar(255) NOT NULL DEFAULT '',
  `save_newstime` varchar(10) NOT NULL DEFAULT '',
  `zz_ftitle` text NOT NULL,
  `z_ftitle` varchar(255) NOT NULL DEFAULT '',
  `qz_ftitle` varchar(255) NOT NULL DEFAULT '',
  `save_ftitle` varchar(10) NOT NULL DEFAULT '',
  `zz_smalltext` text NOT NULL,
  `z_smalltext` varchar(255) NOT NULL DEFAULT '',
  `qz_smalltext` varchar(255) NOT NULL DEFAULT '',
  `save_smalltext` varchar(10) NOT NULL DEFAULT '',
  `zz_writer` text NOT NULL,
  `z_writer` varchar(255) NOT NULL DEFAULT '',
  `qz_writer` varchar(255) NOT NULL DEFAULT '',
  `save_writer` varchar(10) NOT NULL DEFAULT '',
  `zz_befrom` text NOT NULL,
  `z_befrom` varchar(255) NOT NULL DEFAULT '',
  `qz_befrom` varchar(255) NOT NULL DEFAULT '',
  `save_befrom` varchar(10) NOT NULL DEFAULT '',
  `zz_newstext` text NOT NULL,
  `z_newstext` varchar(255) NOT NULL DEFAULT '',
  `qz_newstext` varchar(255) NOT NULL DEFAULT '',
  `save_newstext` varchar(10) NOT NULL DEFAULT '',
  `zz_diggtop` text NOT NULL,
  `z_diggtop` varchar(255) NOT NULL DEFAULT '',
  `qz_diggtop` varchar(255) NOT NULL DEFAULT '',
  `save_diggtop` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `base_elve_infoclass_photo`
--

CREATE TABLE IF NOT EXISTS `base_elve_infoclass_photo` (
  `classid` int(10) unsigned NOT NULL DEFAULT '0',
  `zz_title` text NOT NULL,
  `z_title` varchar(255) NOT NULL DEFAULT '',
  `qz_title` varchar(255) NOT NULL DEFAULT '',
  `save_title` varchar(10) NOT NULL DEFAULT '',
  `zz_titlepic` text NOT NULL,
  `z_titlepic` varchar(255) NOT NULL DEFAULT '',
  `qz_titlepic` varchar(255) NOT NULL DEFAULT '',
  `save_titlepic` varchar(10) NOT NULL DEFAULT '',
  `zz_newstime` text NOT NULL,
  `z_newstime` varchar(255) NOT NULL DEFAULT '',
  `qz_newstime` varchar(255) NOT NULL DEFAULT '',
  `save_newstime` varchar(10) NOT NULL DEFAULT '',
  `zz_filesize` text NOT NULL,
  `z_filesize` varchar(255) NOT NULL DEFAULT '',
  `qz_filesize` varchar(255) NOT NULL DEFAULT '',
  `save_filesize` varchar(10) NOT NULL DEFAULT '',
  `zz_picsize` text NOT NULL,
  `z_picsize` varchar(255) NOT NULL DEFAULT '',
  `qz_picsize` varchar(255) NOT NULL DEFAULT '',
  `save_picsize` varchar(10) NOT NULL DEFAULT '',
  `zz_picfbl` text NOT NULL,
  `z_picfbl` varchar(255) NOT NULL DEFAULT '',
  `qz_picfbl` varchar(255) NOT NULL DEFAULT '',
  `save_picfbl` varchar(10) NOT NULL DEFAULT '',
  `zz_picfrom` text NOT NULL,
  `z_picfrom` varchar(255) NOT NULL DEFAULT '',
  `qz_picfrom` varchar(255) NOT NULL DEFAULT '',
  `save_picfrom` varchar(10) NOT NULL DEFAULT '',
  `zz_picurl` text NOT NULL,
  `z_picurl` varchar(255) NOT NULL DEFAULT '',
  `qz_picurl` varchar(255) NOT NULL DEFAULT '',
  `save_picurl` varchar(10) NOT NULL DEFAULT '',
  `zz_morepic` text NOT NULL,
  `z_morepic` varchar(255) NOT NULL DEFAULT '',
  `qz_morepic` varchar(255) NOT NULL DEFAULT '',
  `save_morepic` varchar(10) NOT NULL DEFAULT '',
  `zz_num` text NOT NULL,
  `z_num` varchar(255) NOT NULL DEFAULT '',
  `qz_num` varchar(255) NOT NULL DEFAULT '',
  `save_num` varchar(10) NOT NULL DEFAULT '',
  `zz_width` text NOT NULL,
  `z_width` varchar(255) NOT NULL DEFAULT '',
  `qz_width` varchar(255) NOT NULL DEFAULT '',
  `save_width` varchar(10) NOT NULL DEFAULT '',
  `zz_height` text NOT NULL,
  `z_height` varchar(255) NOT NULL DEFAULT '',
  `qz_height` varchar(255) NOT NULL DEFAULT '',
  `save_height` varchar(10) NOT NULL DEFAULT '',
  `zz_picsay` text NOT NULL,
  `z_picsay` varchar(255) NOT NULL DEFAULT '',
  `qz_picsay` varchar(255) NOT NULL DEFAULT '',
  `save_picsay` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `base_elve_infoclass_shop`
--

CREATE TABLE IF NOT EXISTS `base_elve_infoclass_shop` (
  `classid` int(10) unsigned NOT NULL DEFAULT '0',
  `zz_title` text NOT NULL,
  `z_title` varchar(255) NOT NULL DEFAULT '',
  `qz_title` varchar(255) NOT NULL DEFAULT '',
  `save_title` varchar(10) NOT NULL DEFAULT '',
  `zz_titlepic` text NOT NULL,
  `z_titlepic` varchar(255) NOT NULL DEFAULT '',
  `qz_titlepic` varchar(255) NOT NULL DEFAULT '',
  `save_titlepic` varchar(10) NOT NULL DEFAULT '',
  `zz_newstime` text NOT NULL,
  `z_newstime` varchar(255) NOT NULL DEFAULT '',
  `qz_newstime` varchar(255) NOT NULL DEFAULT '',
  `save_newstime` varchar(10) NOT NULL DEFAULT '',
  `zz_productno` text NOT NULL,
  `z_productno` varchar(255) NOT NULL DEFAULT '',
  `qz_productno` varchar(255) NOT NULL DEFAULT '',
  `save_productno` varchar(10) NOT NULL DEFAULT '',
  `zz_pbrand` text NOT NULL,
  `z_pbrand` varchar(255) NOT NULL DEFAULT '',
  `qz_pbrand` varchar(255) NOT NULL DEFAULT '',
  `save_pbrand` varchar(10) NOT NULL DEFAULT '',
  `zz_intro` text NOT NULL,
  `z_intro` varchar(255) NOT NULL DEFAULT '',
  `qz_intro` varchar(255) NOT NULL DEFAULT '',
  `save_intro` varchar(10) NOT NULL DEFAULT '',
  `zz_unit` text NOT NULL,
  `z_unit` varchar(255) NOT NULL DEFAULT '',
  `qz_unit` varchar(255) NOT NULL DEFAULT '',
  `save_unit` varchar(10) NOT NULL DEFAULT '',
  `zz_weight` text NOT NULL,
  `z_weight` varchar(255) NOT NULL DEFAULT '',
  `qz_weight` varchar(255) NOT NULL DEFAULT '',
  `save_weight` varchar(10) NOT NULL DEFAULT '',
  `zz_tprice` text NOT NULL,
  `z_tprice` varchar(255) NOT NULL DEFAULT '',
  `qz_tprice` varchar(255) NOT NULL DEFAULT '',
  `save_tprice` varchar(10) NOT NULL DEFAULT '',
  `zz_price` text NOT NULL,
  `z_price` varchar(255) NOT NULL DEFAULT '',
  `qz_price` varchar(255) NOT NULL DEFAULT '',
  `save_price` varchar(10) NOT NULL DEFAULT '',
  `zz_buyfen` text NOT NULL,
  `z_buyfen` varchar(255) NOT NULL DEFAULT '',
  `qz_buyfen` varchar(255) NOT NULL DEFAULT '',
  `save_buyfen` varchar(10) NOT NULL DEFAULT '',
  `zz_pmaxnum` text NOT NULL,
  `z_pmaxnum` varchar(255) NOT NULL DEFAULT '',
  `qz_pmaxnum` varchar(255) NOT NULL DEFAULT '',
  `save_pmaxnum` varchar(10) NOT NULL DEFAULT '',
  `zz_productpic` text NOT NULL,
  `z_productpic` varchar(255) NOT NULL DEFAULT '',
  `qz_productpic` varchar(255) NOT NULL DEFAULT '',
  `save_productpic` varchar(10) NOT NULL DEFAULT '',
  `zz_newstext` text NOT NULL,
  `z_newstext` varchar(255) NOT NULL DEFAULT '',
  `qz_newstext` varchar(255) NOT NULL DEFAULT '',
  `save_newstext` varchar(10) NOT NULL DEFAULT '',
  `zz_psalenum` text NOT NULL,
  `z_psalenum` varchar(255) NOT NULL DEFAULT '',
  `qz_psalenum` varchar(255) NOT NULL DEFAULT '',
  `save_psalenum` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `base_elve_infotmp_article`
--

CREATE TABLE IF NOT EXISTS `base_elve_infotmp_article` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `classid` int(10) unsigned NOT NULL DEFAULT '0',
  `oldurl` varchar(200) NOT NULL DEFAULT '',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `tmptime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `keyboard` varchar(100) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `newstime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `titlepic` varchar(120) NOT NULL DEFAULT '',
  `ftitle` varchar(120) NOT NULL DEFAULT '',
  `smalltext` varchar(255) NOT NULL DEFAULT '',
  `writer` varchar(30) NOT NULL DEFAULT '',
  `befrom` varchar(60) NOT NULL DEFAULT '',
  `newstext` mediumtext NOT NULL,
  `diggtop` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `checked` (`checked`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_elve_infotmp_download`
--

CREATE TABLE IF NOT EXISTS `base_elve_infotmp_download` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `classid` int(10) unsigned NOT NULL DEFAULT '0',
  `oldurl` varchar(200) NOT NULL DEFAULT '',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `tmptime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `keyboard` varchar(100) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `newstime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `titlepic` varchar(120) NOT NULL DEFAULT '',
  `softwriter` varchar(30) NOT NULL DEFAULT '',
  `homepage` varchar(80) NOT NULL DEFAULT '',
  `demo` varchar(120) NOT NULL DEFAULT '',
  `softfj` varchar(255) NOT NULL DEFAULT '',
  `language` varchar(16) NOT NULL DEFAULT '',
  `softtype` varchar(16) NOT NULL DEFAULT '',
  `softsq` varchar(16) NOT NULL DEFAULT '',
  `star` tinyint(1) NOT NULL DEFAULT '0',
  `filetype` varchar(10) NOT NULL DEFAULT '',
  `filesize` varchar(16) NOT NULL DEFAULT '',
  `downpath` mediumtext NOT NULL,
  `softsay` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `checked` (`checked`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_elve_infotmp_flash`
--

CREATE TABLE IF NOT EXISTS `base_elve_infotmp_flash` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `classid` int(10) unsigned NOT NULL DEFAULT '0',
  `oldurl` varchar(200) NOT NULL DEFAULT '',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `tmptime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `keyboard` varchar(100) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `newstime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `titlepic` varchar(120) NOT NULL DEFAULT '',
  `flashwriter` varchar(30) NOT NULL DEFAULT '',
  `email` varchar(80) NOT NULL DEFAULT '',
  `star` tinyint(1) NOT NULL DEFAULT '0',
  `filesize` varchar(16) NOT NULL DEFAULT '',
  `flashurl` varchar(255) NOT NULL DEFAULT '',
  `width` varchar(12) NOT NULL DEFAULT '',
  `height` varchar(12) NOT NULL DEFAULT '',
  `flashsay` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `checked` (`checked`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_elve_infotmp_info`
--

CREATE TABLE IF NOT EXISTS `base_elve_infotmp_info` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `classid` int(10) unsigned NOT NULL DEFAULT '0',
  `oldurl` varchar(200) NOT NULL DEFAULT '',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `tmptime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `keyboard` varchar(100) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `newstime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `titlepic` varchar(120) NOT NULL DEFAULT '',
  `smalltext` text NOT NULL,
  `myarea` varchar(30) NOT NULL DEFAULT '',
  `email` varchar(80) NOT NULL DEFAULT '',
  `mycontact` varchar(255) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `checked` (`checked`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_elve_infotmp_movie`
--

CREATE TABLE IF NOT EXISTS `base_elve_infotmp_movie` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `classid` int(10) unsigned NOT NULL DEFAULT '0',
  `oldurl` varchar(200) NOT NULL DEFAULT '',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `tmptime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `keyboard` varchar(100) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `newstime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `titlepic` varchar(120) NOT NULL DEFAULT '',
  `movietype` varchar(16) NOT NULL DEFAULT '',
  `company` varchar(200) NOT NULL DEFAULT '',
  `movietime` varchar(20) NOT NULL DEFAULT '',
  `player` varchar(255) NOT NULL DEFAULT '',
  `playadmin` varchar(255) NOT NULL DEFAULT '',
  `filetype` varchar(10) NOT NULL DEFAULT '',
  `filesize` varchar(16) NOT NULL DEFAULT '',
  `star` tinyint(1) NOT NULL DEFAULT '0',
  `playdk` varchar(30) NOT NULL DEFAULT '',
  `playtime` varchar(20) NOT NULL DEFAULT '',
  `moviefen` int(11) NOT NULL DEFAULT '0',
  `downpath` mediumtext NOT NULL,
  `playerid` smallint(6) NOT NULL DEFAULT '0',
  `onlinepath` mediumtext NOT NULL,
  `moviesay` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `checked` (`checked`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_elve_infotmp_news`
--

CREATE TABLE IF NOT EXISTS `base_elve_infotmp_news` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `classid` int(10) unsigned NOT NULL DEFAULT '0',
  `oldurl` varchar(200) NOT NULL DEFAULT '',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `tmptime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `keyboard` varchar(100) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `newstime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `titlepic` varchar(120) NOT NULL DEFAULT '',
  `ftitle` varchar(120) NOT NULL DEFAULT '',
  `smalltext` varchar(255) NOT NULL DEFAULT '',
  `writer` varchar(30) NOT NULL DEFAULT '',
  `befrom` varchar(60) NOT NULL DEFAULT '',
  `newstext` mediumtext NOT NULL,
  `diggtop` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `checked` (`checked`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_elve_infotmp_photo`
--

CREATE TABLE IF NOT EXISTS `base_elve_infotmp_photo` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `classid` int(10) unsigned NOT NULL DEFAULT '0',
  `oldurl` varchar(200) NOT NULL DEFAULT '',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `tmptime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `keyboard` varchar(100) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `newstime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `titlepic` varchar(120) NOT NULL DEFAULT '',
  `filesize` varchar(10) NOT NULL DEFAULT '',
  `picsize` varchar(20) NOT NULL DEFAULT '',
  `picfbl` varchar(20) NOT NULL DEFAULT '',
  `picfrom` varchar(120) NOT NULL DEFAULT '',
  `picurl` varchar(200) NOT NULL DEFAULT '',
  `morepic` mediumtext NOT NULL,
  `num` tinyint(4) NOT NULL DEFAULT '0',
  `width` varchar(12) NOT NULL DEFAULT '',
  `height` varchar(12) NOT NULL DEFAULT '',
  `picsay` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `checked` (`checked`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_elve_infotmp_shop`
--

CREATE TABLE IF NOT EXISTS `base_elve_infotmp_shop` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `classid` int(10) unsigned NOT NULL DEFAULT '0',
  `oldurl` varchar(200) NOT NULL DEFAULT '',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `tmptime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `keyboard` varchar(100) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `newstime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `titlepic` varchar(120) NOT NULL DEFAULT '',
  `productno` varchar(30) NOT NULL DEFAULT '',
  `pbrand` varchar(30) NOT NULL DEFAULT '',
  `intro` text NOT NULL,
  `unit` varchar(16) NOT NULL DEFAULT '',
  `weight` varchar(20) NOT NULL DEFAULT '',
  `tprice` float(11,2) NOT NULL DEFAULT '0.00',
  `price` float(11,2) NOT NULL DEFAULT '0.00',
  `buyfen` int(11) NOT NULL DEFAULT '0',
  `pmaxnum` int(11) NOT NULL DEFAULT '0',
  `productpic` varchar(255) NOT NULL DEFAULT '',
  `newstext` mediumtext NOT NULL,
  `psalenum` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `checked` (`checked`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_elve_info_check`
--

CREATE TABLE IF NOT EXISTS `base_elve_info_check` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ttid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `onclick` int(10) unsigned NOT NULL DEFAULT '0',
  `plnum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `totaldown` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `newspath` varchar(20) NOT NULL DEFAULT '',
  `filename` varchar(36) NOT NULL DEFAULT '',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `firsttitle` tinyint(1) NOT NULL DEFAULT '0',
  `isgood` tinyint(1) NOT NULL DEFAULT '0',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  `istop` tinyint(1) NOT NULL DEFAULT '0',
  `isqf` tinyint(1) NOT NULL DEFAULT '0',
  `ismember` tinyint(1) NOT NULL DEFAULT '0',
  `isurl` tinyint(1) NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  `groupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userfen` smallint(5) unsigned NOT NULL DEFAULT '0',
  `titlefont` varchar(14) NOT NULL DEFAULT '',
  `titleurl` varchar(200) NOT NULL DEFAULT '',
  `stb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `fstb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `restb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `keyboard` varchar(80) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `titlepic` varchar(120) NOT NULL DEFAULT '',
  `smalltext` text NOT NULL,
  `myarea` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `newstime` (`newstime`),
  KEY `ttid` (`ttid`),
  KEY `firsttitle` (`firsttitle`),
  KEY `isgood` (`isgood`),
  KEY `ispic` (`ispic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_elve_info_check_data`
--

CREATE TABLE IF NOT EXISTS `base_elve_info_check_data` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `keyid` varchar(255) NOT NULL DEFAULT '',
  `dokey` tinyint(1) NOT NULL DEFAULT '0',
  `newstempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `closepl` tinyint(1) NOT NULL DEFAULT '0',
  `haveaddfen` tinyint(1) NOT NULL DEFAULT '0',
  `infotags` varchar(80) NOT NULL DEFAULT '',
  `email` varchar(80) NOT NULL DEFAULT '',
  `mycontact` varchar(255) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `base_elve_info_data_1`
--

CREATE TABLE IF NOT EXISTS `base_elve_info_data_1` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `keyid` varchar(255) NOT NULL DEFAULT '',
  `dokey` tinyint(1) NOT NULL DEFAULT '0',
  `newstempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `closepl` tinyint(1) NOT NULL DEFAULT '0',
  `haveaddfen` tinyint(1) NOT NULL DEFAULT '0',
  `infotags` varchar(80) NOT NULL DEFAULT '',
  `email` varchar(80) NOT NULL DEFAULT '',
  `mycontact` varchar(255) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `base_elve_info_doc`
--

CREATE TABLE IF NOT EXISTS `base_elve_info_doc` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ttid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `onclick` int(10) unsigned NOT NULL DEFAULT '0',
  `plnum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `totaldown` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `newspath` varchar(20) NOT NULL DEFAULT '',
  `filename` varchar(36) NOT NULL DEFAULT '',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `firsttitle` tinyint(1) NOT NULL DEFAULT '0',
  `isgood` tinyint(1) NOT NULL DEFAULT '0',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  `istop` tinyint(1) NOT NULL DEFAULT '0',
  `isqf` tinyint(1) NOT NULL DEFAULT '0',
  `ismember` tinyint(1) NOT NULL DEFAULT '0',
  `isurl` tinyint(1) NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  `groupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userfen` smallint(5) unsigned NOT NULL DEFAULT '0',
  `titlefont` varchar(14) NOT NULL DEFAULT '',
  `titleurl` varchar(200) NOT NULL DEFAULT '',
  `stb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `fstb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `restb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `keyboard` varchar(80) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `titlepic` varchar(120) NOT NULL DEFAULT '',
  `smalltext` text NOT NULL,
  `myarea` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `newstime` (`newstime`),
  KEY `ttid` (`ttid`),
  KEY `firsttitle` (`firsttitle`),
  KEY `isgood` (`isgood`),
  KEY `ispic` (`ispic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_elve_info_doc_data`
--

CREATE TABLE IF NOT EXISTS `base_elve_info_doc_data` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `keyid` varchar(255) NOT NULL DEFAULT '',
  `dokey` tinyint(1) NOT NULL DEFAULT '0',
  `newstempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `closepl` tinyint(1) NOT NULL DEFAULT '0',
  `haveaddfen` tinyint(1) NOT NULL DEFAULT '0',
  `infotags` varchar(80) NOT NULL DEFAULT '',
  `email` varchar(80) NOT NULL DEFAULT '',
  `mycontact` varchar(255) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `base_elve_info_doc_index`
--

CREATE TABLE IF NOT EXISTS `base_elve_info_doc_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `checked` (`checked`),
  KEY `newstime` (`newstime`),
  KEY `truetime` (`truetime`,`id`),
  KEY `havehtml` (`classid`,`truetime`,`havehtml`,`checked`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_elve_info_index`
--

CREATE TABLE IF NOT EXISTS `base_elve_info_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `checked` (`checked`),
  KEY `newstime` (`newstime`),
  KEY `truetime` (`truetime`,`id`),
  KEY `havehtml` (`classid`,`truetime`,`havehtml`,`checked`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_elve_movie`
--

CREATE TABLE IF NOT EXISTS `base_elve_movie` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ttid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `onclick` int(10) unsigned NOT NULL DEFAULT '0',
  `plnum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `totaldown` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `newspath` varchar(20) NOT NULL DEFAULT '',
  `filename` varchar(36) NOT NULL DEFAULT '',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `firsttitle` tinyint(1) NOT NULL DEFAULT '0',
  `isgood` tinyint(1) NOT NULL DEFAULT '0',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  `istop` tinyint(1) NOT NULL DEFAULT '0',
  `isqf` tinyint(1) NOT NULL DEFAULT '0',
  `ismember` tinyint(1) NOT NULL DEFAULT '0',
  `isurl` tinyint(1) NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  `groupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userfen` smallint(5) unsigned NOT NULL DEFAULT '0',
  `titlefont` varchar(14) NOT NULL DEFAULT '',
  `titleurl` varchar(200) NOT NULL DEFAULT '',
  `stb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `fstb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `restb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `keyboard` varchar(80) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `titlepic` varchar(120) NOT NULL DEFAULT '',
  `movietype` varchar(16) NOT NULL DEFAULT '',
  `company` varchar(200) NOT NULL DEFAULT '',
  `movietime` varchar(20) NOT NULL DEFAULT '',
  `player` varchar(255) NOT NULL DEFAULT '',
  `playadmin` varchar(255) NOT NULL DEFAULT '',
  `filetype` varchar(10) NOT NULL DEFAULT '',
  `filesize` varchar(16) NOT NULL DEFAULT '',
  `star` tinyint(1) NOT NULL DEFAULT '0',
  `moviefen` int(11) NOT NULL DEFAULT '0',
  `moviesay` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `newstime` (`newstime`),
  KEY `ttid` (`ttid`),
  KEY `firsttitle` (`firsttitle`),
  KEY `isgood` (`isgood`),
  KEY `ispic` (`ispic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_elve_movie_check`
--

CREATE TABLE IF NOT EXISTS `base_elve_movie_check` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ttid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `onclick` int(10) unsigned NOT NULL DEFAULT '0',
  `plnum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `totaldown` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `newspath` varchar(20) NOT NULL DEFAULT '',
  `filename` varchar(36) NOT NULL DEFAULT '',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `firsttitle` tinyint(1) NOT NULL DEFAULT '0',
  `isgood` tinyint(1) NOT NULL DEFAULT '0',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  `istop` tinyint(1) NOT NULL DEFAULT '0',
  `isqf` tinyint(1) NOT NULL DEFAULT '0',
  `ismember` tinyint(1) NOT NULL DEFAULT '0',
  `isurl` tinyint(1) NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  `groupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userfen` smallint(5) unsigned NOT NULL DEFAULT '0',
  `titlefont` varchar(14) NOT NULL DEFAULT '',
  `titleurl` varchar(200) NOT NULL DEFAULT '',
  `stb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `fstb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `restb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `keyboard` varchar(80) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `titlepic` varchar(120) NOT NULL DEFAULT '',
  `movietype` varchar(16) NOT NULL DEFAULT '',
  `company` varchar(200) NOT NULL DEFAULT '',
  `movietime` varchar(20) NOT NULL DEFAULT '',
  `player` varchar(255) NOT NULL DEFAULT '',
  `playadmin` varchar(255) NOT NULL DEFAULT '',
  `filetype` varchar(10) NOT NULL DEFAULT '',
  `filesize` varchar(16) NOT NULL DEFAULT '',
  `star` tinyint(1) NOT NULL DEFAULT '0',
  `moviefen` int(11) NOT NULL DEFAULT '0',
  `moviesay` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `newstime` (`newstime`),
  KEY `ttid` (`ttid`),
  KEY `firsttitle` (`firsttitle`),
  KEY `isgood` (`isgood`),
  KEY `ispic` (`ispic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_elve_movie_check_data`
--

CREATE TABLE IF NOT EXISTS `base_elve_movie_check_data` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `keyid` varchar(255) NOT NULL DEFAULT '',
  `dokey` tinyint(1) NOT NULL DEFAULT '0',
  `newstempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `closepl` tinyint(1) NOT NULL DEFAULT '0',
  `haveaddfen` tinyint(1) NOT NULL DEFAULT '0',
  `infotags` varchar(80) NOT NULL DEFAULT '',
  `playdk` varchar(30) NOT NULL DEFAULT '',
  `playtime` varchar(20) NOT NULL DEFAULT '',
  `downpath` mediumtext NOT NULL,
  `playerid` smallint(6) NOT NULL DEFAULT '0',
  `onlinepath` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `base_elve_movie_data_1`
--

CREATE TABLE IF NOT EXISTS `base_elve_movie_data_1` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `keyid` varchar(255) NOT NULL DEFAULT '',
  `dokey` tinyint(1) NOT NULL DEFAULT '0',
  `newstempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `closepl` tinyint(1) NOT NULL DEFAULT '0',
  `haveaddfen` tinyint(1) NOT NULL DEFAULT '0',
  `infotags` varchar(80) NOT NULL DEFAULT '',
  `playdk` varchar(30) NOT NULL DEFAULT '',
  `playtime` varchar(20) NOT NULL DEFAULT '',
  `downpath` mediumtext NOT NULL,
  `playerid` smallint(6) NOT NULL DEFAULT '0',
  `onlinepath` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `base_elve_movie_doc`
--

CREATE TABLE IF NOT EXISTS `base_elve_movie_doc` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ttid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `onclick` int(10) unsigned NOT NULL DEFAULT '0',
  `plnum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `totaldown` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `newspath` varchar(20) NOT NULL DEFAULT '',
  `filename` varchar(36) NOT NULL DEFAULT '',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `firsttitle` tinyint(1) NOT NULL DEFAULT '0',
  `isgood` tinyint(1) NOT NULL DEFAULT '0',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  `istop` tinyint(1) NOT NULL DEFAULT '0',
  `isqf` tinyint(1) NOT NULL DEFAULT '0',
  `ismember` tinyint(1) NOT NULL DEFAULT '0',
  `isurl` tinyint(1) NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  `groupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userfen` smallint(5) unsigned NOT NULL DEFAULT '0',
  `titlefont` varchar(14) NOT NULL DEFAULT '',
  `titleurl` varchar(200) NOT NULL DEFAULT '',
  `stb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `fstb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `restb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `keyboard` varchar(80) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `titlepic` varchar(120) NOT NULL DEFAULT '',
  `movietype` varchar(16) NOT NULL DEFAULT '',
  `company` varchar(200) NOT NULL DEFAULT '',
  `movietime` varchar(20) NOT NULL DEFAULT '',
  `player` varchar(255) NOT NULL DEFAULT '',
  `playadmin` varchar(255) NOT NULL DEFAULT '',
  `filetype` varchar(10) NOT NULL DEFAULT '',
  `filesize` varchar(16) NOT NULL DEFAULT '',
  `star` tinyint(1) NOT NULL DEFAULT '0',
  `moviefen` int(11) NOT NULL DEFAULT '0',
  `moviesay` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `newstime` (`newstime`),
  KEY `ttid` (`ttid`),
  KEY `firsttitle` (`firsttitle`),
  KEY `isgood` (`isgood`),
  KEY `ispic` (`ispic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_elve_movie_doc_data`
--

CREATE TABLE IF NOT EXISTS `base_elve_movie_doc_data` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `keyid` varchar(255) NOT NULL DEFAULT '',
  `dokey` tinyint(1) NOT NULL DEFAULT '0',
  `newstempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `closepl` tinyint(1) NOT NULL DEFAULT '0',
  `haveaddfen` tinyint(1) NOT NULL DEFAULT '0',
  `infotags` varchar(80) NOT NULL DEFAULT '',
  `playdk` varchar(30) NOT NULL DEFAULT '',
  `playtime` varchar(20) NOT NULL DEFAULT '',
  `downpath` mediumtext NOT NULL,
  `playerid` smallint(6) NOT NULL DEFAULT '0',
  `onlinepath` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `base_elve_movie_doc_index`
--

CREATE TABLE IF NOT EXISTS `base_elve_movie_doc_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `checked` (`checked`),
  KEY `newstime` (`newstime`),
  KEY `truetime` (`truetime`,`id`),
  KEY `havehtml` (`classid`,`truetime`,`havehtml`,`checked`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_elve_movie_index`
--

CREATE TABLE IF NOT EXISTS `base_elve_movie_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `checked` (`checked`),
  KEY `newstime` (`newstime`),
  KEY `truetime` (`truetime`,`id`),
  KEY `havehtml` (`classid`,`truetime`,`havehtml`,`checked`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_elve_news`
--

CREATE TABLE IF NOT EXISTS `base_elve_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ttid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `onclick` int(10) unsigned NOT NULL DEFAULT '0',
  `plnum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `totaldown` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `newspath` char(20) NOT NULL DEFAULT '',
  `filename` char(36) NOT NULL DEFAULT '',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` char(20) NOT NULL DEFAULT '',
  `firsttitle` tinyint(1) NOT NULL DEFAULT '0',
  `isgood` tinyint(1) NOT NULL DEFAULT '0',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  `istop` tinyint(1) NOT NULL DEFAULT '0',
  `isqf` tinyint(1) NOT NULL DEFAULT '0',
  `ismember` tinyint(1) NOT NULL DEFAULT '0',
  `isurl` tinyint(1) NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  `groupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userfen` smallint(5) unsigned NOT NULL DEFAULT '0',
  `titlefont` char(14) NOT NULL DEFAULT '',
  `titleurl` char(200) NOT NULL DEFAULT '',
  `stb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `fstb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `restb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `keyboard` char(80) NOT NULL DEFAULT '',
  `title` char(100) NOT NULL DEFAULT '',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `titlepic` char(120) NOT NULL DEFAULT '',
  `ftitle` char(120) NOT NULL DEFAULT '',
  `smalltext` char(255) NOT NULL DEFAULT '',
  `diggtop` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `newstime` (`newstime`),
  KEY `ttid` (`ttid`),
  KEY `firsttitle` (`firsttitle`),
  KEY `isgood` (`isgood`),
  KEY `ispic` (`ispic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_elve_news_check`
--

CREATE TABLE IF NOT EXISTS `base_elve_news_check` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ttid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `onclick` int(10) unsigned NOT NULL DEFAULT '0',
  `plnum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `totaldown` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `newspath` char(20) NOT NULL DEFAULT '',
  `filename` char(36) NOT NULL DEFAULT '',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` char(20) NOT NULL DEFAULT '',
  `firsttitle` tinyint(1) NOT NULL DEFAULT '0',
  `isgood` tinyint(1) NOT NULL DEFAULT '0',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  `istop` tinyint(1) NOT NULL DEFAULT '0',
  `isqf` tinyint(1) NOT NULL DEFAULT '0',
  `ismember` tinyint(1) NOT NULL DEFAULT '0',
  `isurl` tinyint(1) NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  `groupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userfen` smallint(5) unsigned NOT NULL DEFAULT '0',
  `titlefont` char(14) NOT NULL DEFAULT '',
  `titleurl` char(200) NOT NULL DEFAULT '',
  `stb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `fstb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `restb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `keyboard` char(80) NOT NULL DEFAULT '',
  `title` char(100) NOT NULL DEFAULT '',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `titlepic` char(120) NOT NULL DEFAULT '',
  `ftitle` char(120) NOT NULL DEFAULT '',
  `smalltext` char(255) NOT NULL DEFAULT '',
  `diggtop` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `newstime` (`newstime`),
  KEY `ttid` (`ttid`),
  KEY `firsttitle` (`firsttitle`),
  KEY `isgood` (`isgood`),
  KEY `ispic` (`ispic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_elve_news_check_data`
--

CREATE TABLE IF NOT EXISTS `base_elve_news_check_data` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `keyid` varchar(255) NOT NULL DEFAULT '',
  `dokey` tinyint(1) NOT NULL DEFAULT '0',
  `newstempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `closepl` tinyint(1) NOT NULL DEFAULT '0',
  `haveaddfen` tinyint(1) NOT NULL DEFAULT '0',
  `infotags` varchar(80) NOT NULL DEFAULT '',
  `writer` varchar(30) NOT NULL DEFAULT '',
  `befrom` varchar(60) NOT NULL DEFAULT '',
  `newstext` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `base_elve_news_data_1`
--

CREATE TABLE IF NOT EXISTS `base_elve_news_data_1` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `keyid` varchar(255) NOT NULL DEFAULT '',
  `dokey` tinyint(1) NOT NULL DEFAULT '0',
  `newstempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `closepl` tinyint(1) NOT NULL DEFAULT '0',
  `haveaddfen` tinyint(1) NOT NULL DEFAULT '0',
  `infotags` varchar(80) NOT NULL DEFAULT '',
  `writer` varchar(30) NOT NULL DEFAULT '',
  `befrom` varchar(60) NOT NULL DEFAULT '',
  `newstext` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `base_elve_news_doc`
--

CREATE TABLE IF NOT EXISTS `base_elve_news_doc` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ttid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `onclick` int(10) unsigned NOT NULL DEFAULT '0',
  `plnum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `totaldown` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `newspath` char(20) NOT NULL DEFAULT '',
  `filename` char(36) NOT NULL DEFAULT '',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` char(20) NOT NULL DEFAULT '',
  `firsttitle` tinyint(1) NOT NULL DEFAULT '0',
  `isgood` tinyint(1) NOT NULL DEFAULT '0',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  `istop` tinyint(1) NOT NULL DEFAULT '0',
  `isqf` tinyint(1) NOT NULL DEFAULT '0',
  `ismember` tinyint(1) NOT NULL DEFAULT '0',
  `isurl` tinyint(1) NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  `groupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userfen` smallint(5) unsigned NOT NULL DEFAULT '0',
  `titlefont` char(14) NOT NULL DEFAULT '',
  `titleurl` char(200) NOT NULL DEFAULT '',
  `stb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `fstb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `restb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `keyboard` char(80) NOT NULL DEFAULT '',
  `title` char(100) NOT NULL DEFAULT '',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `titlepic` char(120) NOT NULL DEFAULT '',
  `ftitle` char(120) NOT NULL DEFAULT '',
  `smalltext` char(255) NOT NULL DEFAULT '',
  `diggtop` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `newstime` (`newstime`),
  KEY `ttid` (`ttid`),
  KEY `firsttitle` (`firsttitle`),
  KEY `isgood` (`isgood`),
  KEY `ispic` (`ispic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_elve_news_doc_data`
--

CREATE TABLE IF NOT EXISTS `base_elve_news_doc_data` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `keyid` varchar(255) NOT NULL DEFAULT '',
  `dokey` tinyint(1) NOT NULL DEFAULT '0',
  `newstempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `closepl` tinyint(1) NOT NULL DEFAULT '0',
  `haveaddfen` tinyint(1) NOT NULL DEFAULT '0',
  `infotags` varchar(80) NOT NULL DEFAULT '',
  `writer` varchar(30) NOT NULL DEFAULT '',
  `befrom` varchar(60) NOT NULL DEFAULT '',
  `newstext` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `base_elve_news_doc_index`
--

CREATE TABLE IF NOT EXISTS `base_elve_news_doc_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `checked` (`checked`),
  KEY `newstime` (`newstime`),
  KEY `truetime` (`truetime`,`id`),
  KEY `havehtml` (`classid`,`truetime`,`havehtml`,`checked`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_elve_news_index`
--

CREATE TABLE IF NOT EXISTS `base_elve_news_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `checked` (`checked`),
  KEY `newstime` (`newstime`),
  KEY `truetime` (`truetime`,`id`),
  KEY `havehtml` (`classid`,`truetime`,`havehtml`,`checked`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_elve_photo`
--

CREATE TABLE IF NOT EXISTS `base_elve_photo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ttid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `onclick` int(10) unsigned NOT NULL DEFAULT '0',
  `plnum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `totaldown` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `newspath` varchar(20) NOT NULL DEFAULT '',
  `filename` varchar(36) NOT NULL DEFAULT '',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `firsttitle` tinyint(1) NOT NULL DEFAULT '0',
  `isgood` tinyint(1) NOT NULL DEFAULT '0',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  `istop` tinyint(1) NOT NULL DEFAULT '0',
  `isqf` tinyint(1) NOT NULL DEFAULT '0',
  `ismember` tinyint(1) NOT NULL DEFAULT '0',
  `isurl` tinyint(1) NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  `groupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userfen` smallint(5) unsigned NOT NULL DEFAULT '0',
  `titlefont` varchar(14) NOT NULL DEFAULT '',
  `titleurl` varchar(200) NOT NULL DEFAULT '',
  `stb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `fstb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `restb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `keyboard` varchar(80) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `titlepic` varchar(120) NOT NULL DEFAULT '',
  `picurl` varchar(200) NOT NULL DEFAULT '',
  `picsay` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `newstime` (`newstime`),
  KEY `ttid` (`ttid`),
  KEY `firsttitle` (`firsttitle`),
  KEY `isgood` (`isgood`),
  KEY `ispic` (`ispic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_elve_photo_check`
--

CREATE TABLE IF NOT EXISTS `base_elve_photo_check` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ttid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `onclick` int(10) unsigned NOT NULL DEFAULT '0',
  `plnum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `totaldown` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `newspath` varchar(20) NOT NULL DEFAULT '',
  `filename` varchar(36) NOT NULL DEFAULT '',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `firsttitle` tinyint(1) NOT NULL DEFAULT '0',
  `isgood` tinyint(1) NOT NULL DEFAULT '0',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  `istop` tinyint(1) NOT NULL DEFAULT '0',
  `isqf` tinyint(1) NOT NULL DEFAULT '0',
  `ismember` tinyint(1) NOT NULL DEFAULT '0',
  `isurl` tinyint(1) NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  `groupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userfen` smallint(5) unsigned NOT NULL DEFAULT '0',
  `titlefont` varchar(14) NOT NULL DEFAULT '',
  `titleurl` varchar(200) NOT NULL DEFAULT '',
  `stb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `fstb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `restb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `keyboard` varchar(80) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `titlepic` varchar(120) NOT NULL DEFAULT '',
  `picurl` varchar(200) NOT NULL DEFAULT '',
  `picsay` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `newstime` (`newstime`),
  KEY `ttid` (`ttid`),
  KEY `firsttitle` (`firsttitle`),
  KEY `isgood` (`isgood`),
  KEY `ispic` (`ispic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_elve_photo_check_data`
--

CREATE TABLE IF NOT EXISTS `base_elve_photo_check_data` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `keyid` varchar(255) NOT NULL DEFAULT '',
  `dokey` tinyint(1) NOT NULL DEFAULT '0',
  `newstempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `closepl` tinyint(1) NOT NULL DEFAULT '0',
  `haveaddfen` tinyint(1) NOT NULL DEFAULT '0',
  `infotags` varchar(80) NOT NULL DEFAULT '',
  `filesize` varchar(10) NOT NULL DEFAULT '',
  `picsize` varchar(20) NOT NULL DEFAULT '',
  `picfbl` varchar(20) NOT NULL DEFAULT '',
  `picfrom` varchar(120) NOT NULL DEFAULT '',
  `morepic` mediumtext NOT NULL,
  `num` tinyint(4) NOT NULL DEFAULT '0',
  `width` varchar(12) NOT NULL DEFAULT '',
  `height` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `base_elve_photo_data_1`
--

CREATE TABLE IF NOT EXISTS `base_elve_photo_data_1` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `keyid` varchar(255) NOT NULL DEFAULT '',
  `dokey` tinyint(1) NOT NULL DEFAULT '0',
  `newstempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `closepl` tinyint(1) NOT NULL DEFAULT '0',
  `haveaddfen` tinyint(1) NOT NULL DEFAULT '0',
  `infotags` varchar(80) NOT NULL DEFAULT '',
  `filesize` varchar(10) NOT NULL DEFAULT '',
  `picsize` varchar(20) NOT NULL DEFAULT '',
  `picfbl` varchar(20) NOT NULL DEFAULT '',
  `picfrom` varchar(120) NOT NULL DEFAULT '',
  `morepic` mediumtext NOT NULL,
  `num` tinyint(4) NOT NULL DEFAULT '0',
  `width` varchar(12) NOT NULL DEFAULT '',
  `height` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `base_elve_photo_doc`
--

CREATE TABLE IF NOT EXISTS `base_elve_photo_doc` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ttid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `onclick` int(10) unsigned NOT NULL DEFAULT '0',
  `plnum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `totaldown` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `newspath` varchar(20) NOT NULL DEFAULT '',
  `filename` varchar(36) NOT NULL DEFAULT '',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `firsttitle` tinyint(1) NOT NULL DEFAULT '0',
  `isgood` tinyint(1) NOT NULL DEFAULT '0',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  `istop` tinyint(1) NOT NULL DEFAULT '0',
  `isqf` tinyint(1) NOT NULL DEFAULT '0',
  `ismember` tinyint(1) NOT NULL DEFAULT '0',
  `isurl` tinyint(1) NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  `groupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userfen` smallint(5) unsigned NOT NULL DEFAULT '0',
  `titlefont` varchar(14) NOT NULL DEFAULT '',
  `titleurl` varchar(200) NOT NULL DEFAULT '',
  `stb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `fstb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `restb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `keyboard` varchar(80) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `titlepic` varchar(120) NOT NULL DEFAULT '',
  `picurl` varchar(200) NOT NULL DEFAULT '',
  `picsay` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `newstime` (`newstime`),
  KEY `ttid` (`ttid`),
  KEY `firsttitle` (`firsttitle`),
  KEY `isgood` (`isgood`),
  KEY `ispic` (`ispic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_elve_photo_doc_data`
--

CREATE TABLE IF NOT EXISTS `base_elve_photo_doc_data` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `keyid` varchar(255) NOT NULL DEFAULT '',
  `dokey` tinyint(1) NOT NULL DEFAULT '0',
  `newstempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `closepl` tinyint(1) NOT NULL DEFAULT '0',
  `haveaddfen` tinyint(1) NOT NULL DEFAULT '0',
  `infotags` varchar(80) NOT NULL DEFAULT '',
  `filesize` varchar(10) NOT NULL DEFAULT '',
  `picsize` varchar(20) NOT NULL DEFAULT '',
  `picfbl` varchar(20) NOT NULL DEFAULT '',
  `picfrom` varchar(120) NOT NULL DEFAULT '',
  `morepic` mediumtext NOT NULL,
  `num` tinyint(4) NOT NULL DEFAULT '0',
  `width` varchar(12) NOT NULL DEFAULT '',
  `height` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `base_elve_photo_doc_index`
--

CREATE TABLE IF NOT EXISTS `base_elve_photo_doc_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `checked` (`checked`),
  KEY `newstime` (`newstime`),
  KEY `truetime` (`truetime`,`id`),
  KEY `havehtml` (`classid`,`truetime`,`havehtml`,`checked`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_elve_photo_index`
--

CREATE TABLE IF NOT EXISTS `base_elve_photo_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `checked` (`checked`),
  KEY `newstime` (`newstime`),
  KEY `truetime` (`truetime`,`id`),
  KEY `havehtml` (`classid`,`truetime`,`havehtml`,`checked`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_elve_shop`
--

CREATE TABLE IF NOT EXISTS `base_elve_shop` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ttid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `onclick` int(10) unsigned NOT NULL DEFAULT '0',
  `plnum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `totaldown` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `newspath` varchar(20) NOT NULL DEFAULT '',
  `filename` varchar(36) NOT NULL DEFAULT '',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `firsttitle` tinyint(1) NOT NULL DEFAULT '0',
  `isgood` tinyint(1) NOT NULL DEFAULT '0',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  `istop` tinyint(1) NOT NULL DEFAULT '0',
  `isqf` tinyint(1) NOT NULL DEFAULT '0',
  `ismember` tinyint(1) NOT NULL DEFAULT '0',
  `isurl` tinyint(1) NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  `groupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userfen` smallint(5) unsigned NOT NULL DEFAULT '0',
  `titlefont` varchar(14) NOT NULL DEFAULT '',
  `titleurl` varchar(200) NOT NULL DEFAULT '',
  `stb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `fstb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `restb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `keyboard` varchar(80) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `titlepic` varchar(120) NOT NULL DEFAULT '',
  `productno` varchar(30) NOT NULL DEFAULT '',
  `pbrand` varchar(30) NOT NULL DEFAULT '',
  `intro` text NOT NULL,
  `unit` varchar(16) NOT NULL DEFAULT '',
  `weight` varchar(20) NOT NULL DEFAULT '',
  `tprice` float(11,2) NOT NULL DEFAULT '0.00',
  `price` float(11,2) NOT NULL DEFAULT '0.00',
  `buyfen` int(11) NOT NULL DEFAULT '0',
  `pmaxnum` int(11) NOT NULL DEFAULT '0',
  `productpic` varchar(255) NOT NULL DEFAULT '',
  `newstext` mediumtext NOT NULL,
  `psalenum` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `newstime` (`newstime`),
  KEY `ttid` (`ttid`),
  KEY `firsttitle` (`firsttitle`),
  KEY `isgood` (`isgood`),
  KEY `ispic` (`ispic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_elve_shop_check`
--

CREATE TABLE IF NOT EXISTS `base_elve_shop_check` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ttid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `onclick` int(10) unsigned NOT NULL DEFAULT '0',
  `plnum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `totaldown` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `newspath` varchar(20) NOT NULL DEFAULT '',
  `filename` varchar(36) NOT NULL DEFAULT '',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `firsttitle` tinyint(1) NOT NULL DEFAULT '0',
  `isgood` tinyint(1) NOT NULL DEFAULT '0',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  `istop` tinyint(1) NOT NULL DEFAULT '0',
  `isqf` tinyint(1) NOT NULL DEFAULT '0',
  `ismember` tinyint(1) NOT NULL DEFAULT '0',
  `isurl` tinyint(1) NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  `groupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userfen` smallint(5) unsigned NOT NULL DEFAULT '0',
  `titlefont` varchar(14) NOT NULL DEFAULT '',
  `titleurl` varchar(200) NOT NULL DEFAULT '',
  `stb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `fstb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `restb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `keyboard` varchar(80) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `titlepic` varchar(120) NOT NULL DEFAULT '',
  `productno` varchar(30) NOT NULL DEFAULT '',
  `pbrand` varchar(30) NOT NULL DEFAULT '',
  `intro` text NOT NULL,
  `unit` varchar(16) NOT NULL DEFAULT '',
  `weight` varchar(20) NOT NULL DEFAULT '',
  `tprice` float(11,2) NOT NULL DEFAULT '0.00',
  `price` float(11,2) NOT NULL DEFAULT '0.00',
  `buyfen` int(11) NOT NULL DEFAULT '0',
  `pmaxnum` int(11) NOT NULL DEFAULT '0',
  `productpic` varchar(255) NOT NULL DEFAULT '',
  `newstext` mediumtext NOT NULL,
  `psalenum` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `newstime` (`newstime`),
  KEY `ttid` (`ttid`),
  KEY `firsttitle` (`firsttitle`),
  KEY `isgood` (`isgood`),
  KEY `ispic` (`ispic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_elve_shop_check_data`
--

CREATE TABLE IF NOT EXISTS `base_elve_shop_check_data` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `keyid` char(255) NOT NULL DEFAULT '',
  `dokey` tinyint(1) NOT NULL DEFAULT '0',
  `newstempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `closepl` tinyint(1) NOT NULL DEFAULT '0',
  `haveaddfen` tinyint(1) NOT NULL DEFAULT '0',
  `infotags` char(80) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `base_elve_shop_data_1`
--

CREATE TABLE IF NOT EXISTS `base_elve_shop_data_1` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `keyid` char(255) NOT NULL DEFAULT '',
  `dokey` tinyint(1) NOT NULL DEFAULT '0',
  `newstempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `closepl` tinyint(1) NOT NULL DEFAULT '0',
  `haveaddfen` tinyint(1) NOT NULL DEFAULT '0',
  `infotags` char(80) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `base_elve_shop_doc`
--

CREATE TABLE IF NOT EXISTS `base_elve_shop_doc` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ttid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `onclick` int(10) unsigned NOT NULL DEFAULT '0',
  `plnum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `totaldown` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `newspath` varchar(20) NOT NULL DEFAULT '',
  `filename` varchar(36) NOT NULL DEFAULT '',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `firsttitle` tinyint(1) NOT NULL DEFAULT '0',
  `isgood` tinyint(1) NOT NULL DEFAULT '0',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  `istop` tinyint(1) NOT NULL DEFAULT '0',
  `isqf` tinyint(1) NOT NULL DEFAULT '0',
  `ismember` tinyint(1) NOT NULL DEFAULT '0',
  `isurl` tinyint(1) NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  `groupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userfen` smallint(5) unsigned NOT NULL DEFAULT '0',
  `titlefont` varchar(14) NOT NULL DEFAULT '',
  `titleurl` varchar(200) NOT NULL DEFAULT '',
  `stb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `fstb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `restb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `keyboard` varchar(80) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `titlepic` varchar(120) NOT NULL DEFAULT '',
  `productno` varchar(30) NOT NULL DEFAULT '',
  `pbrand` varchar(30) NOT NULL DEFAULT '',
  `intro` text NOT NULL,
  `unit` varchar(16) NOT NULL DEFAULT '',
  `weight` varchar(20) NOT NULL DEFAULT '',
  `tprice` float(11,2) NOT NULL DEFAULT '0.00',
  `price` float(11,2) NOT NULL DEFAULT '0.00',
  `buyfen` int(11) NOT NULL DEFAULT '0',
  `pmaxnum` int(11) NOT NULL DEFAULT '0',
  `productpic` varchar(255) NOT NULL DEFAULT '',
  `newstext` mediumtext NOT NULL,
  `psalenum` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `newstime` (`newstime`),
  KEY `ttid` (`ttid`),
  KEY `firsttitle` (`firsttitle`),
  KEY `isgood` (`isgood`),
  KEY `ispic` (`ispic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_elve_shop_doc_data`
--

CREATE TABLE IF NOT EXISTS `base_elve_shop_doc_data` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `keyid` char(255) NOT NULL DEFAULT '',
  `dokey` tinyint(1) NOT NULL DEFAULT '0',
  `newstempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `closepl` tinyint(1) NOT NULL DEFAULT '0',
  `haveaddfen` tinyint(1) NOT NULL DEFAULT '0',
  `infotags` char(80) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `base_elve_shop_doc_index`
--

CREATE TABLE IF NOT EXISTS `base_elve_shop_doc_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `checked` (`checked`),
  KEY `newstime` (`newstime`),
  KEY `truetime` (`truetime`,`id`),
  KEY `havehtml` (`classid`,`truetime`,`havehtml`,`checked`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_elve_shop_index`
--

CREATE TABLE IF NOT EXISTS `base_elve_shop_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `checked` (`checked`),
  KEY `newstime` (`newstime`),
  KEY `truetime` (`truetime`,`id`),
  KEY `havehtml` (`classid`,`truetime`,`havehtml`,`checked`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melvead`
--

CREATE TABLE IF NOT EXISTS `base_melvead` (
  `adid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `picurl` varchar(255) NOT NULL DEFAULT '',
  `url` text NOT NULL,
  `pic_width` int(10) unsigned NOT NULL DEFAULT '0',
  `pic_height` int(10) unsigned NOT NULL DEFAULT '0',
  `onclick` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `adtype` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `target` varchar(10) NOT NULL DEFAULT '',
  `alt` varchar(120) NOT NULL DEFAULT '',
  `starttime` date NOT NULL DEFAULT '0000-00-00',
  `endtime` date NOT NULL DEFAULT '0000-00-00',
  `adsay` varchar(255) NOT NULL DEFAULT '',
  `titlefont` varchar(14) NOT NULL DEFAULT '',
  `titlecolor` varchar(10) NOT NULL DEFAULT '',
  `htmlcode` text NOT NULL,
  `t` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ylink` tinyint(1) NOT NULL DEFAULT '0',
  `reptext` text NOT NULL,
  PRIMARY KEY (`adid`),
  KEY `classid` (`classid`),
  KEY `t` (`t`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melveadclass`
--

CREATE TABLE IF NOT EXISTS `base_melveadclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` char(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `base_melveadclass`
--

INSERT INTO `base_melveadclass` (`classid`, `classname`) VALUES
(1, '默认广告分类');

-- --------------------------------------------------------

--
-- 表的结构 `base_melveadminstyle`
--

CREATE TABLE IF NOT EXISTS `base_melveadminstyle` (
  `styleid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `stylename` char(30) NOT NULL DEFAULT '',
  `path` smallint(5) unsigned NOT NULL DEFAULT '0',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`styleid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `base_melveadminstyle`
--

INSERT INTO `base_melveadminstyle` (`styleid`, `stylename`, `path`, `isdefault`) VALUES
(1, '管理员后台界面', 1, 1),
(2, '编辑后台界面', 2, 0);

-- --------------------------------------------------------

--
-- 表的结构 `base_melvebefrom`
--

CREATE TABLE IF NOT EXISTS `base_melvebefrom` (
  `befromid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `sitename` char(60) NOT NULL DEFAULT '',
  `siteurl` char(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`befromid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melvebq`
--

CREATE TABLE IF NOT EXISTS `base_melvebq` (
  `bqid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `bqname` varchar(60) NOT NULL DEFAULT '',
  `bqsay` text NOT NULL,
  `funname` varchar(60) NOT NULL DEFAULT '',
  `bq` varchar(60) NOT NULL DEFAULT '',
  `issys` tinyint(1) NOT NULL DEFAULT '0',
  `bqgs` text NOT NULL,
  `isclose` tinyint(1) NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `myorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bqid`),
  KEY `classid` (`classid`),
  KEY `isclose` (`isclose`),
  KEY `myorder` (`myorder`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=32 ;

--
-- 转存表中的数据 `base_melvebq`
--

INSERT INTO `base_melvebq` (`bqid`, `bqname`, `bqsay`, `funname`, `bq`, `issys`, `bqgs`, `isclose`, `classid`, `myorder`) VALUES
(1, '文字调用标签', '<table cellspacing=\\"1\\" cellpadding=\\"3\\" width=\\"100%\\" bgcolor=\\"#dbeaf5\\" border=\\"0\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\"center\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">栏目ID/专题ID</div>\r\n            </td>\r\n            <td height=\\"25\\">查看栏目ID点<a onclick=\\"window.open(\\''../ListClass.php\\'');\\"><strong><u>这里</u></strong></a>，查看专题ID点<a onclick=\\"window.open(\\''../special/ListZt.php\\'');\\"><strong><u>这里</u></strong></a>,当前ID=\\''selfinfo\\''<br />\r\n            多个栏目ID与专题ID可用,号格开，如\\''1,2\\''</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示条数</div>\r\n            </td>\r\n            <td height=\\"25\\">显示前几条记录</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">标题截取数</div>\r\n            </td>\r\n            <td height=\\"25\\">截取几个字符</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">是否显示时间</div>\r\n            </td>\r\n            <td height=\\"25\\">是否在标题后显示时间，0为不显示，1为显示</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">操作类型</div>\r\n            </td>\r\n            <td height=\\"25\\">具体看操作类型说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">是否显示栏目名</div>\r\n            </td>\r\n            <td height=\\"25\\">0为不显示，1为显示</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">时间格式化</div>\r\n            </td>\r\n            <td height=\\"25\\">形式：Y-m-d H:i:s．默认为：\\''(m-d)\\''</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">附加SQL条件</div>\r\n            </td>\r\n            <td height=\\"25\\">附加调用条件，如：&quot;title=\\''Elves\\''&quot;</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示排序</div>\r\n            </td>\r\n            <td height=\\"25\\">可指定按相应的字段排序，如：&quot;id desc&quot;</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td colspan=\\"2\\">\r\n            <div align=\\"center\\">（注：在栏目ID中写大栏目，系统会自己搜索子栏目的信息）</div>\r\n            </td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_GetClassNews', 'mgxmelve', 1, '[mgxmelve]栏目ID/专题ID,显示条数,标题截取数,是否显示时间,操作类型,是否显示栏目名,\\''时间格式化\\'',附加SQL条件,显示排序[/mgxmelve]', 0, 1, 9),
(22, '留言板调用', '<table cellspacing=\\"1\\" cellpadding=\\"3\\" width=\\"100%\\" bgcolor=\\"#dbeaf5\\" border=\\"0\\">\r\n    <tbody>\r\n        <tr>\r\n            <td width=\\"40%\\">\r\n            <div align=\\"center\\">参数</div>\r\n            </td>\r\n            <td width=\\"60%\\">参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示信息数</div>\r\n            </td>\r\n            <td height=\\"25\\">显示记录数</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">标签模板ID</div>\r\n            </td>\r\n            <td height=\\"25\\">\r\n            <div align=\\"left\\">查看标签模板ID点<a onclick=\\"window.open(\\''ListBqtemp.php\\'');\\"><strong><u>这里</u></strong></a></div>\r\n            </td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">&nbsp;</div>\r\n            </td>\r\n            <td height=\\"25\\">模板标签变量说明：<br />\r\n            留言ID：[!--lyid--]，留言内容：[!--lytext--]<br />\r\n            回复内容：[!--retext--]，留言时间：[!--lytime--]<br />\r\n            留言者：[!--name--]，留言者邮箱：[!--email--]<br />\r\n            序号：[!--no--]</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">留言分类ID</div>\r\n            </td>\r\n            <td height=\\"25\\">\r\n            <div align=\\"left\\">点击<strong><a onclick=\\"window.open(\\''../tool/GbookClass.php\\'');\\">这里</a></strong>查看分类ID，0为不限制</div>\r\n            </td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_ShowLyInfo', 'gbookinfo', 1, '[gbookinfo]显示信息数,标签模板ID,留言分类ID[/gbookinfo]', 0, 3, 5),
(23, '专题调用标签', '<table cellspacing=\\"1\\" cellpadding=\\"3\\" width=\\"100%\\" bgcolor=\\"#dbeaf5\\" border=\\"0\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\"center\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">\r\n            <div align=\\"center\\">标签模板ID</div>\r\n            </div>\r\n            </td>\r\n            <td height=\\"25\\">查看标签模板ID点<a onclick=\\"window.open(\\''ListBqtemp.php\\'');\\"><strong><u>这里</u></strong></a></td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">&nbsp;</div>\r\n            </td>\r\n            <td height=\\"25\\">\r\n            <p>模板标签变量说明：(list.var)<br />\r\n            [!--classurl--]：专题链接，[!--classname--]：专题名称<br />\r\n            [!--classid--]：专题id，[!--classimg--]：专题图片<br />\r\n            [!--intro--]：专题简介,[!--no--]：序号</p>\r\n            </td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">专题类别ID</div>\r\n            </td>\r\n            <td height=\\"25\\">\r\n            <div align=\\"left\\">点击<strong><a onclick=\\"window.open(\\''../ListZtClass.php\\'');\\">这里</a></strong>查看分类ID，0为不限制，多个分类ID用逗号隔开，如\\''1,2\\''</div>\r\n            </td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示专题数</div>\r\n            </td>\r\n            <td height=\\"25\\">0为不限制</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">所属栏目ID</div>\r\n            </td>\r\n            <td height=\\"25\\">点击<strong><a onclick=\\"window.open(\\''../ListClass.php\\'');\\">这里</a></strong>查看栏目ID，0为不限制，多个栏目ID用逗号隔开，如\\''1,2\\''</td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_ShowZtData', 'eshowzt', 1, '[eshowzt]标签模板ID,专题类别ID,显示专题数,所属栏目ID[/eshowzt]', 0, 2, 6),
(2, '图文信息调用(标题图片的信息)', '<table cellspacing=\\"1\\" cellpadding=\\"3\\" width=\\"100%\\" bgcolor=\\"#dbeaf5\\" border=\\"0\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\"center\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">栏目ID/专题ID</div>\r\n            </td>\r\n            <td height=\\"25\\">查看栏目ID点<a onclick=\\"window.open(\\''../ListClass.php\\'');\\"><strong><u>这里</u></strong></a>，查看专题ID点<a onclick=\\"window.open(\\''../special/ListZt.php\\'');\\"><strong><u>这里</u></strong></a>,当前ID=\\''selfinfo\\''<br />\r\n            多个栏目ID与专题ID可用,号格开，如\\''1,2\\''</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">每行显示条数</div>\r\n            </td>\r\n            <td height=\\"25\\">每行显示几个图片</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示总信息数</div>\r\n            </td>\r\n            <td height=\\"25\\">显示信息总数</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">图片宽度，图片高度</div>\r\n            </td>\r\n            <td height=\\"25\\">图文信息图片大小</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">是否显示标题</div>\r\n            </td>\r\n            <td height=\\"25\\">是否在图片下显示标题，0为不显示，1为显示</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td bgcolor=\\"#ffffff\\" height=\\"25\\">\r\n            <div align=\\"center\\">标题截取数</div>\r\n            </td>\r\n            <td height=\\"25\\">截取几个字符</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td bgcolor=\\"#ffffff\\" height=\\"25\\">\r\n            <div align=\\"center\\">操作类型说明</div>\r\n            </td>\r\n            <td height=\\"25\\">具体看操作类型说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">附加SQL条件</div>\r\n            </td>\r\n            <td height=\\"25\\">附加调用条件，如：&quot;title=\\''Elves\\''&quot;</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示排序</div>\r\n            </td>\r\n            <td height=\\"25\\">可指定按相应的字段排序，如：&quot;id desc&quot;</td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_GetClassNewsPic', 'mgxmelvepic', 1, '[mgxmelvepic]栏目ID/专题ID,每行显示条数,显示总信息数,图片宽度,图片高度,是否显示标题,标题截取数,操作类型,附加SQL条件,显示排序[/mgxmelvepic]', 0, 1, 9),
(5, '广告标签', '<table cellspacing=\\"1\\" cellpadding=\\"3\\" width=\\"100%\\" bgcolor=\\"#dbeaf5\\" border=\\"0\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\"center\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">广告ID</div>\r\n            </td>\r\n            <td height=\\"25\\">查看广告ID点<a onclick=\\"window.open(\\''../tool/ListAd.php\\'');\\"><strong><u>这里</u></strong></a></td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_GetAd', 'mgxead', 1, '[mgxead]广告ID[/mgxead]', 0, 3, 5),
(6, '投票标签', '<table cellspacing=\\"1\\" cellpadding=\\"3\\" width=\\"100%\\" bgcolor=\\"#dbeaf5\\" border=\\"0\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\"center\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">投票ID</div>\r\n            </td>\r\n            <td height=\\"25\\">查看投票ID点<a onclick=\\"window.open(\\''../tool/ListVote.php\\'');\\"><strong><u>这里</u></strong></a></td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_GetVote', 'mgxevote', 1, '[mgxevote]投票ID[/mgxevote]', 0, 3, 5),
(11, '带模板的信息调用标签[万能标签]', '<table cellspacing=\\"1\\" cellpadding=\\"3\\" width=\\"100%\\" bgcolor=\\"#dbeaf5\\" border=\\"0\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\"center\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">栏目ID/专题ID</div>\r\n            </td>\r\n            <td height=\\"25\\">查看栏目ID点<a onclick=\\"window.open(\\''../ListClass.php\\'');\\"><strong><u>这里</u></strong></a>，查看专题ID点<a onclick=\\"window.open(\\''../special/ListZt.php\\'');\\"><strong><u>这里</u></strong></a>,当前ID=\\''selfinfo\\''<br />\r\n            多个栏目ID与专题ID可用,号格开，如\\''1,2\\''</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示条数</div>\r\n            </td>\r\n            <td height=\\"25\\">显示前几条记录</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">标题截取数</div>\r\n            </td>\r\n            <td height=\\"25\\">截取几个字符</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">是否显示栏目名</div>\r\n            </td>\r\n            <td height=\\"25\\">0为不显示，1为显示</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">操作类型</div>\r\n            </td>\r\n            <td height=\\"25\\">具体看操作类型说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">标签模板ID</div>\r\n            </td>\r\n            <td height=\\"25\\">查看标签模板ID点<a onclick=\\"window.open(\\''ListBqtemp.php\\'');\\"><strong><u>这里</u></strong></a></td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">只显示有标题图片</div>\r\n            </td>\r\n            <td height=\\"25\\">0为不限制，1为只显示有标题图片的信息</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">附加SQL条件</div>\r\n            </td>\r\n            <td height=\\"25\\">附加调用条件，如：&quot;title=\\''Elves\\''&quot;</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示排序</div>\r\n            </td>\r\n            <td height=\\"25\\">可指定按相应的字段排序，如：&quot;id desc&quot;</td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_GetelveInfo', 'elveinfo', 1, '[elveinfo]栏目ID/专题ID,显示条数,标题截取数,是否显示栏目名,操作类型,模板ID,只显示有标题图片,附加SQL条件,显示排序[/elveinfo]', 0, 1, 10),
(12, '友情链接标签', '<table cellspacing=\\"1\\" cellpadding=\\"3\\" width=\\"100%\\" bgcolor=\\"#dbeaf5\\" border=\\"0\\">\r\n    <tbody>\r\n        <tr>\r\n            <td width=\\"40%\\">\r\n            <div align=\\"center\\">参数</div>\r\n            </td>\r\n            <td width=\\"60%\\">参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">每行显示记录数</div>\r\n            </td>\r\n            <td height=\\"25\\">每行显示记录数</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示总记录数</div>\r\n            </td>\r\n            <td height=\\"25\\">\r\n            <div align=\\"left\\">总记录数</div>\r\n            </td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">操作类型</div>\r\n            </td>\r\n            <td height=\\"25\\">\r\n            <div align=\\"left\\">0为所有记录，1为图片链接，2为文字链接</div>\r\n            </td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">分类ID</div>\r\n            </td>\r\n            <td height=\\"25\\">\r\n            <div align=\\"left\\">点击<strong><a onclick=\\"window.open(\\''../tool/LinkClass.php\\'');\\">这里</a></strong>查看分类ID，0为不限制</div>\r\n            </td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">是否显示原链接</div>\r\n            </td>\r\n            <td height=\\"25\\">\r\n            <div align=\\"left\\">0为统计点击链接，1为显示原链接</div>\r\n            </td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_GetSitelink', 'mgxelink', 1, '[mgxelink]每行显示数,显示总数,操作类型,分类id,是否显示原链接[/mgxelink]', 0, 3, 5),
(15, '引用文件标签', '<p>[includefile]\\''文件地址\\''[/includefile]<br />\r\n文件地址需要为相对地址,并且从后台目录算起：&quot;../../header.html&quot;（这个地址的header.html是放在elve根目录）</p>', 'sys_IncludeFile', 'includefile', 1, '[includefile]\\''文件地址\\''[/includefile]', 1, 4, 4),
(16, '读取远程页面', '<p>[readhttp]\\''页面地址\\''[/readhttp]</p>', 'sys_ReadFile', 'readhttp', 1, '[readhttp]\\''页面地址\\''[/readhttp]', 1, 4, 4),
(17, '网站信息统计', '<p>操作类型说明：\r\n<table border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\" width=\\"100%\\">\r\n    <tbody>\r\n        <tr bgcolor=\\"#dbeaf5\\">\r\n            <td width=\\"25%\\">\r\n            <div align=\\"center\\">操作类型</div>\r\n            </td>\r\n            <td width=\\"75%\\">内容</td>\r\n        </tr>\r\n        <tr>\r\n            <td>\r\n            <div align=\\"center\\">0</div>\r\n            </td>\r\n            <td>统计栏目数据</td>\r\n        </tr>\r\n        <tr>\r\n            <td>\r\n            <div align=\\"center\\">1</div>\r\n            </td>\r\n            <td>统计标题分类</td>\r\n        </tr>\r\n        <tr>\r\n            <td>\r\n            <div align=\\"center\\">2</div>\r\n            </td>\r\n            <td>统计数据表</td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n<br />\r\n时间范围：0为不限；1为今日；2为本月；3为本年。<br />\r\n统计类型：0为统计信息数；1为统计评论数；2为统计点击数；3为统计下载数。<br />\r\n如果操作类型是&ldquo;统计数据表&rdquo;，栏目ID=\\''数据表名\\''</p>', 'sys_TotalData', 'totaldata', 1, '[totaldata]栏目ID,操作类型,时间范围,统计类型[/totaldata]', 0, 1, 7),
(18, 'FLASH幻灯信息调用', '<table cellspacing=\\"1\\" cellpadding=\\"3\\" width=\\"100%\\" bgcolor=\\"#dbeaf5\\" border=\\"0\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\"center\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">\r\n            <div align=\\"center\\">栏目ID/专题ID</div>\r\n            </div>\r\n            </td>\r\n            <td height=\\"25\\">查看栏目ID点<a onclick=\\"window.open(\\''../ListClass.php\\'');\\"><strong><u>这里</u></strong></a>，查看专题ID点<a onclick=\\"window.open(\\''../special/ListZt.php\\'');\\"><strong><u>这里</u></strong></a>,当前ID=\\''selfinfo\\''<br />\r\n            多个栏目ID与专题ID可用,号格开，如\\''1,2\\''</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示总数</div>\r\n            </td>\r\n            <td height=\\"25\\">显示信息总数</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">图片宽度，图片高度</div>\r\n            </td>\r\n            <td height=\\"25\\">图文信息图片大小</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">是否显示标题</div>\r\n            </td>\r\n            <td height=\\"25\\">是否在图片下显示标题，0为不显示，1为显示</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td bgcolor=\\"#ffffff\\" height=\\"25\\">\r\n            <div align=\\"center\\">标题截取数</div>\r\n            </td>\r\n            <td height=\\"25\\">截取几个字符</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td bgcolor=\\"#ffffff\\" height=\\"25\\">\r\n            <div align=\\"center\\">操作类型说明</div>\r\n            </td>\r\n            <td height=\\"25\\">具体看操作类型说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">附加SQL条件</div>\r\n            </td>\r\n            <td height=\\"25\\">附加调用条件，如：&quot;title=\\''Elves\\''&quot;</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示排序</div>\r\n            </td>\r\n            <td height=\\"25\\">可指定按相应的字段排序，如：&quot;id desc&quot;</td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_FlashPixpic', 'mgxeflashpic', 1, '[mgxeflashpic]栏目ID/专题ID,显示总数,图片宽度,图片高度,是否显示标题,标题截取数,操作类型,停顿秒数,附加SQL条件,显示排序[/mgxeflashpic]', 0, 1, 9),
(19, '搜索关键字调用标签', '<p>栏目id为0，则显示所有栏目的关键字</p>\r\n<p>操作类型：0为搜索热门排行，1为最新搜索排行</p>', 'sys_ShowSearchKey', 'showsearch', 1, '[showsearch]每行显示条数,总条数,栏目id,操作类型[/showsearch]', 0, 1, 7),
(20, '循环子栏目数据标签', '<table cellspacing=\\"1\\" cellpadding=\\"3\\" width=\\"100%\\" bgcolor=\\"#dbeaf5\\" border=\\"0\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\"center\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">栏目ID</div>\r\n            </td>\r\n            <td height=\\"25\\">查看栏目ID点<a onclick=\\"window.open(\\''../ListClass.php\\'');\\"><strong><u>这里</u></strong></a>，单个为父栏目ID，多栏目可用&quot;,&quot;格开<br />\r\n            当前栏目ID用：\\''selfinfo\\''</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示条数</div>\r\n            </td>\r\n            <td height=\\"25\\">显示前几条记录</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">标题截取数</div>\r\n            </td>\r\n            <td height=\\"25\\">截取几个字符</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">是否显示栏目名</div>\r\n            </td>\r\n            <td height=\\"25\\">0为不显示，1为显示</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">操作类型</div>\r\n            </td>\r\n            <td height=\\"25\\">0：栏目最新<br />\r\n            1：栏目热门<br />\r\n            2：栏目推荐<br />\r\n            3：栏目评论排行<br />\r\n            4：栏目头条<br />\r\n            5：栏目下载排行</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">标签模板ID</div>\r\n            </td>\r\n            <td height=\\"25\\">查看标签模板ID点<a onclick=\\"window.open(\\''ListBqtemp.php\\'');\\"><strong><u>这里</u></strong></a></td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">只显示有标题图片</div>\r\n            </td>\r\n            <td height=\\"25\\">0为不限制，1为只显示有标题图片的信息</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示栏目数</div>\r\n            </td>\r\n            <td height=\\"25\\">0为不限制</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示头条操作类型</div>\r\n            </td>\r\n            <td height=\\"25\\">0：不显示栏目头条<br />\r\n            1：栏目内容简介<br />\r\n            2：栏目推荐信息<br />\r\n            3：栏目头条信息<br />\r\n            4：栏目最新信息</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">头条标题截取数</div>\r\n            </td>\r\n            <td height=\\"25\\">截取几个字符</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">头条简介截取数</div>\r\n            </td>\r\n            <td height=\\"25\\">截取几个字符</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">头条只显示有标题图片</div>\r\n            </td>\r\n            <td height=\\"25\\">0为不限制，1为只显示有标题图片的信息</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">附加SQL条件</div>\r\n            </td>\r\n            <td height=\\"25\\">附加调用条件，如：&quot;title=\\''Elves\\''&quot;</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示排序</div>\r\n            </td>\r\n            <td height=\\"25\\">可指定按相应的字段排序，如：&quot;id desc&quot;</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">头条的模板变量<br />\r\n            (标签模板的页面模板内容中使用)</div>\r\n            </td>\r\n            <td height=\\"25\\">[!--sonclass.id--]：信息ID<br />\r\n            [!--sonclass.title--]：信息标题<br />\r\n            [!--sonclass.oldtitle--]：信息标题(不截取字数)<br />\r\n            [!--sonclass.titlepic--]：标题图片<br />\r\n            [!--sonclass.titleurl--]：信息链接<br />\r\n            [!--sonclass.text--]：信息简介</td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_ForSonclassData', 'listsonclass', 1, '[listsonclass]栏目ID,显示条数,标题截取数,是否显示栏目名,操作类型,模板ID,只显示有标题图片,显示栏目数,显示头条操作类型,头条标题截取数,头条简介截取数,头条只显示有标题图片,附加SQL条件,显示排序[/listsonclass]', 0, 1, 9),
(21, '带模板的栏目导航标签', '<table cellspacing=\\"1\\" cellpadding=\\"3\\" width=\\"100%\\" bgcolor=\\"#dbeaf5\\" border=\\"0\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\"center\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">父栏目ID</div>\r\n            </td>\r\n            <td height=\\"25\\">查看栏目ID点<a onclick=\\"window.open(\\''../ListClass.php\\'');\\"><strong><u>这里</u></strong></a><br />\r\n            \\''0\\''为显示所有一级栏目<br />\r\n            \\''selfinfo\\''显示本栏目下级栏目</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">\r\n            <div align=\\"center\\">标签模板ID</div>\r\n            </div>\r\n            </td>\r\n            <td height=\\"25\\">查看标签模板ID点<a onclick=\\"window.open(\\''ListBqtemp.php\\'');\\"><strong><u>这里</u></strong></a></td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">&nbsp;</div>\r\n            </td>\r\n            <td height=\\"25\\">\r\n            <p>模板标签变量说明：[!--bclassname--]：父栏目名,[!--bclassurl--]：父栏目链接,[!--bclassid--]：父栏目id</p>\r\n            <p>list.var模板标签：<br />\r\n            [!--classurl--]：栏目链接,[!--classname--]：栏目名称,[!--classid--]：栏目id,[!--classimg--]：栏目图片,[!--intro--]：栏目简介,[!--num--]：信息数,[!--no--]：序号</p>\r\n            </td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">是否显示栏目信息数</div>\r\n            </td>\r\n            <td height=\\"25\\">0为不显示，1为显示</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示栏目数</div>\r\n            </td>\r\n            <td height=\\"25\\">0为不限制</td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_ShowClassByTemp', 'showclasstemp', 1, '[showclasstemp]父栏目ID,标签模板ID,是否显示栏目信息数,显示栏目数[/showclasstemp]', 0, 2, 6),
(24, '图库模型分页标签', '<p>\r\n<table cellspacing=\\"1\\" cellpadding=\\"3\\" width=\\"100%\\" bgcolor=\\"#dbeaf5\\" border=\\"0\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\"center\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">\r\n            <div align=\\"center\\">标签模板ID</div>\r\n            </div>\r\n            </td>\r\n            <td height=\\"25\\">查看标签模板ID点<a onclick=\\"window.open(\\''ListBqtemp.php\\'');\\"><strong><u>这里</u></strong></a></td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">&nbsp;</div>\r\n            </td>\r\n            <td height=\\"25\\">\r\n            <p><strong>模板标签变量说明：</strong><br />\r\n            图片集JS数组：[!--photor--]，缩略图导航：[!--smalldh--]<br />\r\n            分页导航：[!--select--]，标题分页导航：[!--titleselect--]，分页列表式导航：[!--listpage--]</p>\r\n            <p><strong>list.var模板标签：</strong><br />\r\n            图片名称：[!--picname--]，图片地址：[!--picurl--]</p>\r\n            </td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">导航图片宽度<br />\r\n            导航图片高度</div>\r\n            </td>\r\n            <td height=\\"25\\">0为按原图大小</td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n</p>', 'sys_PhotoMorepage', 'eshowphoto', 1, '[eshowphoto]标签模板ID,导航图片宽度,导航图片高度[/eshowphoto]', 0, 1, 7),
(25, '复选项输出函数', '<p>如：[echocheckbox]\\''title\\'',\\''&lt;br&gt;\\''[/echocheckbox]：表示按回车分隔输出title字段的项</p>', 'sys_EchoCheckboxFValue', 'echocheckbox', 1, '[echocheckbox]\\''字段\\'',\\''分隔符\\''[/echocheckbox]', 0, 3, 5),
(26, '相关链接标签', '<p><strong>标签模板ID</strong>：查看标签模板ID点<a onclick=\\"window.open(\\''ListBqtemp.php\\'');\\"><strong><u>这里</u></strong></a><br />\r\n<strong>操作类型</strong>：0为默认；1为按表；2为按栏目；3为按专题<br />\r\n<strong>操作对象</strong>：对应操作类型的表/栏目/专题。空则为默认。<br />\r\n<strong>是否显示栏目名</strong>：0为不显示；1为显示<br />\r\n<strong>只显示标题图片的信息</strong>：0为不限；1为只显示标题图片的信息</p>', 'sys_GetOtherLinkInfo', 'otherlink', 1, '[otherlink]标签模板ID,操作对象,调用条数,标题截取字数,是否显示栏目名,操作类型,只显示标题图片的信息[/otherlink]', 0, 1, 9),
(27, '评论调用标签', '<p><strong>标签模板ID</strong>：查看标签模板ID点<a onclick=\\"window.open(\\''ListBqtemp.php\\'');\\"><strong><u>这里</u></strong></a><br />\r\n<strong>栏目ID</strong>：0为不限调用栏目，父栏目会应用于子栏目<br />\r\n<strong>信息ID</strong>：0为不限<br />\r\n<strong>显示推荐评论</strong>：0为不限；1为只显示推荐评论<br />\r\n<strong>操作类型</strong>：0为按发布时间；1为按支持数；2为按反对数<br />\r\n<strong>标签模板说明</strong>：[!--title--]:信息标题；[!--titleurl--]:信息链接；[!--id--]:信息ID<br />\r\n[!--classid--]:栏目ID；[!--plid--]:评论ID；[!--username--]:发表者；[!--no--]:编号<br />\r\n[!--pltext--]:评论内容；[!--pltime--]:评论时间；[!--zcnum--]:支持数；[!--fdnum--]:反对数</p>', 'sys_ShowPlInfo', 'showplinfo', 1, '[showplinfo]调用条数,标签模板ID,栏目ID,信息ID,显示推荐评论,操作类型[/showplinfo]', 0, 3, 5),
(28, '循环栏目导航标签', '<p>\r\n<table cellspacing=\\"1\\" cellpadding=\\"3\\" width=\\"100%\\" bgcolor=\\"#dbeaf5\\" border=\\"0\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\"center\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">父栏目ID</div>\r\n            </td>\r\n            <td height=\\"25\\">查看栏目ID点<a onclick=\\"window.open(\\''../ListClass.php\\'');\\"><strong><u>这里</u></strong></a><br />\r\n            \\''0\\''为显示所有一级栏目<br />\r\n            \\''selfinfo\\''显示本栏目下级栏目<br />\r\n            多栏目固定调用可用&quot;,&quot;格开</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">\r\n            <div align=\\"center\\">标签模板ID</div>\r\n            </div>\r\n            </td>\r\n            <td height=\\"25\\">查看标签模板ID点<a onclick=\\"window.open(\\''ListBqtemp.php\\'');\\"><strong><u>这里</u></strong></a></td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">&nbsp;</div>\r\n            </td>\r\n            <td height=\\"25\\">\r\n            <p>模板标签变量说明：[!--bclassname--]：父栏目名,[!--bclassurl--]：父栏目链接,[!--bclassid--]：父栏目id，[!--bclassimg--]：父栏目图片,[!--bintro--]：父栏目简介,[!--bnum--]：父栏目信息数,[!--bno--]：父栏目序号</p>\r\n            <p>list.var模板标签：<br />\r\n            [!--classurl--]：栏目链接,[!--classname--]：栏目名称,[!--classid--]：栏目id,[!--classimg--]：栏目图片,[!--intro--]：栏目简介,[!--num--]：信息数,[!--no--]：序号</p>\r\n            </td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">是否显示栏目信息数</div>\r\n            </td>\r\n            <td height=\\"25\\">0为不显示，1为显示</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示栏目数</div>\r\n            </td>\r\n            <td height=\\"25\\">0为不限制</td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n</p>', 'sys_ForShowSonClass', 'listshowclass', 1, '[listshowclass]父栏目ID,标签模板ID,是否显示栏目信息数,显示栏目数[/listshowclass]', 0, 2, 6),
(29, '调用TAGS的信息标签', '<table cellspacing=\\"1\\" cellpadding=\\"3\\" width=\\"100%\\" bgcolor=\\"#dbeaf5\\" border=\\"0\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\"center\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">TAGS的ID</div>\r\n            </td>\r\n            <td height=\\"25\\">查看TAGS的ID点<a onclick=\\"window.open(\\''../tags/ListTags.php\\'');\\"><strong><u>这里</u></strong></a><br />\r\n            多个ID可以用,号格开，如\\''1,2\\''</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示条数</div>\r\n            </td>\r\n            <td height=\\"25\\">显示前几条记录</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">标题截取数</div>\r\n            </td>\r\n            <td height=\\"25\\">截取几个字符</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">标签模板ID</div>\r\n            </td>\r\n            <td height=\\"25\\">查看标签模板ID点<a onclick=\\"window.open(\\''ListBqtemp.php\\'');\\"><strong><u>这里</u></strong></a></td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">栏目ID</div>\r\n            </td>\r\n            <td height=\\"25\\">限制只调用某一个或多个栏目的信息<br />\r\n            多个ID可以用,号格开，如\\''1,2\\''</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">系统模型ID</div>\r\n            </td>\r\n            <td height=\\"25\\">限制只调用某一个或多个系统模型的信息<br />\r\n            多个ID可以用,号格开，如\\''1,2\\''</td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_eShowTagsInfo', 'tagsinfo', 0, '[tagsinfo]TAGS的ID,显示条数,标题截取数,标签模板ID,栏目ID,系统模型ID[/tagsinfo]', 0, 0, 9),
(30, '调用碎片的信息标签', '<table cellspacing=\\"1\\" cellpadding=\\"3\\" width=\\"100%\\" bgcolor=\\"#dbeaf5\\" border=\\"0\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\"center\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">碎片变量名</div>\r\n            </td>\r\n            <td height=\\"25\\">查看碎片变量名点<a onclick=\\"window.open(\\''../sp/ListSp.php\\'');\\"><strong><u>这里</u></strong></a></td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示条数</div>\r\n            </td>\r\n            <td height=\\"25\\">显示前几条记录</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">标题截取数</div>\r\n            </td>\r\n            <td height=\\"25\\">截取几个字符</td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n<br>\r\n<table cellspacing=\\"1\\" cellpadding=\\"3\\" width=\\"100%\\" bgcolor=\\"#dbeaf5\\" border=\\"0\\">\r\n  <tbody>\r\n    <tr> \r\n      <td colspan=\\"2\\"> <div align=\\"center\\">碎片标签模板变量说明</div></td>\r\n    </tr>\r\n    <tr bgcolor=\\"#ffffff\\"> \r\n      <td width=\\"34%\\" height=\\"25\\"> \r\n        <div align=\\"center\\">静态碎片</div></td>\r\n      <td width=\\"66%\\" height=\\"25\\">模板标签变量说明：[!--the.spname--]：碎片名称,[!--the.spid--]：碎片ID,[!--the.sppic--]：碎片效果图,[!--the.spsay--]：碎片描述 \r\n        <p>list.var模板标签：<br>\r\n          [!--title--]：标题,[!--oldtitle--]：标题ALT,[!--newstime--]：发布时间,[!--id--]：碎片信息ID,[!--titleurl--]：标题链接,[!--titlepic--]：标题缩图,[!--bigpic--]：标题大图,[!--titlepre--]：标题左边,[!--titlenext--]：标题右边,[!--smalltext--]：内容简介,[!--no.num--]：编号</p></td>\r\n    </tr>\r\n    <tr bgcolor=\\"#ffffff\\"> \r\n      <td height=\\"25\\"> <div align=\\"center\\">动态碎片</div></td>\r\n      <td height=\\"25\\">模板标签变量说明：[!--the.spname--]：碎片名称,[!--the.spid--]：碎片ID,[!--the.sppic--]：碎片效果图,[!--the.spsay--]：碎片描述 \r\n        <p>list.var模板标签：<br>\r\n          支持变量同模型信息调用</p></td>\r\n    </tr>\r\n    <tr bgcolor=\\"#ffffff\\"> \r\n      <td height=\\"25\\"> <div align=\\"center\\">代码碎片</div></td>\r\n      <td height=\\"25\\">无需标签模板，直接显示代码内容</td>\r\n    </tr>\r\n  </tbody>\r\n</table>\r\n', 'sys_eShowSpInfo', 'spinfo', 0, '[spinfo]碎片变量名,显示条数,标题截取数[/spinfo]', 0, 0, 9),
(31, '调用TAGS标签', '<table border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\" width=\\"100%\\" bgcolor=\\"#dbeaf5\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\"center\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">分类ID</div>\r\n            </td>\r\n            <td height=\\"25\\">\\''\\''空为不限制，查看TAGS分类ID点<a onclick=\\"window.open(\\''../tags/TagsClass.php\\'');\\"><strong><u>这里</u></strong></a><br />\r\n            多个可以用,号格开，如\\''1,2\\''<br />\r\n            内容页显示当前TAGS可以用\\''selfinfo\\''</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示数量</div>\r\n            </td>\r\n            <td height=\\"25\\">显示前几条记录，0为显示所有（\\''selfinfo\\''本设置无效）</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">每行显示数量</div>\r\n            </td>\r\n            <td height=\\"25\\">一行显示多少个TAGS，0为不换行</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示排序</div>\r\n            </td>\r\n            <td height=\\"25\\">使用默认设置\\''\\''空就可以，默认是\\''tagid desc\\''（\\''selfinfo\\''本设置无效）</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">只显示推荐</div>\r\n            </td>\r\n            <td height=\\"25\\">只显示推荐的TAGS，0为不限制，1为限制（\\''selfinfo\\''本设置无效）</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">推荐TAGS属性</div>\r\n            </td>\r\n            <td height=\\"25\\">如果是推荐的TAGS，内容是否要加粗或加红（\\''selfinfo\\''本设置无效）<br />\r\n            设置\\''s\\''表示加粗、\\''r\\''表示加红、同时加粗加红用\\''s,r\\''</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示间隔符</div>\r\n            </td>\r\n            <td height=\\"25\\">TAGS之间显示间隔符，默认是\\'' &amp;nbsp; \\''</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">是否显示信息数量</div>\r\n            </td>\r\n            <td height=\\"25\\">是否在TAGS后显示信息数量，0为不显示，1为显示（\\''selfinfo\\''本设置无效）</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">链接附加参数</div>\r\n            </td>\r\n            <td height=\\"25\\">可指定在TAGS链接后面增加参数，比如：\\''&amp;tempid=模板ID\\''</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">链接变量名</div>\r\n            </td>\r\n            <td height=\\"25\\">可指定在链接使用的变量名(需加引号)：tagname或tagid，默认为tagname，比如：\\''tagname\\''</td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_eShowTags', 'showtags', 0, '[showtags]分类ID,显示数量,每行显示数量,显示排序,只显示推荐,推荐TAGS属性,显示间隔符,是否显示信息数,链接附加参数,链接变量名[/showtags]', 0, 0, 9);

-- --------------------------------------------------------

--
-- 表的结构 `base_melvebqclass`
--

CREATE TABLE IF NOT EXISTS `base_melvebqclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` char(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `base_melvebqclass`
--

INSERT INTO `base_melvebqclass` (`classid`, `classname`) VALUES
(1, '信息调用'),
(2, '栏目调用'),
(3, '非信息调用'),
(4, '其它标签');

-- --------------------------------------------------------

--
-- 表的结构 `base_melvebqtemp`
--

CREATE TABLE IF NOT EXISTS `base_melvebqtemp` (
  `tempid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tempname` varchar(60) NOT NULL DEFAULT '',
  `modid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `temptext` text NOT NULL,
  `showdate` varchar(50) NOT NULL DEFAULT '',
  `listvar` text NOT NULL,
  `subnews` smallint(5) unsigned NOT NULL DEFAULT '0',
  `rownum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `docode` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tempid`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- 转存表中的数据 `base_melvebqtemp`
--

INSERT INTO `base_melvebqtemp` (`tempid`, `tempname`, `modid`, `temptext`, `showdate`, `listvar`, `subnews`, `rownum`, `classid`, `docode`) VALUES
(1, '子栏目导航标签模板', 1, '| [!--Elvesnews.listtemp--]<!--list.var1-->[!--Elvesnews.listtemp--]', 'Y-m-d H:i:s', '<a href=\\"[!--classurl--]\\">[!--classname--]</a> | ', 0, 1, 0, 0),
(2, '标题列表模板', 1, '[!--Elvesnews.listtemp--]<!--list.var1-->[!--Elvesnews.listtemp--]', 'Y-m-d H:i:s', '<li><a href="[!--titleurl--]" title="[!--oldtitle--]">[!--title--]</a></li>', 0, 1, 0, 0),
(3, '标题+简介', 1, '[!--Elvesnews.listtemp--]<!--list.var1-->[!--Elvesnews.listtemp--]', 'm-d', '<li><p><strong><a href="[!--titleurl--]" title="[!--oldtitle--]">[!--title--]</a></strong>[!--smalltext--] </p></li>', 60, 1, 0, 0),
(4, '头条相关', 1, '[!--Elvesnews.listtemp--]<!--list.var1-->　<!--list.var2-->[!--Elvesnews.listtemp--]', 'Y-m-d H:i:s', '<a href="[!--titleurl--]" title="[!--oldtitle--]">·[!--title--]</a>', 0, 2, 0, 0),
(5, '图片+标题+简介', 1, '[!--Elvesnews.listtemp--]\r\n<!--list.var1-->\r\n[!--Elvesnews.listtemp--]', 'Y-m-d H:i:s', '<table width=\\"94%\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"0\\" cellspacing=\\"6\\" class=\\"picText\\">\r\n<tr valign=\\"top\\">\r\n<td><a href=\\"[!--titleurl--]\\" target=\\"_blank\\"><img width=\\"70\\" height=\\"78\\" src=\\"[!--titlepic--]\\" alt=\\"[!--oldtitle--]\\" /></a></td>\r\n<td><strong><a href=\\"[!--titleurl--]\\" title=\\"[!--oldtitle--]\\">[!--title--]</a></strong>[!--smalltext--]</td>\r\n</tr>\r\n</table>', 56, 1, 0, 0),
(7, '循环子栏目标签', 1, '<table width="100%" border="0" cellspacing="0" cellpadding="0" class="title">\r\n<tr>\r\n<td><strong>[!--the.classname--]</strong></td>\r\n<td align="right"><a href="[!--the.classurl--]">更多&gt;&gt;</a></td>\r\n</tr>\r\n</table>\r\n<table width="100%" border="0" cellspacing="0" cellpadding="0" class="box">\r\n<tr>\r\n<td><ul>\r\n       [!--Elvesnews.listtemp--]\r\n       <!--list.var1-->\r\n       [!--Elvesnews.listtemp--]\r\n</ul>\r\n</td>\r\n</tr>\r\n</table>', 'Y-m-d', '<li><a href="[!--titleurl--]" title="[!--oldtitle--]">[!--title--]</a> <span>[!--newstime--]</span></li>', 0, 1, 0, 0),
(8, '头条标题', 1, '[!--Elvesnews.listtemp--]\r\n<!--list.var1-->\r\n[!--Elvesnews.listtemp--]', 'Y-m-d H:i:s', '<strong><a href="[!--titleurl--]">[!--title--]</a></strong>\r\n<p>　　[!--smalltext--]</p>', 150, 1, 0, 0),
(9, '标题+软件简介', 2, '[!--Elvesnews.listtemp--]<!--list.var1-->[!--Elvesnews.listtemp--]', 'Y-m-d H:i:s', '<li><p><strong><a href=\\"[!--titleurl--]\\" title=\\"[!--oldtitle--]\\">[!--title--]</a></strong>[!--softsay--]</p></li>', 50, 1, 0, 0),
(10, '排行列表', 1, '[!--Elvesnews.listtemp--]<!--list.var1-->[!--Elvesnews.listtemp--]', 'Y-m-d H:i:s', '<li class="no[!--no.num--]"><a href="[!--titleurl--]" title="[!--oldtitle--]">[!--title--]</a></li>', 0, 1, 0, 0),
(11, '图片集分页模板', 1, '<script type=\\"text/javascript\\">\r\n        var photosr=new Array();\r\n        [!--photor--]\r\n        function GotoPhPage(page){\r\n                page=parseInt(page);\r\n                document.getElementById(\\"showpagephoto\\").innerHTML=photosr[page];\r\n                document.ViewPhotoForm.thisphpage.value=page;\r\n                document.ViewPhotoForm.tothephpage.options[page-1].selected=true;\r\n        }\r\n        //上一页\r\n        function PriPhPage(){\r\n                var thispage=parseInt(document.ViewPhotoForm.thisphpage.value);\r\n                var num=photosr.length;\r\n                if(thispage<=1)\r\n                {\r\n                        return false;\r\n                }\r\n                GotoPhPage(thispage-1);\r\n        }\r\n        //下一页\r\n        function NextPhPage(){\r\n                var thispage=parseInt(document.ViewPhotoForm.thisphpage.value);\r\n                var num=photosr.length;\r\n                if(thispage>=num-1)\r\n                {\r\n                        return false;\r\n                }\r\n                GotoPhPage(thispage+1);\r\n        }\r\n        function PhAutoPlay(){\r\n                var sec=parseInt(document.ViewPhotoForm.autoplaysec.value);\r\n                var i;\r\n                var num=photosr.length;\r\n                for(i=1;i<=sec;i++)\r\n                {\r\n                        if(document.ViewPhotoForm.autophstop.value==0)\r\n                        {\r\n                                window.setTimeout(\\"PhAutoPlayExe(\\"+i+\\",\\"+sec+\\")\\",i*1000);\r\n                        }\r\n                        else\r\n                        {\r\n                                break;\r\n                        }\r\n                }\r\n        }\r\n        function PhAutoPlayExe(num,sec){\r\n                var t;\r\n                if(document.ViewPhotoForm.autophstop.value==1)\r\n                {\r\n                        return \\"\\";\r\n                }\r\n                if(num==sec) \r\n                {\r\n                        t=NextPhPage();\r\n                        if(t==false)\r\n                        {\r\n                                GotoPhPage(1);\r\n                        }\r\n                        PhAutoPlay();\r\n                } \r\n        }\r\n        </script>\r\n        \r\n<table width=\\"100%\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"3\\" cellspacing=\\"1\\">\r\n  <tr> \r\n    <td height=\\"25\\" id=\\"showpagephoto\\" align=\\"center\\"> \r\n      <!--list.var1-->\r\n    </td>\r\n  </tr>\r\n  <form name=\\"ViewPhotoForm\\" id=\\"ViewPhotoForm\\" method=\\"POST\\" action=\\"\\">\r\n    <tr> \r\n      <td height=\\"25\\"> <div align=\\"center\\"> \r\n          <input type=\\"button\\" name=\\"Submit\\" value=\\"上一页\\" onclick=\\"PriPhPage();\\">\r\n          &nbsp;&nbsp; \r\n          <select name=\\"tothephpage\\" onchange=\\"GotoPhPage(this.options[this.selectedIndex].value)\\">\r\n            [!--select--]\r\n          </select>\r\n          &nbsp;&nbsp; \r\n          <input type=\\"button\\" name=\\"Submit2\\" value=\\"下一页\\" onclick=\\"NextPhPage();\\">\r\n          <input name=\\"thisphpage\\" type=\\"hidden\\" value=\\"1\\">\r\n        </div></td>\r\n    </tr>\r\n    <tr>\r\n      <td height=\\"25\\"><div align=\\"center\\">\r\n          <select name=\\"autoplaysec\\">\r\n            <option value=\\"1\\">1秒</option>\r\n            <option value=\\"2\\">2秒</option>\r\n            <option value=\\"3\\" selected>3秒</option>\r\n            <option value=\\"4\\">4秒</option>\r\n            <option value=\\"5\\">5秒</option>\r\n            <option value=\\"6\\">6秒</option>\r\n            <option value=\\"7\\">7秒</option>\r\n            <option value=\\"8\\">8秒</option>\r\n            <option value=\\"9\\">9秒</option>\r\n            <option value=\\"10\\">10秒</option>\r\n          </select>\r\n                  <input name=\\"autophstop\\" type=\\"hidden\\" value=\\"0\\">\r\n          <input type=\\"button\\" name=\\"Submit3\\" value=\\"自动播放\\" onclick=\\"document.ViewPhotoForm.autophstop.value=0;PhAutoPlay();\\">\r\n          &nbsp;<input type=\\"button\\" name=\\"Submit32\\" value=\\"停止播放\\" onclick=\\"document.ViewPhotoForm.autophstop.value=1;\\">\r\n        </div></td>\r\n    </tr>\r\n  </form>\r\n</table>\r\n<table width=\\"500\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"3\\" cellspacing=\\"1\\">\r\n<tr><td>\r\n<marquee  behavior=alternate ONMOUSEOUT=\\"this.scrollDelay=1\\" ONMOUSEOVER=\\"this.scrollDelay=600\\"  scrollamount=1  SCROLLDELAY=1  border=0  scrolldelay=70  width=\\"100%\\"  align=middle>\r\n        [!--smalldh--]\r\n</marquee>\r\n</td></tr></table>', 'Y-m-d H:i:s', '<a href=\\''#elve\\'' onclick=\\''NextPhPage();\\'' title=\\''点击进入下一张图片\\''><img src=\\''[!--picurl--]\\'' alt=\\''[!--picname--]\\'' border=1 class=\\''photoresize\\''></a><br><span style=\\''line-height=18pt\\''>[!--picname--]</span>', 0, 1, 0, 0),
(12, '栏目tabs导航', 1, '[!--Elvesnews.listtemp--]<!--list.var1-->[!--Elvesnews.listtemp--]', 'Y-m-d H:i:s', '<li id="tabnav_btn_[!--no--]" onmouseover="tabit(this)"><a href="[!--classurl--]">[!--classname--]</a></li>', 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `base_melvebqtempclass`
--

CREATE TABLE IF NOT EXISTS `base_melvebqtempclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` char(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melvebuybak`
--

CREATE TABLE IF NOT EXISTS `base_melvebuybak` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` char(20) NOT NULL DEFAULT '',
  `card_no` char(120) NOT NULL DEFAULT '',
  `buytime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cardfen` int(10) unsigned NOT NULL DEFAULT '0',
  `money` int(10) unsigned NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `userdate` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melvebuygroup`
--

CREATE TABLE IF NOT EXISTS `base_melvebuygroup` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `gname` varchar(255) NOT NULL DEFAULT '',
  `gmoney` int(10) unsigned NOT NULL DEFAULT '0',
  `gfen` int(10) unsigned NOT NULL DEFAULT '0',
  `gdate` int(10) unsigned NOT NULL DEFAULT '0',
  `ggroupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `gzgroupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `buygroupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `gsay` text NOT NULL,
  `myorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melvecard`
--

CREATE TABLE IF NOT EXISTS `base_melvecard` (
  `cardid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `card_no` char(30) NOT NULL DEFAULT '',
  `password` char(20) NOT NULL DEFAULT '',
  `money` int(10) unsigned NOT NULL DEFAULT '0',
  `cardfen` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` date NOT NULL DEFAULT '0000-00-00',
  `cardtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `carddate` int(10) unsigned NOT NULL DEFAULT '0',
  `cdgroupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `cdzgroupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cardid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melveclass`
--

CREATE TABLE IF NOT EXISTS `base_melveclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `bclassid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `classname` varchar(50) NOT NULL DEFAULT '',
  `sonclass` text NOT NULL,
  `is_zt` tinyint(1) NOT NULL DEFAULT '0',
  `lencord` smallint(6) NOT NULL DEFAULT '0',
  `link_num` tinyint(4) NOT NULL DEFAULT '0',
  `newstempid` smallint(6) NOT NULL DEFAULT '0',
  `onclick` int(11) NOT NULL DEFAULT '0',
  `listtempid` smallint(6) NOT NULL DEFAULT '0',
  `featherclass` text NOT NULL,
  `islast` tinyint(1) NOT NULL DEFAULT '0',
  `classpath` text NOT NULL,
  `classtype` varchar(10) NOT NULL DEFAULT '',
  `newspath` varchar(20) NOT NULL DEFAULT '',
  `filename` tinyint(1) NOT NULL DEFAULT '0',
  `filetype` varchar(10) NOT NULL DEFAULT '',
  `openpl` tinyint(1) NOT NULL DEFAULT '0',
  `openadd` tinyint(1) NOT NULL DEFAULT '0',
  `newline` int(11) NOT NULL DEFAULT '0',
  `hotline` int(11) NOT NULL DEFAULT '0',
  `goodline` int(11) NOT NULL DEFAULT '0',
  `classurl` varchar(200) NOT NULL DEFAULT '',
  `groupid` smallint(6) NOT NULL DEFAULT '0',
  `myorder` smallint(6) NOT NULL DEFAULT '0',
  `filename_qz` varchar(20) NOT NULL DEFAULT '',
  `hotplline` tinyint(4) NOT NULL DEFAULT '0',
  `modid` smallint(6) NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `firstline` tinyint(4) NOT NULL DEFAULT '0',
  `bname` varchar(50) NOT NULL DEFAULT '',
  `islist` tinyint(1) NOT NULL DEFAULT '0',
  `searchtempid` smallint(6) NOT NULL DEFAULT '0',
  `tid` smallint(6) NOT NULL DEFAULT '0',
  `tbname` varchar(60) NOT NULL DEFAULT '',
  `maxnum` int(11) NOT NULL DEFAULT '0',
  `checkpl` tinyint(1) NOT NULL DEFAULT '0',
  `down_num` tinyint(4) NOT NULL DEFAULT '0',
  `online_num` tinyint(4) NOT NULL DEFAULT '0',
  `listorder` varchar(50) NOT NULL DEFAULT '',
  `reorder` varchar(50) NOT NULL DEFAULT '',
  `intro` text NOT NULL,
  `classimg` varchar(255) NOT NULL DEFAULT '',
  `jstempid` smallint(6) NOT NULL DEFAULT '0',
  `addinfofen` int(11) NOT NULL DEFAULT '0',
  `listdt` tinyint(1) NOT NULL DEFAULT '0',
  `showclass` tinyint(1) NOT NULL DEFAULT '0',
  `showdt` tinyint(1) NOT NULL DEFAULT '0',
  `checkqadd` tinyint(1) NOT NULL DEFAULT '0',
  `qaddlist` tinyint(1) NOT NULL DEFAULT '0',
  `qaddgroupid` text NOT NULL,
  `qaddshowkey` tinyint(1) NOT NULL DEFAULT '0',
  `adminqinfo` tinyint(1) NOT NULL DEFAULT '0',
  `doctime` smallint(6) NOT NULL DEFAULT '0',
  `classpagekey` varchar(255) NOT NULL DEFAULT '',
  `dtlisttempid` smallint(6) NOT NULL DEFAULT '0',
  `classtempid` smallint(6) NOT NULL DEFAULT '0',
  `nreclass` tinyint(1) NOT NULL DEFAULT '0',
  `nreinfo` tinyint(1) NOT NULL DEFAULT '0',
  `nrejs` tinyint(1) NOT NULL DEFAULT '0',
  `nottobq` tinyint(1) NOT NULL DEFAULT '0',
  `ipath` varchar(255) NOT NULL DEFAULT '',
  `addreinfo` tinyint(1) NOT NULL DEFAULT '0',
  `haddlist` tinyint(4) NOT NULL DEFAULT '0',
  `sametitle` tinyint(1) NOT NULL DEFAULT '0',
  `definfovoteid` smallint(6) NOT NULL DEFAULT '0',
  `wburl` varchar(255) NOT NULL DEFAULT '',
  `qeditchecked` tinyint(1) NOT NULL DEFAULT '0',
  `wapstyleid` smallint(6) NOT NULL DEFAULT '0',
  `repreinfo` tinyint(1) NOT NULL DEFAULT '0',
  `pltempid` smallint(6) NOT NULL DEFAULT '0',
  `cgroupid` text NOT NULL,
  `yhid` smallint(6) NOT NULL DEFAULT '0',
  `wfid` smallint(6) NOT NULL DEFAULT '0',
  `cgtoinfo` tinyint(1) NOT NULL DEFAULT '0',
  `bdinfoid` varchar(25) NOT NULL DEFAULT '',
  `repagenum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `keycid` smallint(6) NOT NULL DEFAULT '0',
  `allinfos` int(10) unsigned NOT NULL DEFAULT '0',
  `infos` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`classid`),
  KEY `bclassid` (`bclassid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melveclassadd`
--

CREATE TABLE IF NOT EXISTS `base_melveclassadd` (
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `classtext` mediumtext NOT NULL,
  `ttids` text NOT NULL,
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `base_melveclassf`
--

CREATE TABLE IF NOT EXISTS `base_melveclassf` (
  `fid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `f` varchar(30) NOT NULL DEFAULT '',
  `fname` varchar(30) NOT NULL DEFAULT '',
  `fform` varchar(20) NOT NULL DEFAULT '',
  `fhtml` mediumtext NOT NULL,
  `fzs` varchar(255) NOT NULL DEFAULT '',
  `myorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ftype` varchar(30) NOT NULL DEFAULT '',
  `flen` varchar(20) NOT NULL DEFAULT '',
  `fvalue` text NOT NULL,
  `fformsize` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melveclassnavcache`
--

CREATE TABLE IF NOT EXISTS `base_melveclassnavcache` (
  `navtype` char(16) NOT NULL DEFAULT '',
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `modid` smallint(5) unsigned NOT NULL DEFAULT '0',
  KEY `navtype` (`navtype`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `base_melveclassnavcache`
--

INSERT INTO `base_melveclassnavcache` (`navtype`, `userid`, `modid`) VALUES
('listclass', 0, 0),
('listmelve', 0, 0),
('jsclass', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `base_melveclasstemp`
--

CREATE TABLE IF NOT EXISTS `base_melveclasstemp` (
  `tempid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tempname` varchar(30) NOT NULL DEFAULT '',
  `temptext` mediumtext NOT NULL,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`tempid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `base_melveclasstemp`
--

INSERT INTO `base_melveclasstemp` (`tempid`, `tempname`, `temptext`, `classid`) VALUES
(1, '通用一级栏目模板', '<!DOCTYPE html PUBLIC \\"-//W3C//DTD XHTML 1.0 Transitional//EN\\" \\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\">\r\n<html xmlns=\\"http://www.w3.org/1999/xhtml\\">\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n<title>[!--pagetitle--] - Powered by ElvesCMS</title>\r\n<meta name=\\"keywords\\" content=\\"[!--pagekey--]\\" />\r\n<meta name=\\"description\\" content=\\"[!--pagedes--]\\" />\r\n<link href=\\"[!--news.url--]skin/default/css/style.css\\" rel=\\"stylesheet\\" type=\\"text/css\\" />\r\n<script type=\\"text/javascript\\" src=\\"[!--news.url--]skin/default/js/tabs.js\\"></script>\r\n</head>\r\n<body class=\\"channle\\">\r\n[!--temp.header--]\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"10\\" cellpadding=\\"0\\">\r\n<tr valign=\\"top\\">\r\n<td class=\\"news_list\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"position\\">\r\n<tr>\r\n<td>您当前的位置：[!--newsnav--]</td>\r\n</tr>\r\n</table>\r\n[listsonclass]\\''selfinfo\\'',5,38,0,0,7,0,0[/listsonclass]</td>\r\n<td class=\\"sider\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title\\">\r\n<tr>\r\n<td><strong>推荐资讯</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"8\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td>[mgxmelvepic]\\''selfinfo\\'',2,4,128,90,1,20,2[/mgxmelvepic]\r\n</td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n<tr>\r\n<td><strong>最后更新</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><ul>\r\n[elveinfo]\\''selfinfo\\'',10,44,0,0,2,0[/elveinfo] \r\n</ul></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n<tr>\r\n<td><strong>热门点击</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><ol class=\\"rank\\">\r\n[elveinfo]\\''selfinfo\\'',10,40,0,1,10,0[/elveinfo] \r\n</ol></td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>', 0),
(2, '分类信息一级栏目模板', '<!DOCTYPE html PUBLIC \\"-//W3C//DTD XHTML 1.0 Transitional//EN\\" \\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\">\r\n<html xmlns=\\"http://www.w3.org/1999/xhtml\\">\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n<title>[!--pagetitle--] - Powered by ElvesCMS</title>\r\n<meta name=\\"keywords\\" content=\\"[!--pagekey--]\\" />\r\n<meta name=\\"description\\" content=\\"[!--pagedes--]\\" />\r\n<link href=\\"[!--news.url--]skin/default/css/style.css\\" rel=\\"stylesheet\\" type=\\"text/css\\" />\r\n<script type=\\"text/javascript\\" src=\\"[!--news.url--]skin/default/js/tabs.js\\"></script>\r\n</head>\r\n<body class=\\"channle\\">\r\n[!--temp.header--]\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"10\\" cellpadding=\\"0\\">\r\n<tr valign=\\"top\\">\r\n<td class=\\"news_list\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"position\\">\r\n<tr>\r\n<td>您当前的位置：[!--newsnav--]</td>\r\n</tr>\r\n</table>\r\n[listsonclass]\\''selfinfo\\'',5,38,0,0,7,0,0[/listsonclass]</td>\r\n<td class=\\"sider\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title\\">\r\n<tr>\r\n<td><strong>分类信息搜索</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><form action=\\"[!--news.url--]core/search/index.php\\" method=\\"post\\" name=\\"searchform\\" id=\\"searchform\\">\r\n<table width=\\"98%\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"0\\" cellspacing=\\"6\\">\r\n<input type=\\"hidden\\" name=\\"tbname\\" value=\\"info\\">\r\n<input type=\\"hidden\\" name=\\"tempid\\" value=\\"1\\">\r\n<tr>\r\n<td><input name=\\"keyboard\\" type=\\"text\\" class=\\"inputText\\" id=\\"keyboard\\" size=\\"18\\" />\r\n<select name=\\"show\\">\r\n<option value=\\"title,smalltext,myarea\\" selected=\\"selected\\">不限</option>\r\n<option value=\\"title\\">信息标题</option>\r\n<option value=\\"smalltext\\">信息内容</option>\r\n<option value=\\"myarea\\">所在地</option>\r\n</select></td>\r\n</tr>\r\n<tr>\r\n<td><select name=\\"classid\\">\r\n<option value=\\''9\\''>所有分类</option>\r\n<option value=\\''10\\''>|-房屋信息</option>\r\n<option value=\\''11\\'' >&nbsp;&nbsp;|-房屋求租</option>\r\n<option value=\\''12\\'' >&nbsp;&nbsp;|-房屋出租</option>\r\n<option value=\\''13\\'' >&nbsp;&nbsp;|-房屋求购</option>\r\n<option value=\\''14\\'' >&nbsp;&nbsp;|-房屋出售</option>\r\n<option value=\\''15\\'' >&nbsp;&nbsp;|-办公用房</option>\r\n<option value=\\''16\\'' >&nbsp;&nbsp;|-旺铺门面</option>\r\n<option value=\\''17\\''>|-跳蚤市场</option>\r\n<option value=\\''18\\'' >&nbsp;&nbsp;|-电脑配件</option>\r\n<option value=\\''19\\'' >&nbsp;&nbsp;|-电器数码</option>\r\n<option value=\\''20\\'' >&nbsp;&nbsp;|-通讯产品</option>\r\n<option value=\\''21\\'' >&nbsp;&nbsp;|-居家用品</option>\r\n<option value=\\''22\\''>|-同城生活</option>\r\n<option value=\\''23\\'' >&nbsp;&nbsp;|-本地新闻</option>\r\n<option value=\\''24\\'' >&nbsp;&nbsp;|-购物打折</option>\r\n<option value=\\''25\\'' >&nbsp;&nbsp;|-旅游活动</option>\r\n<option value=\\''26\\'' >&nbsp;&nbsp;|-便民告示</option>\r\n<option value=\\''27\\''>|-求职招聘</option>\r\n<option value=\\''28\\'' >&nbsp;&nbsp;|-工程技术</option>\r\n<option value=\\''29\\'' >&nbsp;&nbsp;|-财务会计</option>\r\n<option value=\\''30\\'' >&nbsp;&nbsp;|-餐饮行业</option>\r\n<option value=\\''31\\'' >&nbsp;&nbsp;|-经营管理</option>\r\n</select>\r\n<input name=\\"Submit2\\" type=\\"image\\" value=\\"搜索\\" src=\\"[!--news.url--]skin/default/images/search.gif\\" />　\r\n[<a href=\\"[!--news.url--]core/DoInfo/ChangeClass.php?mid=8\\" target=\\"_blank\\">发布信息</a>]</td>\r\n</tr>\r\n</table>\r\n</form></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title\\">\r\n<tr>\r\n<td><strong>地区导航</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td>[!--temp.infoarea--]</td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n<tr>\r\n<td><strong>分类导航</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td>[!--temp.infoclassnav--]</td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n<tr>\r\n<td><strong>热门点击</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><ol class=\\"rank\\">\r\n[elveinfo]\\''selfinfo\\'',10,40,0,1,10,0[/elveinfo] \r\n</ol></td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>', 0);

-- --------------------------------------------------------

--
-- 表的结构 `base_melveclasstempclass`
--

CREATE TABLE IF NOT EXISTS `base_melveclasstempclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` char(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melveclass_stats`
--

CREATE TABLE IF NOT EXISTS `base_melveclass_stats` (
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `uptime` int(10) unsigned NOT NULL DEFAULT '0',
  `pvall` int(10) unsigned NOT NULL DEFAULT '0',
  `pvyear` int(10) unsigned NOT NULL DEFAULT '0',
  `pvhalfyear` int(10) unsigned NOT NULL DEFAULT '0',
  `pvquarter` int(10) unsigned NOT NULL DEFAULT '0',
  `pvmonth` int(10) unsigned NOT NULL DEFAULT '0',
  `pvweek` int(10) unsigned NOT NULL DEFAULT '0',
  `pvday` int(10) unsigned NOT NULL DEFAULT '0',
  `pvyesterday` int(10) unsigned NOT NULL DEFAULT '0',
  `ipall` int(10) unsigned NOT NULL DEFAULT '0',
  `ipyear` int(10) unsigned NOT NULL DEFAULT '0',
  `iphalfyear` int(10) unsigned NOT NULL DEFAULT '0',
  `ipquarter` int(10) unsigned NOT NULL DEFAULT '0',
  `ipmonth` int(10) unsigned NOT NULL DEFAULT '0',
  `ipweek` int(10) unsigned NOT NULL DEFAULT '0',
  `ipday` int(10) unsigned NOT NULL DEFAULT '0',
  `ipyesterday` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `base_melveclass_stats_ip`
--

CREATE TABLE IF NOT EXISTS `base_melveclass_stats_ip` (
  `ip` char(21) NOT NULL DEFAULT '',
  PRIMARY KEY (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `base_melveclass_stats_set`
--

CREATE TABLE IF NOT EXISTS `base_melveclass_stats_set` (
  `openstats` tinyint(1) NOT NULL DEFAULT '0',
  `pvtime` int(10) unsigned NOT NULL DEFAULT '0',
  `statsdate` int(10) unsigned NOT NULL DEFAULT '0',
  `changedate` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `base_melveclass_stats_set`
--

INSERT INTO `base_melveclass_stats_set` (`openstats`, `pvtime`, `statsdate`, `changedate`) VALUES
(1, 3600, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `base_melvediggips`
--

CREATE TABLE IF NOT EXISTS `base_melvediggips` (
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL DEFAULT '0',
  `ips` mediumtext NOT NULL,
  KEY `classid` (`classid`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `base_melvedo`
--

CREATE TABLE IF NOT EXISTS `base_melvedo` (
  `doid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `doname` varchar(60) NOT NULL DEFAULT '',
  `dotime` smallint(6) NOT NULL DEFAULT '0',
  `isopen` tinyint(1) NOT NULL DEFAULT '0',
  `doing` tinyint(4) NOT NULL DEFAULT '0',
  `classid` text NOT NULL,
  `lasttime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`doid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `base_melvedo`
--

INSERT INTO `base_melvedo` (`doid`, `doname`, `dotime`, `isopen`, `doing`, `classid`, `lasttime`) VALUES
(1, '自动刷新首页', 12, 0, 0, ',', 1273215883);

-- --------------------------------------------------------

--
-- 表的结构 `base_melvedolog`
--

CREATE TABLE IF NOT EXISTS `base_melvedolog` (
  `logid` bigint(20) NOT NULL AUTO_INCREMENT,
  `logip` varchar(20) NOT NULL DEFAULT '',
  `logtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `username` varchar(30) NOT NULL DEFAULT '',
  `melve` varchar(30) NOT NULL DEFAULT '',
  `doing` varchar(255) NOT NULL DEFAULT '',
  `pubid` bigint(16) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`logid`),
  KEY `pubid` (`pubid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `base_melvedolog`
--

INSERT INTO `base_melvedolog` (`logid`, `logip`, `logtime`, `username`, `melve`, `doing`, `pubid`) VALUES
(1, '::1', '2013-12-07 19:40:10', 'ADmegic', 'login', '---', 0);

-- --------------------------------------------------------

--
-- 表的结构 `base_melvedownerror`
--

CREATE TABLE IF NOT EXISTS `base_melvedownerror` (
  `errorid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `errortext` varchar(255) NOT NULL DEFAULT '',
  `errortime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `errorip` varchar(20) NOT NULL DEFAULT '',
  `email` varchar(80) NOT NULL DEFAULT '',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `cid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`errorid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melvedownrecord`
--

CREATE TABLE IF NOT EXISTS `base_melvedownrecord` (
  `id` int(11) NOT NULL DEFAULT '0',
  `pathid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `title` varchar(120) NOT NULL DEFAULT '',
  `cardfen` int(11) NOT NULL DEFAULT '0',
  `truetime` int(11) NOT NULL DEFAULT '0',
  `classid` smallint(6) NOT NULL DEFAULT '0',
  `online` tinyint(1) NOT NULL DEFAULT '0',
  KEY `userid` (`userid`),
  KEY `truetime` (`truetime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `base_melvedownurlqz`
--

CREATE TABLE IF NOT EXISTS `base_melvedownurlqz` (
  `urlid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `urlname` varchar(30) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `downtype` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`urlid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melveerrorclass`
--

CREATE TABLE IF NOT EXISTS `base_melveerrorclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melvef`
--

CREATE TABLE IF NOT EXISTS `base_melvef` (
  `fid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `f` varchar(30) NOT NULL DEFAULT '',
  `fname` varchar(30) NOT NULL DEFAULT '',
  `fform` varchar(20) NOT NULL DEFAULT '',
  `fhtml` mediumtext NOT NULL,
  `fzs` varchar(255) NOT NULL DEFAULT '',
  `isadd` tinyint(1) NOT NULL DEFAULT '0',
  `isshow` tinyint(1) NOT NULL DEFAULT '0',
  `iscj` tinyint(1) NOT NULL DEFAULT '0',
  `cjhtml` mediumtext NOT NULL,
  `myorder` smallint(6) NOT NULL DEFAULT '0',
  `ftype` varchar(30) NOT NULL DEFAULT '',
  `flen` varchar(20) NOT NULL DEFAULT '',
  `dotemp` tinyint(1) NOT NULL DEFAULT '0',
  `tid` smallint(6) NOT NULL DEFAULT '0',
  `tbname` varchar(60) NOT NULL DEFAULT '',
  `savetxt` tinyint(1) NOT NULL DEFAULT '0',
  `fvalue` text NOT NULL,
  `iskey` tinyint(1) NOT NULL DEFAULT '0',
  `tobr` tinyint(1) NOT NULL DEFAULT '0',
  `dohtml` tinyint(1) NOT NULL DEFAULT '0',
  `qfhtml` mediumtext NOT NULL,
  `isonly` tinyint(1) NOT NULL DEFAULT '0',
  `linkfieldval` varchar(30) NOT NULL DEFAULT '',
  `samedata` tinyint(1) NOT NULL DEFAULT '0',
  `fformsize` varchar(12) NOT NULL DEFAULT '',
  `tbdataf` tinyint(1) NOT NULL DEFAULT '0',
  `ispage` tinyint(1) NOT NULL DEFAULT '0',
  `adddofun` varchar(255) NOT NULL DEFAULT '',
  `editdofun` varchar(255) NOT NULL DEFAULT '',
  `qadddofun` varchar(255) NOT NULL DEFAULT '',
  `qeditdofun` varchar(255) NOT NULL DEFAULT '',
  `linkfieldtb` varchar(60) NOT NULL DEFAULT '',
  `linkfieldshow` varchar(30) NOT NULL DEFAULT '',
  `editorys` tinyint(1) NOT NULL DEFAULT '0',
  `issmalltext` tinyint(1) NOT NULL DEFAULT '0',
  `fmvnum` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`fid`),
  KEY `tid` (`tid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=107 ;

--
-- 转存表中的数据 `base_melvef`
--

INSERT INTO `base_melvef` (`fid`, `f`, `fname`, `fform`, `fhtml`, `fzs`, `isadd`, `isshow`, `iscj`, `cjhtml`, `myorder`, `ftype`, `flen`, `dotemp`, `tid`, `tbname`, `savetxt`, `fvalue`, `iskey`, `tobr`, `dohtml`, `qfhtml`, `isonly`, `linkfieldval`, `samedata`, `fformsize`, `tbdataf`, `ispage`, `adddofun`, `editdofun`, `qadddofun`, `qeditdofun`, `linkfieldtb`, `linkfieldshow`, `editorys`, `issmalltext`, `fmvnum`) VALUES
(1, 'title', '标题', 'text', '<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\" bgcolor=\\"#DBEAF5\\">\r\n<tr> \r\n  <td height=\\"25\\" bgcolor=\\"#FFFFFF\\">\r\n	<?=$tts?\\"<select name=\\''ttid\\''><option value=\\''0\\''>标题分类</option>$tts</select>\\":\\"\\"?>\r\n	<input type=text name=title value=\\"<?=ehtmlspecialchars(stripSlashes($r[title]))?>\\" size=\\"60\\"> \r\n	<input type=\\"button\\" name=\\"button\\" value=\\"图文\\" onclick=\\"document.add.title.value=document.add.title.value+\\''(图文)\\'';\\"> \r\n  </td>\r\n</tr>\r\n<tr> \r\n  <td height=\\"25\\" bgcolor=\\"#FFFFFF\\">属性: \r\n	<input name=\\"titlefont[b]\\" type=\\"checkbox\\" value=\\"b\\"<?=$titlefontb?>>粗体\r\n	<input name=\\"titlefont[i]\\" type=\\"checkbox\\" value=\\"i\\"<?=$titlefonti?>>斜体\r\n	<input name=\\"titlefont[s]\\" type=\\"checkbox\\" value=\\"s\\"<?=$titlefonts?>>删除线\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;颜色: <input name=\\"titlecolor\\" type=\\"text\\" value=\\"<?=stripSlashes($r[titlecolor])?>\\" size=\\"10\\"><a onclick=\\"foreColor();\\"><img src=\\"../data/images/color.gif\\" width=\\"21\\" height=\\"21\\" align=\\"absbottom\\"></a>\r\n  </td>\r\n</tr>\r\n</table>', '标题', 0, 1, 1, '  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--melve.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--title--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_title]" cols="60" rows="10" id="textarea"><?=ehtmlspecialchars(stripSlashes($r[zz_title]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_title]" type="text" id="add[z_title]" value="<?=stripSlashes($r[z_title])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>', 0, 'CHAR', '100', 1, 1, 'news', 0, '', 0, 0, 0, '<input name=\\"title\\" type=\\"text\\" size=\\"42\\" value=\\"<?=$elvefirstpost==1?\\"\\":DoReqValue($mid,\\''title\\'',stripSlashes($r[title]))?>\\">', 0, '', 0, '60', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(2, 'special.field', '特殊属性', '', '<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\" bgcolor=\\"#DBEAF5\\">\r\n  <tr>\r\n    <td height=\\"25\\" bgcolor=\\"#FFFFFF\\">信息属性: \r\n      <input name=\\"checked\\" type=\\"checkbox\\" value=\\"1\\"<?=$r[checked]?\\'' checked\\'':\\''\\''?>>\r\n      审核 &nbsp;&nbsp; 推荐 \r\n      <select name=\\"isgood\\" id=\\"isgood\\">\r\n        <option value=\\"0\\">不推荐</option>\r\n	<?=$ftnr[\\''igname\\'']?>\r\n      </select>\r\n      &nbsp;&nbsp; 头条 \r\n      <select name=\\"firsttitle\\" id=\\"firsttitle\\">\r\n        <option value=\\"0\\">非头条</option>\r\n	<?=$ftnr[\\''ftname\\'']?>\r\n      </select></td>\r\n  </tr>\r\n  <tr> \r\n    <td height=\\"25\\" bgcolor=\\"#FFFFFF\\">关键字&nbsp;&nbsp;&nbsp;: \r\n      <input name=\\"keyboard\\" type=\\"text\\" size=\\"52\\" value=\\"<?=stripSlashes($r[keyboard])?>\\">\r\n      <font color=\\"#666666\\">(多个请用&quot;,&quot;隔开)</font></td>\r\n  </tr>\r\n  <tr> \r\n    <td height=\\"25\\" bgcolor=\\"#FFFFFF\\">外部链接: \r\n      <input name=\\"titleurl\\" type=\\"text\\" value=\\"<?=stripSlashes($r[titleurl])?>\\" size=\\"52\\">\r\n      <font color=\\"#666666\\">(填写后信息连接地址将为此链接)</font></td>\r\n  </tr>\r\n</table>', '特殊属性', 0, 1, 0, '', 1, '', '', 0, 1, 'news', 0, '', 0, 0, 0, '<input name=\\"keyboard\\" type=\\"text\\" size=42 value=\\"<?=stripSlashes($r[keyboard])?>\\">\r\n<font color=\\"#666666\\">(多个请用&quot;,&quot;隔开)</font>', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(3, 'titlepic', '标题图片', 'img', '<input name=\\"titlepic\\" type=\\"text\\" id=\\"titlepic\\" value=\\"<?=$elvefirstpost==1?\\"\\":ehtmlspecialchars(stripSlashes($r[titlepic]))?>\\" size=\\"45\\">\r\n<a onclick=\\"window.open(\\''elveeditor/FileMain.php?type=1&classid=<?=$classid?>&infoid=<?=$id?>&filepass=<?=$filepass?>&sinfo=1&doing=1&field=titlepic\\'',\\''\\'',\\''width=700,height=550,scrollbars=yes\\'');\\" title=\\"选择已上传的图片\\"><img src=\\"../data/images/changeimg.gif\\" border=\\"0\\" align=\\"absbottom\\"></a>', '标题图片', 0, 1, 1, '  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--melve.name--]正则：</strong><br>\r\n      ( \r\n      <input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--titlepic--]\\" size=\\"20\\">\r\n      )</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n    <tr>\r\n      <td>附件前缀 \r\n        <input name=\\"add[qz_titlepic]\\" type=\\"text\\" id=\\"add[qz_titlepic]\\" value=\\"<?=stripSlashes($r[qz_titlepic])?>\\"> \r\n        <input name=\\"add[save_titlepic]\\" type=\\"checkbox\\" id=\\"add[save_titlepic]\\" value=\\" checked\\"<?=$r[save_titlepic]?>>\r\n        远程保存 </td>\r\n    </tr>\r\n    <tr> \r\n      <td><textarea name=\\"add[zz_titlepic]\\" cols=\\"60\\" rows=\\"10\\" id=\\"add[zz_titlepic]\\"><?=ehtmlspecialchars(stripSlashes($r[zz_titlepic]))?></textarea></td>\r\n    </tr>\r\n    <tr> \r\n      <td><input name=\\"add[z_titlepic]\\" type=\\"text\\" id=\\"titlepic5\\" value=\\"<?=stripSlashes($r[z_titlepic])?>\\">\r\n        (如填写这里，这就是字段的值)</td>\r\n    </tr>\r\n  </table></td>\r\n  </tr>\r\n', 2, 'CHAR', '120', 1, 1, 'news', 0, '', 0, 0, 0, '<input type=\\"file\\" name=\\"titlepicfile\\" size=\\"45\\">', 0, '', 0, '60', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(4, 'newstime', '发布时间', 'text', '<input name=\\"newstime\\" type=\\"text\\" value=\\"<?=$r[newstime]?>\\"><input type=button name=button value=\\"设为当前时间\\" onclick=\\"document.add.newstime.value=\\''<?=$todaytime?>\\''\\">', '发布时间', 0, 1, 1, '  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--melve.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--newstime--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_newstime]" cols="60" rows="10" id="textarea"><?=ehtmlspecialchars(stripSlashes($r[zz_newstime]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_newstime]" type="text" id="add[z_newstime]" value="<?=stripSlashes($r[z_newstime])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>', 1, 'INT', '11', 1, 1, 'news', 0, '', 1, 0, 0, '', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(5, 'ftitle', '副标题', 'text', '<input name=\\"ftitle\\" type=\\"text\\" size=60 id=\\"ftitle\\" value=\\"<?=$elvefirstpost==1?\\"\\":ehtmlspecialchars(stripSlashes($r[ftitle]))?>\\">\r\n', '副标题', 1, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--melve.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--ftitle--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_ftitle]" cols="60" rows="10" id="textarea"><?=ehtmlspecialchars(stripSlashes($r[zz_ftitle]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_ftitle]" type="text" id="add[z_ftitle]" value="<?=stripSlashes($r[z_ftitle])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 0, 'CHAR', '120', 1, 1, 'news', 0, '', 0, 0, 1, '<input name=\\"ftitle\\" type=\\"text\\" size=42 id=\\"ftitle\\" value=\\"<?=$elvefirstpost==1?\\"\\":DoReqValue($mid,\\''ftitle\\'',stripSlashes($r[ftitle]))?>\\">\r\n', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(6, 'smalltext', '内容简介', 'textarea', '<textarea name=\\"smalltext\\" cols=\\"80\\" rows=\\"10\\" id=\\"smalltext\\"><?=$elvefirstpost==1?\\"\\":ehtmlspecialchars(stripSlashes($r[smalltext]))?></textarea>\r\n', '内容简介', 1, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--melve.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--smalltext--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_smalltext]" cols="60" rows="10" id="textarea"><?=ehtmlspecialchars(stripSlashes($r[zz_smalltext]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_smalltext]" type="text" id="add[z_smalltext]" value="<?=stripSlashes($r[z_smalltext])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 2, 'CHAR', '255', 1, 1, 'news', 0, '', 0, 1, 1, '<textarea name=\\"smalltext\\" cols=\\"60\\" rows=\\"10\\" id=\\"smalltext\\"><?=$elvefirstpost==1?\\"\\":DoReqValue($mid,\\''smalltext\\'',stripSlashes($r[smalltext]))?></textarea>\r\n', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 1, ''),
(7, 'writer', '作者', 'text', '<?php\r\n$writer_sql=$Elves->query(\\"select writer from {$dbtbpre}melvewriter\\");\r\nwhile($w_r=$Elves->fetch($writer_sql))\r\n{\r\n	$w_class.=\\"<option value=\\''\\".$w_r[writer].\\"\\''>\\".$w_r[writer].\\"</option>\\";\r\n}\r\n?>\r\n<input type=text name=writer value=\\"<?=$elvefirstpost==1?\\"\\":ehtmlspecialchars(stripSlashes($r[writer]))?>\\" size=\\"\\"> \r\n        <select name=\\"w_id\\" id=\\"select7\\" onchange=\\"document.add.writer.value=document.add.w_id.value\\">\r\n          <option>选择作者</option>\r\n		  <?=$w_class?>\r\n        </select>\r\n<input type=\\"button\\" name=\\"wbutton\\" value=\\"增加作者\\" onclick=\\"window.open(\\''NewsSys/writer.php?addwritername=\\''+document.add.writer.value);\\">\r\n', '作者', 1, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--melve.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--writer--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_writer]" cols="60" rows="10" id="textarea"><?=ehtmlspecialchars(stripSlashes($r[zz_writer]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_writer]" type="text" id="add[z_writer]" value="<?=stripSlashes($r[z_writer])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 2, 'CHAR', '30', 1, 1, 'news', 0, '', 0, 0, 1, '<input name=\\"writer\\" type=\\"text\\" id=\\"writer\\" value=\\"<?=$elvefirstpost==1?\\"\\":DoReqValue($mid,\\''writer\\'',stripSlashes($r[writer]))?>\\" size=\\"\\">\r\n', 0, '', 0, '', 1, 0, '', '', '', '', '', '', 0, 0, ''),
(8, 'befrom', '信息来源', 'text', '<?php\r\n$befrom_sql=$Elves->query(\\"select sitename from {$dbtbpre}melvebefrom\\");\r\nwhile($b_r=$Elves->fetch($befrom_sql))\r\n{\r\n	$b_class.=\\"<option value=\\''\\".$b_r[sitename].\\"\\''>\\".$b_r[sitename].\\"</option>\\";\r\n}\r\n?>\r\n<input type=\\"text\\" name=\\"befrom\\" value=\\"<?=$elvefirstpost==1?\\"\\":ehtmlspecialchars(stripSlashes($r[befrom]))?>\\" size=\\"\\"> \r\n        <select name=\\"befrom_id\\" id=\\"befromid\\" onchange=\\"document.add.befrom.value=document.add.befrom_id.value\\">\r\n          <option>选择信息来源</option>\r\n          <?=$b_class?>\r\n        </select>\r\n<input type=\\"button\\" name=\\"wbutton\\" value=\\"增加来源\\" onclick=\\"window.open(\\''NewsSys/BeFrom.php?addsitename=\\''+document.add.befrom.value);\\">\r\n', '信息来源', 1, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--melve.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--befrom--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_befrom]" cols="60" rows="10" id="textarea"><?=ehtmlspecialchars(stripSlashes($r[zz_befrom]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_befrom]" type="text" id="add[z_befrom]" value="<?=stripSlashes($r[z_befrom])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 2, 'CHAR', '60', 1, 1, 'news', 0, '', 0, 0, 1, '<input name=\\"befrom\\" type=\\"text\\" id=\\"befrom\\" value=\\"<?=$elvefirstpost==1?\\"\\":DoReqValue($mid,\\''befrom\\'',stripSlashes($r[befrom]))?>\\" size=\\"\\">\r\n', 0, '', 0, '', 1, 0, '', '', '', '', '', '', 0, 0, ''),
(9, 'newstext', '新闻正文', 'editor', '<?=elve_ShowEditorVar(\\"newstext\\",$elvefirstpost==1?\\"\\":stripSlashes($r[newstext]),\\"Default\\",\\"\\",\\"300\\",\\"100%\\")?>\r\n<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"3\\" cellspacing=\\"1\\" bgcolor=\\"#DBEAF5\\">\r\n          <tr> \r\n            <td bgcolor=\\"#FFFFFF\\"> <input name=\\"dokey\\" type=\\"checkbox\\" value=\\"1\\"<?=$r[dokey]==1?\\'' checked\\'':\\''\\''?>>\r\n              关键字替换&nbsp;&nbsp; <input name=\\"copyimg\\" type=\\"checkbox\\" id=\\"copyimg\\" value=\\"1\\">\r\n      远程保存图片(\r\n      <input name=\\"mark\\" type=\\"checkbox\\" id=\\"mark\\" value=\\"1\\">\r\n      <a href=\\"Setmelve.php\\" target=\\"_blank\\">加水印</a>)&nbsp;&nbsp; \r\n      <input name=\\"copyflash\\" type=\\"checkbox\\" id=\\"copyflash\\" value=\\"1\\">\r\n      远程保存FLASH(地址前缀： \r\n      <input name=\\"qz_url\\" type=\\"text\\" id=\\"qz_url\\" size=\\"\\">\r\n              )</td>\r\n          </tr>\r\n          <tr>\r\n            \r\n    <td bgcolor=\\"#FFFFFF\\"><input name=\\"repimgnexturl\\" type=\\"checkbox\\" id=\\"repimgnexturl\\" value=\\"1\\"> 图片链接转为下一页&nbsp;&nbsp; <input name=\\"autopage\\" type=\\"checkbox\\" id=\\"autopage\\" value=\\"1\\">自动分页\r\n      ,每 \r\n      <input name=\\"autosize\\" type=\\"text\\" id=\\"autosize\\" value=\\"5000\\" size=\\"5\\">\r\n      个字节为一页&nbsp;&nbsp; 取第 \r\n      <input name=\\"getfirsttitlepic\\" type=\\"text\\" id=\\"getfirsttitlepic\\" value=\\"\\" size=\\"1\\">\r\n      张上传图为标题图片( \r\n      <input name=\\"getfirsttitlespic\\" type=\\"checkbox\\" id=\\"getfirsttitlespic\\" value=\\"1\\">\r\n      缩略图: 宽 \r\n      <input name=\\"getfirsttitlespicw\\" type=\\"text\\" id=\\"getfirsttitlespicw\\" size=\\"3\\" value=\\"<?=$public_r[spicwidth]?>\\">\r\n      *高\r\n      <input name=\\"getfirsttitlespich\\" type=\\"text\\" id=\\"getfirsttitlespich\\" size=\\"3\\" value=\\"<?=$public_r[spicheight]?>\\">\r\n      )</td>\r\n          </tr>\r\n        </table>\r\n', '新闻正文', 1, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--melve.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--newstext--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_newstext]" cols="60" rows="10" id="textarea"><?=ehtmlspecialchars(stripSlashes($r[zz_newstext]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_newstext]" type="text" id="add[z_newstext]" value="<?=stripSlashes($r[z_newstext])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 2, 'MEDIUMTEXT', '', 1, 1, 'news', 0, '', 0, 1, 1, '<?=elve_ShowEditorVar(\\"newstext\\",$elvefirstpost==1?\\"\\":DoReqValue($mid,\\''newstext\\'',stripSlashes($r[newstext])),\\"Default\\",\\"\\",\\"300\\",\\"100%\\")?>\r\n', 0, '', 0, '', 1, 1, '', '', '', '', '', '', 0, 0, ''),
(10, 'diggtop', '顶', 'text', '\r\n<input name="diggtop" type="text" id="diggtop" value="<?=$elvefirstpost==1?"":ehtmlspecialchars(stripSlashes($r[diggtop]))?>" size="">\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--melve.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--diggtop--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_diggtop]" cols="60" rows="10" id="textarea"><?=ehtmlspecialchars(stripSlashes($r[zz_diggtop]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_diggtop]" type="text" id="add[z_diggtop]" value="<?=stripSlashes($r[z_diggtop])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 3, 'INT', '', 1, 1, 'news', 0, '', 0, 0, 1, '\r\n<input name="diggtop" type="text" id="diggtop" value="<?=$elvefirstpost==1?"":DoReqValue($mid,''diggtop'',stripSlashes($r[diggtop]))?>" size="">\r\n', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(11, 'title', '标题', 'text', '\r\n<table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#DBEAF5">\r\n<tr> \r\n  <td height="25" bgcolor="#FFFFFF">\r\n	<?=$tts?"<select name=''ttid''><option value=''0''>标题分类</option>$tts</select>":""?>\r\n	<input type=text name=title value="<?=ehtmlspecialchars(stripSlashes($r[title]))?>" size="60"> \r\n	<input type="button" name="button" value="图文" onclick="document.add.title.value=document.add.title.value+''(图文)'';"> \r\n  </td>\r\n</tr>\r\n<tr> \r\n  <td height="25" bgcolor="#FFFFFF">属性: \r\n	<input name="titlefont[b]" type="checkbox" value="b"<?=$titlefontb?>>粗体\r\n	<input name="titlefont[i]" type="checkbox" value="i"<?=$titlefonti?>>斜体\r\n	<input name="titlefont[s]" type="checkbox" value="s"<?=$titlefonts?>>删除线\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;颜色: <input name="titlecolor" type="text" value="<?=stripSlashes($r[titlecolor])?>" size="10"><a onclick="foreColor();"><img src="../data/images/color.gif" width="21" height="21" align="absbottom"></a>\r\n  </td>\r\n</tr>\r\n</table>\r\n', '标题', 0, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--melve.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--title--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_title]" cols="60" rows="10" id="textarea"><?=ehtmlspecialchars(stripSlashes($r[zz_title]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_title]" type="text" id="add[z_title]" value="<?=stripSlashes($r[z_title])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 0, 'CHAR', '100', 1, 2, 'download', 0, '', 0, 0, 0, '\r\n<input name="title" type="text" size="42" value="<?=$elvefirstpost==1?"":DoReqValue($mid,''title'',stripSlashes($r[title]))?>">\r\n', 0, '', 0, '60', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(12, 'special.field', '特殊属性', '', '\r\n<table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#DBEAF5">\r\n  <tr>\r\n    <td height="25" bgcolor="#FFFFFF">信息属性: \r\n      <input name="checked" type="checkbox" value="1"<?=$r[checked]?'' checked'':''''?>>\r\n      审核 &nbsp;&nbsp; 推荐 \r\n      <select name="isgood" id="isgood">\r\n        <option value="0">不推荐</option>\r\n	<?=$ftnr[''igname'']?>\r\n      </select>\r\n      &nbsp;&nbsp; 头条 \r\n      <select name="firsttitle" id="firsttitle">\r\n        <option value="0">非头条</option>\r\n	<?=$ftnr[''ftname'']?>\r\n      </select></td>\r\n  </tr>\r\n  <tr> \r\n    <td height="25" bgcolor="#FFFFFF">关键字&nbsp;&nbsp;&nbsp;: \r\n      <input name="keyboard" type="text" size="52" value="<?=stripSlashes($r[keyboard])?>">\r\n      <font color="#666666">(多个请用&quot;,&quot;隔开)</font></td>\r\n  </tr>\r\n  <tr> \r\n    <td height="25" bgcolor="#FFFFFF">外部链接: \r\n      <input name="titleurl" type="text" value="<?=stripSlashes($r[titleurl])?>" size="52">\r\n      <font color="#666666">(填写后信息连接地址将为此链接)</font></td>\r\n  </tr>\r\n</table>\r\n', '特殊属性', 0, 1, 0, '\r\n\r\n', 0, '', '0', 0, 2, 'download', 0, '', 0, 0, 0, '\r\n<input name="keyboard" type="text" size=42 value="<?=stripSlashes($r[keyboard])?>">\r\n<font color="#666666">(多个请用&quot;,&quot;隔开)</font>\r\n', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(13, 'titlepic', '标题图片', 'img', '\r\n<input name="titlepic" type="text" id="titlepic" value="<?=$elvefirstpost==1?"":ehtmlspecialchars(stripSlashes($r[titlepic]))?>" size="45">\r\n<a onclick="window.open(''elveeditor/FileMain.php?type=1&classid=<?=$classid?>&infoid=<?=$id?>&filepass=<?=$filepass?>&sinfo=1&doing=1&field=titlepic'','''',''width=700,height=550,scrollbars=yes'');" title="选择已上传的图片"><img src="../data/images/changeimg.gif" border="0" align="absbottom"></a> \r\n', '标题图片', 0, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--melve.name--]正则：</strong><br>\r\n      ( \r\n      <input name="textfield" type="text" id="textfield" value="[!--titlepic--]" size="20">\r\n      )</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n    <tr>\r\n      <td>附件前缀 \r\n        <input name="add[qz_titlepic]" type="text" id="add[qz_titlepic]" value="<?=stripSlashes($r[qz_titlepic])?>"> \r\n        <input name="add[save_titlepic]" type="checkbox" id="add[save_titlepic]" value=" checked"<?=$r[save_titlepic]?>>\r\n        远程保存 </td>\r\n    </tr>\r\n    <tr> \r\n      <td><textarea name="add[zz_titlepic]" cols="60" rows="10" id="add[zz_titlepic]"><?=ehtmlspecialchars(stripSlashes($r[zz_titlepic]))?></textarea></td>\r\n    </tr>\r\n    <tr> \r\n      <td><input name="add[z_titlepic]" type="text" id="titlepic5" value="<?=stripSlashes($r[z_titlepic])?>">\r\n        (如填写这里，这就是字段的值)</td>\r\n    </tr>\r\n  </table></td>\r\n  </tr>\r\n', 1, 'CHAR', '120', 1, 2, 'download', 0, '', 0, 0, 0, '\r\n<input type="file" name="titlepicfile" size="45">\r\n', 0, '', 0, '60', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(14, 'newstime', '发布时间', 'text', '\r\n<input name="newstime" type="text" value="<?=$r[newstime]?>"><input type=button name=button value="设为当前时间" onclick="document.add.newstime.value=''<?=$todaytime?>''">\r\n', '发布时间', 0, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--melve.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--newstime--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_newstime]" cols="60" rows="10" id="textarea"><?=ehtmlspecialchars(stripSlashes($r[zz_newstime]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_newstime]" type="text" id="add[z_newstime]" value="<?=stripSlashes($r[z_newstime])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 0, 'INT', '11', 1, 2, 'download', 0, '', 1, 0, 0, '\r\n\r\n', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(15, 'softwriter', '作者', 'text', '<input name=\\"softwriter\\" type=\\"text\\" id=\\"softwriter\\" value=\\"<?=$elvefirstpost==1?\\"\\":ehtmlspecialchars(stripSlashes($r[softwriter]))?>\\" size=\\"60\\">\r\n', '作者', 1, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--melve.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--softwriter--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_softwriter]" cols="60" rows="10" id="textarea"><?=ehtmlspecialchars(stripSlashes($r[zz_softwriter]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_softwriter]" type="text" id="add[z_softwriter]" value="<?=stripSlashes($r[z_softwriter])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 1, 'VARCHAR', '30', 1, 2, 'download', 0, '', 0, 0, 1, '<input name=\\"softwriter\\" type=\\"text\\" id=\\"softwriter\\" value=\\"<?=$elvefirstpost==1?\\"\\":DoReqValue($mid,\\''softwriter\\'',stripSlashes($r[softwriter]))?>\\" size=\\"42\\">\r\n', 0, '', 0, '', 1, 0, '', '', '', '', '', '', 0, 0, ''),
(16, 'homepage', '官方网站', 'text', '<input name=\\"homepage\\" type=\\"text\\" id=\\"homepage\\" value=\\"<?=$elvefirstpost==1?\\"http://\\":ehtmlspecialchars(stripSlashes($r[homepage]))?>\\" size=\\"60\\">\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--melve.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--homepage--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_homepage]" cols="60" rows="10" id="textarea"><?=ehtmlspecialchars(stripSlashes($r[zz_homepage]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_homepage]" type="text" id="add[z_homepage]" value="<?=stripSlashes($r[z_homepage])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 1, 'VARCHAR', '80', 1, 2, 'download', 0, 'http://', 0, 0, 1, '<input name=\\"homepage\\" type=\\"text\\" id=\\"homepage\\" value=\\"<?=$elvefirstpost==1?\\"http://\\":DoReqValue($mid,\\''homepage\\'',stripSlashes($r[homepage]))?>\\" size=\\"42\\">\r\n', 0, '', 0, '', 1, 0, '', '', '', '', '', '', 0, 0, ''),
(17, 'demo', '系统演示', 'text', '<input name=\\"demo\\" type=\\"text\\" id=\\"demo\\" value=\\"<?=$elvefirstpost==1?\\"http://\\":ehtmlspecialchars(stripSlashes($r[demo]))?>\\" size=\\"60\\">\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--melve.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--demo--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_demo]" cols="60" rows="10" id="textarea"><?=ehtmlspecialchars(stripSlashes($r[zz_demo]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_demo]" type="text" id="add[z_demo]" value="<?=stripSlashes($r[z_demo])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 1, 'VARCHAR', '120', 1, 2, 'download', 0, 'http://', 0, 0, 1, '<input name=\\"demo\\" type=\\"text\\" id=\\"demo\\" value=\\"<?=$elvefirstpost==1?\\"http://\\":DoReqValue($mid,\\''demo\\'',stripSlashes($r[demo]))?>\\" size=\\"42\\">\r\n', 0, '', 0, '', 1, 0, '', '', '', '', '', '', 0, 0, ''),
(18, 'softfj', '运行环境', 'text', '<input name=\\"softfj\\" type=\\"text\\" id=\\"softfj\\" value=\\"<?=$elvefirstpost==1?\\"\\":ehtmlspecialchars(stripSlashes($r[softfj]))?>\\" size=\\"60\\">\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--melve.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--softfj--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_softfj]" cols="60" rows="10" id="textarea"><?=ehtmlspecialchars(stripSlashes($r[zz_softfj]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_softfj]" type="text" id="add[z_softfj]" value="<?=stripSlashes($r[z_softfj])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 1, 'VARCHAR', '255', 1, 2, 'download', 0, '', 0, 0, 1, '<input name=\\"softfj\\" type=\\"text\\" id=\\"softfj\\" value=\\"<?=$elvefirstpost==1?\\"\\":DoReqValue($mid,\\''softfj\\'',stripSlashes($r[softfj]))?>\\" size=\\"42\\">\r\n', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(19, 'language', '软件语言', 'select', '<select name="language" id="language"><option value="简体中文"<?=$r[language]=="简体中文"?'' selected'':''''?>>简体中文</option><option value="繁体中文"<?=$r[language]=="繁体中文"?'' selected'':''''?>>繁体中文</option><option value="英文"<?=$r[language]=="英文"?'' selected'':''''?>>英文</option><option value="多国语言"<?=$r[language]=="多国语言"?'' selected'':''''?>>多国语言</option></select>', '', 1, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--melve.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--language--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_language]" cols="60" rows="10" id="textarea"><?=ehtmlspecialchars(stripSlashes($r[zz_language]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_language]" type="text" id="add[z_language]" value="<?=stripSlashes($r[z_language])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 1, 'VARCHAR', '16', 1, 2, 'download', 0, '简体中文|繁体中文|英文|多国语言', 0, 0, 1, '<select name="language" id="language"><option value="简体中文"<?=$r[language]=="简体中文"?'' selected'':''''?>>简体中文</option><option value="繁体中文"<?=$r[language]=="繁体中文"?'' selected'':''''?>>繁体中文</option><option value="英文"<?=$r[language]=="英文"?'' selected'':''''?>>英文</option><option value="多国语言"<?=$r[language]=="多国语言"?'' selected'':''''?>>多国语言</option></select>', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(20, 'softtype', '软件类型', 'select', '<select name="softtype" id="softtype"><option value="国产软件"<?=$r[softtype]=="国产软件"?'' selected'':''''?>>国产软件</option><option value="汉化软件"<?=$r[softtype]=="汉化软件"?'' selected'':''''?>>汉化软件</option><option value="国外软件"<?=$r[softtype]=="国外软件"?'' selected'':''''?>>国外软件</option></select>', '', 1, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--melve.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--softtype--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_softtype]" cols="60" rows="10" id="textarea"><?=ehtmlspecialchars(stripSlashes($r[zz_softtype]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_softtype]" type="text" id="add[z_softtype]" value="<?=stripSlashes($r[z_softtype])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 1, 'VARCHAR', '16', 1, 2, 'download', 0, '国产软件|汉化软件|国外软件', 0, 0, 1, '<select name="softtype" id="softtype"><option value="国产软件"<?=$r[softtype]=="国产软件"?'' selected'':''''?>>国产软件</option><option value="汉化软件"<?=$r[softtype]=="汉化软件"?'' selected'':''''?>>汉化软件</option><option value="国外软件"<?=$r[softtype]=="国外软件"?'' selected'':''''?>>国外软件</option></select>', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(21, 'softsq', '授权形式', 'select', '<select name="softsq" id="softsq"><option value="共享软件"<?=$r[softsq]=="共享软件"?'' selected'':''''?>>共享软件</option><option value="免费软件"<?=$r[softsq]=="免费软件"?'' selected'':''''?>>免费软件</option><option value="自由软件"<?=$r[softsq]=="自由软件"?'' selected'':''''?>>自由软件</option><option value="试用软件"<?=$r[softsq]=="试用软件"?'' selected'':''''?>>试用软件</option><option value="演示软件"<?=$r[softsq]=="演示软件"?'' selected'':''''?>>演示软件</option><option value="商业软件"<?=$r[softsq]=="商业软件"?'' selected'':''''?>>商业软件</option></select>', '', 1, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--melve.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--softsq--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_softsq]" cols="60" rows="10" id="textarea"><?=ehtmlspecialchars(stripSlashes($r[zz_softsq]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_softsq]" type="text" id="add[z_softsq]" value="<?=stripSlashes($r[z_softsq])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 1, 'VARCHAR', '16', 1, 2, 'download', 0, '共享软件|免费软件|自由软件|试用软件|演示软件|商业软件', 0, 0, 1, '<select name="softsq" id="softsq"><option value="共享软件"<?=$r[softsq]=="共享软件"?'' selected'':''''?>>共享软件</option><option value="免费软件"<?=$r[softsq]=="免费软件"?'' selected'':''''?>>免费软件</option><option value="自由软件"<?=$r[softsq]=="自由软件"?'' selected'':''''?>>自由软件</option><option value="试用软件"<?=$r[softsq]=="试用软件"?'' selected'':''''?>>试用软件</option><option value="演示软件"<?=$r[softsq]=="演示软件"?'' selected'':''''?>>演示软件</option><option value="商业软件"<?=$r[softsq]=="商业软件"?'' selected'':''''?>>商业软件</option></select>', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(22, 'star', '软件等级', 'select', '<select name=\\"star\\" id=\\"star\\"><option value=\\"1\\"<?=$r[star]==\\"1\\"?\\'' selected\\'':\\''\\''?>>1星</option><option value=\\"2\\"<?=$r[star]==\\"2\\"||$elvefirstpost==1?\\'' selected\\'':\\''\\''?>>2星</option><option value=\\"3\\"<?=$r[star]==\\"3\\"?\\'' selected\\'':\\''\\''?>>3星</option><option value=\\"4\\"<?=$r[star]==\\"4\\"?\\'' selected\\'':\\''\\''?>>4星</option><option value=\\"5\\"<?=$r[star]==\\"5\\"?\\'' selected\\'':\\''\\''?>>5星</option></select>', '', 1, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--melve.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--star--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_star]" cols="60" rows="10" id="textarea"><?=ehtmlspecialchars(stripSlashes($r[zz_star]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_star]" type="text" id="add[z_star]" value="<?=stripSlashes($r[z_star])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 1, 'TINYINT', '1', 1, 2, 'download', 0, '1|2:default|3|4|5', 0, 0, 1, '<select name=\\"star\\" id=\\"star\\"><option value=\\"1\\"<?=$r[star]==\\"1\\"?\\'' selected\\'':\\''\\''?>>1星</option><option value=\\"2\\"<?=$r[star]==\\"2\\"||$elvefirstpost==1?\\'' selected\\'':\\''\\''?>>2星</option><option value=\\"3\\"<?=$r[star]==\\"3\\"?\\'' selected\\'':\\''\\''?>>3星</option><option value=\\"4\\"<?=$r[star]==\\"4\\"?\\'' selected\\'':\\''\\''?>>4星</option><option value=\\"5\\"<?=$r[star]==\\"5\\"?\\'' selected\\'':\\''\\''?>>5星</option></select>', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(23, 'filetype', '文件类型', 'text', '<input name=\\"filetype\\" type=\\"text\\" id=\\"filetype\\" value=\\"<?=$elvefirstpost==1?\\"\\":ehtmlspecialchars(stripSlashes($r[filetype]))?>\\" size=\\"\\">\r\n<select name=\\"select2\\" onchange=\\"document.add.filetype.value=this.value\\">\r\n        <option value=\\"\\">类型</option>\r\n        <option value=\\".zip\\">.zip</option>\r\n        <option value=\\".rar\\">.rar</option>\r\n        <option value=\\".exe\\">.exe</option>\r\n      </select>', '', 1, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--melve.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--filetype--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_filetype]" cols="60" rows="10" id="textarea"><?=ehtmlspecialchars(stripSlashes($r[zz_filetype]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_filetype]" type="text" id="add[z_filetype]" value="<?=stripSlashes($r[z_filetype])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 1, 'VARCHAR', '10', 1, 2, 'download', 0, '', 0, 0, 1, '<input name=\\"filetype\\" type=\\"text\\" id=\\"filetype\\" value=\\"<?=$elvefirstpost==1?\\"\\":DoReqValue($mid,\\''filetype\\'',stripSlashes($r[filetype]))?>\\" size=\\"10\\">\r\n<select name=\\"select2\\" onchange=\\"document.add.filetype.value=this.value\\">\r\n        <option value=\\"\\">类型</option>\r\n        <option value=\\".zip\\">.zip</option>\r\n        <option value=\\".rar\\">.rar</option>\r\n        <option value=\\".exe\\">.exe</option>\r\n      </select>', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(24, 'filesize', '文件大小', 'text', '<input name=\\"filesize\\" type=\\"text\\" id=\\"filesize\\" value=\\"<?=$elvefirstpost==1?\\"\\":ehtmlspecialchars(stripSlashes($r[filesize]))?>\\" size=\\"\\">\r\n<select name=\\"select\\" onchange=\\"document.add.filesize.value+=this.value\\">\r\n        <option value=\\"\\">单位</option>\r\n        <option value=\\" MB\\">MB</option>\r\n        <option value=\\" KB\\">KB</option>\r\n        <option value=\\" GB\\">GB</option>\r\n        <option value=\\" BYTES\\">BYTES</option>\r\n      </select>', '', 1, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--melve.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--filesize--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_filesize]" cols="60" rows="10" id="textarea"><?=ehtmlspecialchars(stripSlashes($r[zz_filesize]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_filesize]" type="text" id="add[z_filesize]" value="<?=stripSlashes($r[z_filesize])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 1, 'VARCHAR', '16', 1, 2, 'download', 0, '', 0, 0, 1, '<input name=\\"filesize\\" type=\\"text\\" id=\\"filesize\\" value=\\"<?=$elvefirstpost==1?\\"\\":DoReqValue($mid,\\''filesize\\'',stripSlashes($r[filesize]))?>\\" size=\\"10\\">\r\n<select name=\\"select\\" onchange=\\"document.add.filesize.value+=this.value\\">\r\n        <option value=\\"\\">单位</option>\r\n        <option value=\\" MB\\">MB</option>\r\n        <option value=\\" KB\\">KB</option>\r\n        <option value=\\" GB\\">GB</option>\r\n        <option value=\\" BYTES\\">BYTES</option>\r\n      </select>', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(25, 'downpath', '下载地址', 'text', '\r\n<script>\r\nfunction doadd()\r\n{var i;\r\nvar str=\\"\\";\r\nvar oldi=0;\r\nvar j=0;\r\noldi=parseInt(document.add.editnum.value);\r\nfor(i=1;i<=document.add.downnum.value;i++)\r\n{\r\nj=i+oldi;\r\nstr=str+\\"<tr><td width=7%> <div align=center>\\"+j+\\"</div></td><td width=19%><div align=left><input name=downname[] type=text id=downname[] value=下载地址\\"+j+\\" size=17></div></td><td width=40%><input name=downpath[] type=text size=36 id=downpath\\"+j+\\" ondblclick=SpOpenChFile(0,\\''downpath\\"+j+\\"\\'')><select name=thedownqz[]><option value=\\''\\''>--地址前缀--</option><?=$newdownqz?></select></td><td width=21%><div align=center><select name=downuser[] id=select><option value=0>游客</option><?=$ygroup?></select></div></td><td width=13%><div align=center><input name=fen[] type=text id=fen[] value=0 size=6></div></td></tr>\\";\r\n}\r\ndocument.getElementById(\\"adddown\\").innerHTML=\\"<table width=\\''100%\\'' border=0 cellspacing=1 cellpadding=3>\\"+str+\\"</table>\\";\r\n}\r\n</script>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\">\r\n  <tr>\r\n    <td height=\\"25\\">下载地址前缀&nbsp;:\r\n      <input name=\\"downurl_qz\\" type=\\"text\\" size=\\"32\\">\r\n      <select name=\\"changeurl_qz\\" onchange=\\"document.add.downurl_qz.value=document.add.changeurl_qz.value\\">\r\n        <option value=\\"\\" selected>选择前缀</option>\r\n        <?=$downurlqz?>\r\n      </select>\r\n	  </td>\r\n  </tr>\r\n  <tr>\r\n    <td height=\\"25\\">选择/上传附件:\r\n      <input name=\\"changedown_url\\" id=\\"changedown_url\\" type=\\"text\\" size=\\"32\\">\r\n      <input type=\\"button\\" name=\\"Submit\\" value=\\"选择\\" onclick=\\"window.open(\\''elveeditor/FileMain.php?type=0&classid=<?=$classid?>&infoid=<?=$id?>&filepass=<?=$filepass?>&sinfo=1&doing=1&field=changedown_url\\'',\\''\\'',\\''width=700,height=550,scrollbars=yes\\'');\\">&nbsp;\r\n	  <input type=\\"button\\" name=\\"Submit\\" value=\\"复制\\" onclick=\\"document.getElementById(\\''changedown_url\\'').focus();document.getElementById(\\''changedown_url\\'').select();clipboardData.setData(\\''text\\'',document.getElementById(\\''changedown_url\\'').value);\\"></td>\r\n  </tr>\r\n  <tr> \r\n    <td><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"3\\" cellspacing=\\"1\\" bgcolor=\\"#DBEAF5\\">\r\n        <tr> \r\n          <td width=\\"7%\\"> <div align=\\"center\\">编号</div></td>\r\n          <td width=\\"19%\\"><div align=\\"left\\">下载名称</div></td>\r\n          <td width=\\"40%\\">下载地址 <font color=\\"#666666\\">(双击选择)</font></td>\r\n          <td width=\\"21%\\"> <div align=\\"center\\">权限</div></td>\r\n          <td width=\\"13%\\"> <div align=\\"center\\">点数</div></td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n  <tr> \r\n    <td>\r\n    <?php\r\n    if($elvefirstpost==1)\r\n    {\r\n    ?>\r\n	<table width=\\''100%\\'' border=0 cellspacing=1 cellpadding=3>\r\n	<?php\r\n	$editnum=3;\r\n	for($pathi=1;$pathi<=$editnum;$pathi++)\r\n	{\r\n	?>\r\n           <tr> \r\n              <td width=\\''7%\\''> <div align=center><?=$pathi?></div></td>\r\n              <td width=\\''19%\\''> <div align=left> \r\n                  <input name=downname[] type=text value=\\''下载地址<?=$pathi?>\\'' size=17>\r\n                    </div></td>\r\n              <td width=\\''40%\\''>\r\n	      <input name=downpath[] type=text size=36 id=\\''downpath<?=$pathi?>\\'' ondblclick=\\"SpOpenChFile(0,\\''downpath<?=$pathi?>\\'');\\">\r\n	      <select name=thedownqz[]><option value=\\''\\''>--地址前缀--</option><?=$newdownqz?></select> \r\n                  </td>\r\n                  <td width=\\''21%\\''><div align=center> \r\n                      <select name=downuser[]>\r\n                        <option value=0>游客</option>\r\n                        <?=$ygroup?>\r\n                      </select>\r\n                    </div></td>\r\n                  <td width=\\''13%\\''> <div align=center> \r\n                      <input name=fen[] type=text value=0 size=6>\r\n                    </div></td>\r\n            </tr>\r\n	<?php\r\n	}\r\n	?>\r\n	</table>\r\n    <?php\r\n    }\r\n    else\r\n    {\r\n	$editnum=0;\r\n	$downloadpath=\\"\\";\r\n	if($r[downpath])\r\n	{\r\n		$r[downpath]=stripSlashes($r[downpath]);\r\n		//下载地址\r\n		$j=0;\r\n		$d_record=explode(\\"\\\\r\\\\n\\",$r[downpath]);\r\n		for($i=0;$i<count($d_record);$i++)\r\n		{\r\n			$j=$i+1;\r\n			$d_field=explode(\\"::::::\\",$d_record[$i]);\r\n			//权限\r\n			$tgroup=str_replace(\\" value=\\".$d_field[2].\\">\\",\\" value=\\".$d_field[2].\\" selected>\\",$ygroup);\r\n			//地址前缀\r\n			$tnewdownqz=str_replace(\\" value=\\''\\".$d_field[4].\\"\\''>\\",\\" value=\\''\\".$d_field[4].\\"\\'' selected>\\",$newdownqz);\r\n			$downloadpath.=\\"<tr><td width=\\''7%\\''><div align=center>\\".$j.\\"</div></td><td width=\\''19%\\''><div align=left><input name=downname[] type=text id=downname[] value=\\''\\".$d_field[0].\\"\\'' size=17></div></td><td width=\\''40%\\''><input name=downpath[] type=text id=downpath\\".$j.\\" value=\\''\\".$d_field[1].\\"\\'' size=36 ondblclick=\\\\\\"SpOpenChFile(0,\\''downpath\\".$j.\\"\\'');\\\\\\"><select name=thedownqz[]><option value=\\''\\''>--地址前缀--</option>\\".$tnewdownqz.\\"</select><input type=hidden name=pathid[] value=\\".$j.\\"><input type=checkbox name=delpathid[] value=\\".$j.\\">删</td><td width=\\''21%\\''><div align=center><select name=downuser[] id=select><option value=0>游客</option>\\".$tgroup.\\"</select></div></td><td width=\\''13%\\''><div align=center><input name=fen[] type=text id=fen[] value=\\''\\".$d_field[3].\\"\\'' size=6></div></td></tr>\\";\r\n		}\r\n		$editnum=$j;\r\n		$downloadpath=\\"<table width=\\''100%\\'' border=0 cellspacing=1 cellpadding=3>\\".$downloadpath.\\"</table>\\";\r\n	}\r\n	echo $downloadpath;\r\n    }\r\n    ?>\r\n    </td>\r\n  </tr>\r\n  <tr> \r\n    <td height=\\"25\\">下载地址扩展数量: <input name=\\"editnum\\" type=\\"hidden\\" id=\\"editnum\\" value=\\"<?=$editnum?>\\">\r\n      <input name=\\"downnum\\" type=\\"text\\" id=\\"downnum\\" value=\\"1\\" size=\\"6\\"> <input type=\\"button\\" name=\\"Submit5\\" value=\\"输出地址\\" onclick=\\"javascript:doadd();\\"></td>\r\n  </tr>\r\n  <tr> \r\n    <td id=adddown></td>\r\n  </tr>\r\n</table>\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--melve.name--]正则：</strong><br>\r\n      (\r\n      <input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--elvedownpathurl--]\\" size=\\"20\\">\r\n      <br>\r\n      <input name=\\"textfield2\\" type=\\"text\\" id=\\"textfield2\\" value=\\"[!--elvedownpathname--]\\" size=\\"20\\">\r\n      )<br>\r\n      格式:地址正则(url)[!Elvescms!]名称正则(name)</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr> \r\n          <td><textarea name=\\"add[zz_downpath]\\" cols=\\"60\\" rows=\\"10\\" id=\\"textarea\\"><?=ehtmlspecialchars(stripSlashes($r[zz_downpath]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td>地址前缀:\r\n<input name=\\"add[qz_downpath]\\" type=\\"text\\" id=\\"add[qz_downpath]\\" value=\\"<?=stripSlashes($r[qz_downpath])?>\\">\r\n        </td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 1, 'MEDIUMTEXT', '', 1, 2, 'download', 0, '', 0, 0, 1, '\r\n<input type=\\"file\\" name=\\"downpathfile\\" size=\\"45\\">\r\n', 0, '', 0, '', 1, 0, '', '', '', '', '', '', 0, 0, ''),
(26, 'softsay', '软件简介', 'textarea', '<textarea name=\\"softsay\\" cols=\\"80\\" rows=\\"10\\" id=\\"softsay\\"><?=$elvefirstpost==1?\\"\\":ehtmlspecialchars(stripSlashes($r[softsay]))?></textarea>\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--melve.name--]正则：</strong><br>\r\n      (<input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--softsay--]\\" size=\\"20\\">)</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr> \r\n          <td><textarea name=\\"add[zz_softsay]\\" cols=\\"60\\" rows=\\"10\\" id=\\"textarea\\"><?=ehtmlspecialchars(stripSlashes($r[zz_softsay]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\"add[z_softsay]\\" type=\\"text\\" id=\\"add[z_softsay]\\" value=\\"<?=stripSlashes($r[z_softsay])?>\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 1, 'TEXT', '', 1, 2, 'download', 0, '', 0, 1, 1, '<textarea name=\\"softsay\\" cols=\\"60\\" rows=\\"10\\" id=\\"softsay\\"><?=$elvefirstpost==1?\\"\\":DoReqValue($mid,\\''softsay\\'',stripSlashes($r[softsay]))?></textarea>\r\n', 0, '', 0, '80,10', 0, 0, '', '', '', '', '', '', 0, 1, '');
INSERT INTO `base_melvef` (`fid`, `f`, `fname`, `fform`, `fhtml`, `fzs`, `isadd`, `isshow`, `iscj`, `cjhtml`, `myorder`, `ftype`, `flen`, `dotemp`, `tid`, `tbname`, `savetxt`, `fvalue`, `iskey`, `tobr`, `dohtml`, `qfhtml`, `isonly`, `linkfieldval`, `samedata`, `fformsize`, `tbdataf`, `ispage`, `adddofun`, `editdofun`, `qadddofun`, `qeditdofun`, `linkfieldtb`, `linkfieldshow`, `editorys`, `issmalltext`, `fmvnum`) VALUES
(27, 'title', '标题', 'text', '\r\n<table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#DBEAF5">\r\n<tr> \r\n  <td height="25" bgcolor="#FFFFFF">\r\n	<?=$tts?"<select name=''ttid''><option value=''0''>标题分类</option>$tts</select>":""?>\r\n	<input type=text name=title value="<?=ehtmlspecialchars(stripSlashes($r[title]))?>" size="60"> \r\n	<input type="button" name="button" value="图文" onclick="document.add.title.value=document.add.title.value+''(图文)'';"> \r\n  </td>\r\n</tr>\r\n<tr> \r\n  <td height="25" bgcolor="#FFFFFF">属性: \r\n	<input name="titlefont[b]" type="checkbox" value="b"<?=$titlefontb?>>粗体\r\n	<input name="titlefont[i]" type="checkbox" value="i"<?=$titlefonti?>>斜体\r\n	<input name="titlefont[s]" type="checkbox" value="s"<?=$titlefonts?>>删除线\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;颜色: <input name="titlecolor" type="text" value="<?=stripSlashes($r[titlecolor])?>" size="10"><a onclick="foreColor();"><img src="../data/images/color.gif" width="21" height="21" align="absbottom"></a>\r\n  </td>\r\n</tr>\r\n</table>\r\n', '标题', 0, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--melve.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--title--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_title]" cols="60" rows="10" id="textarea"><?=ehtmlspecialchars(stripSlashes($r[zz_title]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_title]" type="text" id="add[z_title]" value="<?=stripSlashes($r[z_title])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 0, 'CHAR', '100', 1, 3, 'photo', 0, '', 0, 0, 0, '\r\n<input name="title" type="text" size="42" value="<?=$elvefirstpost==1?"":DoReqValue($mid,''title'',stripSlashes($r[title]))?>">\r\n', 0, '', 0, '60', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(28, 'special.field', '特殊属性', '', '\r\n<table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#DBEAF5">\r\n  <tr>\r\n    <td height="25" bgcolor="#FFFFFF">信息属性: \r\n      <input name="checked" type="checkbox" value="1"<?=$r[checked]?'' checked'':''''?>>\r\n      审核 &nbsp;&nbsp; 推荐 \r\n      <select name="isgood" id="isgood">\r\n        <option value="0">不推荐</option>\r\n	<?=$ftnr[''igname'']?>\r\n      </select>\r\n      &nbsp;&nbsp; 头条 \r\n      <select name="firsttitle" id="firsttitle">\r\n        <option value="0">非头条</option>\r\n	<?=$ftnr[''ftname'']?>\r\n      </select></td>\r\n  </tr>\r\n  <tr> \r\n    <td height="25" bgcolor="#FFFFFF">关键字&nbsp;&nbsp;&nbsp;: \r\n      <input name="keyboard" type="text" size="52" value="<?=stripSlashes($r[keyboard])?>">\r\n      <font color="#666666">(多个请用&quot;,&quot;隔开)</font></td>\r\n  </tr>\r\n  <tr> \r\n    <td height="25" bgcolor="#FFFFFF">外部链接: \r\n      <input name="titleurl" type="text" value="<?=stripSlashes($r[titleurl])?>" size="52">\r\n      <font color="#666666">(填写后信息连接地址将为此链接)</font></td>\r\n  </tr>\r\n</table>\r\n', '特殊属性', 0, 1, 0, '\r\n\r\n', 0, '', '0', 0, 3, 'photo', 0, '', 0, 0, 0, '\r\n<input name="keyboard" type="text" size=42 value="<?=stripSlashes($r[keyboard])?>">\r\n<font color="#666666">(多个请用&quot;,&quot;隔开)</font>\r\n', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(29, 'titlepic', '标题图片', 'img', '\r\n<input name="titlepic" type="text" id="titlepic" value="<?=$elvefirstpost==1?"":ehtmlspecialchars(stripSlashes($r[titlepic]))?>" size="45">\r\n<a onclick="window.open(''elveeditor/FileMain.php?type=1&classid=<?=$classid?>&infoid=<?=$id?>&filepass=<?=$filepass?>&sinfo=1&doing=1&field=titlepic'','''',''width=700,height=550,scrollbars=yes'');" title="选择已上传的图片"><img src="../data/images/changeimg.gif" border="0" align="absbottom"></a> \r\n', '标题图片', 0, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--melve.name--]正则：</strong><br>\r\n      ( \r\n      <input name="textfield" type="text" id="textfield" value="[!--titlepic--]" size="20">\r\n      )</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n    <tr>\r\n      <td>附件前缀 \r\n        <input name="add[qz_titlepic]" type="text" id="add[qz_titlepic]" value="<?=stripSlashes($r[qz_titlepic])?>"> \r\n        <input name="add[save_titlepic]" type="checkbox" id="add[save_titlepic]" value=" checked"<?=$r[save_titlepic]?>>\r\n        远程保存 </td>\r\n    </tr>\r\n    <tr> \r\n      <td><textarea name="add[zz_titlepic]" cols="60" rows="10" id="add[zz_titlepic]"><?=ehtmlspecialchars(stripSlashes($r[zz_titlepic]))?></textarea></td>\r\n    </tr>\r\n    <tr> \r\n      <td><input name="add[z_titlepic]" type="text" id="titlepic5" value="<?=stripSlashes($r[z_titlepic])?>">\r\n        (如填写这里，这就是字段的值)</td>\r\n    </tr>\r\n  </table></td>\r\n  </tr>\r\n', 2, 'CHAR', '120', 1, 3, 'photo', 0, '', 0, 0, 0, '\r\n<input type="file" name="titlepicfile" size="45">\r\n', 0, '', 0, '60', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(30, 'newstime', '发布时间', 'text', '\r\n<input name="newstime" type="text" value="<?=$r[newstime]?>"><input type=button name=button value="设为当前时间" onclick="document.add.newstime.value=''<?=$todaytime?>''">\r\n', '发布时间', 0, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--melve.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--newstime--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_newstime]" cols="60" rows="10" id="textarea"><?=ehtmlspecialchars(stripSlashes($r[zz_newstime]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_newstime]" type="text" id="add[z_newstime]" value="<?=stripSlashes($r[z_newstime])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 0, 'INT', '11', 1, 3, 'photo', 0, '', 1, 0, 0, '\r\n\r\n', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(31, 'filesize', '文件大小', 'text', '<input name=\\"filesize\\" type=\\"text\\" id=\\"filesize\\" value=\\"<?=$elvefirstpost==1?\\"\\":ehtmlspecialchars(stripSlashes($r[filesize]))?>\\" size=\\"60\\">\r\n<select name=\\"select\\" onchange=\\"document.add.filesize.value+=this.value\\">\r\n        <option value=\\"\\">单位</option>\r\n        <option value=\\" MB\\">MB</option>\r\n        <option value=\\" KB\\">KB</option>\r\n        <option value=\\" GB\\">GB</option>\r\n        <option value=\\" BYTES\\">BYTES</option>\r\n      </select>', '', 1, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--melve.name--]正则：</strong><br>\r\n      (<input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--filesize--]\\" size=\\"20\\">)</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr> \r\n          <td><textarea name=\\"add[zz_filesize]\\" cols=\\"60\\" rows=\\"10\\" id=\\"textarea\\"><?=ehtmlspecialchars(stripSlashes($r[zz_filesize]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\"add[z_filesize]\\" type=\\"text\\" id=\\"add[z_filesize]\\" value=\\"<?=stripSlashes($r[z_filesize])?>\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 1, 'VARCHAR', '10', 1, 3, 'photo', 0, '', 0, 0, 1, '<input name=\\"filesize\\" type=\\"text\\" id=\\"filesize\\" value=\\"<?=$elvefirstpost==1?\\"\\":DoReqValue($mid,\\''filesize\\'',stripSlashes($r[filesize]))?>\\" size=\\"42\\">\r\n<select name=\\"select\\" onchange=\\"document.add.filesize.value+=this.value\\">\r\n        <option value=\\"\\">单位</option>\r\n        <option value=\\" MB\\">MB</option>\r\n        <option value=\\" KB\\">KB</option>\r\n        <option value=\\" GB\\">GB</option>\r\n        <option value=\\" BYTES\\">BYTES</option>\r\n      </select>', 0, '', 0, '', 1, 0, '', '', '', '', '', '', 0, 0, ''),
(32, 'picsize', '图片尺寸', 'text', '<input name=\\"picsize\\" type=\\"text\\" id=\\"picsize\\" value=\\"<?=$elvefirstpost==1?\\"\\":ehtmlspecialchars(stripSlashes($r[picsize]))?>\\" size=\\"\\">\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--melve.name--]正则：</strong><br>\r\n      (<input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--picsize--]\\" size=\\"20\\">)</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr> \r\n          <td><textarea name=\\"add[zz_picsize]\\" cols=\\"60\\" rows=\\"10\\" id=\\"textarea\\"><?=ehtmlspecialchars(stripSlashes($r[zz_picsize]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\"add[z_picsize]\\" type=\\"text\\" id=\\"add[z_picsize]\\" value=\\"<?=stripSlashes($r[z_picsize])?>\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 1, 'VARCHAR', '20', 1, 3, 'photo', 0, '', 0, 0, 1, '<input name=\\"picsize\\" type=\\"text\\" id=\\"picsize\\" value=\\"<?=$elvefirstpost==1?\\"\\":DoReqValue($mid,\\''picsize\\'',stripSlashes($r[picsize]))?>\\" size=\\"42\\">\r\n', 0, '', 0, '', 1, 0, '', '', '', '', '', '', 0, 0, ''),
(33, 'picfbl', '图片分辨率', 'text', '<input name=\\"picfbl\\" type=\\"text\\" id=\\"picfbl\\" value=\\"<?=$elvefirstpost==1?\\"\\":ehtmlspecialchars(stripSlashes($r[picfbl]))?>\\" size=\\"\\">\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--melve.name--]正则：</strong><br>\r\n      (<input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--picfbl--]\\" size=\\"20\\">)</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr> \r\n          <td><textarea name=\\"add[zz_picfbl]\\" cols=\\"60\\" rows=\\"10\\" id=\\"textarea\\"><?=ehtmlspecialchars(stripSlashes($r[zz_picfbl]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\"add[z_picfbl]\\" type=\\"text\\" id=\\"add[z_picfbl]\\" value=\\"<?=stripSlashes($r[z_picfbl])?>\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 1, 'VARCHAR', '20', 1, 3, 'photo', 0, '', 0, 0, 1, '<input name=\\"picfbl\\" type=\\"text\\" id=\\"picfbl\\" value=\\"<?=$elvefirstpost==1?\\"\\":DoReqValue($mid,\\''picfbl\\'',stripSlashes($r[picfbl]))?>\\" size=\\"42\\">\r\n', 0, '', 0, '', 1, 0, '', '', '', '', '', '', 0, 0, ''),
(34, 'picfrom', '来源', 'text', '<input name=\\"picfrom\\" type=\\"text\\" id=\\"picfrom\\" value=\\"<?=$elvefirstpost==1?\\"\\":ehtmlspecialchars(stripSlashes($r[picfrom]))?>\\" size=\\"60\\">\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--melve.name--]正则：</strong><br>\r\n      (<input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--picfrom--]\\" size=\\"20\\">)</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr> \r\n          <td><textarea name=\\"add[zz_picfrom]\\" cols=\\"60\\" rows=\\"10\\" id=\\"textarea\\"><?=ehtmlspecialchars(stripSlashes($r[zz_picfrom]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\"add[z_picfrom]\\" type=\\"text\\" id=\\"add[z_picfrom]\\" value=\\"<?=stripSlashes($r[z_picfrom])?>\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 1, 'VARCHAR', '120', 1, 3, 'photo', 0, '', 0, 0, 1, '<input name=\\"picfrom\\" type=\\"text\\" id=\\"picfrom\\" value=\\"<?=$elvefirstpost==1?\\"\\":DoReqValue($mid,\\''picfrom\\'',stripSlashes($r[picfrom]))?>\\" size=\\"42\\">\r\n', 0, '', 0, '', 1, 0, '', '', '', '', '', '', 0, 0, ''),
(35, 'picurl', '图片大图', 'img', '\r\n<input name=\\"picurl\\" type=\\"text\\" id=\\"picurl\\" value=\\"<?=$elvefirstpost==1?\\"\\":ehtmlspecialchars(stripSlashes($r[picurl]))?>\\" size=\\"45\\">\r\n<a onclick=\\"window.open(\\''elveeditor/FileMain.php?type=1&classid=<?=$classid?>&infoid=<?=$id?>&filepass=<?=$filepass?>&sinfo=1&doing=1&field=picurl\\'',\\''\\'',\\''width=700,height=550,scrollbars=yes\\'');\\" title=\\"选择已上传的图片\\"><img src=\\"../data/images/changeimg.gif\\" border=\\"0\\" align=\\"absbottom\\"></a> \r\n', '', 1, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--melve.name--]正则：</strong><br>\r\n      ( \r\n      <input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--picurl--]\\" size=\\"20\\">\r\n      )</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n    <tr>\r\n      <td>附件前缀 \r\n        <input name=\\"add[qz_picurl]\\" type=\\"text\\" id=\\"add[qz_picurl]\\" value=\\"<?=stripSlashes($r[qz_picurl])?>\\"> \r\n        <input name=\\"add[save_picurl]\\" type=\\"checkbox\\" id=\\"add[save_picurl]\\" value=\\" checked\\"<?=$r[save_picurl]?>>\r\n        远程保存 </td>\r\n    </tr>\r\n    <tr> \r\n      <td><textarea name=\\"add[zz_picurl]\\" cols=\\"60\\" rows=\\"10\\" id=\\"add[zz_picurl]\\"><?=ehtmlspecialchars(stripSlashes($r[zz_picurl]))?></textarea></td>\r\n    </tr>\r\n    <tr> \r\n      <td><input name=\\"add[z_picurl]\\" type=\\"text\\" id=\\"picurl5\\" value=\\"<?=stripSlashes($r[z_picurl])?>\\">\r\n        (如填写这里，这就是字段的值)</td>\r\n    </tr>\r\n  </table></td>\r\n  </tr>\r\n', 2, 'VARCHAR', '200', 1, 3, 'photo', 0, '', 0, 0, 1, '\r\n<input type=\\"file\\" name=\\"picurlfile\\" size=\\"45\\">\r\n', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(36, 'morepic', '图片集', 'text', '\r\n<script>\r\nfunction dopicadd()\r\n{var i;\r\nvar str=\\"\\";\r\nvar oldi=0;\r\nvar j=0;\r\noldi=parseInt(document.add.morepicnum.value);\r\nfor(i=1;i<=document.add.downmorepicnum.value;i++)\r\n{\r\nj=i+oldi;\r\nstr=str+\\"<tr><td width=7%><div align=center>\\"+j+\\"</div></td><td width=33%><div align=center><input name=msmallpic[] type=text size=28 id=msmallpic\\"+j+\\" ondblclick=SpOpenChFile(1,\\''msmallpic\\"+j+\\"\\'')><br><input type=file name=msmallpfile[] size=15></div></td><td width=30%><div align=center><input name=mbigpic[] type=text size=28 id=mbigpic\\"+j+\\" ondblclick=SpOpenChFile(1,\\''mbigpic\\"+j+\\"\\'')><br><input type=file name=mbigpfile[] size=15></div></td><td width=30%><div align=center><input name=mpicname[] type=text></div></td></tr>\\";\r\n}\r\ndocument.getElementById(\\"addpicdown\\").innerHTML=\\"<table width=\\''100%\\'' border=0 cellspacing=1 cellpadding=3>\\"+str+\\"</table>\\";\r\n}\r\n</script>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\">\r\n  <tr>\r\n    <td height=\\"25\\">\r\n	图片地址前缀:\r\n      <input name=\\"mpicurl_qz\\" type=\\"text\\" id=\\"mpicurl_qz\\">&nbsp;&nbsp;\r\n	  <input type=\\"checkbox\\" name=\\"msavepic\\" value=\\"1\\">远程保存&nbsp;<input type=\\"checkbox\\" name=\\"mcreatespic\\" value=\\"1\\" onclick=\\"if(this.checked){setmcreatespic.style.display=\\''\\'';}else{setmcreatespic.style.display=\\''none\\'';}\\">生成缩图\r\n	  <span id=\\"setmcreatespic\\" style=\\"display=none\\">：<input type=text name=\\"mcreatespicwidth\\" size=4 value=\\"<?=$public_r[spicwidth]?>\\">*<input type=text name=\\"mcreatespicheight\\" size=4 value=\\"<?=$public_r[spicheight]?>\\">(宽*高)</span>\r\n </td>\r\n  </tr>\r\n  <tr> \r\n    <td><table width=\\"100%\\" border=0 align=center cellpadding=3 cellspacing=1>\r\n  <tr bgcolor=\\"#DBEAF5\\"> \r\n    <td width=\\"7%\\"><div align=center>编号</div></td>\r\n    <td width=\\"33%\\"><div align=center>缩图 <font color=\\"#666666\\">(双击选择)</font></div></td>\r\n    <td width=\\"30%\\"><div align=center>大图 <font color=\\"#666666\\">(双击选择)</font></div></td>\r\n    <td width=\\"30%\\"><div align=center>图片说明</div></td>\r\n  </tr>\r\n</table></td>\r\n  </tr>\r\n  <tr> \r\n    <td>\r\n    <?php\r\n    if($elvefirstpost==1)\r\n    {\r\n	?>\r\n	<table width=\\''100%\\'' border=0 align=center cellpadding=3 cellspacing=1>\r\n	<?php\r\n	$morepicnum=3;\r\n	for($mppathi=1;$mppathi<=$morepicnum;$mppathi++)\r\n	{\r\n	?>\r\n	<tr> \r\n		<td width=\\''7%\\''><div align=center><?=$mppathi?></div></td>\r\n		<td width=\\''33%\\''><div align=center>\r\n		<input name=msmallpic[] type=text id=\\''msmallpic<?=$mppathi?>\\'' size=28 ondblclick=\\"SpOpenChFile(1,\\''msmallpic<?=$mppathi?>\\'');\\">\r\n		<br><input type=file name=msmallpfile[] size=15>\r\n		</div></td>\r\n		<td width=\\''30%\\''><div align=center>\r\n		<input name=mbigpic[] type=text id=\\''mbigpic<?=$mppathi?>\\'' size=28 ondblclick=\\"SpOpenChFile(1,\\''mbigpic<?=$mppathi?>\\'');\\">\r\n		<br><input type=file name=mbigpfile[] size=15>\r\n		</div></td>\r\n		<td width=\\''30%\\''><div align=center>\r\n		<input name=mpicname[] type=text id=\\''mpicname<?=$mppathi?>\\''>\r\n		</div></td>\r\n	</tr>\r\n	<?php\r\n	}\r\n	?>\r\n	</table>\r\n	<?php\r\n    }\r\n    else\r\n    {\r\n	$morepicpath=\\"\\";\r\n	$morepicnum=0;\r\n	if($r[morepic])\r\n    	{\r\n    		$r[morepic]=stripSlashes($r[morepic]);\r\n    		//地址\r\n    		$j=0;\r\n    		$pd_record=explode(\\"\\\\r\\\\n\\",$r[morepic]);\r\n    		for($i=0;$i<count($pd_record);$i++)\r\n    		{\r\n			$j=$i+1;\r\n    			$pd_field=explode(\\"::::::\\",$pd_record[$i]);\r\n			$morepicpath.=\\"<tr> \r\n    <td width=\\''7%\\''><div align=center>\\".$j.\\"</div></td>\r\n    <td width=\\''33%\\''><div align=center>\r\n        <input name=msmallpic[] type=text value=\\''\\".$pd_field[0].\\"\\'' size=28 id=msmallpic\\".$j.\\" ondblclick=\\\\\\"SpOpenChFile(1,\\''msmallpic\\".$j.\\"\\'');\\\\\\">\r\n		<br><input type=file name=msmallpfile[] size=15>\r\n      </div></td>\r\n    <td width=\\''30%\\''><div align=center>\r\n        <input name=mbigpic[] type=text value=\\''\\".$pd_field[1].\\"\\'' size=28 id=mbigpic\\".$j.\\" ondblclick=\\\\\\"SpOpenChFile(1,\\''mbigpic\\".$j.\\"\\'');\\\\\\">\r\n		<br><input type=file name=mbigpfile[] size=15>\r\n      </div></td>\r\n    <td width=\\''30%\\''><div align=center>\r\n        <input name=mpicname[] type=text value=\\''\\".$pd_field[2].\\"\\''><input type=hidden name=mpicid[] value=\\".$j.\\"><input type=checkbox name=mdelpicid[] value=\\".$j.\\">删\r\n      </div></td>\r\n  </tr>\\";\r\n    		}\r\n    		$morepicnum=$j;\r\n    		$morepicpath=\\"<table width=\\''100%\\'' border=0 cellspacing=1 cellpadding=3>\\".$morepicpath.\\"</table>\\";\r\n    	}\r\n	echo $morepicpath;\r\n    }\r\n    ?>\r\n    </td>\r\n  </tr>\r\n  <tr> \r\n    <td height=\\"25\\">地址扩展数量: <input name=\\"morepicnum\\" type=\\"hidden\\" id=\\"morepicnum\\" value=\\"<?=$morepicnum?>\\">\r\n      <input name=\\"downmorepicnum\\" type=\\"text\\" value=\\"1\\" size=\\"6\\"> <input type=\\"button\\" name=\\"Submit5\\" value=\\"输出地址\\" onclick=\\"javascript:dopicadd();\\"></td>\r\n  </tr>\r\n  <tr> \r\n    <td id=addpicdown></td>\r\n  </tr>\r\n</table>\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--melve.name--]正则：</strong><br>\r\n      (\r\n      <input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--elvespicurl--]\\" size=\\"20\\">\r\n      <br>\r\n      <input name=\\"textfield2\\" type=\\"text\\" id=\\"textfield2\\" value=\\"[!--elvebpicurl--]\\" size=\\"20\\">\r\n	  <br>\r\n      <input name=\\"textfield2\\" type=\\"text\\" id=\\"textfield2\\" value=\\"[!--elvepicname--]\\" size=\\"20\\">\r\n      )<br>\r\n      格式:缩略图[!Elvescms!]大图[!Elvescms!]名称</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr> \r\n          <td><textarea name=\\"add[zz_morepic]\\" cols=\\"60\\" rows=\\"10\\" id=\\"textarea\\"><?=ehtmlspecialchars(stripSlashes($r[zz_morepic]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td>地址前缀:\r\n<input name=\\"add[qz_morepic]\\" type=\\"text\\" id=\\"add[qz_morepic]\\" value=\\"<?=stripSlashes($r[qz_morepic])?>\\">\r\n<input name=\\"add[save_morepic]\\" type=\\"checkbox\\" id=\\"add[save_morepic]\\" value=\\" checked\\"<?=$r[save_morepic]?>>\r\n        远程保存\r\n        </td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 2, 'MEDIUMTEXT', '', 1, 3, 'photo', 0, '', 0, 0, 1, '\r\n<script>\r\nfunction dopicadd()\r\n{var i;\r\nvar str=\\"\\";\r\nvar oldi=0;\r\nvar j=0;\r\noldi=parseInt(document.add.morepicnum.value);\r\nfor(i=1;i<=document.add.downmorepicnum.value;i++)\r\n{\r\nj=i+oldi;\r\nstr=str+\\"<tr><td width=7%><div align=center>\\"+j+\\"</div></td><td width=33%><div align=center><input name=msmallpic[] type=text size=28 id=msmallpic\\"+j+\\"></div></td><td width=30%><div align=center><input name=mbigpic[] type=text size=28 id=mbigpic\\"+j+\\"></div></td><td width=30%><div align=center><input name=mpicname[] type=text></div></td></tr>\\";\r\n}\r\ndocument.getElementById(\\"addpicdown\\").innerHTML=\\"<table width=\\''100%\\'' border=0 cellspacing=1 cellpadding=3>\\"+str+\\"</table>\\";\r\n}\r\n</script>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\">\r\n  <tr>\r\n    <td height=\\"25\\">\r\n	图片地址前缀:\r\n      <input name=\\"mpicurl_qz\\" type=\\"text\\" id=\\"mpicurl_qz\\" size=\\"32\\">\r\n      &nbsp;</td>\r\n  </tr>\r\n  <tr> \r\n    <td><table width=100% border=0 align=center cellpadding=3 cellspacing=1>\r\n  <tr bgcolor=\\''#DBEAF5\\''> \r\n    <td width=7%><div align=center>编号</div></td>\r\n    <td width=33%><div align=center>缩图</div></td>\r\n    <td width=30%><div align=center>大图</div></td>\r\n    <td width=30%><div align=center>图片说明</div></td>\r\n  </tr>\r\n</table></td>\r\n  </tr>\r\n  <tr> \r\n    <td> \r\n    <?php\r\n    if($elvefirstpost==1)\r\n    {\r\n	?>\r\n	<table width=\\''100%\\'' border=0 align=center cellpadding=3 cellspacing=1>\r\n	<?php\r\n	$morepicnum=3;\r\n	for($mppathi=1;$mppathi<=$morepicnum;$mppathi++)\r\n	{\r\n	?>\r\n	<tr> \r\n		<td width=\\''7%\\''><div align=center><?=$mppathi?></div></td>\r\n		<td width=\\''33%\\''><div align=center>\r\n		<input name=msmallpic[] type=text id=msmallpic[] size=28>\r\n		</div></td>\r\n		<td width=\\''30%\\''><div align=center>\r\n		<input name=mbigpic[] type=text id=mbigpic[] size=28>\r\n		</div></td>\r\n		<td width=\\''30%\\''><div align=center>\r\n		<input name=mpicname[] type=text id=mpicname[]>\r\n		</div></td>\r\n	</tr>\r\n	<?php\r\n	}\r\n	?>\r\n	</table>\r\n	<?php\r\n    }\r\n    else\r\n    {\r\n	$morepicpath=\\"\\";\r\n	$morepicnum=0;\r\n	if($r[morepic])\r\n	{\r\n		$r[morepic]=stripSlashes($r[morepic]);\r\n		//地址\r\n		$j=0;\r\n		$pd_record=explode(\\"\\\\r\\\\n\\",$r[morepic]);\r\n		for($i=0;$i<count($pd_record);$i++)\r\n		{\r\n			$j=$i+1;\r\n			$pd_field=explode(\\"::::::\\",$pd_record[$i]);\r\n			$morepicpath.=\\"<tr> \r\n	<td width=\\''7%\\''><div align=center>\\".$j.\\"</div></td>\r\n    <td width=\\''33%\\''><div align=center>\r\n        <input name=msmallpic[] type=text value=\\''\\".$pd_field[0].\\"\\'' size=28>\r\n      </div></td>\r\n    <td width=\\''30%\\''><div align=center>\r\n        <input name=mbigpic[] type=text value=\\''\\".$pd_field[1].\\"\\'' size=28>\r\n      </div></td>\r\n    <td width=\\''30%\\''><div align=center>\r\n        <input name=mpicname[] type=text value=\\''\\".$pd_field[2].\\"\\''><input type=hidden name=mpicid[] value=\\".$j.\\"><input type=checkbox name=mdelpicid[] value=\\".$j.\\">删\r\n      </div></td></tr>\\";\r\n		}\r\n		$morepicnum=$j;\r\n		$morepicpath=\\"<table width=\\''100%\\'' border=0 cellspacing=1 cellpadding=3>\\".$morepicpath.\\"</table>\\";\r\n	}\r\n	echo $morepicpath;\r\n    }\r\n    ?>\r\n    </td>\r\n  </tr>\r\n  <tr> \r\n    <td height=\\"25\\">地址扩展数量: <input name=\\"morepicnum\\" type=\\"hidden\\" id=\\"morepicnum\\" value=\\"<?=$morepicnum?>\\">\r\n      <input name=\\"downmorepicnum\\" type=\\"text\\" value=\\"1\\" size=\\"6\\"> <input type=\\"button\\" name=\\"Submit5\\" value=\\"输出地址\\" onclick=\\"javascript:dopicadd();\\"></td>\r\n  </tr>\r\n  <tr> \r\n    <td id=addpicdown></td>\r\n  </tr>\r\n</table>\r\n', 0, '', 0, '', 1, 0, '', '', '', '', '', '', 0, 0, ''),
(37, 'num', '每行显示条数', 'text', '<input name=\\"num\\" type=\\"text\\" id=\\"num\\" value=\\"<?=$elvefirstpost==1?\\"3\\":ehtmlspecialchars(stripSlashes($r[num]))?>\\" size=\\"\\">\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--melve.name--]正则：</strong><br>\r\n      (<input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--num--]\\" size=\\"20\\">)</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr> \r\n          <td><textarea name=\\"add[zz_num]\\" cols=\\"60\\" rows=\\"10\\" id=\\"textarea\\"><?=ehtmlspecialchars(stripSlashes($r[zz_num]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\"add[z_num]\\" type=\\"text\\" id=\\"add[z_num]\\" value=\\"<?=stripSlashes($r[z_num])?>\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 2, 'TINYINT', '', 1, 3, 'photo', 0, '3', 0, 0, 1, '<input name=\\"num\\" type=\\"text\\" id=\\"num\\" value=\\"<?=$elvefirstpost==1?\\"3\\":DoReqValue($mid,\\''num\\'',stripSlashes($r[num]))?>\\" size=\\"3\\">\r\n', 0, '', 0, '', 1, 0, '', '', '', '', '', '', 0, 0, ''),
(38, 'width', '缩图宽度', 'text', '<input name=\\"width\\" type=\\"text\\" id=\\"width\\" value=\\"<?=$elvefirstpost==1?\\"\\":ehtmlspecialchars(stripSlashes($r[width]))?>\\" size=\\"6\\">\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--melve.name--]正则：</strong><br>\r\n      (<input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--width--]\\" size=\\"20\\">)</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr> \r\n          <td><textarea name=\\"add[zz_width]\\" cols=\\"60\\" rows=\\"10\\" id=\\"textarea\\"><?=ehtmlspecialchars(stripSlashes($r[zz_width]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\"add[z_width]\\" type=\\"text\\" id=\\"add[z_width]\\" value=\\"<?=stripSlashes($r[z_width])?>\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 2, 'VARCHAR', '12', 1, 3, 'photo', 0, '', 0, 0, 1, '<input name=\\"width\\" type=\\"text\\" id=\\"width\\" value=\\"<?=$elvefirstpost==1?\\"\\":DoReqValue($mid,\\''width\\'',stripSlashes($r[width]))?>\\" size=\\"6\\">\r\n', 0, '', 0, '', 1, 0, '', '', '', '', '', '', 0, 0, ''),
(39, 'height', '缩图高度', 'text', '<input name=\\"height\\" type=\\"text\\" id=\\"height\\" value=\\"<?=$elvefirstpost==1?\\"\\":ehtmlspecialchars(stripSlashes($r[height]))?>\\" size=\\"6\\">\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--melve.name--]正则：</strong><br>\r\n      (<input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--height--]\\" size=\\"20\\">)</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr> \r\n          <td><textarea name=\\"add[zz_height]\\" cols=\\"60\\" rows=\\"10\\" id=\\"textarea\\"><?=ehtmlspecialchars(stripSlashes($r[zz_height]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\"add[z_height]\\" type=\\"text\\" id=\\"add[z_height]\\" value=\\"<?=stripSlashes($r[z_height])?>\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 2, 'VARCHAR', '12', 1, 3, 'photo', 0, '', 0, 0, 1, '<input name=\\"height\\" type=\\"text\\" id=\\"height\\" value=\\"<?=$elvefirstpost==1?\\"\\":DoReqValue($mid,\\''height\\'',stripSlashes($r[height]))?>\\" size=\\"6\\">\r\n', 0, '', 0, '', 1, 0, '', '', '', '', '', '', 0, 0, ''),
(40, 'picsay', '图片简介', 'textarea', '<textarea name=\\"picsay\\" cols=\\"80\\" rows=\\"10\\" id=\\"picsay\\"><?=$elvefirstpost==1?\\"\\":ehtmlspecialchars(stripSlashes($r[picsay]))?></textarea>\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--melve.name--]正则：</strong><br>\r\n      (<input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--picsay--]\\" size=\\"20\\">)</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr> \r\n          <td><textarea name=\\"add[zz_picsay]\\" cols=\\"60\\" rows=\\"10\\" id=\\"textarea\\"><?=ehtmlspecialchars(stripSlashes($r[zz_picsay]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\"add[z_picsay]\\" type=\\"text\\" id=\\"add[z_picsay]\\" value=\\"<?=stripSlashes($r[z_picsay])?>\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 2, 'TEXT', '', 1, 3, 'photo', 0, '', 0, 1, 1, '<textarea name=\\"picsay\\" cols=\\"60\\" rows=\\"10\\" id=\\"picsay\\"><?=$elvefirstpost==1?\\"\\":DoReqValue($mid,\\''picsay\\'',stripSlashes($r[picsay]))?></textarea>\r\n', 0, '', 0, '80,10', 0, 0, '', '', '', '', '', '', 0, 1, ''),
(41, 'title', '标题', 'text', '\r\n<table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#DBEAF5">\r\n<tr> \r\n  <td height="25" bgcolor="#FFFFFF">\r\n	<?=$tts?"<select name=''ttid''><option value=''0''>标题分类</option>$tts</select>":""?>\r\n	<input type=text name=title value="<?=ehtmlspecialchars(stripSlashes($r[title]))?>" size="60"> \r\n	<input type="button" name="button" value="图文" onclick="document.add.title.value=document.add.title.value+''(图文)'';"> \r\n  </td>\r\n</tr>\r\n<tr> \r\n  <td height="25" bgcolor="#FFFFFF">属性: \r\n	<input name="titlefont[b]" type="checkbox" value="b"<?=$titlefontb?>>粗体\r\n	<input name="titlefont[i]" type="checkbox" value="i"<?=$titlefonti?>>斜体\r\n	<input name="titlefont[s]" type="checkbox" value="s"<?=$titlefonts?>>删除线\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;颜色: <input name="titlecolor" type="text" value="<?=stripSlashes($r[titlecolor])?>" size="10"><a onclick="foreColor();"><img src="../data/images/color.gif" width="21" height="21" align="absbottom"></a>\r\n  </td>\r\n</tr>\r\n</table>\r\n', '标题', 0, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--melve.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--title--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_title]" cols="60" rows="10" id="textarea"><?=ehtmlspecialchars(stripSlashes($r[zz_title]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_title]" type="text" id="add[z_title]" value="<?=stripSlashes($r[z_title])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 0, 'CHAR', '100', 1, 4, 'flash', 0, '', 0, 0, 0, '\r\n<input name="title" type="text" size="42" value="<?=$elvefirstpost==1?"":DoReqValue($mid,''title'',stripSlashes($r[title]))?>">\r\n', 0, '', 0, '60', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(42, 'special.field', '特殊属性', '', '\r\n<table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#DBEAF5">\r\n  <tr>\r\n    <td height="25" bgcolor="#FFFFFF">信息属性: \r\n      <input name="checked" type="checkbox" value="1"<?=$r[checked]?'' checked'':''''?>>\r\n      审核 &nbsp;&nbsp; 推荐 \r\n      <select name="isgood" id="isgood">\r\n        <option value="0">不推荐</option>\r\n	<?=$ftnr[''igname'']?>\r\n      </select>\r\n      &nbsp;&nbsp; 头条 \r\n      <select name="firsttitle" id="firsttitle">\r\n        <option value="0">非头条</option>\r\n	<?=$ftnr[''ftname'']?>\r\n      </select></td>\r\n  </tr>\r\n  <tr> \r\n    <td height="25" bgcolor="#FFFFFF">关键字&nbsp;&nbsp;&nbsp;: \r\n      <input name="keyboard" type="text" size="52" value="<?=stripSlashes($r[keyboard])?>">\r\n      <font color="#666666">(多个请用&quot;,&quot;隔开)</font></td>\r\n  </tr>\r\n  <tr> \r\n    <td height="25" bgcolor="#FFFFFF">外部链接: \r\n      <input name="titleurl" type="text" value="<?=stripSlashes($r[titleurl])?>" size="52">\r\n      <font color="#666666">(填写后信息连接地址将为此链接)</font></td>\r\n  </tr>\r\n</table>\r\n', '特殊属性', 0, 1, 0, '\r\n\r\n', 0, '', '0', 0, 4, 'flash', 0, '', 0, 0, 0, '\r\n<input name="keyboard" type="text" size=42 value="<?=stripSlashes($r[keyboard])?>">\r\n<font color="#666666">(多个请用&quot;,&quot;隔开)</font>\r\n', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(43, 'titlepic', '标题图片', 'img', '\r\n<input name="titlepic" type="text" id="titlepic" value="<?=$elvefirstpost==1?"":ehtmlspecialchars(stripSlashes($r[titlepic]))?>" size="45">\r\n<a onclick="window.open(''elveeditor/FileMain.php?type=1&classid=<?=$classid?>&infoid=<?=$id?>&filepass=<?=$filepass?>&sinfo=1&doing=1&field=titlepic'','''',''width=700,height=550,scrollbars=yes'');" title="选择已上传的图片"><img src="../data/images/changeimg.gif" border="0" align="absbottom"></a> \r\n', '标题图片', 0, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--melve.name--]正则：</strong><br>\r\n      ( \r\n      <input name="textfield" type="text" id="textfield" value="[!--titlepic--]" size="20">\r\n      )</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n    <tr>\r\n      <td>附件前缀 \r\n        <input name="add[qz_titlepic]" type="text" id="add[qz_titlepic]" value="<?=stripSlashes($r[qz_titlepic])?>"> \r\n        <input name="add[save_titlepic]" type="checkbox" id="add[save_titlepic]" value=" checked"<?=$r[save_titlepic]?>>\r\n        远程保存 </td>\r\n    </tr>\r\n    <tr> \r\n      <td><textarea name="add[zz_titlepic]" cols="60" rows="10" id="add[zz_titlepic]"><?=ehtmlspecialchars(stripSlashes($r[zz_titlepic]))?></textarea></td>\r\n    </tr>\r\n    <tr> \r\n      <td><input name="add[z_titlepic]" type="text" id="titlepic5" value="<?=stripSlashes($r[z_titlepic])?>">\r\n        (如填写这里，这就是字段的值)</td>\r\n    </tr>\r\n  </table></td>\r\n  </tr>\r\n', 1, 'CHAR', '120', 1, 4, 'flash', 0, '', 0, 0, 0, '\r\n<input type="file" name="titlepicfile" size="45">\r\n', 0, '', 0, '60', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(44, 'newstime', '发布时间', 'text', '\r\n<input name="newstime" type="text" value="<?=$r[newstime]?>"><input type=button name=button value="设为当前时间" onclick="document.add.newstime.value=''<?=$todaytime?>''">\r\n', '发布时间', 0, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--melve.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--newstime--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_newstime]" cols="60" rows="10" id="textarea"><?=ehtmlspecialchars(stripSlashes($r[zz_newstime]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_newstime]" type="text" id="add[z_newstime]" value="<?=stripSlashes($r[z_newstime])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 0, 'INT', '11', 1, 4, 'flash', 0, '', 1, 0, 0, '\r\n\r\n', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(45, 'flashwriter', '作者', 'text', '<input name=\\"flashwriter\\" type=\\"text\\" id=\\"flashwriter\\" value=\\"<?=$elvefirstpost==1?\\"\\":ehtmlspecialchars(stripSlashes($r[flashwriter]))?>\\" size=\\"60\\">\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--melve.name--]正则：</strong><br>\r\n      (<input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--flashwriter--]\\" size=\\"20\\">)</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr> \r\n          <td><textarea name=\\"add[zz_flashwriter]\\" cols=\\"60\\" rows=\\"10\\" id=\\"textarea\\"><?=ehtmlspecialchars(stripSlashes($r[zz_flashwriter]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\"add[z_flashwriter]\\" type=\\"text\\" id=\\"add[z_flashwriter]\\" value=\\"<?=stripSlashes($r[z_flashwriter])?>\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 1, 'VARCHAR', '30', 1, 4, 'flash', 0, '', 0, 0, 1, '<input name=\\"flashwriter\\" type=\\"text\\" id=\\"flashwriter\\" value=\\"<?=$elvefirstpost==1?\\"\\":DoReqValue($mid,\\''flashwriter\\'',stripSlashes($r[flashwriter]))?>\\" size=\\"42\\">\r\n', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(46, 'email', '作者邮箱', 'text', '<input name=\\"email\\" type=\\"text\\" id=\\"email\\" value=\\"<?=$elvefirstpost==1?\\"\\":ehtmlspecialchars(stripSlashes($r[email]))?>\\" size=\\"60\\">\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--melve.name--]正则：</strong><br>\r\n      (<input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--email--]\\" size=\\"20\\">)</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr> \r\n          <td><textarea name=\\"add[zz_email]\\" cols=\\"60\\" rows=\\"10\\" id=\\"textarea\\"><?=ehtmlspecialchars(stripSlashes($r[zz_email]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\"add[z_email]\\" type=\\"text\\" id=\\"add[z_email]\\" value=\\"<?=stripSlashes($r[z_email])?>\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 1, 'VARCHAR', '80', 1, 4, 'flash', 0, '', 0, 0, 1, '<input name=\\"email\\" type=\\"text\\" id=\\"email\\" value=\\"<?=$elvefirstpost==1?\\"\\":DoReqValue($mid,\\''email\\'',stripSlashes($r[email]))?>\\" size=\\"42\\">\r\n', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(47, 'star', '作品等级', 'select', '<select name=\\"star\\" id=\\"star\\"><option value=\\"1\\"<?=$r[star]==\\"1\\"?\\'' selected\\'':\\''\\''?>>1星</option><option value=\\"2\\"<?=$r[star]==\\"2\\"||$elvefirstpost==1?\\'' selected\\'':\\''\\''?>>2星</option><option value=\\"3\\"<?=$r[star]==\\"3\\"?\\'' selected\\'':\\''\\''?>>3星</option><option value=\\"4\\"<?=$r[star]==\\"4\\"?\\'' selected\\'':\\''\\''?>>4星</option><option value=\\"5\\"<?=$r[star]==\\"5\\"?\\'' selected\\'':\\''\\''?>>5星</option></select>', '', 1, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--melve.name--]正则：</strong><br>\r\n      (<input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--star--]\\" size=\\"20\\">)</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr> \r\n          <td><textarea name=\\"add[zz_star]\\" cols=\\"60\\" rows=\\"10\\" id=\\"textarea\\"><?=ehtmlspecialchars(stripSlashes($r[zz_star]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\"add[z_star]\\" type=\\"text\\" id=\\"add[z_star]\\" value=\\"<?=stripSlashes($r[z_star])?>\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 1, 'TINYINT', '1', 1, 4, 'flash', 0, '1|2:default|3|4|5', 0, 0, 1, '<select name=\\"star\\" id=\\"star\\"><option value=\\"1\\"<?=$r[star]==\\"1\\"?\\'' selected\\'':\\''\\''?>>1星</option><option value=\\"2\\"<?=$r[star]==\\"2\\"||$elvefirstpost==1?\\'' selected\\'':\\''\\''?>>2星</option><option value=\\"3\\"<?=$r[star]==\\"3\\"?\\'' selected\\'':\\''\\''?>>3星</option><option value=\\"4\\"<?=$r[star]==\\"4\\"?\\'' selected\\'':\\''\\''?>>4星</option><option value=\\"5\\"<?=$r[star]==\\"5\\"?\\'' selected\\'':\\''\\''?>>5星</option></select>', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(48, 'filesize', '文件大小', 'text', '<input name=\\"filesize\\" type=\\"text\\" id=\\"filesize\\" value=\\"<?=$elvefirstpost==1?\\"\\":ehtmlspecialchars(stripSlashes($r[filesize]))?>\\" size=\\"60\\">\r\n<select name=\\"select\\" onchange=\\"document.add.filesize.value+=this.value\\">\r\n        <option value=\\"\\">单位</option>\r\n        <option value=\\" MB\\">MB</option>\r\n        <option value=\\" KB\\">KB</option>\r\n        <option value=\\" GB\\">GB</option>\r\n        <option value=\\" BYTES\\">BYTES</option>\r\n      </select>', '', 1, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--melve.name--]正则：</strong><br>\r\n      (<input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--filesize--]\\" size=\\"20\\">)</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr> \r\n          <td><textarea name=\\"add[zz_filesize]\\" cols=\\"60\\" rows=\\"10\\" id=\\"textarea\\"><?=ehtmlspecialchars(stripSlashes($r[zz_filesize]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\"add[z_filesize]\\" type=\\"text\\" id=\\"add[z_filesize]\\" value=\\"<?=stripSlashes($r[z_filesize])?>\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 1, 'VARCHAR', '16', 1, 4, 'flash', 0, '', 0, 0, 1, '<input name=\\"filesize\\" type=\\"text\\" id=\\"filesize\\" value=\\"<?=$elvefirstpost==1?\\"\\":DoReqValue($mid,\\''filesize\\'',stripSlashes($r[filesize]))?>\\" size=\\"42\\">\r\n<select name=\\"select\\" onchange=\\"document.add.filesize.value+=this.value\\">\r\n        <option value=\\"\\">单位</option>\r\n        <option value=\\" MB\\">MB</option>\r\n        <option value=\\" KB\\">KB</option>\r\n        <option value=\\" GB\\">GB</option>\r\n        <option value=\\" BYTES\\">BYTES</option>\r\n      </select>', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(49, 'flashurl', 'Flash地址', 'flash', '\r\n<input name=\\"flashurl\\" type=\\"text\\" id=\\"flashurl\\" value=\\"<?=$elvefirstpost==1?\\"\\":ehtmlspecialchars(stripSlashes($r[flashurl]))?>\\" size=\\"45\\">\r\n<a onclick=\\"window.open(\\''elveeditor/FileMain.php?type=2&classid=<?=$classid?>&infoid=<?=$id?>&filepass=<?=$filepass?>&sinfo=1&doing=1&field=flashurl\\'',\\''\\'',\\''width=700,height=550,scrollbars=yes\\'');\\" title=\\"选择已上传的FLASH\\"><img src=\\"../data/images/changeflash.gif\\" border=\\"0\\" align=\\"absbottom\\"></a> \r\n', '', 1, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--melve.name--]正则：</strong><br>\r\n      ( \r\n      <input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--flashurl--]\\" size=\\"20\\">\r\n      )</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n    <tr>\r\n      <td>附件前缀 \r\n        <input name=\\"add[qz_flashurl]\\" type=\\"text\\" id=\\"add[qz_flashurl]\\" value=\\"<?=stripSlashes($r[qz_flashurl])?>\\"> \r\n        <input name=\\"add[save_flashurl]\\" type=\\"checkbox\\" id=\\"add[save_flashurl]\\" value=\\" checked\\"<?=$r[save_flashurl]?>>\r\n        远程保存 </td>\r\n    </tr>\r\n    <tr> \r\n      <td><textarea name=\\"add[zz_flashurl]\\" cols=\\"60\\" rows=\\"10\\" id=\\"add[zz_flashurl]\\"><?=ehtmlspecialchars(stripSlashes($r[zz_flashurl]))?></textarea></td>\r\n    </tr>\r\n    <tr> \r\n      <td><input name=\\"add[z_flashurl]\\" type=\\"text\\" id=\\"flashurl5\\" value=\\"<?=stripSlashes($r[z_flashurl])?>\\">\r\n        (如填写这里，这就是字段的值)</td>\r\n    </tr>\r\n  </table></td>\r\n  </tr>\r\n', 1, 'VARCHAR', '255', 1, 4, 'flash', 0, '', 0, 0, 1, '\r\n<input type=\\"file\\" name=\\"flashurlfile\\" size=\\"45\\">\r\n', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(50, 'width', 'Flash宽度', 'text', '<input name=\\"width\\" type=\\"text\\" id=\\"width\\" value=\\"<?=$elvefirstpost==1?\\"600\\":ehtmlspecialchars(stripSlashes($r[width]))?>\\" size=\\"6\\">\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--melve.name--]正则：</strong><br>\r\n      (<input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--width--]\\" size=\\"20\\">)</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr> \r\n          <td><textarea name=\\"add[zz_width]\\" cols=\\"60\\" rows=\\"10\\" id=\\"textarea\\"><?=ehtmlspecialchars(stripSlashes($r[zz_width]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\"add[z_width]\\" type=\\"text\\" id=\\"add[z_width]\\" value=\\"<?=stripSlashes($r[z_width])?>\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 1, 'VARCHAR', '12', 1, 4, 'flash', 0, '600', 0, 0, 1, '<input name=\\"width\\" type=\\"text\\" id=\\"width\\" value=\\"<?=$elvefirstpost==1?\\"600\\":DoReqValue($mid,\\''width\\'',stripSlashes($r[width]))?>\\" size=\\"6\\">\r\n', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(51, 'height', 'Flash高度', 'text', '<input name=\\"height\\" type=\\"text\\" id=\\"height\\" value=\\"<?=$elvefirstpost==1?\\"450\\":ehtmlspecialchars(stripSlashes($r[height]))?>\\" size=\\"6\\">\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--melve.name--]正则：</strong><br>\r\n      (<input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--height--]\\" size=\\"20\\">)</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr> \r\n          <td><textarea name=\\"add[zz_height]\\" cols=\\"60\\" rows=\\"10\\" id=\\"textarea\\"><?=ehtmlspecialchars(stripSlashes($r[zz_height]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\"add[z_height]\\" type=\\"text\\" id=\\"add[z_height]\\" value=\\"<?=stripSlashes($r[z_height])?>\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 1, 'VARCHAR', '12', 1, 4, 'flash', 0, '450', 0, 0, 1, '<input name=\\"height\\" type=\\"text\\" id=\\"height\\" value=\\"<?=$elvefirstpost==1?\\"450\\":DoReqValue($mid,\\''height\\'',stripSlashes($r[height]))?>\\" size=\\"6\\">\r\n', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(52, 'flashsay', '作品简介', 'textarea', '<textarea name=\\"flashsay\\" cols=\\"80\\" rows=\\"10\\" id=\\"flashsay\\"><?=$elvefirstpost==1?\\"\\":ehtmlspecialchars(stripSlashes($r[flashsay]))?></textarea>\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--melve.name--]正则：</strong><br>\r\n      (<input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--flashsay--]\\" size=\\"20\\">)</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr> \r\n          <td><textarea name=\\"add[zz_flashsay]\\" cols=\\"60\\" rows=\\"10\\" id=\\"textarea\\"><?=ehtmlspecialchars(stripSlashes($r[zz_flashsay]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\"add[z_flashsay]\\" type=\\"text\\" id=\\"add[z_flashsay]\\" value=\\"<?=stripSlashes($r[z_flashsay])?>\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 1, 'TEXT', '', 1, 4, 'flash', 0, '', 0, 1, 1, '<textarea name=\\"flashsay\\" cols=\\"60\\" rows=\\"10\\" id=\\"flashsay\\"><?=$elvefirstpost==1?\\"\\":DoReqValue($mid,\\''flashsay\\'',stripSlashes($r[flashsay]))?></textarea>\r\n', 0, '', 0, '80,10', 0, 0, '', '', '', '', '', '', 0, 1, '');
INSERT INTO `base_melvef` (`fid`, `f`, `fname`, `fform`, `fhtml`, `fzs`, `isadd`, `isshow`, `iscj`, `cjhtml`, `myorder`, `ftype`, `flen`, `dotemp`, `tid`, `tbname`, `savetxt`, `fvalue`, `iskey`, `tobr`, `dohtml`, `qfhtml`, `isonly`, `linkfieldval`, `samedata`, `fformsize`, `tbdataf`, `ispage`, `adddofun`, `editdofun`, `qadddofun`, `qeditdofun`, `linkfieldtb`, `linkfieldshow`, `editorys`, `issmalltext`, `fmvnum`) VALUES
(53, 'title', '标题', 'text', '\r\n<table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#DBEAF5">\r\n<tr> \r\n  <td height="25" bgcolor="#FFFFFF">\r\n	<?=$tts?"<select name=''ttid''><option value=''0''>标题分类</option>$tts</select>":""?>\r\n	<input type=text name=title value="<?=ehtmlspecialchars(stripSlashes($r[title]))?>" size="60"> \r\n	<input type="button" name="button" value="图文" onclick="document.add.title.value=document.add.title.value+''(图文)'';"> \r\n  </td>\r\n</tr>\r\n<tr> \r\n  <td height="25" bgcolor="#FFFFFF">属性: \r\n	<input name="titlefont[b]" type="checkbox" value="b"<?=$titlefontb?>>粗体\r\n	<input name="titlefont[i]" type="checkbox" value="i"<?=$titlefonti?>>斜体\r\n	<input name="titlefont[s]" type="checkbox" value="s"<?=$titlefonts?>>删除线\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;颜色: <input name="titlecolor" type="text" value="<?=stripSlashes($r[titlecolor])?>" size="10"><a onclick="foreColor();"><img src="../data/images/color.gif" width="21" height="21" align="absbottom"></a>\r\n  </td>\r\n</tr>\r\n</table>\r\n', '标题', 0, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--melve.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--title--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_title]" cols="60" rows="10" id="textarea"><?=ehtmlspecialchars(stripSlashes($r[zz_title]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_title]" type="text" id="add[z_title]" value="<?=stripSlashes($r[z_title])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 0, 'CHAR', '100', 1, 5, 'movie', 0, '', 0, 0, 0, '\r\n<input name="title" type="text" size="42" value="<?=$elvefirstpost==1?"":DoReqValue($mid,''title'',stripSlashes($r[title]))?>">\r\n', 0, '', 0, '60', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(54, 'special.field', '特殊属性', '', '\r\n<table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#DBEAF5">\r\n  <tr>\r\n    <td height="25" bgcolor="#FFFFFF">信息属性: \r\n      <input name="checked" type="checkbox" value="1"<?=$r[checked]?'' checked'':''''?>>\r\n      审核 &nbsp;&nbsp; 推荐 \r\n      <select name="isgood" id="isgood">\r\n        <option value="0">不推荐</option>\r\n	<?=$ftnr[''igname'']?>\r\n      </select>\r\n      &nbsp;&nbsp; 头条 \r\n      <select name="firsttitle" id="firsttitle">\r\n        <option value="0">非头条</option>\r\n	<?=$ftnr[''ftname'']?>\r\n      </select></td>\r\n  </tr>\r\n  <tr> \r\n    <td height="25" bgcolor="#FFFFFF">关键字&nbsp;&nbsp;&nbsp;: \r\n      <input name="keyboard" type="text" size="52" value="<?=stripSlashes($r[keyboard])?>">\r\n      <font color="#666666">(多个请用&quot;,&quot;隔开)</font></td>\r\n  </tr>\r\n  <tr> \r\n    <td height="25" bgcolor="#FFFFFF">外部链接: \r\n      <input name="titleurl" type="text" value="<?=stripSlashes($r[titleurl])?>" size="52">\r\n      <font color="#666666">(填写后信息连接地址将为此链接)</font></td>\r\n  </tr>\r\n</table>\r\n', '特殊属性', 0, 1, 0, '\r\n\r\n', 0, '', '0', 0, 5, 'movie', 0, '', 0, 0, 0, '\r\n<input name="keyboard" type="text" size=42 value="<?=stripSlashes($r[keyboard])?>">\r\n<font color="#666666">(多个请用&quot;,&quot;隔开)</font>\r\n', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(55, 'titlepic', '标题图片', 'img', '\r\n<input name="titlepic" type="text" id="titlepic" value="<?=$elvefirstpost==1?"":ehtmlspecialchars(stripSlashes($r[titlepic]))?>" size="45">\r\n<a onclick="window.open(''elveeditor/FileMain.php?type=1&classid=<?=$classid?>&infoid=<?=$id?>&filepass=<?=$filepass?>&sinfo=1&doing=1&field=titlepic'','''',''width=700,height=550,scrollbars=yes'');" title="选择已上传的图片"><img src="../data/images/changeimg.gif" border="0" align="absbottom"></a> \r\n', '标题图片', 0, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--melve.name--]正则：</strong><br>\r\n      ( \r\n      <input name="textfield" type="text" id="textfield" value="[!--titlepic--]" size="20">\r\n      )</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n    <tr>\r\n      <td>附件前缀 \r\n        <input name="add[qz_titlepic]" type="text" id="add[qz_titlepic]" value="<?=stripSlashes($r[qz_titlepic])?>"> \r\n        <input name="add[save_titlepic]" type="checkbox" id="add[save_titlepic]" value=" checked"<?=$r[save_titlepic]?>>\r\n        远程保存 </td>\r\n    </tr>\r\n    <tr> \r\n      <td><textarea name="add[zz_titlepic]" cols="60" rows="10" id="add[zz_titlepic]"><?=ehtmlspecialchars(stripSlashes($r[zz_titlepic]))?></textarea></td>\r\n    </tr>\r\n    <tr> \r\n      <td><input name="add[z_titlepic]" type="text" id="titlepic5" value="<?=stripSlashes($r[z_titlepic])?>">\r\n        (如填写这里，这就是字段的值)</td>\r\n    </tr>\r\n  </table></td>\r\n  </tr>\r\n', 1, 'CHAR', '120', 1, 5, 'movie', 0, '', 0, 0, 0, '\r\n<input type="file" name="titlepicfile" size="45">\r\n', 0, '', 0, '60', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(56, 'newstime', '发布时间', 'text', '\r\n<input name="newstime" type="text" value="<?=$r[newstime]?>"><input type=button name=button value="设为当前时间" onclick="document.add.newstime.value=''<?=$todaytime?>''">\r\n', '发布时间', 0, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--melve.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--newstime--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_newstime]" cols="60" rows="10" id="textarea"><?=ehtmlspecialchars(stripSlashes($r[zz_newstime]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_newstime]" type="text" id="add[z_newstime]" value="<?=stripSlashes($r[z_newstime])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 0, 'INT', '11', 1, 5, 'movie', 0, '', 1, 0, 0, '\r\n\r\n', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(57, 'movietype', '影片类型', 'select', '<select name="movietype" id="movietype"><option value="港台影视"<?=$r[movietype]=="港台影视"?'' selected'':''''?>>港台影视</option><option value="海外影视"<?=$r[movietype]=="海外影视"?'' selected'':''''?>>海外影视</option><option value="大陆影视"<?=$r[movietype]=="大陆影视"?'' selected'':''''?>>大陆影视</option><option value="日韩影视"<?=$r[movietype]=="日韩影视"?'' selected'':''''?>>日韩影视</option></select>', '', 1, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--melve.name--]正则：</strong><br>\r\n      (<input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--movietype--]\\" size=\\"20\\">)</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr> \r\n          <td><textarea name=\\"add[zz_movietype]\\" cols=\\"60\\" rows=\\"10\\" id=\\"textarea\\"><?=ehtmlspecialchars(stripSlashes($r[zz_movietype]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\"add[z_movietype]\\" type=\\"text\\" id=\\"add[z_movietype]\\" value=\\"<?=stripSlashes($r[z_movietype])?>\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 1, 'VARCHAR', '16', 1, 5, 'movie', 0, '港台影视|海外影视|大陆影视|日韩影视', 0, 0, 1, '<select name="movietype" id="movietype"><option value="港台影视"<?=$r[movietype]=="港台影视"?'' selected'':''''?>>港台影视</option><option value="海外影视"<?=$r[movietype]=="海外影视"?'' selected'':''''?>>海外影视</option><option value="大陆影视"<?=$r[movietype]=="大陆影视"?'' selected'':''''?>>大陆影视</option><option value="日韩影视"<?=$r[movietype]=="日韩影视"?'' selected'':''''?>>日韩影视</option></select>', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(58, 'company', '出品公司', 'text', '\r\n<input name=\\"company\\" type=\\"text\\" id=\\"company\\" value=\\"<?=$elvefirstpost==1?\\"\\":ehtmlspecialchars(stripSlashes($r[company]))?>\\" size=\\"\\">\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--melve.name--]正则：</strong><br>\r\n      (<input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--company--]\\" size=\\"20\\">)</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr> \r\n          <td><textarea name=\\"add[zz_company]\\" cols=\\"60\\" rows=\\"10\\" id=\\"textarea\\"><?=ehtmlspecialchars(stripSlashes($r[zz_company]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\"add[z_company]\\" type=\\"text\\" id=\\"add[z_company]\\" value=\\"<?=stripSlashes($r[z_company])?>\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 1, 'VARCHAR', '200', 1, 5, 'movie', 0, '', 0, 0, 1, '\r\n<input name=\\"company\\" type=\\"text\\" id=\\"company\\" value=\\"<?=$elvefirstpost==1?\\"\\":DoReqValue($mid,\\''company\\'',stripSlashes($r[company]))?>\\" size=\\"\\">\r\n', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(59, 'movietime', '出品时间', 'text', '\r\n<input name=\\"movietime\\" type=\\"text\\" id=\\"movietime\\" value=\\"<?=$elvefirstpost==1?\\"\\":ehtmlspecialchars(stripSlashes($r[movietime]))?>\\" size=\\"\\">\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--melve.name--]正则：</strong><br>\r\n      (<input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--movietime--]\\" size=\\"20\\">)</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr> \r\n          <td><textarea name=\\"add[zz_movietime]\\" cols=\\"60\\" rows=\\"10\\" id=\\"textarea\\"><?=ehtmlspecialchars(stripSlashes($r[zz_movietime]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\"add[z_movietime]\\" type=\\"text\\" id=\\"add[z_movietime]\\" value=\\"<?=stripSlashes($r[z_movietime])?>\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 1, 'VARCHAR', '20', 1, 5, 'movie', 0, '', 0, 0, 1, '\r\n<input name=\\"movietime\\" type=\\"text\\" id=\\"movietime\\" value=\\"<?=$elvefirstpost==1?\\"\\":DoReqValue($mid,\\''movietime\\'',stripSlashes($r[movietime]))?>\\" size=\\"\\">\r\n', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(60, 'player', '主演', 'text', '\r\n<input name=\\"player\\" type=\\"text\\" id=\\"player\\" value=\\"<?=$elvefirstpost==1?\\"\\":ehtmlspecialchars(stripSlashes($r[player]))?>\\" size=\\"\\">\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--melve.name--]正则：</strong><br>\r\n      (<input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--player--]\\" size=\\"20\\">)</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr> \r\n          <td><textarea name=\\"add[zz_player]\\" cols=\\"60\\" rows=\\"10\\" id=\\"textarea\\"><?=ehtmlspecialchars(stripSlashes($r[zz_player]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\"add[z_player]\\" type=\\"text\\" id=\\"add[z_player]\\" value=\\"<?=stripSlashes($r[z_player])?>\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 1, 'VARCHAR', '255', 1, 5, 'movie', 0, '', 0, 0, 1, '\r\n<input name=\\"player\\" type=\\"text\\" id=\\"player\\" value=\\"<?=$elvefirstpost==1?\\"\\":DoReqValue($mid,\\''player\\'',stripSlashes($r[player]))?>\\" size=\\"\\">\r\n', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(61, 'playadmin', '导演', 'text', '\r\n<input name=\\"playadmin\\" type=\\"text\\" id=\\"playadmin\\" value=\\"<?=$elvefirstpost==1?\\"\\":ehtmlspecialchars(stripSlashes($r[playadmin]))?>\\" size=\\"\\">\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--melve.name--]正则：</strong><br>\r\n      (<input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--playadmin--]\\" size=\\"20\\">)</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr> \r\n          <td><textarea name=\\"add[zz_playadmin]\\" cols=\\"60\\" rows=\\"10\\" id=\\"textarea\\"><?=ehtmlspecialchars(stripSlashes($r[zz_playadmin]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\"add[z_playadmin]\\" type=\\"text\\" id=\\"add[z_playadmin]\\" value=\\"<?=stripSlashes($r[z_playadmin])?>\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 1, 'VARCHAR', '255', 1, 5, 'movie', 0, '', 0, 0, 1, '\r\n<input name=\\"playadmin\\" type=\\"text\\" id=\\"playadmin\\" value=\\"<?=$elvefirstpost==1?\\"\\":DoReqValue($mid,\\''playadmin\\'',stripSlashes($r[playadmin]))?>\\" size=\\"\\">\r\n', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(62, 'filetype', '影片格式', 'text', '<input name=\\"filetype\\" type=\\"text\\" id=\\"filetype\\" value=\\"<?=$elvefirstpost==1?\\"\\":ehtmlspecialchars(stripSlashes($r[filetype]))?>\\" size=\\"8\\">\r\n<select name=\\"select2\\" onchange=\\"document.add.filetype.value=this.value\\">\r\n        <option value=\\"\\">类型</option>\r\n        <option value=\\".rm\\">.rm</option>\r\n        <option value=\\".rmvb\\">.rmvb</option>\r\n        <option value=\\".mp3\\">.mp3</option>\r\n        <option value=\\".asf\\">.asf</option>\r\n        <option value=\\".wmv\\">.wmv</option>\r\n        <option value=\\".avi\\">.avi</option>\r\n      </select>', '', 1, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--melve.name--]正则：</strong><br>\r\n      (<input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--filetype--]\\" size=\\"20\\">)</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr> \r\n          <td><textarea name=\\"add[zz_filetype]\\" cols=\\"60\\" rows=\\"10\\" id=\\"textarea\\"><?=ehtmlspecialchars(stripSlashes($r[zz_filetype]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\"add[z_filetype]\\" type=\\"text\\" id=\\"add[z_filetype]\\" value=\\"<?=stripSlashes($r[z_filetype])?>\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 1, 'VARCHAR', '10', 1, 5, 'movie', 0, '', 0, 0, 1, '<input name=\\"filetype\\" type=\\"text\\" id=\\"filetype\\" value=\\"<?=$elvefirstpost==1?\\"\\":DoReqValue($mid,\\''filetype\\'',stripSlashes($r[filetype]))?>\\" size=\\"\\">\r\n<select name=\\"select2\\" onchange=\\"document.add.filetype.value=this.value\\">\r\n        <option value=\\"\\">类型</option>\r\n        <option value=\\".rm\\">.rm</option>\r\n        <option value=\\".rmvb\\">.rmvb</option>\r\n        <option value=\\".mp3\\">.mp3</option>\r\n        <option value=\\".asf\\">.asf</option>\r\n        <option value=\\".wmv\\">.wmv</option>\r\n        <option value=\\".avi\\">.avi</option>\r\n      </select>', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(63, 'filesize', '影片大小', 'text', '<input name=\\"filesize\\" type=\\"text\\" id=\\"filesize\\" value=\\"<?=$elvefirstpost==1?\\"\\":ehtmlspecialchars(stripSlashes($r[filesize]))?>\\" size=\\"12\\">\r\n<select name=\\"select\\" onchange=\\"document.add.filesize.value+=this.value\\">\r\n        <option value=\\"\\">单位</option>\r\n        <option value=\\" MB\\">MB</option>\r\n        <option value=\\" KB\\">KB</option>\r\n        <option value=\\" GB\\">GB</option>\r\n        <option value=\\" BYTES\\">BYTES</option>\r\n      </select>', '', 1, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--melve.name--]正则：</strong><br>\r\n      (<input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--filesize--]\\" size=\\"20\\">)</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr> \r\n          <td><textarea name=\\"add[zz_filesize]\\" cols=\\"60\\" rows=\\"10\\" id=\\"textarea\\"><?=ehtmlspecialchars(stripSlashes($r[zz_filesize]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\"add[z_filesize]\\" type=\\"text\\" id=\\"add[z_filesize]\\" value=\\"<?=stripSlashes($r[z_filesize])?>\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 1, 'VARCHAR', '16', 1, 5, 'movie', 0, '', 0, 0, 1, '<input name=\\"filesize\\" type=\\"text\\" id=\\"filesize\\" value=\\"<?=$elvefirstpost==1?\\"\\":DoReqValue($mid,\\''filesize\\'',stripSlashes($r[filesize]))?>\\" size=\\"\\">\r\n<select name=\\"select\\" onchange=\\"document.add.filesize.value+=this.value\\">\r\n        <option value=\\"\\">单位</option>\r\n        <option value=\\" MB\\">MB</option>\r\n        <option value=\\" KB\\">KB</option>\r\n        <option value=\\" GB\\">GB</option>\r\n        <option value=\\" BYTES\\">BYTES</option>\r\n      </select>', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(64, 'star', '推荐等级', 'select', '<select name=\\"star\\" id=\\"star\\"><option value=\\"1\\"<?=$r[star]==\\"1\\"?\\'' selected\\'':\\''\\''?>>1星</option><option value=\\"2\\"<?=$r[star]==\\"2\\"||$elvefirstpost==1?\\'' selected\\'':\\''\\''?>>2星</option><option value=\\"3\\"<?=$r[star]==\\"3\\"?\\'' selected\\'':\\''\\''?>>3星</option><option value=\\"4\\"<?=$r[star]==\\"4\\"?\\'' selected\\'':\\''\\''?>>4星</option><option value=\\"5\\"<?=$r[star]==\\"5\\"?\\'' selected\\'':\\''\\''?>>5星</option></select>', '', 1, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--melve.name--]正则：</strong><br>\r\n      (<input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--star--]\\" size=\\"20\\">)</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr> \r\n          <td><textarea name=\\"add[zz_star]\\" cols=\\"60\\" rows=\\"10\\" id=\\"textarea\\"><?=ehtmlspecialchars(stripSlashes($r[zz_star]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\"add[z_star]\\" type=\\"text\\" id=\\"add[z_star]\\" value=\\"<?=stripSlashes($r[z_star])?>\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 1, 'TINYINT', '1', 1, 5, 'movie', 0, '1|2:default|3|4|5', 0, 0, 1, '<select name=\\"star\\" id=\\"star\\"><option value=\\"1\\"<?=$r[star]==\\"1\\"?\\'' selected\\'':\\''\\''?>>1星</option><option value=\\"2\\"<?=$r[star]==\\"2\\"||$elvefirstpost==1?\\'' selected\\'':\\''\\''?>>2星</option><option value=\\"3\\"<?=$r[star]==\\"3\\"?\\'' selected\\'':\\''\\''?>>3星</option><option value=\\"4\\"<?=$r[star]==\\"4\\"?\\'' selected\\'':\\''\\''?>>4星</option><option value=\\"5\\"<?=$r[star]==\\"5\\"?\\'' selected\\'':\\''\\''?>>5星</option></select>', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(65, 'playdk', '带宽要求', 'text', '\r\n<input name=\\"playdk\\" type=\\"text\\" id=\\"playdk\\" value=\\"<?=$elvefirstpost==1?\\"\\":ehtmlspecialchars(stripSlashes($r[playdk]))?>\\" size=\\"\\">\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--melve.name--]正则：</strong><br>\r\n      (<input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--playdk--]\\" size=\\"20\\">)</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr> \r\n          <td><textarea name=\\"add[zz_playdk]\\" cols=\\"60\\" rows=\\"10\\" id=\\"textarea\\"><?=ehtmlspecialchars(stripSlashes($r[zz_playdk]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\"add[z_playdk]\\" type=\\"text\\" id=\\"add[z_playdk]\\" value=\\"<?=stripSlashes($r[z_playdk])?>\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 1, 'VARCHAR', '30', 1, 5, 'movie', 0, '', 0, 0, 1, '\r\n<input name=\\"playdk\\" type=\\"text\\" id=\\"playdk\\" value=\\"<?=$elvefirstpost==1?\\"\\":DoReqValue($mid,\\''playdk\\'',stripSlashes($r[playdk]))?>\\" size=\\"\\">\r\n', 0, '', 0, '', 1, 0, '', '', '', '', '', '', 0, 0, ''),
(66, 'playtime', '片长', 'text', '\r\n<input name=\\"playtime\\" type=\\"text\\" id=\\"playtime\\" value=\\"<?=$elvefirstpost==1?\\"\\":ehtmlspecialchars(stripSlashes($r[playtime]))?>\\" size=\\"\\">\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--melve.name--]正则：</strong><br>\r\n      (<input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--playtime--]\\" size=\\"20\\">)</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr> \r\n          <td><textarea name=\\"add[zz_playtime]\\" cols=\\"60\\" rows=\\"10\\" id=\\"textarea\\"><?=ehtmlspecialchars(stripSlashes($r[zz_playtime]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\"add[z_playtime]\\" type=\\"text\\" id=\\"add[z_playtime]\\" value=\\"<?=stripSlashes($r[z_playtime])?>\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 1, 'VARCHAR', '20', 1, 5, 'movie', 0, '', 0, 0, 1, '\r\n<input name=\\"playtime\\" type=\\"text\\" id=\\"playtime\\" value=\\"<?=$elvefirstpost==1?\\"\\":DoReqValue($mid,\\''playtime\\'',stripSlashes($r[playtime]))?>\\" size=\\"\\">\r\n', 0, '', 0, '', 1, 0, '', '', '', '', '', '', 0, 0, ''),
(67, 'moviefen', '扣除点数', 'text', '\r\n<input name=\\"moviefen\\" type=\\"text\\" id=\\"moviefen\\" value=\\"<?=$elvefirstpost==1?\\"\\":ehtmlspecialchars(stripSlashes($r[moviefen]))?>\\" size=\\"\\">\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--melve.name--]正则：</strong><br>\r\n      (<input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--moviefen--]\\" size=\\"20\\">)</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr> \r\n          <td><textarea name=\\"add[zz_moviefen]\\" cols=\\"60\\" rows=\\"10\\" id=\\"textarea\\"><?=ehtmlspecialchars(stripSlashes($r[zz_moviefen]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\"add[z_moviefen]\\" type=\\"text\\" id=\\"add[z_moviefen]\\" value=\\"<?=stripSlashes($r[z_moviefen])?>\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 1, 'INT', '', 1, 5, 'movie', 0, '', 0, 0, 1, '\r\n<input name=\\"moviefen\\" type=\\"text\\" id=\\"moviefen\\" value=\\"<?=$elvefirstpost==1?\\"\\":DoReqValue($mid,\\''moviefen\\'',stripSlashes($r[moviefen]))?>\\" size=\\"\\">\r\n', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(68, 'downpath', '下载地址', 'text', '\r\n<script>\r\nfunction doadd()\r\n{var i;\r\nvar str=\\"\\";\r\nvar oldi=0;\r\nvar j=0;\r\noldi=parseInt(document.add.editnum.value);\r\nfor(i=1;i<=document.add.downnum.value;i++)\r\n{\r\nj=i+oldi;\r\nstr=str+\\"<tr><td width=7%> <div align=center>\\"+j+\\"</div></td><td width=19%><div align=left><input name=downname[] type=text id=downname[] value=下载地址\\"+j+\\" size=17></div></td><td width=40%><input name=downpath[] type=text size=36 id=downpath\\"+j+\\" ondblclick=SpOpenChFile(0,\\''downpath\\"+j+\\"\\'')><select name=thedownqz[]><option value=\\''\\''>--地址前缀--</option><?=$newdownqz?></select></td><td width=21%><div align=center><select name=downuser[] id=select><option value=0>游客</option><?=$ygroup?></select></div></td><td width=13%><div align=center><input name=fen[] type=text id=fen[] value=0 size=6></div></td></tr>\\";\r\n}\r\ndocument.getElementById(\\"adddown\\").innerHTML=\\"<table width=\\''100%\\'' border=0 cellspacing=1 cellpadding=3>\\"+str+\\"</table>\\";\r\n}\r\n</script>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\">\r\n  <tr>\r\n    <td height=\\"25\\">下载地址前缀&nbsp;:\r\n      <input name=\\"downurl_qz\\" type=\\"text\\" size=\\"32\\">\r\n      <select name=\\"changeurl_qz\\" onchange=\\"document.add.downurl_qz.value=document.add.changeurl_qz.value\\">\r\n        <option value=\\"\\" selected>选择前缀</option>\r\n        <?=$downurlqz?>\r\n      </select>\r\n	  </td>\r\n  </tr>\r\n  <tr>\r\n    <td height=\\"25\\">选择/上传附件:\r\n      <input name=\\"changedown_url\\" id=\\"changedown_url\\" type=\\"text\\" size=\\"32\\">\r\n      <input type=\\"button\\" name=\\"Submit\\" value=\\"选择\\" onclick=\\"window.open(\\''elveeditor/FileMain.php?type=0&classid=<?=$classid?>&infoid=<?=$id?>&filepass=<?=$filepass?>&sinfo=1&doing=1&field=changedown_url\\'',\\''\\'',\\''width=700,height=550,scrollbars=yes\\'');\\">&nbsp;\r\n	  <input type=\\"button\\" name=\\"Submit\\" value=\\"复制\\" onclick=\\"document.getElementById(\\''changedown_url\\'').focus();document.getElementById(\\''changedown_url\\'').select();clipboardData.setData(\\''text\\'',document.getElementById(\\''changedown_url\\'').value);\\"></td>\r\n  </tr>\r\n  <tr> \r\n    <td><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"3\\" cellspacing=\\"1\\" bgcolor=\\"#DBEAF5\\">\r\n        <tr> \r\n          <td width=\\"7%\\"> <div align=\\"center\\">编号</div></td>\r\n          <td width=\\"19%\\"><div align=\\"left\\">下载名称</div></td>\r\n          <td width=\\"40%\\">下载地址 <font color=\\"#666666\\">(双击选择)</font></td>\r\n          <td width=\\"21%\\"> <div align=\\"center\\">权限</div></td>\r\n          <td width=\\"13%\\"> <div align=\\"center\\">点数</div></td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n  <tr> \r\n    <td>\r\n    <?php\r\n    if($elvefirstpost==1)\r\n    {\r\n    ?>\r\n	<table width=\\''100%\\'' border=0 cellspacing=1 cellpadding=3>\r\n	<?php\r\n	$editnum=3;\r\n	for($pathi=1;$pathi<=$editnum;$pathi++)\r\n	{\r\n	?>\r\n           <tr> \r\n              <td width=\\''7%\\''> <div align=center><?=$pathi?></div></td>\r\n              <td width=\\''19%\\''> <div align=left> \r\n                  <input name=downname[] type=text value=\\''下载地址<?=$pathi?>\\'' size=17>\r\n                    </div></td>\r\n              <td width=\\''40%\\''>\r\n	      <input name=downpath[] type=text size=36 id=\\''downpath<?=$pathi?>\\'' ondblclick=\\"SpOpenChFile(0,\\''downpath<?=$pathi?>\\'');\\">\r\n	      <select name=thedownqz[]><option value=\\''\\''>--地址前缀--</option><?=$newdownqz?></select> \r\n                  </td>\r\n                  <td width=\\''21%\\''><div align=center> \r\n                      <select name=downuser[]>\r\n                        <option value=0>游客</option>\r\n                        <?=$ygroup?>\r\n                      </select>\r\n                    </div></td>\r\n                  <td width=\\''13%\\''> <div align=center> \r\n                      <input name=fen[] type=text value=0 size=6>\r\n                    </div></td>\r\n            </tr>\r\n	<?php\r\n	}\r\n	?>\r\n	</table>\r\n    <?php\r\n    }\r\n    else\r\n    {\r\n	$editnum=0;\r\n	$downloadpath=\\"\\";\r\n	if($r[downpath])\r\n	{\r\n		$r[downpath]=stripSlashes($r[downpath]);\r\n		//下载地址\r\n		$j=0;\r\n		$d_record=explode(\\"\\\\r\\\\n\\",$r[downpath]);\r\n		for($i=0;$i<count($d_record);$i++)\r\n		{\r\n			$j=$i+1;\r\n			$d_field=explode(\\"::::::\\",$d_record[$i]);\r\n			//权限\r\n			$tgroup=str_replace(\\" value=\\".$d_field[2].\\">\\",\\" value=\\".$d_field[2].\\" selected>\\",$ygroup);\r\n			//地址前缀\r\n			$tnewdownqz=str_replace(\\" value=\\''\\".$d_field[4].\\"\\''>\\",\\" value=\\''\\".$d_field[4].\\"\\'' selected>\\",$newdownqz);\r\n			$downloadpath.=\\"<tr><td width=\\''7%\\''><div align=center>\\".$j.\\"</div></td><td width=\\''19%\\''><div align=left><input name=downname[] type=text id=downname[] value=\\''\\".$d_field[0].\\"\\'' size=17></div></td><td width=\\''40%\\''><input name=downpath[] type=text id=downpath\\".$j.\\" value=\\''\\".$d_field[1].\\"\\'' size=36 ondblclick=\\\\\\"SpOpenChFile(0,\\''downpath\\".$j.\\"\\'');\\\\\\"><select name=thedownqz[]><option value=\\''\\''>--地址前缀--</option>\\".$tnewdownqz.\\"</select><input type=hidden name=pathid[] value=\\".$j.\\"><input type=checkbox name=delpathid[] value=\\".$j.\\">删</td><td width=\\''21%\\''><div align=center><select name=downuser[] id=select><option value=0>游客</option>\\".$tgroup.\\"</select></div></td><td width=\\''13%\\''><div align=center><input name=fen[] type=text id=fen[] value=\\''\\".$d_field[3].\\"\\'' size=6></div></td></tr>\\";\r\n		}\r\n		$editnum=$j;\r\n		$downloadpath=\\"<table width=\\''100%\\'' border=0 cellspacing=1 cellpadding=3>\\".$downloadpath.\\"</table>\\";\r\n	}\r\n	echo $downloadpath;\r\n    }\r\n    ?>\r\n    </td>\r\n  </tr>\r\n  <tr> \r\n    <td height=\\"25\\">下载地址扩展数量: <input name=\\"editnum\\" type=\\"hidden\\" id=\\"editnum\\" value=\\"<?=$editnum?>\\">\r\n      <input name=\\"downnum\\" type=\\"text\\" id=\\"downnum\\" value=\\"1\\" size=\\"6\\"> <input type=\\"button\\" name=\\"Submit5\\" value=\\"输出地址\\" onclick=\\"javascript:doadd();\\"></td>\r\n  </tr>\r\n  <tr> \r\n    <td id=adddown></td>\r\n  </tr>\r\n</table>\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--melve.name--]正则：</strong><br>\r\n      (\r\n      <input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--elvedownpathurl--]\\" size=\\"20\\">\r\n      <br>\r\n      <input name=\\"textfield2\\" type=\\"text\\" id=\\"textfield2\\" value=\\"[!--elvedownpathname--]\\" size=\\"20\\">\r\n      )<br>\r\n      格式:地址正则(url)[!Elvescms!]名称正则(name)</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr> \r\n          <td><textarea name=\\"add[zz_downpath]\\" cols=\\"60\\" rows=\\"10\\" id=\\"textarea\\"><?=ehtmlspecialchars(stripSlashes($r[zz_downpath]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td>地址前缀:\r\n<input name=\\"add[qz_downpath]\\" type=\\"text\\" id=\\"add[qz_downpath]\\" value=\\"<?=stripSlashes($r[qz_downpath])?>\\">\r\n        </td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 1, 'MEDIUMTEXT', '', 1, 5, 'movie', 0, '', 0, 0, 1, '\r\n<input type=\\"file\\" name=\\"downpathfile\\" size=\\"45\\">\r\n', 0, '', 0, '', 1, 0, '', '', '', '', '', '', 0, 0, ''),
(69, 'playerid', '播放器', 'text', '\r\n<?php\r\n$player_sql=$Elves->query(\\"select id,player from {$dbtbpre}melveplayer\\");\r\nwhile($player_r=$Elves->fetch($player_sql))\r\n{\r\n	$select_player=\\''\\'';\r\n	if($r[playerid]==$player_r[id])\r\n	{\r\n		$select_player=\\'' selected\\'';\r\n	}\r\n	$player_class.=\\"<option value=\\''\\".$player_r[id].\\"\\''\\".$select_player.\\">\\".$player_r[player].\\"</option>\\";\r\n}\r\n?>\r\n<select name=\\"playerid\\">\r\n<option value=0>自动识别</option>\r\n<?=$player_class?>\r\n</select>\r\n', '视频播放器', 1, 1, 1, '\r\n<?php\r\n$player_sql=$Elves->query(\\"select id,player from {$dbtbpre}melveplayer\\");\r\nwhile($player_r=$Elves->fetch($player_sql))\r\n{\r\n	$select_player=\\''\\'';\r\n	if($r[z_playerid]==$player_r[id])\r\n	{\r\n		$select_player=\\'' selected\\'';\r\n	}\r\n	$player_class.=\\"<option value=\\''\\".$player_r[id].\\"\\''\\".$select_player.\\">\\".$player_r[player].\\"</option>\\";\r\n}\r\n?>\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--melve.name--]：</strong><br>\r\n      (<input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--playerid--]\\" size=\\"20\\">)</td>\r\n    <td><select name=\\"add[z_playerid]\\"><option value=0>自动识别</option><?=$player_class?></select></td>\r\n  </tr>\r\n', 1, 'SMALLINT', '', 1, 5, 'movie', 0, '', 0, 0, 1, '\r\n<?php\r\n$player_sql=$Elves->query(\\"select id,player from {$dbtbpre}melveplayer\\");\r\nwhile($player_r=$Elves->fetch($player_sql))\r\n{\r\n	$select_player=\\''\\'';\r\n	if($r[playerid]==$player_r[id])\r\n	{\r\n		$select_player=\\'' selected\\'';\r\n	}\r\n	$player_class.=\\"<option value=\\''\\".$player_r[id].\\"\\''\\".$select_player.\\">\\".$player_r[player].\\"</option>\\";\r\n}\r\n?>\r\n<select name=\\"playerid\\">\r\n<option value=0>自动识别</option>\r\n<?=$player_class?>\r\n</select>\r\n', 0, '', 0, '', 1, 0, '', '', '', '', '', '', 0, 0, ''),
(70, 'onlinepath', '在线观看地址', 'text', '\r\n<script>\r\nfunction dooadd()\r\n{var i;\r\nvar str=\\"\\";\r\nvar oldi=0;\r\nvar j=0;\r\noldi=parseInt(document.add.oeditnum.value);\r\nfor(i=1;i<=document.add.odownnum.value;i++)\r\n{\r\nj=i+oldi;\r\nstr=str+\\"<tr><td width=7%> <div align=center>\\"+j+\\"</div></td><td width=19%><div align=left><input name=odownname[] type=text value=\\"+j+\\" size=17></div></td><td width=40%><input name=odownpath[] type=text size=36 id=odownpath\\"+j+\\" ondblclick=SpOpenChFile(0,\\''odownpath\\"+j+\\"\\'')><select name=othedownqz[]><option value=\\''\\''>--地址前缀--</option><?=$newdownqz?></select></td><td width=21%><div align=center><select name=odownuser[] id=select><option value=0>游客</option><?=$ygroup?></select></div></td><td width=13%><div align=center><input name=ofen[] type=text value=0 size=6></div></td></tr>\\";\r\n}\r\ndocument.getElementById(\\"addonline\\").innerHTML=\\"<table width=\\''100%\\'' border=0 cellspacing=1 cellpadding=3>\\"+str+\\"</table>\\";\r\n}\r\n</script>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\">\r\n  <tr> \r\n    <td height=\\"25\\">观看地址前缀&nbsp;: \r\n      <input name=\\"onlineurl_qz\\" type=\\"text\\" size=\\"32\\"> <select name=\\"changeonlineurl_qz\\" onchange=\\"document.add.onlineurl_qz.value=document.add.changeonlineurl_qz.value\\">\r\n        <option value=\\"\\" selected>选择前缀</option>\r\n        <?=$downurlqz?>\r\n      </select>\r\n      </td>\r\n  </tr>\r\n  <tr> \r\n    <td height=\\"25\\">选择/上传附件: \r\n      <input name=\\"changeonline_url\\" id=\\"changeonline_url\\" type=\\"text\\" size=\\"32\\"> <input type=\\"button\\" name=\\"Submit\\" value=\\"选择\\" onclick=\\"window.open(\\''elveeditor/FileMain.php?type=0&classid=<?=$classid?>&infoid=<?=$id?>&filepass=<?=$filepass?>&sinfo=1&doing=1&field=changeonline_url\\'',\\''\\'',\\''width=700,height=550,scrollbars=yes\\'');\\">&nbsp;\r\n	  <input type=\\"button\\" name=\\"Submit\\" value=\\"复制\\" onclick=\\"document.getElementById(\\''changeonline_url\\'').focus();document.getElementById(\\''changeonline_url\\'').select();clipboardData.setData(\\''text\\'',document.getElementById(\\''changeonline_url\\'').value);\\"></td>\r\n  </tr>\r\n  <tr> \r\n    <td><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"3\\" cellspacing=\\"1\\" bgcolor=\\"#DBEAF5\\">\r\n        <tr> \r\n          <td width=\\"7%\\"> <div align=\\"center\\">编号</div></td>\r\n          <td width=\\"19%\\"><div align=\\"left\\">观看名称</div></td>\r\n          <td width=\\"40%\\">观看地址 <font color=\\"#666666\\">(双击选择)</font></td>\r\n          <td width=\\"21%\\"> <div align=\\"center\\">权限</div></td>\r\n          <td width=\\"13%\\"> <div align=\\"center\\">点数</div></td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n  <tr> \r\n    <td>\r\n    <?php\r\n    if($elvefirstpost==1)\r\n    {\r\n	?>\r\n	<table width=\\''100%\\'' border=0 cellspacing=1 cellpadding=3>\r\n	<?php\r\n	$oeditnum=3;\r\n	for($opathi=1;$opathi<=$oeditnum;$opathi++)\r\n	{\r\n	?>\r\n		<tr> \r\n                  <td width=\\''7%\\''> <div align=center><?=$opathi?></div></td>\r\n                  <td width=\\''19%\\''> <div align=left> \r\n                      <input name=odownname[] type=text value=\\''<?=$opathi?>\\'' size=17>\r\n                    </div></td>\r\n                  <td width=\\''40%\\''> \r\n		  <input name=odownpath[] type=text id=\\''odownpath<?=$opathi?>\\'' size=36 ondblclick=\\"SpOpenChFile(0,\\''odownpath<?=$opathi?>\\'');\\">\r\n		  <select name=othedownqz[]><option value=\\''\\''>--地址前缀--</option><?=$newdownqz?></select> \r\n                  </td>\r\n                  <td width=\\''21%\\''><div align=center> \r\n                      <select name=odownuser[] id=select>\r\n                        <option value=0>游客</option>\r\n                        <?=$ygroup?>\r\n                      </select>\r\n                    </div></td>\r\n                  <td width=\\''13%\\''> <div align=center> \r\n                      <input name=ofen[] type=text id=ofen[] value=0 size=6>\r\n                    </div></td>\r\n                </tr>\r\n	<?php\r\n	}\r\n	?>\r\n	</table>\r\n	<?php\r\n    }\r\n    else\r\n    {\r\n	$oeditnum=0;\r\n	$onlinemoviepath=\\"\\";\r\n	if($r[onlinepath])\r\n	{\r\n		$j=0;\r\n		$od_record=explode(\\"\\\\r\\\\n\\",$r[onlinepath]);\r\n		for($i=0;$i<count($od_record);$i++)\r\n		{\r\n			$j=$i+1;\r\n			$od_field=explode(\\"::::::\\",$od_record[$i]);\r\n			//权限\r\n			$tgroup=str_replace(\\" value=\\".$od_field[2].\\">\\",\\" value=\\".$od_field[2].\\" selected>\\",$ygroup);\r\n			//地址前缀\r\n			$tnewdownqz=str_replace(\\" value=\\''\\".$od_field[4].\\"\\''>\\",\\" value=\\''\\".$od_field[4].\\"\\'' selected>\\",$newdownqz);\r\n			$onlinemoviepath.=\\"<tr><td width=\\''7%\\''><div align=center>\\".$j.\\"</div></td><td width=\\''19%\\''><div align=left><input name=odownname[] type=text value=\\''\\".$od_field[0].\\"\\'' size=17></div></td><td width=\\''40%\\''><input name=odownpath[] type=text value=\\''\\".$od_field[1].\\"\\'' size=36 id=odownpath\\".$j.\\" ondblclick=\\\\\\"SpOpenChFile(0,\\''odownpath\\".$j.\\"\\'');\\\\\\"><select name=othedownqz[]><option value=\\''\\''>--地址前缀--</option>\\".$tnewdownqz.\\"</select><input type=hidden name=opathid[] value=\\".$j.\\"><input type=checkbox name=odelpathid[] value=\\".$j.\\">删</td><td width=\\''21%\\''><div align=center><select name=odownuser[] id=select><option value=0>游客</option>\\".$tgroup.\\"</select></div></td><td width=\\''13%\\''><div align=center><input name=ofen[] type=text value=\\''\\".$od_field[3].\\"\\'' size=6></div></td></tr>\\";\r\n		}\r\n		$oeditnum=$j;\r\n		$onlinemoviepath=\\"<table width=\\''100%\\'' border=0 cellspacing=1 cellpadding=3>\\".$onlinemoviepath.\\"</table>\\";\r\n	}\r\n	echo $onlinemoviepath;\r\n    }\r\n    ?>\r\n    </td>\r\n  </tr>\r\n  <tr> \r\n    <td height=\\"25\\">在线地址扩展数量: <input name=\\"oeditnum\\" type=\\"hidden\\" id=\\"oeditnum\\" value=\\"<?=$oeditnum?>\\">\r\n      <input name=\\"odownnum\\" type=\\"text\\" id=\\"odownnum\\" value=\\"1\\" size=\\"6\\"> <input type=\\"button\\" name=\\"Submit5\\" value=\\"输出地址\\" onclick=\\"javascript:dooadd();\\"></td>\r\n  </tr>\r\n  <tr> \r\n    <td id=addonline></td>\r\n  </tr>\r\n</table>\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--melve.name--]正则：</strong><br>\r\n      (\r\n      <input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--elveonlinepathurl--]\\" size=\\"20\\">\r\n      <br>\r\n      <input name=\\"textfield2\\" type=\\"text\\" id=\\"textfield2\\" value=\\"[!--elveonlinepathname--]\\" size=\\"20\\">\r\n      )<br>\r\n      格式:地址正则(url)[!Elvescms!]名称正则(name)</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr> \r\n          <td><textarea name=\\"add[zz_onlinepath]\\" cols=\\"60\\" rows=\\"10\\" id=\\"textarea\\"><?=ehtmlspecialchars(stripSlashes($r[zz_onlinepath]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td>地址前缀:\r\n<input name=\\"add[qz_onlinepath]\\" type=\\"text\\" id=\\"add[qz_onlinepath]\\" value=\\"<?=stripSlashes($r[qz_onlinepath])?>\\">\r\n        </td>\r\n        </tr>\r\n      </table>\r\n	  </td>\r\n  </tr>\r\n', 2, 'MEDIUMTEXT', '', 1, 5, 'movie', 0, '', 0, 0, 1, '\r\n<input type=\\"file\\" name=\\"onlinepathfile\\" size=\\"45\\">\r\n<input type=\\"hidden\\" name=\\"onlinepathmtfile\\" value=1>\r\n', 0, '', 0, '', 1, 0, '', '', '', '', '', '', 0, 0, ''),
(71, 'moviesay', '影片简介', 'textarea', '<textarea name=\\"moviesay\\" cols=\\"80\\" rows=\\"10\\" id=\\"moviesay\\"><?=$elvefirstpost==1?\\"\\":ehtmlspecialchars(stripSlashes($r[moviesay]))?></textarea>\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--melve.name--]正则：</strong><br>\r\n      (<input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--moviesay--]\\" size=\\"20\\">)</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr> \r\n          <td><textarea name=\\"add[zz_moviesay]\\" cols=\\"60\\" rows=\\"10\\" id=\\"textarea\\"><?=ehtmlspecialchars(stripSlashes($r[zz_moviesay]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\"add[z_moviesay]\\" type=\\"text\\" id=\\"add[z_moviesay]\\" value=\\"<?=stripSlashes($r[z_moviesay])?>\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 2, 'TEXT', '', 1, 5, 'movie', 0, '', 0, 1, 1, '<textarea name=\\"moviesay\\" cols=\\"60\\" rows=\\"10\\" id=\\"moviesay\\"><?=$elvefirstpost==1?\\"\\":DoReqValue($mid,\\''moviesay\\'',stripSlashes($r[moviesay]))?></textarea>\r\n', 0, '', 0, '80,10', 0, 0, '', '', '', '', '', '', 0, 1, ''),
(72, 'title', '标题', 'text', '\r\n<table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#DBEAF5">\r\n<tr> \r\n  <td height="25" bgcolor="#FFFFFF">\r\n	<?=$tts?"<select name=''ttid''><option value=''0''>标题分类</option>$tts</select>":""?>\r\n	<input type=text name=title value="<?=ehtmlspecialchars(stripSlashes($r[title]))?>" size="60"> \r\n	<input type="button" name="button" value="图文" onclick="document.add.title.value=document.add.title.value+''(图文)'';"> \r\n  </td>\r\n</tr>\r\n<tr> \r\n  <td height="25" bgcolor="#FFFFFF">属性: \r\n	<input name="titlefont[b]" type="checkbox" value="b"<?=$titlefontb?>>粗体\r\n	<input name="titlefont[i]" type="checkbox" value="i"<?=$titlefonti?>>斜体\r\n	<input name="titlefont[s]" type="checkbox" value="s"<?=$titlefonts?>>删除线\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;颜色: <input name="titlecolor" type="text" value="<?=stripSlashes($r[titlecolor])?>" size="10"><a onclick="foreColor();"><img src="../data/images/color.gif" width="21" height="21" align="absbottom"></a>\r\n  </td>\r\n</tr>\r\n</table>\r\n', '标题', 0, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--melve.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--title--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_title]" cols="60" rows="10" id="textarea"><?=ehtmlspecialchars(stripSlashes($r[zz_title]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_title]" type="text" id="add[z_title]" value="<?=stripSlashes($r[z_title])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 0, 'CHAR', '100', 1, 6, 'shop', 0, '', 0, 0, 0, '\r\n<input name="title" type="text" size="42" value="<?=$elvefirstpost==1?"":DoReqValue($mid,''title'',stripSlashes($r[title]))?>">\r\n', 0, '', 0, '60', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(73, 'special.field', '特殊属性', '', '\r\n<table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#DBEAF5">\r\n  <tr>\r\n    <td height="25" bgcolor="#FFFFFF">信息属性: \r\n      <input name="checked" type="checkbox" value="1"<?=$r[checked]?'' checked'':''''?>>\r\n      审核 &nbsp;&nbsp; 推荐 \r\n      <select name="isgood" id="isgood">\r\n        <option value="0">不推荐</option>\r\n	<?=$ftnr[''igname'']?>\r\n      </select>\r\n      &nbsp;&nbsp; 头条 \r\n      <select name="firsttitle" id="firsttitle">\r\n        <option value="0">非头条</option>\r\n	<?=$ftnr[''ftname'']?>\r\n      </select></td>\r\n  </tr>\r\n  <tr> \r\n    <td height="25" bgcolor="#FFFFFF">关键字&nbsp;&nbsp;&nbsp;: \r\n      <input name="keyboard" type="text" size="52" value="<?=stripSlashes($r[keyboard])?>">\r\n      <font color="#666666">(多个请用&quot;,&quot;隔开)</font></td>\r\n  </tr>\r\n  <tr> \r\n    <td height="25" bgcolor="#FFFFFF">外部链接: \r\n      <input name="titleurl" type="text" value="<?=stripSlashes($r[titleurl])?>" size="52">\r\n      <font color="#666666">(填写后信息连接地址将为此链接)</font></td>\r\n  </tr>\r\n</table>\r\n', '特殊属性', 0, 1, 0, '\r\n\r\n', 0, '', '0', 0, 6, 'shop', 0, '', 0, 0, 0, '\r\n<input name="keyboard" type="text" size=42 value="<?=stripSlashes($r[keyboard])?>">\r\n<font color="#666666">(多个请用&quot;,&quot;隔开)</font>\r\n', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(74, 'titlepic', '标题图片', 'img', '\r\n<input name="titlepic" type="text" id="titlepic" value="<?=$elvefirstpost==1?"":ehtmlspecialchars(stripSlashes($r[titlepic]))?>" size="60">\r\n<a onclick="window.open(''elveeditor/FileMain.php?type=1&classid=<?=$classid?>&infoid=<?=$id?>&filepass=<?=$filepass?>&sinfo=1&doing=1&field=titlepic'','''',''width=700,height=550,scrollbars=yes'');" title="选择已上传的图片"><img src="../data/images/changeimg.gif" border="0" align="absbottom"></a> \r\n', '标题图片', 0, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--melve.name--]正则：</strong><br>\r\n      ( \r\n      <input name="textfield" type="text" id="textfield" value="[!--titlepic--]" size="20">\r\n      )</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n    <tr>\r\n      <td>附件前缀 \r\n        <input name="add[qz_titlepic]" type="text" id="add[qz_titlepic]" value="<?=stripSlashes($r[qz_titlepic])?>"> \r\n        <input name="add[save_titlepic]" type="checkbox" id="add[save_titlepic]" value=" checked"<?=$r[save_titlepic]?>>\r\n        远程保存 </td>\r\n    </tr>\r\n    <tr> \r\n      <td><textarea name="add[zz_titlepic]" cols="60" rows="10" id="add[zz_titlepic]"><?=ehtmlspecialchars(stripSlashes($r[zz_titlepic]))?></textarea></td>\r\n    </tr>\r\n    <tr> \r\n      <td><input name="add[z_titlepic]" type="text" id="titlepic5" value="<?=stripSlashes($r[z_titlepic])?>">\r\n        (如填写这里，这就是字段的值)</td>\r\n    </tr>\r\n  </table></td>\r\n  </tr>\r\n', 1, 'CHAR', '120', 1, 6, 'shop', 0, '', 0, 0, 0, '\r\n<input type="file" name="titlepicfile" size="45">\r\n', 0, '', 0, '60', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(75, 'newstime', '发布时间', 'text', '\r\n<input name="newstime" type="text" value="<?=$r[newstime]?>"><input type=button name=button value="设为当前时间" onclick="document.add.newstime.value=''<?=$todaytime?>''">\r\n', '发布时间', 0, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--melve.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--newstime--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_newstime]" cols="60" rows="10" id="textarea"><?=ehtmlspecialchars(stripSlashes($r[zz_newstime]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_newstime]" type="text" id="add[z_newstime]" value="<?=stripSlashes($r[z_newstime])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 0, 'INT', '11', 1, 6, 'shop', 0, '', 1, 0, 0, '\r\n\r\n', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0, '');
INSERT INTO `base_melvef` (`fid`, `f`, `fname`, `fform`, `fhtml`, `fzs`, `isadd`, `isshow`, `iscj`, `cjhtml`, `myorder`, `ftype`, `flen`, `dotemp`, `tid`, `tbname`, `savetxt`, `fvalue`, `iskey`, `tobr`, `dohtml`, `qfhtml`, `isonly`, `linkfieldval`, `samedata`, `fformsize`, `tbdataf`, `ispage`, `adddofun`, `editdofun`, `qadddofun`, `qeditdofun`, `linkfieldtb`, `linkfieldshow`, `editorys`, `issmalltext`, `fmvnum`) VALUES
(76, 'productno', '商品编号', 'text', '<input name=\\"productno\\" type=\\"text\\" id=\\"productno\\" value=\\"<?=$elvefirstpost==1?\\"\\":ehtmlspecialchars(stripSlashes($r[productno]))?>\\" size=\\"60\\">\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--melve.name--]正则：</strong><br>\r\n      (<input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--productno--]\\" size=\\"20\\">)</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr> \r\n          <td><textarea name=\\"add[zz_productno]\\" cols=\\"60\\" rows=\\"10\\" id=\\"textarea\\"><?=ehtmlspecialchars(stripSlashes($r[zz_productno]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\"add[z_productno]\\" type=\\"text\\" id=\\"add[z_productno]\\" value=\\"<?=stripSlashes($r[z_productno])?>\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 0, 'VARCHAR', '30', 1, 6, 'shop', 0, '', 0, 0, 1, '<input name=\\"productno\\" type=\\"text\\" id=\\"productno\\" value=\\"<?=$elvefirstpost==1?\\"\\":DoReqValue($mid,\\''productno\\'',stripSlashes($r[productno]))?>\\" size=\\"42\\">\r\n', 0, '', 0, '60', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(77, 'pbrand', '品牌', 'text', '<input name=\\"pbrand\\" type=\\"text\\" id=\\"pbrand\\" value=\\"<?=$elvefirstpost==1?\\"\\":ehtmlspecialchars(stripSlashes($r[pbrand]))?>\\" size=\\"60\\">\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--melve.name--]正则：</strong><br>\r\n      (<input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--pbrand--]\\" size=\\"20\\">)</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr> \r\n          <td><textarea name=\\"add[zz_pbrand]\\" cols=\\"60\\" rows=\\"10\\" id=\\"textarea\\"><?=ehtmlspecialchars(stripSlashes($r[zz_pbrand]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\"add[z_pbrand]\\" type=\\"text\\" id=\\"add[z_pbrand]\\" value=\\"<?=stripSlashes($r[z_pbrand])?>\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 0, 'VARCHAR', '30', 1, 6, 'shop', 0, '', 0, 0, 1, '<input name=\\"pbrand\\" type=\\"text\\" id=\\"pbrand\\" value=\\"<?=$elvefirstpost==1?\\"\\":DoReqValue($mid,\\''pbrand\\'',stripSlashes($r[pbrand]))?>\\" size=\\"42\\">\r\n', 0, '', 0, '60', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(78, 'intro', '简单描述', 'textarea', '<textarea name=\\"intro\\" cols=\\"80\\" rows=\\"10\\" id=\\"intro\\"><?=$elvefirstpost==1?\\"\\":ehtmlspecialchars(stripSlashes($r[intro]))?></textarea>\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--melve.name--]正则：</strong><br>\r\n      (<input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--intro--]\\" size=\\"20\\">)</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr> \r\n          <td><textarea name=\\"add[zz_intro]\\" cols=\\"60\\" rows=\\"10\\" id=\\"textarea\\"><?=ehtmlspecialchars(stripSlashes($r[zz_intro]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\"add[z_intro]\\" type=\\"text\\" id=\\"add[z_intro]\\" value=\\"<?=stripSlashes($r[z_intro])?>\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 0, 'TEXT', '', 1, 6, 'shop', 0, '', 0, 1, 1, '<textarea name=\\"intro\\" cols=\\"60\\" rows=\\"10\\" id=\\"intro\\"><?=$elvefirstpost==1?\\"\\":DoReqValue($mid,\\''intro\\'',stripSlashes($r[intro]))?></textarea>\r\n', 0, '', 0, '80,10', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(79, 'unit', '计量单位', 'text', '<input name=\\"unit\\" type=\\"text\\" id=\\"unit\\" value=\\"<?=$elvefirstpost==1?\\"\\":ehtmlspecialchars(stripSlashes($r[unit]))?>\\" size=\\"60\\">\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--melve.name--]正则：</strong><br>\r\n      (<input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--unit--]\\" size=\\"20\\">)</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr> \r\n          <td><textarea name=\\"add[zz_unit]\\" cols=\\"60\\" rows=\\"10\\" id=\\"textarea\\"><?=ehtmlspecialchars(stripSlashes($r[zz_unit]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\"add[z_unit]\\" type=\\"text\\" id=\\"add[z_unit]\\" value=\\"<?=stripSlashes($r[z_unit])?>\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 0, 'VARCHAR', '16', 1, 6, 'shop', 0, '', 0, 0, 1, '<input name=\\"unit\\" type=\\"text\\" id=\\"unit\\" value=\\"<?=$elvefirstpost==1?\\"\\":DoReqValue($mid,\\''unit\\'',stripSlashes($r[unit]))?>\\" size=\\"\\">\r\n', 0, '', 0, '60', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(80, 'weight', '单位重量', 'text', '<input name=\\"weight\\" type=\\"text\\" id=\\"weight\\" value=\\"<?=$elvefirstpost==1?\\"\\":ehtmlspecialchars(stripSlashes($r[weight]))?>\\" size=\\"60\\">\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--melve.name--]正则：</strong><br>\r\n      (<input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--weight--]\\" size=\\"20\\">)</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr> \r\n          <td><textarea name=\\"add[zz_weight]\\" cols=\\"60\\" rows=\\"10\\" id=\\"textarea\\"><?=ehtmlspecialchars(stripSlashes($r[zz_weight]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\"add[z_weight]\\" type=\\"text\\" id=\\"add[z_weight]\\" value=\\"<?=stripSlashes($r[z_weight])?>\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 0, 'VARCHAR', '20', 1, 6, 'shop', 0, '', 0, 0, 1, '<input name=\\"weight\\" type=\\"text\\" id=\\"weight\\" value=\\"<?=$elvefirstpost==1?\\"\\":DoReqValue($mid,\\''weight\\'',stripSlashes($r[weight]))?>\\" size=\\"\\">\r\n', 0, '', 0, '60', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(81, 'tprice', '市场价格', 'text', '<input name=\\"tprice\\" type=\\"text\\" id=\\"tprice\\" value=\\"<?=$elvefirstpost==1?\\"\\":ehtmlspecialchars(stripSlashes($r[tprice]))?>\\" size=\\"60\\">\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--melve.name--]正则：</strong><br>\r\n      (<input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--tprice--]\\" size=\\"20\\">)</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr> \r\n          <td><textarea name=\\"add[zz_tprice]\\" cols=\\"60\\" rows=\\"10\\" id=\\"textarea\\"><?=ehtmlspecialchars(stripSlashes($r[zz_tprice]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\"add[z_tprice]\\" type=\\"text\\" id=\\"add[z_tprice]\\" value=\\"<?=stripSlashes($r[z_tprice])?>\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 0, 'FLOAT', '11,2', 1, 6, 'shop', 0, '', 0, 0, 1, '<input name=\\"tprice\\" type=\\"text\\" id=\\"tprice\\" value=\\"<?=$elvefirstpost==1?\\"\\":DoReqValue($mid,\\''tprice\\'',stripSlashes($r[tprice]))?>\\" size=\\"\\">\r\n', 0, '', 0, '60', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(82, 'price', '购买价格', 'text', '<input name=\\"price\\" type=\\"text\\" id=\\"price\\" value=\\"<?=$elvefirstpost==1?\\"\\":ehtmlspecialchars(stripSlashes($r[price]))?>\\" size=\\"60\\">\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--melve.name--]正则：</strong><br>\r\n      (<input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--price--]\\" size=\\"20\\">)</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr> \r\n          <td><textarea name=\\"add[zz_price]\\" cols=\\"60\\" rows=\\"10\\" id=\\"textarea\\"><?=ehtmlspecialchars(stripSlashes($r[zz_price]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\"add[z_price]\\" type=\\"text\\" id=\\"add[z_price]\\" value=\\"<?=stripSlashes($r[z_price])?>\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 0, 'FLOAT', '11,2', 1, 6, 'shop', 0, '', 0, 0, 1, '<input name=\\"price\\" type=\\"text\\" id=\\"price\\" value=\\"<?=$elvefirstpost==1?\\"\\":DoReqValue($mid,\\''price\\'',stripSlashes($r[price]))?>\\" size=\\"\\">\r\n', 0, '', 0, '60', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(83, 'buyfen', '积分购买', 'text', '<input name=\\"buyfen\\" type=\\"text\\" id=\\"buyfen\\" value=\\"<?=$elvefirstpost==1?\\"\\":ehtmlspecialchars(stripSlashes($r[buyfen]))?>\\" size=\\"60\\">\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--melve.name--]正则：</strong><br>\r\n      (<input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--buyfen--]\\" size=\\"20\\">)</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr> \r\n          <td><textarea name=\\"add[zz_buyfen]\\" cols=\\"60\\" rows=\\"10\\" id=\\"textarea\\"><?=ehtmlspecialchars(stripSlashes($r[zz_buyfen]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\"add[z_buyfen]\\" type=\\"text\\" id=\\"add[z_buyfen]\\" value=\\"<?=stripSlashes($r[z_buyfen])?>\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 0, 'INT', '', 1, 6, 'shop', 0, '', 0, 0, 1, '<input name=\\"buyfen\\" type=\\"text\\" id=\\"buyfen\\" value=\\"<?=$elvefirstpost==1?\\"\\":DoReqValue($mid,\\''buyfen\\'',stripSlashes($r[buyfen]))?>\\" size=\\"\\">\r\n', 0, '', 0, '60', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(84, 'pmaxnum', '库存', 'text', '<input name=\\"pmaxnum\\" type=\\"text\\" id=\\"pmaxnum\\" value=\\"<?=$elvefirstpost==1?\\"100\\":ehtmlspecialchars(stripSlashes($r[pmaxnum]))?>\\" size=\\"60\\">\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--melve.name--]正则：</strong><br>\r\n      (<input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--pmaxnum--]\\" size=\\"20\\">)</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr> \r\n          <td><textarea name=\\"add[zz_pmaxnum]\\" cols=\\"60\\" rows=\\"10\\" id=\\"textarea\\"><?=ehtmlspecialchars(stripSlashes($r[zz_pmaxnum]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\"add[z_pmaxnum]\\" type=\\"text\\" id=\\"add[z_pmaxnum]\\" value=\\"<?=stripSlashes($r[z_pmaxnum])?>\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 0, 'INT', '', 1, 6, 'shop', 0, '100', 0, 0, 1, '<input name=\\"pmaxnum\\" type=\\"text\\" id=\\"pmaxnum\\" value=\\"<?=$elvefirstpost==1?\\"100\\":DoReqValue($mid,\\''pmaxnum\\'',stripSlashes($r[pmaxnum]))?>\\" size=\\"\\">\r\n', 0, '', 0, '60', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(85, 'productpic', '商品大图', 'img', '\r\n<input name=\\"productpic\\" type=\\"text\\" id=\\"productpic\\" value=\\"<?=$elvefirstpost==1?\\"\\":ehtmlspecialchars(stripSlashes($r[productpic]))?>\\" size=\\"60\\">\r\n<a onclick=\\"window.open(\\''elveeditor/FileMain.php?type=1&classid=<?=$classid?>&infoid=<?=$id?>&filepass=<?=$filepass?>&sinfo=1&doing=1&field=productpic\\'',\\''\\'',\\''width=700,height=550,scrollbars=yes\\'');\\" title=\\"选择已上传的图片\\"><img src=\\"../data/images/changeimg.gif\\" border=\\"0\\" align=\\"absbottom\\"></a> \r\n', '', 1, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--melve.name--]正则：</strong><br>\r\n      ( \r\n      <input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--productpic--]\\" size=\\"20\\">\r\n      )</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n    <tr>\r\n      <td>附件前缀 \r\n        <input name=\\"add[qz_productpic]\\" type=\\"text\\" id=\\"add[qz_productpic]\\" value=\\"<?=stripSlashes($r[qz_productpic])?>\\"> \r\n        <input name=\\"add[save_productpic]\\" type=\\"checkbox\\" id=\\"add[save_productpic]\\" value=\\" checked\\"<?=$r[save_productpic]?>>\r\n        远程保存 </td>\r\n    </tr>\r\n    <tr> \r\n      <td><textarea name=\\"add[zz_productpic]\\" cols=\\"60\\" rows=\\"10\\" id=\\"add[zz_productpic]\\"><?=ehtmlspecialchars(stripSlashes($r[zz_productpic]))?></textarea></td>\r\n    </tr>\r\n    <tr> \r\n      <td><input name=\\"add[z_productpic]\\" type=\\"text\\" id=\\"productpic5\\" value=\\"<?=stripSlashes($r[z_productpic])?>\\">\r\n        (如填写这里，这就是字段的值)</td>\r\n    </tr>\r\n  </table></td>\r\n  </tr>\r\n', 1, 'VARCHAR', '255', 1, 6, 'shop', 0, '', 0, 0, 1, '\r\n<input type=\\"file\\" name=\\"productpicfile\\" size=\\"45\\">\r\n', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(86, 'newstext', '商品介绍', 'editor', '<?=elve_ShowEditorVar(\\"newstext\\",$elvefirstpost==1?\\"\\":stripSlashes($r[newstext]),\\"Default\\",\\"\\",\\"300\\",\\"100%\\")?>\r\n<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"3\\" cellspacing=\\"1\\" bgcolor=\\"#DBEAF5\\">\r\n          <tr> \r\n            <td bgcolor=\\"#FFFFFF\\"> <input name=\\"dokey\\" type=\\"checkbox\\" value=\\"1\\"<?=$r[dokey]==1?\\'' checked\\'':\\''\\''?>>\r\n              关键字替换&nbsp;&nbsp; <input name=\\"copyimg\\" type=\\"checkbox\\" id=\\"copyimg\\" value=\\"1\\">\r\n      远程保存图片(\r\n      <input name=\\"mark\\" type=\\"checkbox\\" id=\\"mark\\" value=\\"1\\">\r\n      <a href=\\"Setmelve.php\\" target=\\"_blank\\">加水印</a>)&nbsp;&nbsp; \r\n      <input name=\\"copyflash\\" type=\\"checkbox\\" id=\\"copyflash\\" value=\\"1\\">\r\n      远程保存FLASH(地址前缀： \r\n      <input name=\\"qz_url\\" type=\\"text\\" id=\\"qz_url\\" size=\\"\\">\r\n              )</td>\r\n          </tr>\r\n          <tr>\r\n            \r\n    <td bgcolor=\\"#FFFFFF\\"><input name=\\"repimgnexturl\\" type=\\"checkbox\\" id=\\"repimgnexturl\\" value=\\"1\\"> 图片链接转为下一页&nbsp;&nbsp; <input name=\\"autopage\\" type=\\"checkbox\\" id=\\"autopage\\" value=\\"1\\"> 自动分页\r\n      ,每 \r\n      <input name=\\"autosize\\" type=\\"text\\" id=\\"autosize\\" value=\\"5000\\" size=\\"5\\">\r\n      个字节为一页&nbsp;&nbsp; 取第 \r\n      <input name=\\"getfirsttitlepic\\" type=\\"text\\" id=\\"getfirsttitlepic\\" value=\\"\\" size=\\"1\\">\r\n      张上传图为标题图片( \r\n      <input name=\\"getfirsttitlespic\\" type=\\"checkbox\\" id=\\"getfirsttitlespic\\" value=\\"1\\">\r\n      缩略图: 宽 \r\n      <input name=\\"getfirsttitlespicw\\" type=\\"text\\" id=\\"getfirsttitlespicw\\" size=\\"3\\" value=\\"<?=$public_r[spicwidth]?>\\">\r\n      *高\r\n      <input name=\\"getfirsttitlespich\\" type=\\"text\\" id=\\"getfirsttitlespich\\" size=\\"3\\" value=\\"<?=$public_r[spicheight]?>\\">\r\n      )</td>\r\n          </tr>\r\n        </table>\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--melve.name--]正则：</strong><br>\r\n      (<input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--newstext--]\\" size=\\"20\\">)</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr> \r\n          <td><textarea name=\\"add[zz_newstext]\\" cols=\\"60\\" rows=\\"10\\" id=\\"textarea\\"><?=ehtmlspecialchars(stripSlashes($r[zz_newstext]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\"add[z_newstext]\\" type=\\"text\\" id=\\"add[z_newstext]\\" value=\\"<?=stripSlashes($r[z_newstext])?>\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 1, 'MEDIUMTEXT', '', 1, 6, 'shop', 0, '', 0, 1, 1, '<?=elve_ShowEditorVar(\\"newstext\\",$elvefirstpost==1?\\"\\":DoReqValue($mid,\\''newstext\\'',stripSlashes($r[newstext])),\\"Default\\",\\"\\",\\"300\\",\\"100%\\")?>\r\n', 0, '', 0, '', 0, 1, '', '', '', '', '', '', 0, 0, ''),
(87, 'psalenum', '销售量', 'text', '\r\n<input name=\\"psalenum\\" type=\\"text\\" id=\\"psalenum\\" value=\\"<?=$elvefirstpost==1?\\"\\":ehtmlspecialchars(stripSlashes($r[psalenum]))?>\\" size=\\"60\\">\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--melve.name--]正则：</strong><br>\r\n      (<input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--psalenum--]\\" size=\\"20\\">)</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr> \r\n          <td><textarea name=\\"add[zz_psalenum]\\" cols=\\"60\\" rows=\\"10\\" id=\\"textarea\\"><?=ehtmlspecialchars(stripSlashes($r[zz_psalenum]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\"add[z_psalenum]\\" type=\\"text\\" id=\\"add[z_psalenum]\\" value=\\"<?=stripSlashes($r[z_psalenum])?>\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 1, 'INT', '', 1, 6, 'shop', 0, '', 0, 0, 1, '\r\n<input name=\\"psalenum\\" type=\\"text\\" id=\\"psalenum\\" value=\\"<?=$elvefirstpost==1?\\"\\":DoReqValue($mid,\\''psalenum\\'',stripSlashes($r[psalenum]))?>\\" size=\\"60\\">\r\n', 0, '', 0, '60', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(88, 'title', '标题', 'text', '\r\n<table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#DBEAF5">\r\n<tr> \r\n  <td height="25" bgcolor="#FFFFFF">\r\n	<?=$tts?"<select name=''ttid''><option value=''0''>标题分类</option>$tts</select>":""?>\r\n	<input type=text name=title value="<?=ehtmlspecialchars(stripSlashes($r[title]))?>" size="60"> \r\n	<input type="button" name="button" value="图文" onclick="document.add.title.value=document.add.title.value+''(图文)'';"> \r\n  </td>\r\n</tr>\r\n<tr> \r\n  <td height="25" bgcolor="#FFFFFF">属性: \r\n	<input name="titlefont[b]" type="checkbox" value="b"<?=$titlefontb?>>粗体\r\n	<input name="titlefont[i]" type="checkbox" value="i"<?=$titlefonti?>>斜体\r\n	<input name="titlefont[s]" type="checkbox" value="s"<?=$titlefonts?>>删除线\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;颜色: <input name="titlecolor" type="text" value="<?=stripSlashes($r[titlecolor])?>" size="10"><a onclick="foreColor();"><img src="../data/images/color.gif" width="21" height="21" align="absbottom"></a>\r\n  </td>\r\n</tr>\r\n</table>\r\n', '标题', 0, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--melve.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--title--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_title]" cols="60" rows="10" id="textarea"><?=ehtmlspecialchars(stripSlashes($r[zz_title]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_title]" type="text" id="add[z_title]" value="<?=stripSlashes($r[z_title])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 0, 'CHAR', '100', 1, 7, 'article', 0, '', 0, 0, 0, '\r\n<input name="title" type="text" size="42" value="<?=$elvefirstpost==1?"":DoReqValue($mid,''title'',stripSlashes($r[title]))?>">\r\n', 0, '', 0, '60', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(89, 'special.field', '特殊属性', '', '\r\n<table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#DBEAF5">\r\n  <tr>\r\n    <td height="25" bgcolor="#FFFFFF">信息属性: \r\n      <input name="checked" type="checkbox" value="1"<?=$r[checked]?'' checked'':''''?>>\r\n      审核 &nbsp;&nbsp; 推荐 \r\n      <select name="isgood" id="isgood">\r\n        <option value="0">不推荐</option>\r\n	<?=$ftnr[''igname'']?>\r\n      </select>\r\n      &nbsp;&nbsp; 头条 \r\n      <select name="firsttitle" id="firsttitle">\r\n        <option value="0">非头条</option>\r\n	<?=$ftnr[''ftname'']?>\r\n      </select></td>\r\n  </tr>\r\n  <tr> \r\n    <td height="25" bgcolor="#FFFFFF">关键字&nbsp;&nbsp;&nbsp;: \r\n      <input name="keyboard" type="text" size="52" value="<?=stripSlashes($r[keyboard])?>">\r\n      <font color="#666666">(多个请用&quot;,&quot;隔开)</font></td>\r\n  </tr>\r\n  <tr> \r\n    <td height="25" bgcolor="#FFFFFF">外部链接: \r\n      <input name="titleurl" type="text" value="<?=stripSlashes($r[titleurl])?>" size="52">\r\n      <font color="#666666">(填写后信息连接地址将为此链接)</font></td>\r\n  </tr>\r\n</table>\r\n', '特殊属性', 0, 1, 0, '\r\n\r\n', 1, '', '0', 0, 7, 'article', 0, '', 0, 0, 0, '\r\n<input name="keyboard" type="text" size=42 value="<?=stripSlashes($r[keyboard])?>">\r\n<font color="#666666">(多个请用&quot;,&quot;隔开)</font>\r\n', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(90, 'titlepic', '标题图片', 'img', '\r\n<input name="titlepic" type="text" id="titlepic" value="<?=$elvefirstpost==1?"":ehtmlspecialchars(stripSlashes($r[titlepic]))?>" size="45">\r\n<a onclick="window.open(''elveeditor/FileMain.php?type=1&classid=<?=$classid?>&infoid=<?=$id?>&filepass=<?=$filepass?>&sinfo=1&doing=1&field=titlepic'','''',''width=700,height=550,scrollbars=yes'');" title="选择已上传的图片"><img src="../data/images/changeimg.gif" border="0" align="absbottom"></a> \r\n', '标题图片', 0, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--melve.name--]正则：</strong><br>\r\n      ( \r\n      <input name="textfield" type="text" id="textfield" value="[!--titlepic--]" size="20">\r\n      )</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n    <tr>\r\n      <td>附件前缀 \r\n        <input name="add[qz_titlepic]" type="text" id="add[qz_titlepic]" value="<?=stripSlashes($r[qz_titlepic])?>"> \r\n        <input name="add[save_titlepic]" type="checkbox" id="add[save_titlepic]" value=" checked"<?=$r[save_titlepic]?>>\r\n        远程保存 </td>\r\n    </tr>\r\n    <tr> \r\n      <td><textarea name="add[zz_titlepic]" cols="60" rows="10" id="add[zz_titlepic]"><?=ehtmlspecialchars(stripSlashes($r[zz_titlepic]))?></textarea></td>\r\n    </tr>\r\n    <tr> \r\n      <td><input name="add[z_titlepic]" type="text" id="titlepic5" value="<?=stripSlashes($r[z_titlepic])?>">\r\n        (如填写这里，这就是字段的值)</td>\r\n    </tr>\r\n  </table></td>\r\n  </tr>\r\n', 2, 'CHAR', '120', 1, 7, 'article', 0, '', 0, 0, 0, '\r\n<input type="file" name="titlepicfile" size="45">\r\n', 0, '', 0, '60', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(91, 'newstime', '发布时间', 'text', '\r\n<input name="newstime" type="text" value="<?=$r[newstime]?>"><input type=button name=button value="设为当前时间" onclick="document.add.newstime.value=''<?=$todaytime?>''">\r\n', '发布时间', 0, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--melve.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--newstime--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_newstime]" cols="60" rows="10" id="textarea"><?=ehtmlspecialchars(stripSlashes($r[zz_newstime]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_newstime]" type="text" id="add[z_newstime]" value="<?=stripSlashes($r[z_newstime])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 1, 'INT', '11', 1, 7, 'article', 0, '', 1, 0, 0, '\r\n\r\n', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(92, 'ftitle', '副标题', 'text', '<input name=\\"ftitle\\" type=\\"text\\" id=\\"ftitle\\" value=\\"<?=$elvefirstpost==1?\\"\\":ehtmlspecialchars(stripSlashes($r[ftitle]))?>\\" size=\\"60\\">\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--melve.name--]正则：</strong><br>\r\n      (<input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--ftitle--]\\" size=\\"20\\">)</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr> \r\n          <td><textarea name=\\"add[zz_ftitle]\\" cols=\\"60\\" rows=\\"10\\" id=\\"textarea\\"><?=ehtmlspecialchars(stripSlashes($r[zz_ftitle]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\"add[z_ftitle]\\" type=\\"text\\" id=\\"add[z_ftitle]\\" value=\\"<?=stripSlashes($r[z_ftitle])?>\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 0, 'CHAR', '120', 1, 7, 'article', 0, '', 0, 0, 1, '<input name=\\"ftitle\\" type=\\"text\\" id=\\"ftitle\\" value=\\"<?=$elvefirstpost==1?\\"\\":DoReqValue($mid,\\''ftitle\\'',stripSlashes($r[ftitle]))?>\\" size=\\"42\\">\r\n', 0, '', 0, '60', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(93, 'smalltext', '内容简介', 'textarea', '<textarea name=\\"smalltext\\" cols=\\"80\\" rows=\\"10\\" id=\\"smalltext\\"><?=$elvefirstpost==1?\\"\\":ehtmlspecialchars(stripSlashes($r[smalltext]))?></textarea>\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--melve.name--]正则：</strong><br>\r\n      (<input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--smalltext--]\\" size=\\"20\\">)</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr> \r\n          <td><textarea name=\\"add[zz_smalltext]\\" cols=\\"60\\" rows=\\"10\\" id=\\"textarea\\"><?=ehtmlspecialchars(stripSlashes($r[zz_smalltext]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\"add[z_smalltext]\\" type=\\"text\\" id=\\"add[z_smalltext]\\" value=\\"<?=stripSlashes($r[z_smalltext])?>\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 2, 'CHAR', '255', 1, 7, 'article', 0, '', 0, 1, 1, '<textarea name=\\"smalltext\\" cols=\\"60\\" rows=\\"10\\" id=\\"smalltext\\"><?=$elvefirstpost==1?\\"\\":DoReqValue($mid,\\''smalltext\\'',stripSlashes($r[smalltext]))?></textarea>\r\n', 0, '', 0, '80,10', 0, 0, '', '', '', '', '', '', 0, 1, ''),
(94, 'writer', '作者', 'text', '\r\n<?php\r\n$writer_sql=$Elves->query(\\"select writer from {$dbtbpre}melvewriter\\");\r\nwhile($w_r=$Elves->fetch($writer_sql))\r\n{\r\n	$w_class.=\\"<option value=\\''\\".$w_r[writer].\\"\\''>\\".$w_r[writer].\\"</option>\\";\r\n}\r\n?>\r\n<input type=text name=writer value=\\"<?=$elvefirstpost==1?\\"\\":ehtmlspecialchars(stripSlashes($r[writer]))?>\\" size=\\"\\"> \r\n        <select name=\\"w_id\\" id=\\"select7\\" onchange=\\"document.add.writer.value=document.add.w_id.value\\">\r\n          <option>选择作者</option>\r\n		  <?=$w_class?>\r\n        </select>\r\n<input type=\\"button\\" name=\\"wbutton\\" value=\\"增加作者\\" onclick=\\"window.open(\\''NewsSys/writer.php?addwritername=\\''+document.add.writer.value);\\">\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--melve.name--]正则：</strong><br>\r\n      (<input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--writer--]\\" size=\\"20\\">)</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr> \r\n          <td><textarea name=\\"add[zz_writer]\\" cols=\\"60\\" rows=\\"10\\" id=\\"textarea\\"><?=ehtmlspecialchars(stripSlashes($r[zz_writer]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\"add[z_writer]\\" type=\\"text\\" id=\\"add[z_writer]\\" value=\\"<?=stripSlashes($r[z_writer])?>\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 2, 'CHAR', '30', 1, 7, 'article', 0, '', 0, 0, 1, '\r\n<input name=\\"writer\\" type=\\"text\\" id=\\"writer\\" value=\\"<?=$elvefirstpost==1?\\"\\":DoReqValue($mid,\\''writer\\'',stripSlashes($r[writer]))?>\\" size=\\"\\">\r\n', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(95, 'befrom', '信息来源', 'text', '\r\n<?php\r\n$befrom_sql=$Elves->query(\\"select sitename from {$dbtbpre}melvebefrom\\");\r\nwhile($b_r=$Elves->fetch($befrom_sql))\r\n{\r\n	$b_class.=\\"<option value=\\''\\".$b_r[sitename].\\"\\''>\\".$b_r[sitename].\\"</option>\\";\r\n}\r\n?>\r\n<input type=\\"text\\" name=\\"befrom\\" value=\\"<?=$elvefirstpost==1?\\"\\":ehtmlspecialchars(stripSlashes($r[befrom]))?>\\" size=\\"\\"> \r\n        <select name=\\"befrom_id\\" id=\\"befromid\\" onchange=\\"document.add.befrom.value=document.add.befrom_id.value\\">\r\n          <option>选择信息来源</option>\r\n          <?=$b_class?>\r\n        </select>\r\n<input type=\\"button\\" name=\\"wbutton\\" value=\\"增加来源\\" onclick=\\"window.open(\\''NewsSys/BeFrom.php?addsitename=\\''+document.add.befrom.value);\\">\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--melve.name--]正则：</strong><br>\r\n      (<input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--befrom--]\\" size=\\"20\\">)</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr> \r\n          <td><textarea name=\\"add[zz_befrom]\\" cols=\\"60\\" rows=\\"10\\" id=\\"textarea\\"><?=ehtmlspecialchars(stripSlashes($r[zz_befrom]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\"add[z_befrom]\\" type=\\"text\\" id=\\"add[z_befrom]\\" value=\\"<?=stripSlashes($r[z_befrom])?>\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 2, 'CHAR', '60', 1, 7, 'article', 0, '', 0, 0, 1, '\r\n<input name=\\"befrom\\" type=\\"text\\" id=\\"befrom\\" value=\\"<?=$elvefirstpost==1?\\"\\":DoReqValue($mid,\\''befrom\\'',stripSlashes($r[befrom]))?>\\" size=\\"\\">\r\n', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(96, 'newstext', '新闻正文', 'editor', '\r\n<?=elve_ShowEditorVar(\\"newstext\\",$elvefirstpost==1?\\"\\":stripSlashes($r[newstext]),\\"Default\\",\\"\\",\\"300\\",\\"100%\\")?>\r\n<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"3\\" cellspacing=\\"1\\" bgcolor=\\"#DBEAF5\\">\r\n          <tr> \r\n            <td bgcolor=\\"#FFFFFF\\"> <input name=\\"dokey\\" type=\\"checkbox\\" value=\\"1\\"<?=$r[dokey]==1?\\'' checked\\'':\\''\\''?>>\r\n              关键字替换&nbsp;&nbsp; <input name=\\"copyimg\\" type=\\"checkbox\\" id=\\"copyimg\\" value=\\"1\\">\r\n      远程保存图片(\r\n      <input name=\\"mark\\" type=\\"checkbox\\" id=\\"mark\\" value=\\"1\\">\r\n      <a href=\\"Setmelve.php\\" target=\\"_blank\\">加水印</a>)&nbsp;&nbsp; \r\n      <input name=\\"copyflash\\" type=\\"checkbox\\" id=\\"copyflash\\" value=\\"1\\">\r\n      远程保存FLASH(地址前缀： \r\n      <input name=\\"qz_url\\" type=\\"text\\" id=\\"qz_url\\" size=\\"\\">\r\n              )</td>\r\n          </tr>\r\n          <tr>\r\n            \r\n    <td bgcolor=\\"#FFFFFF\\"><input name=\\"repimgnexturl\\" type=\\"checkbox\\" id=\\"repimgnexturl\\" value=\\"1\\"> 图片链接转为下一页&nbsp;&nbsp; <input name=\\"autopage\\" type=\\"checkbox\\" id=\\"autopage\\" value=\\"1\\"> 自动分页\r\n      ,每 \r\n      <input name=\\"autosize\\" type=\\"text\\" id=\\"autosize\\" value=\\"5000\\" size=\\"5\\">\r\n      个字节为一页&nbsp;&nbsp; 取第 \r\n      <input name=\\"getfirsttitlepic\\" type=\\"text\\" id=\\"getfirsttitlepic\\" value=\\"\\" size=\\"1\\">\r\n      张上传图为标题图片( \r\n      <input name=\\"getfirsttitlespic\\" type=\\"checkbox\\" id=\\"getfirsttitlespic\\" value=\\"1\\">\r\n      缩略图: 宽 \r\n      <input name=\\"getfirsttitlespicw\\" type=\\"text\\" id=\\"getfirsttitlespicw\\" size=\\"3\\" value=\\"<?=$public_r[spicwidth]?>\\">\r\n      *高\r\n      <input name=\\"getfirsttitlespich\\" type=\\"text\\" id=\\"getfirsttitlespich\\" size=\\"3\\" value=\\"<?=$public_r[spicheight]?>\\">\r\n      )</td>\r\n          </tr>\r\n        </table>\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--melve.name--]正则：</strong><br>\r\n      (<input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--newstext--]\\" size=\\"20\\">)</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr> \r\n          <td><textarea name=\\"add[zz_newstext]\\" cols=\\"60\\" rows=\\"10\\" id=\\"textarea\\"><?=ehtmlspecialchars(stripSlashes($r[zz_newstext]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\"add[z_newstext]\\" type=\\"text\\" id=\\"add[z_newstext]\\" value=\\"<?=stripSlashes($r[z_newstext])?>\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 2, 'CHAR', '50', 1, 7, 'article', 1, '', 0, 1, 1, '\r\n<?=elve_ShowEditorVar(\\"newstext\\",$elvefirstpost==1?\\"\\":DoReqValue($mid,\\''newstext\\'',stripSlashes($r[newstext])),\\"Default\\",\\"\\",\\"300\\",\\"100%\\")?>\r\n', 0, '', 0, '', 0, 1, '', '', '', '', '', '', 0, 0, ''),
(97, 'diggtop', '顶', 'text', '\r\n<input name=\\"diggtop\\" type=\\"text\\" id=\\"diggtop\\" value=\\"<?=$elvefirstpost==1?\\"\\":ehtmlspecialchars(stripSlashes($r[diggtop]))?>\\" size=\\"\\">\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--melve.name--]正则：</strong><br>\r\n      (<input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--diggtop--]\\" size=\\"20\\">)</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr> \r\n          <td><textarea name=\\"add[zz_diggtop]\\" cols=\\"60\\" rows=\\"10\\" id=\\"textarea\\"><?=ehtmlspecialchars(stripSlashes($r[zz_diggtop]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\"add[z_diggtop]\\" type=\\"text\\" id=\\"add[z_diggtop]\\" value=\\"<?=stripSlashes($r[z_diggtop])?>\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 3, 'INT', '', 1, 7, 'article', 0, '', 0, 0, 1, '\r\n<input name=\\"diggtop\\" type=\\"text\\" id=\\"diggtop\\" value=\\"<?=$elvefirstpost==1?\\"\\":DoReqValue($mid,\\''diggtop\\'',stripSlashes($r[diggtop]))?>\\" size=\\"\\">\r\n', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(98, 'title', '标题', 'text', '\r\n<table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#DBEAF5">\r\n<tr> \r\n  <td height="25" bgcolor="#FFFFFF">\r\n	<?=$tts?"<select name=''ttid''><option value=''0''>标题分类</option>$tts</select>":""?>\r\n	<input type=text name=title value="<?=ehtmlspecialchars(stripSlashes($r[title]))?>" size="60"> \r\n	<input type="button" name="button" value="图文" onclick="document.add.title.value=document.add.title.value+''(图文)'';"> \r\n  </td>\r\n</tr>\r\n<tr> \r\n  <td height="25" bgcolor="#FFFFFF">属性: \r\n	<input name="titlefont[b]" type="checkbox" value="b"<?=$titlefontb?>>粗体\r\n	<input name="titlefont[i]" type="checkbox" value="i"<?=$titlefonti?>>斜体\r\n	<input name="titlefont[s]" type="checkbox" value="s"<?=$titlefonts?>>删除线\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;颜色: <input name="titlecolor" type="text" value="<?=stripSlashes($r[titlecolor])?>" size="10"><a onclick="foreColor();"><img src="../data/images/color.gif" width="21" height="21" align="absbottom"></a>\r\n  </td>\r\n</tr>\r\n</table>\r\n', '标题', 0, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--melve.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--title--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_title]" cols="60" rows="10" id="textarea"><?=ehtmlspecialchars(stripSlashes($r[zz_title]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_title]" type="text" id="add[z_title]" value="<?=stripSlashes($r[z_title])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 0, 'CHAR', '100', 1, 8, 'info', 0, '', 0, 0, 0, '\r\n<input name="title" type="text" size="42" value="<?=$elvefirstpost==1?"":DoReqValue($mid,''title'',stripSlashes($r[title]))?>">\r\n', 0, '', 0, '60', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(99, 'special.field', '特殊属性', '', '\r\n<table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#DBEAF5">\r\n  <tr>\r\n    <td height="25" bgcolor="#FFFFFF">信息属性: \r\n      <input name="checked" type="checkbox" value="1"<?=$r[checked]?'' checked'':''''?>>\r\n      审核 &nbsp;&nbsp; 推荐 \r\n      <select name="isgood" id="isgood">\r\n        <option value="0">不推荐</option>\r\n	<?=$ftnr[''igname'']?>\r\n      </select>\r\n      &nbsp;&nbsp; 头条 \r\n      <select name="firsttitle" id="firsttitle">\r\n        <option value="0">非头条</option>\r\n	<?=$ftnr[''ftname'']?>\r\n      </select></td>\r\n  </tr>\r\n  <tr> \r\n    <td height="25" bgcolor="#FFFFFF">关键字&nbsp;&nbsp;&nbsp;: \r\n      <input name="keyboard" type="text" size="52" value="<?=stripSlashes($r[keyboard])?>">\r\n      <font color="#666666">(多个请用&quot;,&quot;隔开)</font></td>\r\n  </tr>\r\n  <tr> \r\n    <td height="25" bgcolor="#FFFFFF">外部链接: \r\n      <input name="titleurl" type="text" value="<?=stripSlashes($r[titleurl])?>" size="52">\r\n      <font color="#666666">(填写后信息连接地址将为此链接)</font></td>\r\n  </tr>\r\n</table>\r\n', '特殊属性', 0, 1, 0, '\r\n\r\n', 0, '', '0', 0, 8, 'info', 0, '', 0, 0, 0, '\r\n<input name="keyboard" type="text" size=42 value="<?=stripSlashes($r[keyboard])?>">\r\n<font color="#666666">(多个请用&quot;,&quot;隔开)</font>\r\n', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(100, 'titlepic', '标题图片', 'img', '\r\n<input name="titlepic" type="text" id="titlepic" value="<?=$elvefirstpost==1?"":ehtmlspecialchars(stripSlashes($r[titlepic]))?>" size="45">\r\n<a onclick="window.open(''elveeditor/FileMain.php?type=1&classid=<?=$classid?>&infoid=<?=$id?>&filepass=<?=$filepass?>&sinfo=1&doing=1&field=titlepic'','''',''width=700,height=550,scrollbars=yes'');" title="选择已上传的图片"><img src="../data/images/changeimg.gif" border="0" align="absbottom"></a> \r\n', '标题图片', 0, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--melve.name--]正则：</strong><br>\r\n      ( \r\n      <input name="textfield" type="text" id="textfield" value="[!--titlepic--]" size="20">\r\n      )</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n    <tr>\r\n      <td>附件前缀 \r\n        <input name="add[qz_titlepic]" type="text" id="add[qz_titlepic]" value="<?=stripSlashes($r[qz_titlepic])?>"> \r\n        <input name="add[save_titlepic]" type="checkbox" id="add[save_titlepic]" value=" checked"<?=$r[save_titlepic]?>>\r\n        远程保存 </td>\r\n    </tr>\r\n    <tr> \r\n      <td><textarea name="add[zz_titlepic]" cols="60" rows="10" id="add[zz_titlepic]"><?=ehtmlspecialchars(stripSlashes($r[zz_titlepic]))?></textarea></td>\r\n    </tr>\r\n    <tr> \r\n      <td><input name="add[z_titlepic]" type="text" id="titlepic5" value="<?=stripSlashes($r[z_titlepic])?>">\r\n        (如填写这里，这就是字段的值)</td>\r\n    </tr>\r\n  </table></td>\r\n  </tr>\r\n', 1, 'CHAR', '120', 1, 8, 'info', 0, '', 0, 0, 0, '\r\n<input type="file" name="titlepicfile" size="45">\r\n', 0, '', 0, '60', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(101, 'newstime', '发布时间', 'text', '\r\n<input name="newstime" type="text" value="<?=$r[newstime]?>"><input type=button name=button value="设为当前时间" onclick="document.add.newstime.value=''<?=$todaytime?>''">\r\n', '发布时间', 0, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--melve.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--newstime--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_newstime]" cols="60" rows="10" id="textarea"><?=ehtmlspecialchars(stripSlashes($r[zz_newstime]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_newstime]" type="text" id="add[z_newstime]" value="<?=stripSlashes($r[z_newstime])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 0, 'INT', '11', 1, 8, 'info', 0, '', 1, 0, 0, '\r\n\r\n', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(102, 'smalltext', '信息内容', 'textarea', '<textarea name=\\"smalltext\\" cols=\\"80\\" rows=\\"10\\" id=\\"smalltext\\"><?=$elvefirstpost==1?\\"\\":ehtmlspecialchars(stripSlashes($r[smalltext]))?></textarea>\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--melve.name--]正则：</strong><br>\r\n      (<input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--smalltext--]\\" size=\\"20\\">)</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr> \r\n          <td><textarea name=\\"add[zz_smalltext]\\" cols=\\"60\\" rows=\\"10\\" id=\\"textarea\\"><?=ehtmlspecialchars(stripSlashes($r[zz_smalltext]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\"add[z_smalltext]\\" type=\\"text\\" id=\\"add[z_smalltext]\\" value=\\"<?=stripSlashes($r[z_smalltext])?>\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 0, 'TEXT', '', 1, 8, 'info', 0, '', 0, 1, 1, '<textarea name=\\"smalltext\\" cols=\\"60\\" rows=\\"10\\" id=\\"smalltext\\"><?=$elvefirstpost==1?\\"\\":DoReqValue($mid,\\''smalltext\\'',stripSlashes($r[smalltext]))?></textarea>\r\n', 0, '', 0, '80,10', 0, 0, '', '', '', '', '', '', 0, 1, ''),
(103, 'myarea', '所在地', 'select', '<select name="myarea" id="myarea"><option value="东城区"<?=$r[myarea]=="东城区"||$elvefirstpost==1?'' selected'':''''?>>东城区</option><option value="西城区"<?=$r[myarea]=="西城区"?'' selected'':''''?>>西城区</option><option value="崇文区"<?=$r[myarea]=="崇文区"?'' selected'':''''?>>崇文区</option><option value="宣武区"<?=$r[myarea]=="宣武区"?'' selected'':''''?>>宣武区</option><option value="朝阳区"<?=$r[myarea]=="朝阳区"?'' selected'':''''?>>朝阳区</option><option value="海淀区"<?=$r[myarea]=="海淀区"?'' selected'':''''?>>海淀区</option><option value="丰台区"<?=$r[myarea]=="丰台区"?'' selected'':''''?>>丰台区</option><option value="石景山区"<?=$r[myarea]=="石景山区"?'' selected'':''''?>>石景山区</option><option value="通州区"<?=$r[myarea]=="通州区"?'' selected'':''''?>>通州区</option><option value="昌平区"<?=$r[myarea]=="昌平区"?'' selected'':''''?>>昌平区</option><option value="大兴区"<?=$r[myarea]=="大兴区"?'' selected'':''''?>>大兴区</option><option value="其它"<?=$r[myarea]=="其它"?'' selected'':''''?>>其它</option></select>', '', 1, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--melve.name--]正则：</strong><br>\r\n      (<input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--myarea--]\\" size=\\"20\\">)</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr> \r\n          <td><textarea name=\\"add[zz_myarea]\\" cols=\\"60\\" rows=\\"10\\" id=\\"textarea\\"><?=ehtmlspecialchars(stripSlashes($r[zz_myarea]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\"add[z_myarea]\\" type=\\"text\\" id=\\"add[z_myarea]\\" value=\\"<?=stripSlashes($r[z_myarea])?>\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 1, 'VARCHAR', '30', 1, 8, 'info', 0, '东城区:default|西城区|崇文区|宣武区|朝阳区|海淀区|丰台区|石景山区|通州区|昌平区|大兴区|其它', 0, 0, 1, '<select name="myarea" id="myarea"><option value="东城区"<?=$r[myarea]=="东城区"||$elvefirstpost==1?'' selected'':''''?>>东城区</option><option value="西城区"<?=$r[myarea]=="西城区"?'' selected'':''''?>>西城区</option><option value="崇文区"<?=$r[myarea]=="崇文区"?'' selected'':''''?>>崇文区</option><option value="宣武区"<?=$r[myarea]=="宣武区"?'' selected'':''''?>>宣武区</option><option value="朝阳区"<?=$r[myarea]=="朝阳区"?'' selected'':''''?>>朝阳区</option><option value="海淀区"<?=$r[myarea]=="海淀区"?'' selected'':''''?>>海淀区</option><option value="丰台区"<?=$r[myarea]=="丰台区"?'' selected'':''''?>>丰台区</option><option value="石景山区"<?=$r[myarea]=="石景山区"?'' selected'':''''?>>石景山区</option><option value="通州区"<?=$r[myarea]=="通州区"?'' selected'':''''?>>通州区</option><option value="昌平区"<?=$r[myarea]=="昌平区"?'' selected'':''''?>>昌平区</option><option value="大兴区"<?=$r[myarea]=="大兴区"?'' selected'':''''?>>大兴区</option><option value="其它"<?=$r[myarea]=="其它"?'' selected'':''''?>>其它</option></select>', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(104, 'email', '邮箱', 'text', '<input name=\\"email\\" type=\\"text\\" id=\\"email\\" value=\\"<?=$elvefirstpost==1?$memberinfor[email]:ehtmlspecialchars(stripSlashes($r[email]))?>\\" size=\\"60\\">\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--melve.name--]正则：</strong><br>\r\n      (<input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--email--]\\" size=\\"20\\">)</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr> \r\n          <td><textarea name=\\"add[zz_email]\\" cols=\\"60\\" rows=\\"10\\" id=\\"textarea\\"><?=ehtmlspecialchars(stripSlashes($r[zz_email]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\"add[z_email]\\" type=\\"text\\" id=\\"add[z_email]\\" value=\\"<?=stripSlashes($r[z_email])?>\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 2, 'VARCHAR', '80', 1, 8, 'info', 0, '$memberinfor[email]', 0, 0, 1, '<input name=\\"email\\" type=\\"text\\" id=\\"email\\" value=\\"<?=$elvefirstpost==1?$memberinfor[email]:DoReqValue($mid,\\''email\\'',stripSlashes($r[email]))?>\\" size=\\"46\\">\r\n', 0, '', 0, '46', 1, 0, '', '', '', '', '', '', 0, 0, ''),
(105, 'mycontact', '联系方式', 'text', '<input name=\\"mycontact\\" type=\\"text\\" id=\\"mycontact\\" value=\\"<?=$elvefirstpost==1?\\"\\":ehtmlspecialchars(stripSlashes($r[mycontact]))?>\\" size=\\"60\\">\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--melve.name--]正则：</strong><br>\r\n      (<input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--mycontact--]\\" size=\\"20\\">)</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr> \r\n          <td><textarea name=\\"add[zz_mycontact]\\" cols=\\"60\\" rows=\\"10\\" id=\\"textarea\\"><?=ehtmlspecialchars(stripSlashes($r[zz_mycontact]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\"add[z_mycontact]\\" type=\\"text\\" id=\\"add[z_mycontact]\\" value=\\"<?=stripSlashes($r[z_mycontact])?>\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 2, 'VARCHAR', '255', 1, 8, 'info', 0, '', 0, 0, 1, '<input name=\\"mycontact\\" type=\\"text\\" id=\\"mycontact\\" value=\\"<?=$elvefirstpost==1?\\"\\":DoReqValue($mid,\\''mycontact\\'',stripSlashes($r[mycontact]))?>\\" size=\\"46\\">\r\n', 0, '', 0, '46', 1, 0, '', '', '', '', '', '', 0, 0, '');
INSERT INTO `base_melvef` (`fid`, `f`, `fname`, `fform`, `fhtml`, `fzs`, `isadd`, `isshow`, `iscj`, `cjhtml`, `myorder`, `ftype`, `flen`, `dotemp`, `tid`, `tbname`, `savetxt`, `fvalue`, `iskey`, `tobr`, `dohtml`, `qfhtml`, `isonly`, `linkfieldval`, `samedata`, `fformsize`, `tbdataf`, `ispage`, `adddofun`, `editdofun`, `qadddofun`, `qeditdofun`, `linkfieldtb`, `linkfieldshow`, `editorys`, `issmalltext`, `fmvnum`) VALUES
(106, 'address', '联系地址', 'text', '<input name=\\"address\\" type=\\"text\\" id=\\"address\\" value=\\"<?=$elvefirstpost==1?$memberinfor[address]:ehtmlspecialchars(stripSlashes($r[address]))?>\\" size=\\"60\\">\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--melve.name--]正则：</strong><br>\r\n      (<input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--address--]\\" size=\\"20\\">)</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr> \r\n          <td><textarea name=\\"add[zz_address]\\" cols=\\"60\\" rows=\\"10\\" id=\\"textarea\\"><?=ehtmlspecialchars(stripSlashes($r[zz_address]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\"add[z_address]\\" type=\\"text\\" id=\\"add[z_address]\\" value=\\"<?=stripSlashes($r[z_address])?>\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 2, 'VARCHAR', '255', 1, 8, 'info', 0, '$memberinfor[address]', 0, 0, 1, '<input name=\\"address\\" type=\\"text\\" id=\\"address\\" value=\\"<?=$elvefirstpost==1?$memberinfor[address]:DoReqValue($mid,\\''address\\'',stripSlashes($r[address]))?>\\" size=\\"46\\">\r\n', 0, '', 0, '46', 1, 0, '', '', '', '', '', '', 0, 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `base_melvefava`
--

CREATE TABLE IF NOT EXISTS `base_melvefava` (
  `favaid` bigint(20) NOT NULL AUTO_INCREMENT,
  `id` int(11) NOT NULL DEFAULT '0',
  `favatime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `userid` int(11) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `classid` smallint(6) NOT NULL DEFAULT '0',
  `cid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`favaid`),
  KEY `userid` (`userid`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melvefavaclass`
--

CREATE TABLE IF NOT EXISTS `base_melvefavaclass` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(30) NOT NULL DEFAULT '',
  `userid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melvefeedback`
--

CREATE TABLE IF NOT EXISTS `base_melvefeedback` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) NOT NULL DEFAULT '',
  `saytext` text NOT NULL,
  `name` varchar(30) NOT NULL DEFAULT '',
  `email` varchar(80) NOT NULL DEFAULT '',
  `mycall` varchar(30) NOT NULL DEFAULT '',
  `homepage` varchar(160) NOT NULL DEFAULT '',
  `company` varchar(80) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `saytime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `job` varchar(36) NOT NULL DEFAULT '',
  `ip` varchar(20) NOT NULL DEFAULT '',
  `filepath` varchar(20) NOT NULL DEFAULT '',
  `filename` text NOT NULL,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `haveread` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `bid` (`bid`),
  KEY `haveread` (`haveread`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melvefeedbackclass`
--

CREATE TABLE IF NOT EXISTS `base_melvefeedbackclass` (
  `bid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `bname` varchar(60) NOT NULL DEFAULT '',
  `btemp` mediumtext NOT NULL,
  `bzs` varchar(255) NOT NULL DEFAULT '',
  `enter` text NOT NULL,
  `mustenter` text NOT NULL,
  `filef` varchar(255) NOT NULL DEFAULT '',
  `groupid` smallint(6) NOT NULL DEFAULT '0',
  `checkboxf` text NOT NULL,
  `usernames` text NOT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `base_melvefeedbackclass`
--

INSERT INTO `base_melvefeedbackclass` (`bid`, `bname`, `btemp`, `bzs`, `enter`, `mustenter`, `filef`, `groupid`, `checkboxf`, `usernames`) VALUES
(1, '默认反馈分类', '[!--cp.header--]\r\n<table width=100% align=center cellpadding=3 cellspacing=1 class=\\"tableborder\\">\r\n  <form name=\\''feedback\\'' method=\\''post\\'' enctype=\\''multipart/form-data\\'' action=\\''../../melve/index.php\\''>\r\n    <input name=\\''melve\\'' type=\\''hidden\\'' value=\\''AddFeedback\\''>\r\n    <tr>\r\n      <td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''><div align=\\"right\\">您的姓名:</div></td>\r\n      <td bgcolor=\\''ffffff\\''><input name=\\''name\\'' type=\\''text\\'' size=\\''42\\''>\r\n        (*)</td>\r\n    </tr>\r\n    <tr>\r\n      <td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''><div align=\\"right\\">职务:</div></td>\r\n      <td bgcolor=\\''ffffff\\''><input name=\\''job\\'' type=\\''text\\'' size=\\''42\\''></td>\r\n    </tr>\r\n    <tr>\r\n      <td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''><div align=\\"right\\">公司名称:</div></td>\r\n      <td bgcolor=\\''ffffff\\''><input name=\\''company\\'' type=\\''text\\'' size=\\''42\\''></td>\r\n    </tr>\r\n    <tr>\r\n      <td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''><div align=\\"right\\">联系邮箱:</div></td>\r\n      <td bgcolor=\\''ffffff\\''><input name=\\''email\\'' type=\\''text\\'' size=\\''42\\''></td>\r\n    </tr>\r\n    <tr>\r\n      <td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''><div align=\\"right\\">联系电话:</div></td>\r\n      <td bgcolor=\\''ffffff\\''><input name=\\''mycall\\'' type=\\''text\\'' size=\\''42\\''>\r\n        (*)</td>\r\n    </tr>\r\n    <tr>\r\n      <td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''><div align=\\"right\\">网站:</div></td>\r\n      <td bgcolor=\\''ffffff\\''><input name=\\''homepage\\'' type=\\''text\\'' size=\\''42\\''></td>\r\n    </tr>\r\n    <tr>\r\n      <td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''><div align=\\"right\\">联系地址:</div></td>\r\n      <td bgcolor=\\''ffffff\\''><input name=\\''address\\'' type=\\''text\\'' size=\\"42\\"></td>\r\n    </tr>\r\n    <tr>\r\n      <td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''><div align=\\"right\\">信息标题:</div></td>\r\n      <td bgcolor=\\''ffffff\\''><input name=\\''title\\'' type=\\''text\\'' size=\\"42\\"> (*)</td>\r\n    </tr>\r\n    <tr> \r\n      <td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''><div align=\\"right\\">信息内容(*):</div></td>\r\n      <td bgcolor=\\''ffffff\\''><textarea name=\\''saytext\\'' cols=\\''60\\'' rows=\\''12\\''></textarea> \r\n      </td>\r\n    </tr>\r\n    <tr>\r\n      <td bgcolor=\\''ffffff\\''></td>\r\n      <td bgcolor=\\''ffffff\\''><input type=\\''submit\\'' name=\\''submit\\'' value=\\''提交\\''></td>\r\n    </tr>\r\n  </form>\r\n</table>\r\n[!--cp.footer--]', '', '您的姓名<!--field--->name<!--record-->职务<!--field--->job<!--record-->公司名称<!--field--->company<!--record-->联系邮箱<!--field--->email<!--record-->联系电话<!--field--->mycall<!--record-->网站<!--field--->homepage<!--record-->联系地址<!--field--->address<!--record-->信息标题<!--field--->title<!--record-->信息内容<!--field--->saytext<!--record-->', ',name,mycall,title,saytext,', ',', 0, '', '');

-- --------------------------------------------------------

--
-- 表的结构 `base_melvefeedbackf`
--

CREATE TABLE IF NOT EXISTS `base_melvefeedbackf` (
  `fid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `f` varchar(30) NOT NULL DEFAULT '',
  `fname` varchar(30) NOT NULL DEFAULT '',
  `fform` varchar(20) NOT NULL DEFAULT '',
  `fzs` varchar(255) NOT NULL DEFAULT '',
  `myorder` smallint(6) NOT NULL DEFAULT '0',
  `ftype` varchar(30) NOT NULL DEFAULT '',
  `flen` varchar(20) NOT NULL DEFAULT '',
  `fformsize` varchar(12) NOT NULL DEFAULT '',
  `fvalue` text NOT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- 转存表中的数据 `base_melvefeedbackf`
--

INSERT INTO `base_melvefeedbackf` (`fid`, `f`, `fname`, `fform`, `fzs`, `myorder`, `ftype`, `flen`, `fformsize`, `fvalue`) VALUES
(1, 'title', '标题', 'text', '', 7, 'VARCHAR', '120', '', ''),
(2, 'saytext', '内容', 'textarea', '', 8, 'TEXT', '', '', ''),
(3, 'name', '姓名', 'text', '', 0, 'VARCHAR', '30', '', ''),
(4, 'email', '邮箱', 'text', '', 3, 'VARCHAR', '80', '', ''),
(5, 'mycall', '电话', 'text', '', 4, 'VARCHAR', '30', '', ''),
(6, 'homepage', '网站', 'text', '', 5, 'VARCHAR', '160', '', ''),
(7, 'company', '公司名称', 'text', '', 2, 'VARCHAR', '80', '', ''),
(8, 'address', '联系地址', 'text', '', 6, 'VARCHAR', '255', '', ''),
(9, 'job', '职务', 'text', '', 1, 'VARCHAR', '36', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `base_melvefile_1`
--

CREATE TABLE IF NOT EXISTS `base_melvefile_1` (
  `fileid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pubid` bigint(16) unsigned NOT NULL DEFAULT '0',
  `filename` char(60) NOT NULL DEFAULT '',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0',
  `path` char(20) NOT NULL DEFAULT '',
  `adduser` char(30) NOT NULL DEFAULT '',
  `filetime` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `no` char(60) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `onclick` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `cjid` int(10) unsigned NOT NULL DEFAULT '0',
  `fpath` tinyint(1) NOT NULL DEFAULT '0',
  `modtype` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fileid`),
  KEY `id` (`id`),
  KEY `type` (`type`),
  KEY `classid` (`classid`),
  KEY `pubid` (`pubid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melvefile_member`
--

CREATE TABLE IF NOT EXISTS `base_melvefile_member` (
  `fileid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pubid` tinyint(1) NOT NULL DEFAULT '0',
  `filename` char(60) NOT NULL DEFAULT '',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0',
  `path` char(20) NOT NULL DEFAULT '',
  `adduser` char(30) NOT NULL DEFAULT '',
  `filetime` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` tinyint(1) NOT NULL DEFAULT '0',
  `no` char(60) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `onclick` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `cjid` int(10) unsigned NOT NULL DEFAULT '0',
  `fpath` tinyint(1) NOT NULL DEFAULT '0',
  `modtype` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fileid`),
  KEY `id` (`id`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melvefile_other`
--

CREATE TABLE IF NOT EXISTS `base_melvefile_other` (
  `fileid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pubid` tinyint(1) NOT NULL DEFAULT '0',
  `filename` char(60) NOT NULL DEFAULT '',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0',
  `path` char(20) NOT NULL DEFAULT '',
  `adduser` char(30) NOT NULL DEFAULT '',
  `filetime` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` tinyint(1) NOT NULL DEFAULT '0',
  `no` char(60) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `onclick` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `cjid` int(10) unsigned NOT NULL DEFAULT '0',
  `fpath` tinyint(1) NOT NULL DEFAULT '0',
  `modtype` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fileid`),
  KEY `id` (`id`),
  KEY `type` (`type`),
  KEY `modtype` (`modtype`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melvefile_public`
--

CREATE TABLE IF NOT EXISTS `base_melvefile_public` (
  `fileid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pubid` tinyint(1) NOT NULL DEFAULT '0',
  `filename` char(60) NOT NULL DEFAULT '',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0',
  `path` char(20) NOT NULL DEFAULT '',
  `adduser` char(30) NOT NULL DEFAULT '',
  `filetime` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` tinyint(1) NOT NULL DEFAULT '0',
  `no` char(60) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `onclick` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `cjid` int(10) unsigned NOT NULL DEFAULT '0',
  `fpath` tinyint(1) NOT NULL DEFAULT '0',
  `modtype` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fileid`),
  KEY `id` (`id`),
  KEY `type` (`type`),
  KEY `modtype` (`modtype`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melvegbook`
--

CREATE TABLE IF NOT EXISTS `base_melvegbook` (
  `lyid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `email` varchar(80) NOT NULL DEFAULT '',
  `mycall` varchar(30) NOT NULL DEFAULT '',
  `lytime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lytext` text NOT NULL,
  `retext` text NOT NULL,
  `bid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(20) NOT NULL DEFAULT '',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`lyid`),
  KEY `bid` (`bid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melvegbookclass`
--

CREATE TABLE IF NOT EXISTS `base_melvegbookclass` (
  `bid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `bname` varchar(60) NOT NULL DEFAULT '',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `groupid` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`bid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `base_melvegbookclass`
--

INSERT INTO `base_melvegbookclass` (`bid`, `bname`, `checked`, `groupid`) VALUES
(1, '默认留言分类', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `base_melvegfenip`
--

CREATE TABLE IF NOT EXISTS `base_melvegfenip` (
  `ip` varchar(20) NOT NULL DEFAULT '',
  `addtime` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `base_melvegroup`
--

CREATE TABLE IF NOT EXISTS `base_melvegroup` (
  `groupid` smallint(6) NOT NULL AUTO_INCREMENT,
  `groupname` varchar(50) NOT NULL DEFAULT '',
  `dopublic` tinyint(1) NOT NULL DEFAULT '0',
  `doclass` tinyint(1) NOT NULL DEFAULT '0',
  `dotemplate` tinyint(1) NOT NULL DEFAULT '0',
  `dopicnews` tinyint(1) NOT NULL DEFAULT '0',
  `dofile` tinyint(1) NOT NULL DEFAULT '0',
  `douser` tinyint(1) NOT NULL DEFAULT '0',
  `dolog` tinyint(1) NOT NULL DEFAULT '0',
  `domember` tinyint(1) NOT NULL DEFAULT '0',
  `dobefrom` tinyint(1) NOT NULL DEFAULT '0',
  `doword` tinyint(1) NOT NULL DEFAULT '0',
  `dokey` tinyint(1) NOT NULL DEFAULT '0',
  `doad` tinyint(1) NOT NULL DEFAULT '0',
  `dovote` tinyint(1) NOT NULL DEFAULT '0',
  `dogroup` tinyint(1) NOT NULL DEFAULT '0',
  `doall` tinyint(1) NOT NULL DEFAULT '0',
  `docj` tinyint(1) NOT NULL DEFAULT '0',
  `dobq` tinyint(1) NOT NULL DEFAULT '0',
  `domovmelve` tinyint(1) NOT NULL DEFAULT '0',
  `dopostdata` tinyint(1) NOT NULL DEFAULT '0',
  `dochangedata` tinyint(1) NOT NULL DEFAULT '0',
  `dopl` tinyint(1) NOT NULL DEFAULT '0',
  `dof` tinyint(1) NOT NULL DEFAULT '0',
  `dom` tinyint(1) NOT NULL DEFAULT '0',
  `dodo` tinyint(1) NOT NULL DEFAULT '0',
  `dodbdata` tinyint(1) NOT NULL DEFAULT '0',
  `dorepnewstext` tinyint(1) NOT NULL DEFAULT '0',
  `dotempvar` tinyint(1) NOT NULL DEFAULT '0',
  `dostats` tinyint(1) NOT NULL DEFAULT '0',
  `dowriter` tinyint(1) NOT NULL DEFAULT '0',
  `dototaldata` tinyint(1) NOT NULL DEFAULT '0',
  `dosearchkey` tinyint(1) NOT NULL DEFAULT '0',
  `dozt` tinyint(1) NOT NULL DEFAULT '0',
  `docard` tinyint(1) NOT NULL DEFAULT '0',
  `dolink` tinyint(1) NOT NULL DEFAULT '0',
  `doselfinfo` tinyint(1) NOT NULL DEFAULT '0',
  `doexecsql` tinyint(1) NOT NULL DEFAULT '0',
  `dotable` tinyint(1) NOT NULL DEFAULT '0',
  `dodownurl` tinyint(1) NOT NULL DEFAULT '0',
  `dodeldownrecord` tinyint(1) NOT NULL DEFAULT '0',
  `doshoppayfs` tinyint(1) NOT NULL DEFAULT '0',
  `doshopps` tinyint(1) NOT NULL DEFAULT '0',
  `doshopdd` tinyint(1) NOT NULL DEFAULT '0',
  `dogbook` tinyint(1) NOT NULL DEFAULT '0',
  `dofeedback` tinyint(1) NOT NULL DEFAULT '0',
  `douserpage` tinyint(1) NOT NULL DEFAULT '0',
  `donotcj` tinyint(1) NOT NULL DEFAULT '0',
  `dodownerror` tinyint(1) NOT NULL DEFAULT '0',
  `dodelinfodata` tinyint(1) NOT NULL DEFAULT '0',
  `doaddinfo` tinyint(1) NOT NULL DEFAULT '0',
  `doeditinfo` tinyint(1) NOT NULL DEFAULT '0',
  `dodelinfo` tinyint(1) NOT NULL DEFAULT '0',
  `doadminstyle` tinyint(1) NOT NULL DEFAULT '0',
  `dorepdownpath` tinyint(1) NOT NULL DEFAULT '0',
  `douserjs` tinyint(1) NOT NULL DEFAULT '0',
  `douserlist` tinyint(1) NOT NULL DEFAULT '0',
  `domsg` tinyint(1) NOT NULL DEFAULT '0',
  `dosendemail` tinyint(1) NOT NULL DEFAULT '0',
  `dosetmclass` tinyint(1) NOT NULL DEFAULT '0',
  `doinfodoc` tinyint(1) NOT NULL DEFAULT '0',
  `dotempgroup` tinyint(1) NOT NULL DEFAULT '0',
  `dofeedbackf` tinyint(1) NOT NULL DEFAULT '0',
  `dotask` tinyint(1) NOT NULL DEFAULT '0',
  `domemberf` tinyint(1) NOT NULL DEFAULT '0',
  `dospacestyle` tinyint(1) NOT NULL DEFAULT '0',
  `dospacedata` tinyint(1) NOT NULL DEFAULT '0',
  `dovotemod` tinyint(1) NOT NULL DEFAULT '0',
  `doplayer` tinyint(1) NOT NULL DEFAULT '0',
  `dowap` tinyint(1) NOT NULL DEFAULT '0',
  `dopay` tinyint(1) NOT NULL DEFAULT '0',
  `dobuygroup` tinyint(1) NOT NULL DEFAULT '0',
  `dosearchall` tinyint(1) NOT NULL DEFAULT '0',
  `doinfotype` tinyint(1) NOT NULL DEFAULT '0',
  `doplf` tinyint(1) NOT NULL DEFAULT '0',
  `dopltable` tinyint(1) NOT NULL DEFAULT '0',
  `dochadminstyle` tinyint(1) NOT NULL DEFAULT '0',
  `dotags` tinyint(1) NOT NULL DEFAULT '0',
  `dosp` tinyint(1) NOT NULL DEFAULT '0',
  `doyh` tinyint(1) NOT NULL DEFAULT '0',
  `dofirewall` tinyint(1) NOT NULL DEFAULT '0',
  `dosetsafe` tinyint(1) NOT NULL DEFAULT '0',
  `douserclass` tinyint(1) NOT NULL DEFAULT '0',
  `doworkflow` tinyint(1) NOT NULL DEFAULT '0',
  `domenu` tinyint(1) NOT NULL DEFAULT '0',
  `dopubvar` tinyint(1) NOT NULL DEFAULT '0',
  `doclassf` tinyint(1) NOT NULL DEFAULT '0',
  `doztf` tinyint(1) NOT NULL DEFAULT '0',
  `dofiletable` tinyint(1) NOT NULL DEFAULT '0',
  `docheckinfo` tinyint(1) NOT NULL DEFAULT '0',
  `dogoodinfo` tinyint(1) NOT NULL DEFAULT '0',
  `dodocinfo` tinyint(1) NOT NULL DEFAULT '0',
  `domoveinfo` tinyint(1) NOT NULL DEFAULT '0',
  `dodttemp` tinyint(1) NOT NULL DEFAULT '0',
  `doloadcj` tinyint(1) NOT NULL DEFAULT '0',
  `domustcheck` tinyint(1) NOT NULL DEFAULT '0',
  `docheckedit` tinyint(1) NOT NULL DEFAULT '0',
  `domemberconnect` tinyint(1) NOT NULL DEFAULT '0',
  `doprecode` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`groupid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `base_melvegroup`
--

INSERT INTO `base_melvegroup` (`groupid`, `groupname`, `dopublic`, `doclass`, `dotemplate`, `dopicnews`, `dofile`, `douser`, `dolog`, `domember`, `dobefrom`, `doword`, `dokey`, `doad`, `dovote`, `dogroup`, `doall`, `docj`, `dobq`, `domovmelve`, `dopostdata`, `dochangedata`, `dopl`, `dof`, `dom`, `dodo`, `dodbdata`, `dorepnewstext`, `dotempvar`, `dostats`, `dowriter`, `dototaldata`, `dosearchkey`, `dozt`, `docard`, `dolink`, `doselfinfo`, `doexecsql`, `dotable`, `dodownurl`, `dodeldownrecord`, `doshoppayfs`, `doshopps`, `doshopdd`, `dogbook`, `dofeedback`, `douserpage`, `donotcj`, `dodownerror`, `dodelinfodata`, `doaddinfo`, `doeditinfo`, `dodelinfo`, `doadminstyle`, `dorepdownpath`, `douserjs`, `douserlist`, `domsg`, `dosendemail`, `dosetmclass`, `doinfodoc`, `dotempgroup`, `dofeedbackf`, `dotask`, `domemberf`, `dospacestyle`, `dospacedata`, `dovotemod`, `doplayer`, `dowap`, `dopay`, `dobuygroup`, `dosearchall`, `doinfotype`, `doplf`, `dopltable`, `dochadminstyle`, `dotags`, `dosp`, `doyh`, `dofirewall`, `dosetsafe`, `douserclass`, `doworkflow`, `domenu`, `dopubvar`, `doclassf`, `doztf`, `dofiletable`, `docheckinfo`, `dogoodinfo`, `dodocinfo`, `domoveinfo`, `dodttemp`, `doloadcj`, `domustcheck`, `docheckedit`, `domemberconnect`, `doprecode`) VALUES
(1, '超级管理员', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `base_melvehmsg`
--

CREATE TABLE IF NOT EXISTS `base_melvehmsg` (
  `mid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(80) NOT NULL DEFAULT '',
  `msgtext` text NOT NULL,
  `haveread` tinyint(1) NOT NULL DEFAULT '0',
  `msgtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `to_username` varchar(30) NOT NULL DEFAULT '',
  `from_userid` int(10) unsigned NOT NULL DEFAULT '0',
  `from_username` varchar(30) NOT NULL DEFAULT '',
  `isadmin` tinyint(1) NOT NULL DEFAULT '0',
  `issys` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`mid`),
  KEY `to_username` (`to_username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melvehnotice`
--

CREATE TABLE IF NOT EXISTS `base_melvehnotice` (
  `mid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(80) NOT NULL DEFAULT '',
  `msgtext` text NOT NULL,
  `haveread` tinyint(1) NOT NULL DEFAULT '0',
  `msgtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `to_username` varchar(30) NOT NULL DEFAULT '',
  `from_userid` int(10) unsigned NOT NULL DEFAULT '0',
  `from_username` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`mid`),
  KEY `to_username` (`to_username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melvehy`
--

CREATE TABLE IF NOT EXISTS `base_melvehy` (
  `fid` bigint(20) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL DEFAULT '0',
  `fname` varchar(30) NOT NULL DEFAULT '',
  `cid` int(11) NOT NULL DEFAULT '0',
  `fsay` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`fid`),
  KEY `userid` (`userid`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melvehyclass`
--

CREATE TABLE IF NOT EXISTS `base_melvehyclass` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(30) NOT NULL DEFAULT '',
  `userid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melveindexpage`
--

CREATE TABLE IF NOT EXISTS `base_melveindexpage` (
  `tempid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tempname` varchar(30) NOT NULL DEFAULT '',
  `temptext` mediumtext NOT NULL,
  PRIMARY KEY (`tempid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melveinfoclass`
--

CREATE TABLE IF NOT EXISTS `base_melveinfoclass` (
  `classid` int(11) NOT NULL AUTO_INCREMENT,
  `bclassid` int(11) NOT NULL DEFAULT '0',
  `classname` varchar(100) NOT NULL DEFAULT '',
  `infourl` mediumtext NOT NULL,
  `newsclassid` smallint(6) NOT NULL DEFAULT '0',
  `startday` date NOT NULL DEFAULT '0000-00-00',
  `endday` date NOT NULL DEFAULT '0000-00-00',
  `bz` text NOT NULL,
  `num` smallint(6) NOT NULL DEFAULT '0',
  `copyimg` tinyint(1) NOT NULL DEFAULT '0',
  `renum` smallint(6) NOT NULL DEFAULT '0',
  `keyboard` text NOT NULL,
  `oldword` text NOT NULL,
  `newword` text NOT NULL,
  `titlelen` smallint(6) NOT NULL DEFAULT '0',
  `retitlewriter` tinyint(1) NOT NULL DEFAULT '0',
  `smalltextlen` smallint(6) NOT NULL DEFAULT '0',
  `zz_smallurl` text NOT NULL,
  `zz_newsurl` text NOT NULL,
  `httpurl` varchar(255) NOT NULL DEFAULT '',
  `repad` text NOT NULL,
  `imgurl` varchar(255) NOT NULL DEFAULT '',
  `relistnum` smallint(6) NOT NULL DEFAULT '0',
  `zz_titlepicl` text NOT NULL,
  `z_titlepicl` varchar(255) NOT NULL DEFAULT '',
  `qz_titlepicl` varchar(255) NOT NULL DEFAULT '',
  `save_titlepicl` varchar(10) NOT NULL DEFAULT '',
  `keynum` tinyint(4) NOT NULL DEFAULT '0',
  `insertnum` smallint(6) NOT NULL DEFAULT '0',
  `copyflash` tinyint(1) NOT NULL DEFAULT '0',
  `tid` smallint(6) NOT NULL DEFAULT '0',
  `tbname` varchar(60) NOT NULL DEFAULT '',
  `pagetype` tinyint(1) NOT NULL DEFAULT '0',
  `smallpagezz` text NOT NULL,
  `pagezz` text NOT NULL,
  `smallpageallzz` text NOT NULL,
  `pageallzz` text NOT NULL,
  `mark` tinyint(1) NOT NULL DEFAULT '0',
  `enpagecode` tinyint(1) NOT NULL DEFAULT '0',
  `recjtheurl` tinyint(1) NOT NULL DEFAULT '0',
  `hiddenload` tinyint(1) NOT NULL DEFAULT '0',
  `justloadin` tinyint(1) NOT NULL DEFAULT '0',
  `justloadcheck` tinyint(1) NOT NULL DEFAULT '0',
  `delloadinfo` tinyint(1) NOT NULL DEFAULT '0',
  `pagerepad` mediumtext NOT NULL,
  `newsztid` text NOT NULL,
  `getfirstpic` tinyint(4) NOT NULL DEFAULT '0',
  `oldpagerep` text NOT NULL,
  `newpagerep` text NOT NULL,
  `keeptime` smallint(6) NOT NULL DEFAULT '0',
  `lasttime` int(11) NOT NULL DEFAULT '0',
  `newstextisnull` tinyint(1) NOT NULL DEFAULT '0',
  `getfirstspic` tinyint(1) NOT NULL DEFAULT '0',
  `getfirstspicw` smallint(6) NOT NULL DEFAULT '0',
  `getfirstspich` smallint(6) NOT NULL DEFAULT '0',
  `doaddtextpage` tinyint(1) NOT NULL DEFAULT '0',
  `infourlispage` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`classid`),
  KEY `newsclassid` (`newsclassid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melveinfotype`
--

CREATE TABLE IF NOT EXISTS `base_melveinfotype` (
  `typeid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tname` varchar(30) NOT NULL DEFAULT '',
  `mid` smallint(6) NOT NULL DEFAULT '0',
  `myorder` smallint(6) NOT NULL DEFAULT '0',
  `yhid` smallint(6) NOT NULL DEFAULT '0',
  `tnum` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `listtempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tpath` varchar(100) NOT NULL DEFAULT '',
  `ttype` varchar(10) NOT NULL DEFAULT '',
  `maxnum` int(10) unsigned NOT NULL DEFAULT '0',
  `reorder` varchar(50) NOT NULL DEFAULT '',
  `tid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tbname` varchar(60) NOT NULL DEFAULT '',
  `timg` varchar(200) NOT NULL DEFAULT '',
  `intro` varchar(255) NOT NULL DEFAULT '',
  `pagekey` varchar(255) NOT NULL DEFAULT '',
  `newline` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `hotline` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `goodline` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `hotplline` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `firstline` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `jstempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `nrejs` tinyint(1) NOT NULL DEFAULT '0',
  `listdt` tinyint(1) NOT NULL DEFAULT '0',
  `repagenum` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`typeid`),
  KEY `mid` (`mid`),
  KEY `myorder` (`myorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melveinfovote`
--

CREATE TABLE IF NOT EXISTS `base_melveinfovote` (
  `pubid` bigint(16) unsigned NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) NOT NULL DEFAULT '',
  `votenum` int(10) unsigned NOT NULL DEFAULT '0',
  `voteip` mediumtext NOT NULL,
  `votetext` text NOT NULL,
  `voteclass` tinyint(1) NOT NULL DEFAULT '0',
  `doip` tinyint(1) NOT NULL DEFAULT '0',
  `dotime` date NOT NULL DEFAULT '0000-00-00',
  `tempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `width` int(10) unsigned NOT NULL DEFAULT '0',
  `height` int(10) unsigned NOT NULL DEFAULT '0',
  `diyotherlink` tinyint(1) NOT NULL DEFAULT '0',
  `infouptime` int(10) unsigned NOT NULL DEFAULT '0',
  `infodowntime` int(10) unsigned NOT NULL DEFAULT '0',
  `copyids` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`pubid`),
  KEY `id` (`id`,`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `base_melvejstemp`
--

CREATE TABLE IF NOT EXISTS `base_melvejstemp` (
  `tempid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tempname` varchar(30) NOT NULL DEFAULT '',
  `temptext` mediumtext NOT NULL,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  `showdate` varchar(20) NOT NULL DEFAULT '',
  `modid` smallint(6) NOT NULL DEFAULT '0',
  `subnews` smallint(6) NOT NULL DEFAULT '0',
  `subtitle` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tempid`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `base_melvejstemp`
--

INSERT INTO `base_melvejstemp` (`tempid`, `tempname`, `temptext`, `classid`, `isdefault`, `showdate`, `modid`, `subnews`, `subtitle`) VALUES
(1, '默认js模板', '[!--Elvesnews.listtemp--]<li><a href=\\"[!--titleurl--]\\" title=\\"[!--oldtitle--]\\">[!--title--]</a></li>[!--Elvesnews.listtemp--]', 0, 1, 'm-d', 1, 0, 32);

-- --------------------------------------------------------

--
-- 表的结构 `base_melvejstempclass`
--

CREATE TABLE IF NOT EXISTS `base_melvejstempclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melvekey`
--

CREATE TABLE IF NOT EXISTS `base_melvekey` (
  `keyid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `keyname` char(50) NOT NULL DEFAULT '',
  `keyurl` char(200) NOT NULL DEFAULT '',
  `cid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`keyid`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melvekeyclass`
--

CREATE TABLE IF NOT EXISTS `base_melvekeyclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` char(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melvelink`
--

CREATE TABLE IF NOT EXISTS `base_melvelink` (
  `lid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `lname` varchar(100) NOT NULL DEFAULT '',
  `lpic` varchar(255) NOT NULL DEFAULT '',
  `lurl` varchar(255) NOT NULL DEFAULT '',
  `ltime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `onclick` int(11) NOT NULL DEFAULT '0',
  `width` varchar(10) NOT NULL DEFAULT '',
  `height` varchar(10) NOT NULL DEFAULT '',
  `target` varchar(10) NOT NULL DEFAULT '',
  `myorder` tinyint(4) NOT NULL DEFAULT '0',
  `email` varchar(60) NOT NULL DEFAULT '',
  `lsay` text NOT NULL,
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `ltype` smallint(6) NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lid`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melvelinkclass`
--

CREATE TABLE IF NOT EXISTS `base_melvelinkclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melvelinktmp`
--

CREATE TABLE IF NOT EXISTS `base_melvelinktmp` (
  `newsurl` varchar(255) NOT NULL DEFAULT '',
  `checkrnd` varchar(50) NOT NULL DEFAULT '',
  `linkid` bigint(20) NOT NULL AUTO_INCREMENT,
  `titlepic` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`linkid`),
  KEY `checkrnd` (`checkrnd`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melvelisttemp`
--

CREATE TABLE IF NOT EXISTS `base_melvelisttemp` (
  `tempid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tempname` varchar(60) NOT NULL DEFAULT '',
  `temptext` mediumtext NOT NULL,
  `subnews` smallint(6) NOT NULL DEFAULT '0',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  `listvar` text NOT NULL,
  `rownum` smallint(6) NOT NULL DEFAULT '0',
  `modid` smallint(6) NOT NULL DEFAULT '0',
  `showdate` varchar(50) NOT NULL DEFAULT '',
  `subtitle` smallint(6) NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `docode` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tempid`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `base_melvelisttemp`
--

INSERT INTO `base_melvelisttemp` (`tempid`, `tempname`, `temptext`, `subnews`, `isdefault`, `listvar`, `rownum`, `modid`, `showdate`, `subtitle`, `classid`, `docode`) VALUES
(1, '默认新闻列表模板', '<!DOCTYPE html PUBLIC \\"-//W3C//DTD XHTML 1.0 Transitional//EN\\" \\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\">\r\n<html xmlns=\\"http://www.w3.org/1999/xhtml\\">\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n<title>[!--pagetitle--] - Powered by ElvesCMS</title>\r\n<meta name=\\"keywords\\" content=\\"[!--pagekey--]\\" />\r\n<meta name=\\"description\\" content=\\"[!--pagedes--]\\" />\r\n<link href=\\"[!--news.url--]skin/default/css/style.css\\" rel=\\"stylesheet\\" type=\\"text/css\\" />\r\n<script type=\\"text/javascript\\" src=\\"[!--news.url--]skin/default/js/tabs.js\\"></script>\r\n</head>\r\n<body class=\\"listpage\\">\r\n[!--temp.header--]\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"10\\" cellpadding=\\"0\\">\r\n<tr valign=\\"top\\">\r\n<td class=\\"news_list\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"position\\">\r\n<tr>\r\n<td>您当前的位置：[!--newsnav--]</td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td>[!--Elvesnews.listtemp--]<ul>\r\n<!--list.var1-->\r\n<!--list.var2-->\r\n<!--list.var3-->\r\n<!--list.var4-->\r\n<!--list.var5--></ul>\r\n[!--Elvesnews.listtemp--]\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\">\r\n<tr>\r\n                <td height=\\"38\\"><div class=\\"epages\\">[!--show.listpage--]</div></td>\r\n</tr>\r\n</table>\r\n</td>\r\n</tr>\r\n</table></td>\r\n<td class=\\"sider\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title\\">\r\n<tr>\r\n<td><strong>推荐资讯</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"8\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td>[mgxmelvepic]\\''selfinfo\\'',2,4,128,90,1,20,2[/mgxmelvepic]\r\n</td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n<tr>\r\n<td><strong>最后更新</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><ul>\r\n[elveinfo]\\''selfinfo\\'',10,44,0,0,2,0[/elveinfo] \r\n</ul></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n<tr>\r\n<td><strong>热门点击</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><ol class=\\"rank\\">\r\n[elveinfo]\\''selfinfo\\'',10,40,0,1,10,0[/elveinfo] \r\n</ol></td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>', 0, 0, '<li><a href=\\"[!--titleurl--]\\" title=\\"[!--oldtitle--]\\">[!--title--]</a> <span>[!--newstime--]</span></li>', 5, 1, 'Y-m-d', 0, 0, 0),
(2, '默认下载列表模板', '<!DOCTYPE html PUBLIC \\"-//W3C//DTD XHTML 1.0 Transitional//EN\\" \\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\">\r\n<html xmlns=\\"http://www.w3.org/1999/xhtml\\">\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n<title>[!--pagetitle--] - Powered by ElvesCMS</title>\r\n<meta name=\\"keywords\\" content=\\"[!--pagekey--]\\" />\r\n<meta name=\\"description\\" content=\\"[!--pagedes--]\\" />\r\n<link href=\\"[!--news.url--]skin/default/css/style.css\\" rel=\\"stylesheet\\" type=\\"text/css\\" />\r\n<script type=\\"text/javascript\\" src=\\"[!--news.url--]skin/default/js/tabs.js\\"></script>\r\n</head>\r\n<body class=\\"listpage\\">\r\n[!--temp.header--]\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"10\\" cellpadding=\\"0\\">\r\n<tr valign=\\"top\\">\r\n<td class=\\"list_content\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"position\\">\r\n<tr>\r\n<td>您当前的位置：[!--newsnav--]</td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\">\r\n<tr>\r\n<td colspan=\\"3\\" class=\\"down_list\\"><table bgcolor=\\"#FFFFFF\\" width=\\"100%\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"3\\" cellspacing=\\"1\\" style=\\"table-layout:  fixed;  word-wrap:  break-word\\">\r\n<tr align=\\"center\\">\r\n<td bgcolor=\\"#D0E7F7\\">软件名称</td>\r\n<td width=\\"76\\"  nowrap=\\"nowrap\\" bgcolor=\\"#D0E7F7\\">整理日期</td>\r\n<td width=\\"70\\" nowrap=\\"nowrap\\" bgcolor=\\"#D0E7F7\\">软件大小</td>\r\n<td width=\\"50\\" nowrap=\\"nowrap\\" bgcolor=\\"#D0E7F7\\">人气</td>\r\n<td width=\\"76\\" nowrap=\\"nowrap\\" bgcolor=\\"#D0E7F7\\">软件等级</td>\r\n</tr>\r\n[!--Elvesnews.listtemp--]\r\n<!--list.var1-->\r\n[!--Elvesnews.listtemp--]\r\n</table></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"list_page\\">\r\n<tr>\r\n<td>[!--show.page--]</td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table></td>\r\n<td class=\\"sider\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title\\">\r\n<tr>\r\n<td><strong>推荐下载</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><ul>\r\n[elveinfo]\\''selfinfo\\'',10,44,0,2,2,0[/elveinfo]\r\n</ul></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n<tr>\r\n<td><strong>最后更新</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><ul>\r\n[elveinfo]\\''selfinfo\\'',10,44,0,0,2,0[/elveinfo]\r\n</ul></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n<tr>\r\n<td><strong>热门点击</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><ol class=\\"rank\\">\r\n[elveinfo]\\''selfinfo\\'',10,40,0,1,10,0[/elveinfo]\r\n</ol></td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>', 200, 0, '<tr> \r\n    <td width=\\"290\\"><img src=\\"[!--news.url--]core/data/images/list.gif\\" width=\\"11\\" height=\\"11\\" border=\\"0\\" /> <b>[!--class.name--]<a href=\\"[!--titleurl--]\\">[!--title--]</a></b></td>\r\n    <td align=\\"center\\" nowrap=\\"nowrap\\">[!--newstime--]</td>\r\n    <td align=\\"center\\" nowrap=\\"nowrap\\">[!--filesize--]</td>\r\n    <td align=\\"center\\" nowrap=\\"nowrap\\">[!--totaldown--]</td>\r\n    <td align=\\"center\\" nowrap=\\"nowrap\\"><img src=\\"[!--news.url--]core/data/images/[!--star--]star.gif\\" border=\\"0\\" /></td>\r\n  </tr>\r\n  <tr valign=\\"top\\"> \r\n    <td colspan=\\"5\\" class=\\"softsay\\">[!--softsay--]</td>\r\n</tr>\r\n  <tr> \r\n    <td colspan=\\"5\\"><font color=\\"green\\">界面语言：</font>[!--language--]  <font color=\\"green\\">软件类型：</font>[!--softtype--]  <font color=\\"green\\">授权方式：</font>[!--softsq--]  <font color=\\"green\\">运行平台：</font>[!--softfj--]</td>\r\n</tr></td></tr>\r\n  <tr> \r\n    <td colspan=\\"5\\"><img src=\\"[!--news.url--]core/data/images/line.gif\\" width=\\"100%\\" height=\\"9\\" /></td>\r\n</tr>', 1, 2, 'Y-m-d', 0, 0, 0),
(3, '默认图片列表模板', '<!DOCTYPE html PUBLIC \\"-//W3C//DTD XHTML 1.0 Transitional//EN\\" \\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\">\r\n<html xmlns=\\"http://www.w3.org/1999/xhtml\\">\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n<title>[!--pagetitle--] - Powered by ElvesCMS</title>\r\n<meta name=\\"keywords\\" content=\\"[!--pagekey--]\\" />\r\n<meta name=\\"description\\" content=\\"[!--pagedes--]\\" />\r\n<link href=\\"[!--news.url--]skin/default/css/style.css\\" rel=\\"stylesheet\\" type=\\"text/css\\" />\r\n<script type=\\"text/javascript\\" src=\\"[!--news.url--]skin/default/js/tabs.js\\"></script>\r\n</head>\r\n<body class=\\"listpage\\">\r\n[!--temp.header--]\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"10\\" cellpadding=\\"0\\">\r\n<tr valign=\\"top\\">\r\n<td class=\\"list_content\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"position\\">\r\n<tr>\r\n<td>您当前的位置：[!--newsnav--]</td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\">\r\n<tr>\r\n<td colspan=\\"3\\" class=\\"photo_list\\">\r\n[!--Elvesnews.listtemp--]\r\n<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\" class=\\"line_bottom\\">\r\n	<tr>\r\n		<td width=\\"25%\\" valign=\\"top\\"><!--list.var1--></td>\r\n		<td width=\\"25%\\" valign=\\"top\\"><!--list.var2--></td>\r\n		<td width=\\"25%\\" valign=\\"top\\"><!--list.var3--></td>\r\n		<td width=\\"25%\\" valign=\\"top\\"><!--list.var4--></td>\r\n	</tr>\r\n</table>\r\n[!--Elvesnews.listtemp--]\r\n</td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"list_page\\">\r\n<tr>\r\n<td>[!--show.page--]</td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table></td>\r\n<td class=\\"sider\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title\\">\r\n<tr>\r\n<td><strong>图片推荐</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"8\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td>[mgxmelvepic]\\''selfinfo\\'',2,4,128,90,1,20,2[/mgxmelvepic] </td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n<tr>\r\n<td><strong>最后更新</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><ul>\r\n[elveinfo]\\''selfinfo\\'',10,44,0,0,2,0[/elveinfo]\r\n</ul></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n<tr>\r\n<td><strong>热门点击</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><ol class=\\"rank\\">\r\n[elveinfo]\\''selfinfo\\'',10,40,0,1,10,0[/elveinfo]\r\n</ol></td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>', 0, 0, '<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"4\\" cellpadding=\\"0\\">\r\n	<tr valign=\\"top\\">\r\n		<td align=\\"center\\" class=\\"titlepic\\"><a href=\\"[!--titleurl--]\\"><img src=\\"[!--titlepic--]\\" alt=\\"[!--oldtitle--]\\" width=\\"128\\" height=\\"90\\" border=\\"0\\" /></a></td>\r\n	</tr>\r\n	<tr>\r\n		<td align=\\"center\\"><a href=\\"[!--titleurl--]\\" title=\\"[!--oldtitle--]\\">[!--title--]</a></td>\r\n	</tr>\r\n</table>', 4, 3, 'Y-m-d H:i:s', 22, 0, 0),
(4, '默认FLASH列表模板', '<!DOCTYPE html PUBLIC \\"-//W3C//DTD XHTML 1.0 Transitional//EN\\" \\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\">\r\n<html xmlns=\\"http://www.w3.org/1999/xhtml\\">\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n<title>[!--pagetitle--] - Powered by ElvesCMS</title>\r\n<meta name=\\"keywords\\" content=\\"[!--pagekey--]\\" />\r\n<meta name=\\"description\\" content=\\"[!--pagedes--]\\" />\r\n<link href=\\"[!--news.url--]skin/default/css/style.css\\" rel=\\"stylesheet\\" type=\\"text/css\\" />\r\n<script type=\\"text/javascript\\" src=\\"[!--news.url--]skin/default/js/tabs.js\\"></script>\r\n</head>\r\n<body class=\\"listpage\\">\r\n[!--temp.header--]\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"10\\" cellpadding=\\"0\\">\r\n<tr valign=\\"top\\">\r\n<td class=\\"list_content\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"position\\">\r\n<tr>\r\n<td>您当前的位置：[!--newsnav--]</td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\">\r\n<tr>\r\n<td colspan=\\"3\\" class=\\"flash_list\\">\r\n[!--Elvesnews.listtemp--]\r\n<!--list.var1-->\r\n[!--Elvesnews.listtemp--]\r\n</td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"list_page\\">\r\n<tr>\r\n<td>[!--show.page--]</td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table></td>\r\n<td class=\\"sider\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title\\">\r\n<tr>\r\n<td><strong>推荐下载</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"8\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td>[mgxmelvepic]\\''selfinfo\\'',2,4,128,90,1,20,2[/mgxmelvepic] </td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n<tr>\r\n<td><strong>最后更新</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><ul>\r\n[elveinfo]\\''selfinfo\\'',10,44,0,0,2,0[/elveinfo]\r\n</ul></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n<tr>\r\n<td><strong>热门点击</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><ol class=\\"rank\\">\r\n[elveinfo]\\''selfinfo\\'',10,40,0,1,10,0[/elveinfo]\r\n</ol></td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>', 200, 0, '<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"8\\" class=\\"line_bottom\\">\r\n<tr valign=\\"top\\">\r\n<td width=\\"200\\" align=\\"center\\"><a href=\\"[!--titleurl--]\\"><img src=\\"[!--titlepic--]\\" width=\\"200\\" height=\\"150\\" border=\\"0\\" /></a></td>\r\n<td><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\">\r\n<tr>\r\n<td width=\\"70%\\" height=\\"26\\" style=\\"font-size:14px\\"><strong><a href=\\"[!--titleurl--]\\">[!--title--]</a></strong></td>\r\n<td width=\\"30%\\"><div align=\\"right\\">[!--newstime--]</div></td>\r\n</tr>\r\n<tr>\r\n<td colspan=\\"2\\"class=\\"flashsay\\">简介：[!--flashsay--]</td>\r\n</tr>\r\n<tr>\r\n<td height=\\"26\\" colspan=\\"2\\">作者：[!--flashwriter--]　文件大小：[!--filesize--]　作品人气：[!--onclick--] </td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>', 1, 4, 'Y-m-d', 0, 0, 0),
(5, '默认电影列表模板', '<!DOCTYPE html PUBLIC \\"-//W3C//DTD XHTML 1.0 Transitional//EN\\" \\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\">\r\n<html xmlns=\\"http://www.w3.org/1999/xhtml\\">\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n<title>[!--pagetitle--] - Powered by ElvesCMS</title>\r\n<meta name=\\"keywords\\" content=\\"[!--pagekey--]\\" />\r\n<meta name=\\"description\\" content=\\"[!--pagedes--]\\" />\r\n<link href=\\"[!--news.url--]skin/default/css/style.css\\" rel=\\"stylesheet\\" type=\\"text/css\\" />\r\n<script type=\\"text/javascript\\" src=\\"[!--news.url--]skin/default/js/tabs.js\\"></script>\r\n</head>\r\n<body class=\\"listpage\\">\r\n[!--temp.header--]\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"10\\" cellpadding=\\"0\\">\r\n<tr valign=\\"top\\">\r\n<td class=\\"list_content\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"position\\">\r\n<tr>\r\n<td>您当前的位置：[!--newsnav--]</td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\">\r\n<tr>\r\n<td colspan=\\"3\\" class=\\"movie_list\\">\r\n[!--Elvesnews.listtemp--]\r\n<!--list.var1-->\r\n[!--Elvesnews.listtemp--]\r\n</td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"list_page\\">\r\n<tr>\r\n<td>[!--show.page--]</td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table></td>\r\n<td class=\\"sider\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title\\">\r\n<tr>\r\n<td><strong>影视推荐</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"8\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td>[mgxmelvepic]\\''selfinfo\\'',2,4,128,90,1,20,2[/mgxmelvepic] </td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n<tr>\r\n<td><strong>最后更新</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><ul>\r\n[elveinfo]\\''selfinfo\\'',10,44,0,0,2,0[/elveinfo]\r\n</ul></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n<tr>\r\n<td><strong>热门点击</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><ol class=\\"rank\\">\r\n[elveinfo]\\''selfinfo\\'',10,40,0,1,10,0[/elveinfo]\r\n</ol></td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>', 100, 0, '<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"8\\" class=\\"line_bottom\\">\r\n<tr valign=\\"top\\">\r\n    <td width=\\"27%\\" align=\\"center\\" class=\\"titlepic\\"><a href=\\"[!--titleurl--]\\"><img src=\\"[!--titlepic--]\\" alt=\\"[!--oldtitle--]\\" width=\\"120\\" height=\\"150\\" border=\\"0\\" /></a></td>\r\n<td><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\">\r\n<tr>\r\n          <td width=\\"80%\\" height=\\"26\\" style=\\"font-size:14px\\"><strong><a href=\\"[!--titleurl--]\\">[!--title--]</a></strong> \r\n            <img src=\\"[!--news.url--]core/data/images/[!--star--]star.gif\\" alt=\\"推荐指数[!--star--]颗星\\" border=\\"0\\" align=\\"absmiddle\\" /></td>\r\n          <td width=\\"20%\\"> \r\n            <div align=\\"right\\">[!--newstime--]</div></td>\r\n</tr>\r\n<tr>\r\n<td colspan=\\"2\\"><strong>年代：</strong>2008　　<strong>出品公司：</strong>[!--company--]</td>\r\n</tr>\r\n<tr>\r\n	<td height=\\"26\\" colspan=\\"2\\"><strong>导演：</strong>[!--playadmin--]</td>\r\n</tr>\r\n<tr>\r\n	<td height=\\"26\\" colspan=\\"2\\"><strong>主演：</strong>[!--player--]</td>\r\n</tr>\r\n<tr>\r\n	<td height=\\"26\\" colspan=\\"2\\"><strong>类型：</strong>[!--movietype--]</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\\"2\\"><strong>影片简介：</strong>[!--moviesay--] [<a title=\\"阅读全文\\" href=\\"[!--titleurl--]\\">详细内容</a>]</td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>', 1, 5, 'Y-m-d', 0, 0, 0),
(6, '默认商城列表模板', '<!DOCTYPE html PUBLIC \\"-//W3C//DTD XHTML 1.0 Transitional//EN\\" \\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\">\r\n<html xmlns=\\"http://www.w3.org/1999/xhtml\\">\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n<title>[!--pagetitle--] - Powered by ElvesCMS</title>\r\n<meta name=\\"keywords\\" content=\\"[!--pagekey--]\\" />\r\n<meta name=\\"description\\" content=\\"[!--pagedes--]\\" />\r\n<link href=\\"[!--news.url--]skin/default/css/style.css\\" rel=\\"stylesheet\\" type=\\"text/css\\" />\r\n<script type=\\"text/javascript\\" src=\\"[!--news.url--]skin/default/js/tabs.js\\"></script>\r\n</head>\r\n<body class=\\"listpage\\">\r\n[!--temp.header--]\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"10\\" cellpadding=\\"0\\">\r\n<tr valign=\\"top\\">\r\n<td class=\\"list_content\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"position\\">\r\n<tr>\r\n<td>您当前的位置：[!--newsnav--]</td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\">\r\n<tr>\r\n<td colspan=\\"3\\" class=\\"shop_list\\">\r\n[!--Elvesnews.listtemp--]\r\n<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\" class=\\"line_bottom\\">\r\n	<tr>\r\n		<td width=\\"25%\\" valign=\\"top\\"><!--list.var1--></td>\r\n		<td width=\\"25%\\" valign=\\"top\\"><!--list.var2--></td>\r\n		<td width=\\"25%\\" valign=\\"top\\"><!--list.var3--></td>\r\n		<td width=\\"25%\\" valign=\\"top\\"><!--list.var4--></td>\r\n	</tr>\r\n</table>\r\n[!--Elvesnews.listtemp--]\r\n</td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"list_page\\">\r\n<tr>\r\n<td>[!--show.page--]</td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table></td>\r\n<td class=\\"sider\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title\\">\r\n<tr>\r\n<td><strong>商品推荐</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"8\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td>[mgxmelvepic]\\''selfinfo\\'',2,4,128,90,1,20,2[/mgxmelvepic] </td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n<tr>\r\n<td><strong>最后更新</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><ul>\r\n[elveinfo]\\''selfinfo\\'',10,44,0,0,2,0[/elveinfo]\r\n</ul></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n<tr>\r\n<td><strong>热门点击</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><ol class=\\"rank\\">\r\n[elveinfo]\\''selfinfo\\'',10,40,0,1,10,0[/elveinfo]\r\n</ol></td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>', 60, 0, '<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"4\\" cellpadding=\\"0\\">\r\n	<tr valign=\\"top\\">\r\n		<td align=\\"center\\" class=\\"titlepic\\"><a href=\\"[!--titleurl--]\\"><img src=\\"[!--titlepic--]\\" alt=\\"[!--oldtitle--]\\" width=\\"120\\" height=\\"120\\" border=\\"0\\" /></a></td>\r\n	</tr>\r\n	<tr>\r\n		<td align=\\"center\\"><a href=\\"[!--titleurl--]\\" title=\\"[!--oldtitle--]\\">[!--title--]</a></td>\r\n	</tr>\r\n	<tr>\r\n		<td align=\\"center\\" class=\\"tprice\\">市场价：<span>￥[!--tprice--]</span></td>\r\n	</tr>\r\n	<tr>\r\n		<td align=\\"center\\" class=\\"price\\">优惠价：<span>￥[!--price--]</span></td>\r\n	</tr>\r\n</table>', 4, 6, 'Y-m-d', 20, 0, 0),
(7, '默认文章列表模板', '<!DOCTYPE html PUBLIC \\"-//W3C//DTD XHTML 1.0 Transitional//EN\\" \\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\">\r\n<html xmlns=\\"http://www.w3.org/1999/xhtml\\">\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n<title>[!--pagetitle--] - Powered by ElvesCMS</title>\r\n<meta name=\\"keywords\\" content=\\"[!--pagekey--]\\" />\r\n<meta name=\\"description\\" content=\\"[!--pagedes--]\\" />\r\n<link href=\\"[!--news.url--]skin/default/css/style.css\\" rel=\\"stylesheet\\" type=\\"text/css\\" />\r\n<script type=\\"text/javascript\\" src=\\"[!--news.url--]skin/default/js/tabs.js\\"></script>\r\n</head>\r\n<body class=\\"listpage\\">\r\n[!--temp.header--]\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"10\\" cellpadding=\\"0\\">\r\n<tr valign=\\"top\\">\r\n<td class=\\"news_list\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"position\\">\r\n<tr>\r\n<td>您当前的位置：[!--newsnav--]</td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td>[!--Elvesnews.listtemp--]<ul>\r\n<!--list.var1-->\r\n<!--list.var2-->\r\n<!--list.var3-->\r\n<!--list.var4-->\r\n<!--list.var5--></ul>\r\n[!--Elvesnews.listtemp--]\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"list_page\\">\r\n<tr>\r\n<td>[!--show.page--]</td>\r\n</tr>\r\n</table>\r\n</td>\r\n</tr>\r\n</table></td>\r\n<td class=\\"sider\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title\\">\r\n<tr>\r\n<td><strong>推荐资讯</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"8\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td>[mgxmelvepic]\\''selfinfo\\'',2,4,128,90,1,20,2[/mgxmelvepic]\r\n</td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n<tr>\r\n<td><strong>最后更新</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><ul>\r\n[elveinfo]\\''selfinfo\\'',10,44,0,0,2,0[/elveinfo] \r\n</ul></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n<tr>\r\n<td><strong>热门点击</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><ol class=\\"rank\\">\r\n[elveinfo]\\''selfinfo\\'',10,40,0,1,10,0[/elveinfo] \r\n</ol></td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>', 0, 0, '<li><a href=\\"[!--titleurl--]\\" title=\\"[!--oldtitle--]\\">[!--title--]</a> <span>[!--newstime--]</span></li>', 5, 7, 'Y-m-d', 0, 0, 0),
(8, '分类信息默认列表模板', '<!DOCTYPE html PUBLIC \\"-//W3C//DTD XHTML 1.0 Transitional//EN\\" \\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\">\r\n<html xmlns=\\"http://www.w3.org/1999/xhtml\\">\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n<title>[!--pagetitle--] - Powered by ElvesCMS</title>\r\n<meta name=\\"keywords\\" content=\\"[!--pagekey--]\\" />\r\n<meta name=\\"description\\" content=\\"[!--pagedes--]\\" />\r\n<link href=\\"[!--news.url--]skin/default/css/style.css\\" rel=\\"stylesheet\\" type=\\"text/css\\" />\r\n<script type=\\"text/javascript\\" src=\\"[!--news.url--]skin/default/js/tabs.js\\"></script>\r\n</head>\r\n<body class=\\"listpage\\">\r\n[!--temp.dtheader--]\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"10\\" cellpadding=\\"0\\">\r\n<tr valign=\\"top\\">\r\n<td class=\\"list_content\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"position\\">\r\n<tr>\r\n<td>您当前的位置：[!--newsnav--]</td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\">\r\n<tr>\r\n<td colspan=\\"3\\" class=\\"info_list\\">\r\n[!--Elvesnews.listtemp--]\r\n<!--list.var1-->\r\n[!--Elvesnews.listtemp--]\r\n</td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"list_page\\">\r\n<tr>\r\n<td>[!--show.page--]</td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table></td>\r\n<td class=\\"sider\\">\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title\\">\r\n<tr>\r\n<td><strong>地区导航</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td>[!--temp.infoarea--]</td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n<tr>\r\n<td><strong>分类导航</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td>[!--temp.infoclassnav--]</td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n<tr>\r\n<td><strong>推荐信息</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><ul>\r\n[!--self.goodnews--]\r\n</ul></td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>', 120, 0, '<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"8\\" class=\\"line_bottom\\">\r\n<tr valign=\\"top\\">\r\n<td align=\\"center\\" class=\\"titlepic\\"><a href=\\"[!--titleurl--]\\"><img src=\\"[!--titlepic--]\\" alt=\\"[!--oldtitle--]\\" width=\\"80\\" height=\\"60\\" border=\\"0\\" /></a></td>\r\n<td><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\">\r\n<tr>\r\n<td width=\\"70%\\" height=\\"26\\" style=\\"font-size:14px\\"><strong>[<a href=\\"[!--news.url--]core/action/ListInfo.php?classid=[!--classid--]&amp;ph=1&amp;myarea=[!--myarea--]\\">[!--myarea--]</a>] <a href=\\"[!--titleurl--]\\">[!--title--]</a>\r\n</strong> 关注：<span class=\\"click\\">[!--onclick--]</span></td>\r\n<td width=\\"30%\\"><div align=\\"right\\">[!--newstime--]</div></td>\r\n</tr>\r\n<tr>\r\n<td colspan=\\"2\\" class=\\"smalltext\\">[!--smalltext--] [<a title=\\"阅读全文\\" href=\\"[!--titleurl--]\\">详细内容</a>]</td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>', 1, 8, 'Y-m-d', 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `base_melvelisttempclass`
--

CREATE TABLE IF NOT EXISTS `base_melvelisttempclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melvelog`
--

CREATE TABLE IF NOT EXISTS `base_melvelog` (
  `loginid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL DEFAULT '',
  `logintime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `loginip` varchar(20) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `password` varchar(30) NOT NULL DEFAULT '',
  `loginauth` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`loginid`),
  KEY `status` (`status`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `base_melvelog`
--

INSERT INTO `base_melvelog` (`loginid`, `username`, `logintime`, `loginip`, `status`, `password`, `loginauth`) VALUES
(1, 'ADmegic', '2013-12-07 19:40:10', '::1', 1, '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `base_melveloginfail`
--

CREATE TABLE IF NOT EXISTS `base_melveloginfail` (
  `ip` varchar(20) NOT NULL DEFAULT '',
  `num` tinyint(4) NOT NULL DEFAULT '0',
  `lasttime` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `base_melvemember`
--

CREATE TABLE IF NOT EXISTS `base_melvemember` (
  `userid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` char(20) NOT NULL DEFAULT '',
  `password` char(32) NOT NULL DEFAULT '',
  `rnd` char(20) NOT NULL DEFAULT '',
  `email` char(50) NOT NULL DEFAULT '',
  `registertime` int(10) unsigned NOT NULL DEFAULT '0',
  `groupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userfen` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `userdate` int(10) unsigned NOT NULL DEFAULT '0',
  `money` float(11,2) NOT NULL DEFAULT '0.00',
  `zgroupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `havemsg` tinyint(1) NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `salt` char(8) NOT NULL DEFAULT '',
  `userkey` char(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`userid`),
  UNIQUE KEY `username` (`username`),
  KEY `groupid` (`groupid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melvememberadd`
--

CREATE TABLE IF NOT EXISTS `base_melvememberadd` (
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `truename` varchar(20) NOT NULL DEFAULT '',
  `oicq` varchar(25) NOT NULL DEFAULT '',
  `msn` varchar(120) NOT NULL DEFAULT '',
  `mycall` varchar(30) NOT NULL DEFAULT '',
  `phone` varchar(30) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `zip` varchar(8) NOT NULL DEFAULT '',
  `spacestyleid` smallint(6) NOT NULL DEFAULT '0',
  `homepage` varchar(200) NOT NULL DEFAULT '',
  `saytext` text NOT NULL,
  `company` varchar(255) NOT NULL DEFAULT '',
  `fax` varchar(30) NOT NULL DEFAULT '',
  `userpic` varchar(200) NOT NULL DEFAULT '',
  `spacename` varchar(255) NOT NULL DEFAULT '',
  `spacegg` text NOT NULL,
  `viewstats` int(11) NOT NULL DEFAULT '0',
  `regip` varchar(20) NOT NULL DEFAULT '',
  `lasttime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(20) NOT NULL DEFAULT '',
  `loginnum` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `base_melvememberf`
--

CREATE TABLE IF NOT EXISTS `base_melvememberf` (
  `fid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `f` varchar(30) NOT NULL DEFAULT '',
  `fname` varchar(30) NOT NULL DEFAULT '',
  `fform` varchar(20) NOT NULL DEFAULT '',
  `fhtml` mediumtext NOT NULL,
  `fzs` varchar(255) NOT NULL DEFAULT '',
  `myorder` smallint(6) NOT NULL DEFAULT '0',
  `ftype` varchar(30) NOT NULL DEFAULT '',
  `flen` varchar(20) NOT NULL DEFAULT '',
  `fvalue` text NOT NULL,
  `fformsize` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- 转存表中的数据 `base_melvememberf`
--

INSERT INTO `base_melvememberf` (`fid`, `f`, `fname`, `fform`, `fhtml`, `fzs`, `myorder`, `ftype`, `flen`, `fvalue`, `fformsize`) VALUES
(1, 'truename', '真实姓名', 'text', '\r\n<input name="truename" type="text" id="truename" value="<?=$elvefirstpost==1?"":htmlspecialchars(stripSlashes($addr[truename]))?>">\r\n', '', 1, 'VARCHAR', '20', '', ''),
(2, 'oicq', 'QQ号码', 'text', '<input name=\\"oicq\\" type=\\"text\\" id=\\"oicq\\" value=\\"<?=$elvefirstpost==1?\\"\\":htmlspecialchars(stripSlashes($addr[oicq]))?>\\">\r\n', '', 5, 'VARCHAR', '25', '', ''),
(3, 'msn', 'MSN', 'text', '<input name=\\"msn\\" type=\\"text\\" id=\\"msn\\" value=\\"<?=$elvefirstpost==1?\\"\\":htmlspecialchars(stripSlashes($addr[msn]))?>\\">\r\n', '', 6, 'VARCHAR', '120', '', ''),
(4, 'mycall', '联系电话', 'text', '<input name=\\"mycall\\" type=\\"text\\" id=\\"mycall\\" value=\\"<?=$elvefirstpost==1?\\"\\":htmlspecialchars(stripSlashes($addr[mycall]))?>\\">\r\n', '', 2, 'VARCHAR', '30', '', ''),
(5, 'phone', '手机', 'text', '<input name=\\"phone\\" type=\\"text\\" id=\\"phone\\" value=\\"<?=$elvefirstpost==1?\\"\\":htmlspecialchars(stripSlashes($addr[phone]))?>\\">\r\n', '', 4, 'VARCHAR', '30', '', ''),
(6, 'address', '联系地址', 'text', '<input name=\\"address\\" type=\\"text\\" id=\\"address\\" value=\\"<?=$elvefirstpost==1?\\"\\":htmlspecialchars(stripSlashes($addr[address]))?>\\" size=\\"50\\">\r\n', '', 9, 'VARCHAR', '255', '', ''),
(7, 'zip', '邮编', 'text', '<input name=\\"zip\\" type=\\"text\\" id=\\"zip\\" value=\\"<?=$elvefirstpost==1?\\"\\":htmlspecialchars(stripSlashes($addr[zip]))?>\\" size=\\"8\\">\r\n', '', 10, 'VARCHAR', '8', '', ''),
(9, 'homepage', '网址', 'text', '\r\n<input name="homepage" type="text" id="homepage" value="<?=$elvefirstpost==1?"":htmlspecialchars(stripSlashes($addr[homepage]))?>">\r\n', '', 7, 'VARCHAR', '200', '', ''),
(10, 'saytext', '简介', 'textarea', '<textarea name=\\"saytext\\" cols=\\"65\\" rows=\\"10\\" id=\\"saytext\\"><?=$elvefirstpost==1?\\"\\":stripSlashes($addr[saytext])?></textarea>\r\n', '', 11, 'TEXT', '', '', ''),
(11, 'company', '公司名称', 'text', '<input name=\\"company\\" type=\\"text\\" id=\\"company\\" value=\\"<?=$elvefirstpost==1?\\"\\":htmlspecialchars(stripSlashes($addr[company]))?>\\" size=\\"38\\">\r\n', '', 0, 'VARCHAR', '255', '', ''),
(12, 'fax', '传真', 'text', '\r\n<input name="fax" type="text" id="fax" value="<?=$elvefirstpost==1?"":htmlspecialchars(stripSlashes($addr[fax]))?>">\r\n', '', 3, 'VARCHAR', '30', '', ''),
(13, 'userpic', '会员头像', 'img', '<input type=\\"file\\" name=\\"userpicfile\\">&nbsp;&nbsp;\r\n<?=empty($addr[userpic])?\\"\\":\\"<img src=\\''\\".htmlspecialchars(stripSlashes($addr[userpic])).\\"\\'' border=0>\\"?>', '', 8, 'VARCHAR', '200', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `base_melvememberfeedback`
--

CREATE TABLE IF NOT EXISTS `base_melvememberfeedback` (
  `fid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(12) NOT NULL DEFAULT '',
  `company` varchar(80) NOT NULL DEFAULT '',
  `phone` varchar(30) NOT NULL DEFAULT '',
  `fax` varchar(20) NOT NULL DEFAULT '',
  `email` varchar(80) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `zip` varchar(8) NOT NULL DEFAULT '',
  `title` varchar(120) NOT NULL DEFAULT '',
  `ftext` text NOT NULL,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `uname` varchar(20) NOT NULL DEFAULT '',
  `addtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`fid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melvememberform`
--

CREATE TABLE IF NOT EXISTS `base_melvememberform` (
  `fid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `fname` varchar(60) NOT NULL DEFAULT '',
  `ftemp` mediumtext NOT NULL,
  `fzs` varchar(255) NOT NULL DEFAULT '',
  `enter` text NOT NULL,
  `mustenter` text NOT NULL,
  `filef` varchar(255) NOT NULL DEFAULT '',
  `imgf` varchar(255) NOT NULL DEFAULT '0',
  `tobrf` text NOT NULL,
  `viewenter` text NOT NULL,
  `searchvar` varchar(255) NOT NULL DEFAULT '',
  `canaddf` text NOT NULL,
  `caneditf` text NOT NULL,
  `checkboxf` text NOT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `base_melvememberform`
--

INSERT INTO `base_melvememberform` (`fid`, `fname`, `ftemp`, `fzs`, `enter`, `mustenter`, `filef`, `imgf`, `tobrf`, `viewenter`, `searchvar`, `canaddf`, `caneditf`, `checkboxf`) VALUES
(1, '个人注册表单', '<table width=\\''100%\\'' align=\\''center\\'' cellpadding=3 cellspacing=1 bgcolor=\\''#DBEAF5\\''>\r\n<tr><td width=\\''25%\\'' height=25 bgcolor=\\''ffffff\\''>真实姓名</td><td bgcolor=\\''ffffff\\''>[!--truename--]</td></tr>\r\n<tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>QQ号码</td><td bgcolor=\\''ffffff\\''>[!--oicq--]</td></tr>\r\n<tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>MSN</td><td bgcolor=\\''ffffff\\''>[!--msn--]</td></tr>\r\n<tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>联系电话</td><td bgcolor=\\''ffffff\\''>[!--mycall--]</td></tr>\r\n<tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>手机</td><td bgcolor=\\''ffffff\\''>[!--phone--]</td></tr>\r\n<tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>网站地址</td><td bgcolor=\\''ffffff\\''>[!--homepage--]</td></tr>\r\n<tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>会员头像</td><td bgcolor=\\''ffffff\\''>[!--userpic--]</td></tr>\r\n<tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>联系地址</td><td bgcolor=\\''ffffff\\''>[!--address--]&nbsp;邮编: [!--zip--]</td></tr>\r\n<tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>个人介绍</td><td bgcolor=\\''ffffff\\''>[!--saytext--]</td></tr>\r\n</table>', '', '真实姓名<!--field--->truename<!--record-->联系电话<!--field--->mycall<!--record-->手机<!--field--->phone<!--record-->QQ号码<!--field--->oicq<!--record-->MSN<!--field--->msn<!--record-->网站地址<!--field--->homepage<!--record-->会员头像<!--field--->userpic<!--record-->联系地址<!--field--->address<!--record-->邮编<!--field--->zip<!--record-->简介<!--field--->saytext<!--record-->', '', ',', ',userpic,', ',saytext,', '真实姓名<!--field--->truename<!--record-->联系电话<!--field--->mycall<!--record-->手机<!--field--->phone<!--record-->QQ号码<!--field--->oicq<!--record-->MSN<!--field--->msn<!--record-->网站地址<!--field--->homepage<!--record-->会员头像<!--field--->userpic<!--record-->联系地址<!--field--->address<!--record-->邮编<!--field--->zip<!--record-->简介<!--field--->saytext<!--record-->', '', ',truename,mycall,phone,oicq,msn,homepage,userpic,address,zip,saytext,', ',truename,mycall,phone,oicq,msn,homepage,userpic,address,zip,saytext,', ','),
(2, '企员注册表单', '<table width=\\''100%\\'' align=\\''center\\'' cellpadding=3 cellspacing=1 bgcolor=\\''#DBEAF5\\''><tr><td width=\\''25%\\'' height=25 bgcolor=\\''ffffff\\''>公司名称</td><td bgcolor=\\''ffffff\\''>[!--company--](*)</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>联系人</td><td bgcolor=\\''ffffff\\''>[!--truename--](*)</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>联系电话</td><td bgcolor=\\''ffffff\\''>[!--mycall--](*)</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>传真</td><td bgcolor=\\''ffffff\\''>[!--fax--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>手机</td><td bgcolor=\\''ffffff\\''>[!--phone--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>QQ号码</td><td bgcolor=\\''ffffff\\''>[!--oicq--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>MSN</td><td bgcolor=\\''ffffff\\''>[!--msn--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>网址</td><td bgcolor=\\''ffffff\\''>[!--homepage--]</td></tr>\r\n<tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>会员头像</td><td bgcolor=\\''ffffff\\''>[!--userpic--]</td></tr>\r\n<tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>联系地址</td><td bgcolor=\\''ffffff\\''>[!--address--]&nbsp;邮编: [!--zip--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>公司介绍</td><td bgcolor=\\''ffffff\\''>[!--saytext--]</td></tr></table>', '', '公司名称<!--field--->company<!--record-->联系人<!--field--->truename<!--record-->联系电话<!--field--->mycall<!--record-->传真<!--field--->fax<!--record-->手机<!--field--->phone<!--record-->QQ号码<!--field--->oicq<!--record-->MSN<!--field--->msn<!--record-->网址<!--field--->homepage<!--record-->会员头像<!--field--->userpic<!--record-->联系地址<!--field--->address<!--record-->邮编<!--field--->zip<!--record-->公司介绍<!--field--->saytext<!--record-->', ',company,truename,mycall,', ',', ',userpic,', ',saytext,', '公司名称<!--field--->company<!--record-->联系人<!--field--->truename<!--record-->联系电话<!--field--->mycall<!--record-->传真<!--field--->fax<!--record-->手机<!--field--->phone<!--record-->QQ号码<!--field--->oicq<!--record-->MSN<!--field--->msn<!--record-->网址<!--field--->homepage<!--record-->会员头像<!--field--->userpic<!--record-->联系地址<!--field--->address<!--record-->邮编<!--field--->zip<!--record-->公司介绍<!--field--->saytext<!--record-->', ',company,', ',company,truename,mycall,fax,phone,oicq,msn,homepage,userpic,address,zip,saytext,', ',company,truename,mycall,fax,phone,oicq,msn,homepage,userpic,address,zip,saytext,', ',');

-- --------------------------------------------------------

--
-- 表的结构 `base_melvemembergbook`
--

CREATE TABLE IF NOT EXISTS `base_melvemembergbook` (
  `gid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `isprivate` tinyint(1) NOT NULL DEFAULT '0',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `uname` varchar(20) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `addtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `gbtext` text NOT NULL,
  `retext` text NOT NULL,
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`gid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melvemembergroup`
--

CREATE TABLE IF NOT EXISTS `base_melvemembergroup` (
  `groupid` smallint(6) NOT NULL AUTO_INCREMENT,
  `groupname` varchar(60) NOT NULL DEFAULT '',
  `level` smallint(6) NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `favanum` smallint(6) NOT NULL DEFAULT '0',
  `daydown` int(11) NOT NULL DEFAULT '0',
  `msglen` int(11) NOT NULL DEFAULT '0',
  `msgnum` int(11) NOT NULL DEFAULT '0',
  `canreg` tinyint(1) NOT NULL DEFAULT '0',
  `formid` smallint(6) NOT NULL DEFAULT '0',
  `regchecked` tinyint(1) NOT NULL DEFAULT '0',
  `spacestyleid` smallint(6) NOT NULL DEFAULT '0',
  `dayaddinfo` smallint(6) NOT NULL DEFAULT '0',
  `infochecked` tinyint(1) NOT NULL DEFAULT '0',
  `plchecked` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`groupid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `base_melvemembergroup`
--

INSERT INTO `base_melvemembergroup` (`groupid`, `groupname`, `level`, `checked`, `favanum`, `daydown`, `msglen`, `msgnum`, `canreg`, `formid`, `regchecked`, `spacestyleid`, `dayaddinfo`, `infochecked`, `plchecked`) VALUES
(1, '普通会员', 1, 0, 120, 0, 255, 50, 1, 1, 0, 1, 0, 0, 0),
(2, 'VIP会员', 2, 0, 200, 0, 255, 120, 0, 1, 0, 1, 0, 0, 0),
(3, '企业会员', 1, 0, 120, 0, 255, 50, 1, 2, 0, 2, 0, 0, 0),
(4, '企业VIP会员', 2, 0, 200, 0, 255, 120, 0, 2, 0, 2, 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `base_melvememberpub`
--

CREATE TABLE IF NOT EXISTS `base_melvememberpub` (
  `userid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `todayinfodate` char(10) NOT NULL DEFAULT '',
  `todayaddinfo` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `todaydate` char(10) NOT NULL DEFAULT '',
  `todaydown` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `authstr` char(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melvemember_connect`
--

CREATE TABLE IF NOT EXISTS `base_melvemember_connect` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `apptype` char(20) NOT NULL DEFAULT '',
  `bindkey` char(32) NOT NULL DEFAULT '',
  `bindtime` int(10) unsigned NOT NULL DEFAULT '0',
  `loginnum` int(10) unsigned NOT NULL DEFAULT '0',
  `lasttime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `bindkey` (`bindkey`),
  KEY `apptype` (`apptype`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melvemember_connect_app`
--

CREATE TABLE IF NOT EXISTS `base_melvemember_connect_app` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `apptype` char(20) NOT NULL DEFAULT '',
  `appname` char(30) NOT NULL DEFAULT '',
  `appid` char(60) NOT NULL DEFAULT '',
  `appkey` char(120) NOT NULL DEFAULT '',
  `isclose` tinyint(1) NOT NULL DEFAULT '0',
  `myorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `qappname` char(30) NOT NULL DEFAULT '',
  `appsay` char(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `apptype` (`apptype`),
  KEY `isclose` (`isclose`),
  KEY `myorder` (`myorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melvemenu`
--

CREATE TABLE IF NOT EXISTS `base_melvemenu` (
  `menuid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menuname` varchar(60) NOT NULL DEFAULT '',
  `menuurl` varchar(255) NOT NULL DEFAULT '',
  `myorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`menuid`),
  KEY `myorder` (`myorder`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melvemenuclass`
--

CREATE TABLE IF NOT EXISTS `base_melvemenuclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(60) NOT NULL DEFAULT '',
  `issys` tinyint(1) NOT NULL DEFAULT '0',
  `myorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `classtype` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`classid`),
  KEY `myorder` (`myorder`),
  KEY `classtype` (`classtype`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melvemod`
--

CREATE TABLE IF NOT EXISTS `base_melvemod` (
  `mid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `mname` varchar(100) NOT NULL DEFAULT '',
  `mtemp` mediumtext NOT NULL,
  `mzs` varchar(255) NOT NULL DEFAULT '',
  `cj` mediumtext NOT NULL,
  `enter` mediumtext NOT NULL,
  `tempvar` mediumtext NOT NULL,
  `sonclass` text NOT NULL,
  `searchvar` varchar(255) NOT NULL DEFAULT '',
  `tid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tbname` varchar(60) NOT NULL DEFAULT '',
  `qenter` mediumtext NOT NULL,
  `mustqenterf` text NOT NULL,
  `qmtemp` mediumtext NOT NULL,
  `listandf` text NOT NULL,
  `setandf` tinyint(1) NOT NULL DEFAULT '0',
  `listtempvar` mediumtext NOT NULL,
  `qmname` varchar(30) NOT NULL DEFAULT '',
  `canaddf` text NOT NULL,
  `caneditf` text NOT NULL,
  `definfovoteid` smallint(6) NOT NULL DEFAULT '0',
  `showmod` tinyint(1) NOT NULL DEFAULT '0',
  `usemod` tinyint(1) NOT NULL DEFAULT '0',
  `myorder` smallint(6) NOT NULL DEFAULT '0',
  `orderf` text NOT NULL,
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  `listfile` varchar(30) NOT NULL DEFAULT '',
  `printtempid` smallint(6) NOT NULL DEFAULT '0',
  `madddofun` varchar(255) NOT NULL,
  `meditdofun` varchar(255) NOT NULL,
  `mqadddofun` varchar(255) NOT NULL,
  `mqeditdofun` varchar(255) NOT NULL,
  PRIMARY KEY (`mid`),
  KEY `tid` (`tid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `base_melvemod`
--

INSERT INTO `base_melvemod` (`mid`, `mname`, `mtemp`, `mzs`, `cj`, `enter`, `tempvar`, `sonclass`, `searchvar`, `tid`, `tbname`, `qenter`, `mustqenterf`, `qmtemp`, `listandf`, `setandf`, `listtempvar`, `qmname`, `canaddf`, `caneditf`, `definfovoteid`, `showmod`, `usemod`, `myorder`, `orderf`, `isdefault`, `listfile`, `printtempid`, `madddofun`, `meditdofun`, `mqadddofun`, `mqeditdofun`) VALUES
(1, '新闻系统模型', '<table width=\\''100%\\'' align=center cellpadding=3 cellspacing=1 class=\\"tableborder\\"><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>标题(*)</td><td bgcolor=\\''ffffff\\''>[!--title--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>副标题</td><td bgcolor=\\''ffffff\\''>[!--ftitle--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>特殊属性</td><td bgcolor=\\''ffffff\\''>[!--special.field--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>发布时间</td><td bgcolor=\\''ffffff\\''>[!--newstime--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>标题图片</td><td bgcolor=\\''ffffff\\''>[!--titlepic--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>内容简介</td><td bgcolor=\\''ffffff\\''>[!--smalltext--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>作者</td><td bgcolor=\\''ffffff\\''>[!--writer--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>信息来源</td><td bgcolor=\\''ffffff\\''>[!--befrom--]</td></tr><tr><td height=25 colspan=2 bgcolor=\\''ffffff\\''><div align=left>新闻正文(*)</div></td></tr></table><div style=\\"background-color:#D0D0D0\\">[!--newstext--]</div>', '新闻系统模型', '标题<!--field--->title<!--record-->副标题<!--field--->ftitle<!--record-->发布时间<!--field--->newstime<!--record-->标题图片<!--field--->titlepic<!--record-->内容简介<!--field--->smalltext<!--record-->作者<!--field--->writer<!--record-->信息来源<!--field--->befrom<!--record-->新闻正文<!--field--->newstext<!--record-->', '标题<!--field--->title<!--record-->副标题<!--field--->ftitle<!--record-->特殊属性<!--field--->special.field<!--record-->发布时间<!--field--->newstime<!--record-->标题图片<!--field--->titlepic<!--record-->内容简介<!--field--->smalltext<!--record-->作者<!--field--->writer<!--record-->信息来源<!--field--->befrom<!--record-->新闻正文<!--field--->newstext<!--record-->', '标题<!--field--->title<!--record-->副标题<!--field--->ftitle<!--record-->发布时间<!--field--->newstime<!--record-->标题图片<!--field--->titlepic<!--record-->内容简介<!--field--->smalltext<!--record-->作者<!--field--->writer<!--record-->信息来源<!--field--->befrom<!--record-->新闻正文<!--field--->newstext<!--record-->顶<!--field--->diggtop<!--record-->', '|34|35|36|37|', ',title,smalltext,', 1, 'news', '标题<!--field--->title<!--record-->副标题<!--field--->ftitle<!--record-->特殊属性<!--field--->special.field<!--record-->标题图片<!--field--->titlepic<!--record-->内容简介<!--field--->smalltext<!--record-->作者<!--field--->writer<!--record-->信息来源<!--field--->befrom<!--record-->新闻正文<!--field--->newstext<!--record-->', ',title,newstext,', '<table width=100% align=center cellpadding=3 cellspacing=1 class=\\"tableborder\\"><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>标题(*)</td><td bgcolor=\\''ffffff\\''>[!--title--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>副标题</td><td bgcolor=\\''ffffff\\''>[!--ftitle--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>关键字</td><td bgcolor=\\''ffffff\\''>[!--special.field--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>标题图片</td><td bgcolor=\\''ffffff\\''>[!--titlepic--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>内容简介</td><td bgcolor=\\''ffffff\\''>[!--smalltext--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>作者</td><td bgcolor=\\''ffffff\\''>[!--writer--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>信息来源</td><td bgcolor=\\''ffffff\\''>[!--befrom--]</td></tr><tr><td height=25 colspan=2 bgcolor=\\''ffffff\\''><div align=left>新闻正文(*)</div></td></tr></table><div style=\\"background-color:#D0D0D0\\">[!--newstext--]</div>', '', 0, '标题<!--field--->title<!--record-->副标题<!--field--->ftitle<!--record-->发布时间<!--field--->newstime<!--record-->标题图片<!--field--->titlepic<!--record-->内容简介<!--field--->smalltext<!--record-->顶<!--field--->diggtop<!--record-->', '新闻', ',title,ftitle,newstime,titlepic,smalltext,writer,befrom,newstext,', ',title,ftitle,newstime,titlepic,smalltext,writer,befrom,newstext,', 0, 0, 0, 0, '', 1, '', 0, '', '', '', ''),
(2, '下载系统模型', '<script>\r\nfunction AddFj(str)\r\n{var r;\r\nvar a;\r\na=document.add.softfj.value;\r\nr=a.split(str);\r\nif(r.length!=1)\r\n{return true;}\r\ndocument.add.softfj.value+=\\"/\\"+str;\r\n}\r\nfunction DelFj(str)\r\n{\r\nvar a;\r\na=document.add.softfj.value;\r\ndocument.add.softfj.value=a.replace(\\"/\\"+str,\\"\\");\r\n}\r\n</script>\r\n<table width=100% align=center cellpadding=3 cellspacing=1 class=\\"tableborder\\">\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>软件名称(*)</td>\r\n    <td bgcolor=ffffff>[!--title--]</td>\r\n  </tr>\r\n  <tr>\r\n    <td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>特殊属性</td>\r\n    <td bgcolor=\\''ffffff\\''>[!--special.field--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>发布时间</td>\r\n    <td bgcolor=ffffff>[!--newstime--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>软件预览图</td>\r\n    <td bgcolor=ffffff>[!--titlepic--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>软件作者</td>\r\n    <td bgcolor=ffffff>[!--softwriter--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>厂商主页</td>\r\n    <td bgcolor=ffffff>[!--homepage--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>系统演示</td>\r\n    <td bgcolor=ffffff>[!--demo--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>运行环境</td>\r\n    <td bgcolor=ffffff>[!--softfj--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td height=25 bgcolor=ffffff>&nbsp;</td>\r\n    <td bgcolor=ffffff><input type=checkbox name=check value=\\''Win9X/Me\\'' onclick=\\"if(this.checked){AddFj(this.value);}else{DelFj(this.value);}\\">\r\n      Win9X/Me&nbsp; <input type=checkbox name=check value=\\''WinNT/2000/XP\\'' onclick=\\"if(this.checked){AddFj(this.value);}else{DelFj(this.value);}\\">\r\n      WinNT/2000/XP&nbsp; <input type=checkbox name=check value=\\''Unix\\'' onclick=\\"if(this.checked){AddFj(this.value);}else{DelFj(this.value);}\\">\r\n      Unix&nbsp; <input type=checkbox name=check value=\\''Linux\\'' onclick=\\"if(this.checked){AddFj(this.value);}else{DelFj(this.value);}\\">\r\n      Linux&nbsp; <input type=checkbox name=check value=\\''DOS\\'' onclick=\\"if(this.checked){AddFj(this.value);}else{DelFj(this.value);}\\">\r\n      DOS&nbsp; <input type=checkbox name=check value=\\''MAC OS\\'' onclick=\\"if(this.checked){AddFj(this.value);}else{DelFj(this.value);}\\">\r\n      MAC OS&nbsp; <input type=checkbox name=check value=\\''Other\\'' onclick=\\"if(this.checked){AddFj(this.value);}else{DelFj(this.value);}\\">\r\n      Other</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>软件属性</td>\r\n    <td bgcolor=ffffff>软件语言：[!--language--]，软件类型：[!--softtype--]，授权形式：[!--softsq--]，软件评价：[!--star--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>文件</td>\r\n    <td bgcolor=ffffff>文件类型：[!--filetype--]，文件大小：[!--filesize--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>下载地址(*)</td>\r\n    <td bgcolor=ffffff>[!--downpath--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>软件简介(*)</td>\r\n    <td bgcolor=ffffff>[!--softsay--]</td>\r\n  </tr>\r\n</table>', '', '软件名称<!--field--->title<!--record-->发布时间<!--field--->newstime<!--record-->软件预览图<!--field--->titlepic<!--record-->软件作者<!--field--->softwriter<!--record-->厂商主页<!--field--->homepage<!--record-->系统演示<!--field--->demo<!--record-->运行环境<!--field--->softfj<!--record-->软件语言<!--field--->language<!--record-->软件类型<!--field--->softtype<!--record-->授权形式<!--field--->softsq<!--record-->软件评价<!--field--->star<!--record-->文件类型<!--field--->filetype<!--record-->文件大小<!--field--->filesize<!--record-->下载地址<!--field--->downpath<!--record-->软件简介<!--field--->softsay<!--record-->', '软件名称<!--field--->title<!--record-->特殊属性<!--field--->special.field<!--record-->发布时间<!--field--->newstime<!--record-->软件预览图<!--field--->titlepic<!--record-->软件作者<!--field--->softwriter<!--record-->厂商主页<!--field--->homepage<!--record-->系统演示<!--field--->demo<!--record-->运行环境<!--field--->softfj<!--record-->软件语言<!--field--->language<!--record-->软件类型<!--field--->softtype<!--record-->授权形式<!--field--->softsq<!--record-->软件评价<!--field--->star<!--record-->文件类型<!--field--->filetype<!--record-->文件大小<!--field--->filesize<!--record-->下载地址<!--field--->downpath<!--record-->软件简介<!--field--->softsay<!--record-->', '软件名称<!--field--->title<!--record-->发布时间<!--field--->newstime<!--record-->软件预览图<!--field--->titlepic<!--record-->软件作者<!--field--->softwriter<!--record-->厂商主页<!--field--->homepage<!--record-->系统演示<!--field--->demo<!--record-->运行环境<!--field--->softfj<!--record-->软件语言<!--field--->language<!--record-->软件类型<!--field--->softtype<!--record-->授权形式<!--field--->softsq<!--record-->软件评价<!--field--->star<!--record-->文件类型<!--field--->filetype<!--record-->文件大小<!--field--->filesize<!--record-->下载地址<!--field--->downpath<!--record-->软件简介<!--field--->softsay<!--record-->', '|38|39|40|41|', ',title,softsay,', 2, 'download', '软件名称<!--field--->title<!--record-->特殊属性<!--field--->special.field<!--record-->软件预览图<!--field--->titlepic<!--record-->软件作者<!--field--->softwriter<!--record-->厂商主页<!--field--->homepage<!--record-->系统演示<!--field--->demo<!--record-->运行环境<!--field--->softfj<!--record-->软件语言<!--field--->language<!--record-->软件类型<!--field--->softtype<!--record-->授权形式<!--field--->softsq<!--record-->文件类型<!--field--->filetype<!--record-->文件大小<!--field--->filesize<!--record-->下载地址<!--field--->downpath<!--record-->软件简介<!--field--->softsay<!--record-->', ',title,downpath,softsay,', '<script>\r\nfunction AddFj(str)\r\n{var r;\r\nvar a;\r\na=document.add.softfj.value;\r\nr=a.split(str);\r\nif(r.length!=1)\r\n{return true;}\r\ndocument.add.softfj.value+=\\"/\\"+str;\r\n}\r\nfunction DelFj(str)\r\n{\r\nvar a;\r\na=document.add.softfj.value;\r\ndocument.add.softfj.value=a.replace(\\"/\\"+str,\\"\\");\r\n}\r\n</script>\r\n<table width=100% align=center cellpadding=3 cellspacing=1 class=\\"tableborder\\">\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>软件名称(*)</td>\r\n    <td bgcolor=ffffff>[!--title--]</td>\r\n  </tr>\r\n  <tr>\r\n    <td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>关键字</td>\r\n    <td bgcolor=\\''ffffff\\''>[!--special.field--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>软件预览图</td>\r\n    <td bgcolor=ffffff>[!--titlepic--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>软件作者</td>\r\n    <td bgcolor=ffffff>[!--softwriter--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>厂商主页</td>\r\n    <td bgcolor=ffffff>[!--homepage--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>系统演示</td>\r\n    <td bgcolor=ffffff>[!--demo--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>运行环境</td>\r\n    <td bgcolor=ffffff>[!--softfj--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td height=25 bgcolor=ffffff>&nbsp;</td>\r\n    <td bgcolor=ffffff><input type=checkbox name=check value=\\''Win9X/Me\\'' onclick=\\"if(this.checked){AddFj(this.value);}else{DelFj(this.value);}\\">\r\n      Win9X/Me&nbsp; <input type=checkbox name=check value=\\''WinNT/2000/XP\\'' onclick=\\"if(this.checked){AddFj(this.value);}else{DelFj(this.value);}\\">\r\n      WinNT/2000/XP&nbsp; <input type=checkbox name=check value=\\''Unix\\'' onclick=\\"if(this.checked){AddFj(this.value);}else{DelFj(this.value);}\\">\r\n      Unix&nbsp; <input type=checkbox name=check value=\\''Linux\\'' onclick=\\"if(this.checked){AddFj(this.value);}else{DelFj(this.value);}\\">\r\n      Linux&nbsp; <input type=checkbox name=check value=\\''DOS\\'' onclick=\\"if(this.checked){AddFj(this.value);}else{DelFj(this.value);}\\">\r\n      DOS&nbsp; <input type=checkbox name=check value=\\''MAC OS\\'' onclick=\\"if(this.checked){AddFj(this.value);}else{DelFj(this.value);}\\">\r\n      MAC OS&nbsp; <input type=checkbox name=check value=\\''Other\\'' onclick=\\"if(this.checked){AddFj(this.value);}else{DelFj(this.value);}\\">\r\n      Other</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>软件属性</td>\r\n    <td bgcolor=ffffff>软件语言：[!--language--]，软件类型：[!--softtype--]，授权形式：[!--softsq--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>文件</td>\r\n    <td bgcolor=ffffff>文件类型：[!--filetype--]，文件大小：[!--filesize--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>上传软件(*)</td>\r\n    <td bgcolor=ffffff>[!--downpath--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>软件简介(*)</td>\r\n    <td bgcolor=ffffff>[!--softsay--]</td>\r\n  </tr>\r\n</table>', '', 0, '软件名称<!--field--->title<!--record-->发布时间<!--field--->newstime<!--record-->软件预览图<!--field--->titlepic<!--record-->运行环境<!--field--->softfj<!--record-->软件语言<!--field--->language<!--record-->软件类型<!--field--->softtype<!--record-->授权形式<!--field--->softsq<!--record-->软件评价<!--field--->star<!--record-->文件类型<!--field--->filetype<!--record-->文件大小<!--field--->filesize<!--record-->软件简介<!--field--->softsay<!--record-->', '软件', ',title,newstime,titlepic,softwriter,homepage,demo,softfj,language,softtype,softsq,star,filetype,filesize,downpath,softsay,', ',title,newstime,titlepic,softwriter,homepage,demo,softfj,language,softtype,softsq,star,filetype,filesize,downpath,softsay,', 0, 0, 0, 0, '', 1, '', 0, '', '', '', ''),
(3, '图片系统模型', '<table width=100% align=center cellpadding=3 cellspacing=1 class=tableborder>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>图片名称(*)</td>\r\n    <td bgcolor=ffffff>[!--title--]</td>\r\n  </tr>\r\n  <tr>\r\n    <td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>特殊属性</td>\r\n    <td bgcolor=\\''ffffff\\''>[!--special.field--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>发布时间</td>\r\n    <td bgcolor=ffffff>[!--newstime--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>文件大小</td>\r\n    <td bgcolor=ffffff>[!--filesize--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>单图属性</td>\r\n    <td bgcolor=ffffff>图片尺寸：[!--picsize--]，图片分辨率：[!--picfbl--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>来源</td>\r\n    <td bgcolor=ffffff>[!--picfrom--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>图片小图</td>\r\n    <td bgcolor=ffffff>[!--titlepic--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>图片大图</td>\r\n    <td bgcolor=ffffff>[!--picurl--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>图片集</td>\r\n    <td bgcolor=ffffff>[!--morepic--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>图集属性</td>\r\n    <td bgcolor=ffffff>每行显示条数：[!--num--]，缩图大小：[!--width--]*[!--height--]<font color=\\"#666666\\">(宽*高)</font></td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>图片简介(*)</td>\r\n    <td bgcolor=ffffff>[!--picsay--]</td>\r\n  </tr>\r\n</table>', '', '图片名称<!--field--->title<!--record-->发布时间<!--field--->newstime<!--record-->文件大小<!--field--->filesize<!--record-->图片尺寸<!--field--->picsize<!--record-->图片分辨率<!--field--->picfbl<!--record-->来源<!--field--->picfrom<!--record-->图片小图<!--field--->titlepic<!--record-->图片大图<!--field--->picurl<!--record-->图片集<!--field--->morepic<!--record-->每行显示条数<!--field--->num<!--record-->缩图宽度<!--field--->width<!--record-->缩图高度<!--field--->height<!--record-->图片简介<!--field--->picsay<!--record-->', '图片名称<!--field--->title<!--record-->特殊属性<!--field--->special.field<!--record-->发布时间<!--field--->newstime<!--record-->文件大小<!--field--->filesize<!--record-->图片尺寸<!--field--->picsize<!--record-->图片分辨率<!--field--->picfbl<!--record-->来源<!--field--->picfrom<!--record-->图片小图<!--field--->titlepic<!--record-->图片大图<!--field--->picurl<!--record-->图片集<!--field--->morepic<!--record-->每行显示条数<!--field--->num<!--record-->缩图宽度<!--field--->width<!--record-->缩图高度<!--field--->height<!--record-->图片简介<!--field--->picsay<!--record-->', '图片名称<!--field--->title<!--record-->发布时间<!--field--->newstime<!--record-->文件大小<!--field--->filesize<!--record-->图片尺寸<!--field--->picsize<!--record-->图片分辨率<!--field--->picfbl<!--record-->来源<!--field--->picfrom<!--record-->图片小图<!--field--->titlepic<!--record-->图片大图<!--field--->picurl<!--record-->图片集<!--field--->morepic<!--record-->每行显示条数<!--field--->num<!--record-->缩图宽度<!--field--->width<!--record-->缩图高度<!--field--->height<!--record-->图片简介<!--field--->picsay<!--record-->', '|52|53|54|', ',title,picsay,', 3, 'photo', '图片名称<!--field--->title<!--record-->特殊属性<!--field--->special.field<!--record-->文件大小<!--field--->filesize<!--record-->图片尺寸<!--field--->picsize<!--record-->图片分辨率<!--field--->picfbl<!--record-->来源<!--field--->picfrom<!--record-->图片小图<!--field--->titlepic<!--record-->图片大图<!--field--->picurl<!--record-->图片简介<!--field--->picsay<!--record-->', ',title,picsay,', '<table width=100% align=center cellpadding=3 cellspacing=1 class=tableborder><tr><td width=16% height=25 bgcolor=ffffff>图片名称</td><td bgcolor=ffffff>[!--title--]</td></tr>\r\n  <tr>\r\n    <td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>关键字</td>\r\n    <td bgcolor=\\''ffffff\\''>[!--special.field--]</td>\r\n  </tr>\r\n<tr><td width=16% height=25 bgcolor=ffffff>文件大小</td><td bgcolor=ffffff>[!--filesize--]</td></tr><tr><td width=16% height=25 bgcolor=ffffff>图片尺寸</td><td bgcolor=ffffff>[!--picsize--]</td></tr><tr><td width=16% height=25 bgcolor=ffffff>图片分辨率</td><td bgcolor=ffffff>[!--picfbl--]</td></tr><tr><td width=16% height=25 bgcolor=ffffff>来源</td><td bgcolor=ffffff>[!--picfrom--]</td></tr><tr><td width=16% height=25 bgcolor=ffffff>图片小图</td><td bgcolor=ffffff>[!--titlepic--]</td></tr><tr><td width=16% height=25 bgcolor=ffffff>图片大图</td><td bgcolor=ffffff>[!--picurl--]</td></tr><tr><td width=16% height=25 bgcolor=ffffff>图片简介</td><td bgcolor=ffffff>[!--picsay--]</td></tr></table>', '', 0, '图片名称<!--field--->title<!--record-->发布时间<!--field--->newstime<!--record-->图片小图<!--field--->titlepic<!--record-->图片大图<!--field--->picurl<!--record-->图片简介<!--field--->picsay<!--record-->', '图片', ',title,newstime,filesize,picsize,picfbl,picfrom,titlepic,picurl,morepic,num,width,height,picsay,', ',title,newstime,filesize,picsize,picfbl,picfrom,titlepic,picurl,morepic,num,width,height,picsay,', 0, 0, 0, 0, '', 1, '', 0, '', '', '', ''),
(4, 'FLASH系统模型', '<table width=100% align=center cellpadding=3 cellspacing=1 class=tableborder>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>作品名(*)</td>\r\n    <td bgcolor=ffffff>[!--title--]</td>\r\n  </tr>\r\n  <tr>\r\n    <td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>特殊属性</td>\r\n    <td bgcolor=\\''ffffff\\''>[!--special.field--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>发布时间</td>\r\n    <td bgcolor=ffffff>[!--newstime--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>作品预览图</td>\r\n    <td bgcolor=ffffff>[!--titlepic--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>作者</td>\r\n    <td bgcolor=ffffff>[!--flashwriter--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>作者邮箱</td>\r\n    <td bgcolor=ffffff>[!--email--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>作品评价</td>\r\n    <td bgcolor=ffffff>[!--star--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>文件大小</td>\r\n    <td bgcolor=ffffff>[!--filesize--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>Flash地址(*)</td>\r\n    <td bgcolor=ffffff>[!--flashurl--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>Flash规格</td>\r\n    <td bgcolor=ffffff>[!--width--]*[!--height--]<font color=\\"#666666\\">(宽度*高度)</font></td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>作品简介(*)</td>\r\n    <td bgcolor=ffffff>[!--flashsay--]</td>\r\n  </tr>\r\n</table>', '', '作品名<!--field--->title<!--record-->发布时间<!--field--->newstime<!--record-->作品预览图<!--field--->titlepic<!--record-->作者<!--field--->flashwriter<!--record-->作者邮箱<!--field--->email<!--record-->作品评价<!--field--->star<!--record-->文件大小<!--field--->filesize<!--record-->Flash地址<!--field--->flashurl<!--record-->Flash宽度<!--field--->width<!--record-->Flash高度<!--field--->height<!--record-->作品简介<!--field--->flashsay<!--record-->', '作品名<!--field--->title<!--record-->特殊属性<!--field--->special.field<!--record-->发布时间<!--field--->newstime<!--record-->作品预览图<!--field--->titlepic<!--record-->作者<!--field--->flashwriter<!--record-->作者邮箱<!--field--->email<!--record-->作品评价<!--field--->star<!--record-->文件大小<!--field--->filesize<!--record-->Flash地址<!--field--->flashurl<!--record-->Flash宽度<!--field--->width<!--record-->Flash高度<!--field--->height<!--record-->作品简介<!--field--->flashsay<!--record-->', '作品名<!--field--->title<!--record-->发布时间<!--field--->newstime<!--record-->作品预览图<!--field--->titlepic<!--record-->作者<!--field--->flashwriter<!--record-->作者邮箱<!--field--->email<!--record-->作品评价<!--field--->star<!--record-->文件大小<!--field--->filesize<!--record-->Flash地址<!--field--->flashurl<!--record-->Flash宽度<!--field--->width<!--record-->Flash高度<!--field--->height<!--record-->作品简介<!--field--->flashsay<!--record-->', '|50|51|', ',title,flashwriter,flashsay,', 4, 'flash', '作品名<!--field--->title<!--record-->特殊属性<!--field--->special.field<!--record-->作品预览图<!--field--->titlepic<!--record-->作者<!--field--->flashwriter<!--record-->作者邮箱<!--field--->email<!--record-->文件大小<!--field--->filesize<!--record-->Flash地址<!--field--->flashurl<!--record-->Flash宽度<!--field--->width<!--record-->Flash高度<!--field--->height<!--record-->作品简介<!--field--->flashsay<!--record-->', ',title,flashurl,flashsay,', '<table width=\\''100%\\'' align=center cellpadding=3 cellspacing=1 class=tableborder>\r\n  <tr>\r\n    <td width=16% height=25 bgcolor=ffffff>作品名(*)</td>\r\n    <td bgcolor=ffffff>[!--title--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>关键字</td>\r\n    <td bgcolor=\\''ffffff\\''>[!--special.field--]</td>\r\n  </tr>\r\n  <tr>\r\n    <td width=16% height=25 bgcolor=ffffff>作品预览图</td>\r\n    <td bgcolor=ffffff>[!--titlepic--]</td>\r\n  </tr>\r\n  <tr>\r\n    <td width=16% height=25 bgcolor=ffffff>作者</td>\r\n    <td bgcolor=ffffff>[!--flashwriter--]</td>\r\n  </tr>\r\n  <tr>\r\n    <td width=16% height=25 bgcolor=ffffff>作者邮箱</td>\r\n    <td bgcolor=ffffff>[!--email--]</td>\r\n  </tr>\r\n  <tr>\r\n    <td width=16% height=25 bgcolor=ffffff>文件大小</td>\r\n    <td bgcolor=ffffff>[!--filesize--]</td>\r\n  </tr>\r\n  <tr>\r\n    <td width=16% height=25 bgcolor=ffffff>上传Flash(*)</td>\r\n    <td bgcolor=ffffff>[!--flashurl--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>Flash规格</td>\r\n    <td bgcolor=ffffff>[!--width--]*[!--height--]<font color=\\"#666666\\">(宽度*高度)</font></td>\r\n  </tr>\r\n  <tr>\r\n    <td width=16% height=25 bgcolor=ffffff>作品简介(*)</td>\r\n    <td bgcolor=ffffff>[!--flashsay--]</td>\r\n  </tr>\r\n</table>\r\n', '', 0, '作品名<!--field--->title<!--record-->发布时间<!--field--->newstime<!--record-->作品预览图<!--field--->titlepic<!--record-->作者<!--field--->flashwriter<!--record-->作品评价<!--field--->star<!--record-->文件大小<!--field--->filesize<!--record-->Flash地址<!--field--->flashurl<!--record-->作品简介<!--field--->flashsay<!--record-->', 'FLASH', ',title,newstime,titlepic,flashwriter,email,star,filesize,flashurl,width,height,flashsay,', ',title,newstime,titlepic,flashwriter,email,star,filesize,flashurl,width,height,flashsay,', 0, 0, 0, 0, '', 1, '', 0, '', '', '', ''),
(5, '电影系统模型', '<table width=100% align=center cellpadding=3 cellspacing=1 class=tableborder>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>影片名(*)</td>\r\n    <td bgcolor=ffffff>[!--title--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>特殊属性</td>\r\n    <td bgcolor=\\''ffffff\\''>[!--special.field--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>发布时间</td>\r\n    <td bgcolor=ffffff>[!--newstime--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>影片缩略图</td>\r\n    <td bgcolor=ffffff>[!--titlepic--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>影片类型</td>\r\n    <td bgcolor=ffffff>[!--movietype--]，推荐等级：[!--star--]，扣除点数：[!--moviefen--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>出品公司</td>\r\n    <td bgcolor=ffffff>[!--company--]，出品时间：[!--movietime--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>主演</td>\r\n    <td bgcolor=ffffff>[!--player--]，导演&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;：[!--playadmin--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>影片文件</td>\r\n    <td bgcolor=ffffff>影片格式：[!--filetype--]，影片大小：[!--filesize--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>影片属性</td>\r\n    <td bgcolor=ffffff>带宽要求：[!--playdk--]，片长：[!--playtime--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>下载地址</td>\r\n    <td bgcolor=ffffff>[!--downpath--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>在线观看播放器</td>\r\n    <td bgcolor=ffffff>[!--playerid--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>在线观看地址</td>\r\n    <td bgcolor=ffffff>[!--onlinepath--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>影片简介(*)</td>\r\n    <td bgcolor=ffffff>[!--moviesay--]</td>\r\n  </tr>\r\n</table>\r\n', '', '影片名<!--field--->title<!--record-->发布时间<!--field--->newstime<!--record-->影片缩略图<!--field--->titlepic<!--record-->影片类型<!--field--->movietype<!--record-->出品公司<!--field--->company<!--record-->出品时间<!--field--->movietime<!--record-->主演<!--field--->player<!--record-->导演<!--field--->playadmin<!--record-->影片格式<!--field--->filetype<!--record-->影片大小<!--field--->filesize<!--record-->推荐等级<!--field--->star<!--record-->带宽要求<!--field--->playdk<!--record-->片长<!--field--->playtime<!--record-->扣除点数<!--field--->moviefen<!--record-->下载地址<!--field--->downpath<!--record-->播放器<!--field--->playerid<!--record-->在线观看地址<!--field--->onlinepath<!--record-->影片简介<!--field--->moviesay<!--record-->', '影片名<!--field--->title<!--record-->特殊属性<!--field--->special.field<!--record-->发布时间<!--field--->newstime<!--record-->影片缩略图<!--field--->titlepic<!--record-->影片类型<!--field--->movietype<!--record-->出品公司<!--field--->company<!--record-->出品时间<!--field--->movietime<!--record-->主演<!--field--->player<!--record-->导演<!--field--->playadmin<!--record-->影片格式<!--field--->filetype<!--record-->影片大小<!--field--->filesize<!--record-->推荐等级<!--field--->star<!--record-->带宽要求<!--field--->playdk<!--record-->片长<!--field--->playtime<!--record-->扣除点数<!--field--->moviefen<!--record-->下载地址<!--field--->downpath<!--record-->播放器<!--field--->playerid<!--record-->在线观看地址<!--field--->onlinepath<!--record-->影片简介<!--field--->moviesay<!--record-->', '影片名<!--field--->title<!--record-->发布时间<!--field--->newstime<!--record-->影片缩略图<!--field--->titlepic<!--record-->影片类型<!--field--->movietype<!--record-->出品公司<!--field--->company<!--record-->出品时间<!--field--->movietime<!--record-->主演<!--field--->player<!--record-->导演<!--field--->playadmin<!--record-->影片格式<!--field--->filetype<!--record-->影片大小<!--field--->filesize<!--record-->推荐等级<!--field--->star<!--record-->带宽要求<!--field--->playdk<!--record-->片长<!--field--->playtime<!--record-->扣除点数<!--field--->moviefen<!--record-->下载地址<!--field--->downpath<!--record-->播放器<!--field--->playerid<!--record-->在线观看地址<!--field--->onlinepath<!--record-->影片简介<!--field--->moviesay<!--record-->', '|42|43|44|45|', ',title,movietype,company,player,playadmin,moviesay,', 5, 'movie', '', ',title,moviesay,', '<table width=100% align=center cellpadding=3 cellspacing=1 bgcolor=#DBEAF5></table>', '', 0, '影片名<!--field--->title<!--record-->发布时间<!--field--->newstime<!--record-->影片缩略图<!--field--->titlepic<!--record-->影片类型<!--field--->movietype<!--record-->出品公司<!--field--->company<!--record-->出品时间<!--field--->movietime<!--record-->主演<!--field--->player<!--record-->导演<!--field--->playadmin<!--record-->影片格式<!--field--->filetype<!--record-->影片大小<!--field--->filesize<!--record-->推荐等级<!--field--->star<!--record-->扣除点数<!--field--->moviefen<!--record-->影片简介<!--field--->moviesay<!--record-->', '电影', ',title,newstime,titlepic,movietype,company,movietime,player,playadmin,filetype,filesize,star,playdk,playtime,moviefen,downpath,playerid,onlinepath,moviesay,', ',title,newstime,titlepic,movietype,company,movietime,player,playadmin,filetype,filesize,star,playdk,playtime,moviefen,downpath,playerid,onlinepath,moviesay,', 0, 0, 0, 0, '', 1, '', 0, '', '', '', ''),
(6, '商城系统模型', '<table width=100% align=center cellpadding=3 cellspacing=1 class=tableborder>\r\n  <tr>\r\n    <td width=16% height=25 bgcolor=ffffff>商品名称(*)</td>\r\n    <td bgcolor=ffffff>[!--title--]</td>\r\n  </tr>\r\n  <tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>特殊属性</td><td bgcolor=\\''ffffff\\''>[!--special.field--]</td></tr>\r\n  <tr>\r\n    <td width=16% height=25 bgcolor=ffffff>发布时间</td>\r\n    <td bgcolor=ffffff>[!--newstime--]</td>\r\n  </tr>\r\n  <tr>\r\n    <td width=16% height=25 bgcolor=ffffff>商品编号</td>\r\n    <td bgcolor=ffffff>[!--productno--]</td>\r\n  </tr>\r\n  <tr>\r\n    <td width=16% height=25 bgcolor=ffffff>品牌</td>\r\n    <td bgcolor=ffffff>[!--pbrand--]</td>\r\n  </tr>\r\n  <tr>\r\n    <td width=16% height=25 bgcolor=ffffff>简单描述</td>\r\n    <td bgcolor=ffffff>[!--intro--]</td>\r\n  </tr>\r\n  <tr>\r\n    <td width=16% height=25 bgcolor=ffffff>计量单位</td>\r\n    <td bgcolor=ffffff>[!--unit--]</td>\r\n  </tr>\r\n  <tr>\r\n    <td width=16% height=25 bgcolor=ffffff>单位重量</td>\r\n    <td bgcolor=ffffff>[!--weight--]</td>\r\n  </tr>\r\n  <tr>\r\n    <td width=16% height=25 bgcolor=ffffff>市场价格</td>\r\n    <td bgcolor=ffffff>[!--tprice--]元</td>\r\n  </tr>\r\n  <tr>\r\n    <td width=16% height=25 bgcolor=ffffff>购买价格</td>\r\n    <td bgcolor=ffffff>[!--price--]元</td>\r\n  </tr>\r\n  <tr>\r\n    <td width=16% height=25 bgcolor=ffffff>积分购买</td>\r\n    <td bgcolor=ffffff>[!--buyfen--]点</td>\r\n  </tr>\r\n  <tr>\r\n    <td width=16% height=25 bgcolor=ffffff>库存</td>\r\n    <td bgcolor=ffffff>[!--pmaxnum--]</td>\r\n  </tr>\r\n  <tr>\r\n    <td width=16% height=25 bgcolor=ffffff>商品缩略片</td>\r\n    <td bgcolor=ffffff>[!--titlepic--]</td>\r\n  </tr>\r\n  <tr>\r\n    <td width=16% height=25 bgcolor=ffffff>商品大图</td>\r\n    <td bgcolor=ffffff>[!--productpic--]</td>\r\n  </tr>\r\n  <tr>\r\n    <td height=25 colspan=2 bgcolor=ffffff><div align=left>商品介绍(*)</div></td>\r\n  </tr>\r\n</table>\r\n<div style=\\"background-color:#D0D0D0\\">[!--newstext--]</div>', '', '商品名称<!--field--->title<!--record-->发布时间<!--field--->newstime<!--record-->商品编号<!--field--->productno<!--record-->品牌<!--field--->pbrand<!--record-->简单描述<!--field--->intro<!--record-->计量单位<!--field--->unit<!--record-->单位重量<!--field--->weight<!--record-->市场价格<!--field--->tprice<!--record-->购买价格<!--field--->price<!--record-->积分购买<!--field--->buyfen<!--record-->库存<!--field--->pmaxnum<!--record-->商品缩略片<!--field--->titlepic<!--record-->商品大图<!--field--->productpic<!--record-->商品介绍<!--field--->newstext<!--record-->', '商品名称<!--field--->title<!--record-->特殊属性<!--field--->special.field<!--record-->发布时间<!--field--->newstime<!--record-->商品编号<!--field--->productno<!--record-->品牌<!--field--->pbrand<!--record-->简单描述<!--field--->intro<!--record-->计量单位<!--field--->unit<!--record-->单位重量<!--field--->weight<!--record-->市场价格<!--field--->tprice<!--record-->购买价格<!--field--->price<!--record-->积分购买<!--field--->buyfen<!--record-->库存<!--field--->pmaxnum<!--record-->商品缩略片<!--field--->titlepic<!--record-->商品大图<!--field--->productpic<!--record-->商品介绍<!--field--->newstext<!--record-->', '商品名称<!--field--->title<!--record-->发布时间<!--field--->newstime<!--record-->商品编号<!--field--->productno<!--record-->品牌<!--field--->pbrand<!--record-->简单描述<!--field--->intro<!--record-->计量单位<!--field--->unit<!--record-->单位重量<!--field--->weight<!--record-->市场价格<!--field--->tprice<!--record-->购买价格<!--field--->price<!--record-->积分购买<!--field--->buyfen<!--record-->库存<!--field--->pmaxnum<!--record-->商品缩略片<!--field--->titlepic<!--record-->商品大图<!--field--->productpic<!--record-->商品介绍<!--field--->newstext<!--record-->销售量<!--field--->psalenum<!--record-->', '|46|47|48|49|', ',title,productno,pbrand,intro,price,newstext,', 6, 'shop', '', ',title,newstext,', '<table width=100% align=center cellpadding=3 cellspacing=1 bgcolor=#DBEAF5></table>', '', 0, '商品名称<!--field--->title<!--record-->发布时间<!--field--->newstime<!--record-->商品编号<!--field--->productno<!--record-->品牌<!--field--->pbrand<!--record-->简单描述<!--field--->intro<!--record-->计量单位<!--field--->unit<!--record-->单位重量<!--field--->weight<!--record-->市场价格<!--field--->tprice<!--record-->购买价格<!--field--->price<!--record-->积分购买<!--field--->buyfen<!--record-->库存<!--field--->pmaxnum<!--record-->商品缩略片<!--field--->titlepic<!--record-->商品大图<!--field--->productpic<!--record-->商品介绍<!--field--->newstext<!--record-->销售量<!--field--->psalenum<!--record-->', '商品', ',title,newstime,productno,pbrand,intro,unit,weight,tprice,price,buyfen,pmaxnum,titlepic,productpic,newstext,', ',title,newstime,productno,pbrand,intro,unit,weight,tprice,price,buyfen,pmaxnum,titlepic,productpic,newstext,', 0, 0, 0, 0, '', 1, '', 0, '', '', '', ''),
(7, '文章系统模型', '<table width=\\''100%\\'' align=center cellpadding=3 cellspacing=1 class=\\"tableborder\\"><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>标题(*)</td><td bgcolor=\\''ffffff\\''>[!--title--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>副标题</td><td bgcolor=\\''ffffff\\''>[!--ftitle--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>特殊属性</td><td bgcolor=\\''ffffff\\''>[!--special.field--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>发布时间</td><td bgcolor=\\''ffffff\\''>[!--newstime--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>标题图片</td><td bgcolor=\\''ffffff\\''>[!--titlepic--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>内容简介</td><td bgcolor=\\''ffffff\\''>[!--smalltext--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>作者</td><td bgcolor=\\''ffffff\\''>[!--writer--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>信息来源</td><td bgcolor=\\''ffffff\\''>[!--befrom--]</td></tr><tr><td height=25 colspan=2 bgcolor=\\''ffffff\\''><div align=left>新闻正文(*)</div></td></tr></table><div style=\\"background-color:#D0D0D0\\">[!--newstext--]</div>', '', '标题<!--field--->title<!--record-->副标题<!--field--->ftitle<!--record-->发布时间<!--field--->newstime<!--record-->标题图片<!--field--->titlepic<!--record-->内容简介<!--field--->smalltext<!--record-->作者<!--field--->writer<!--record-->信息来源<!--field--->befrom<!--record-->新闻正文<!--field--->newstext<!--record-->', '标题<!--field--->title<!--record-->副标题<!--field--->ftitle<!--record-->特殊属性<!--field--->special.field<!--record-->发布时间<!--field--->newstime<!--record-->标题图片<!--field--->titlepic<!--record-->内容简介<!--field--->smalltext<!--record-->作者<!--field--->writer<!--record-->信息来源<!--field--->befrom<!--record-->新闻正文<!--field--->newstext<!--record-->', '标题<!--field--->title<!--record-->副标题<!--field--->ftitle<!--record-->发布时间<!--field--->newstime<!--record-->标题图片<!--field--->titlepic<!--record-->内容简介<!--field--->smalltext<!--record-->作者<!--field--->writer<!--record-->信息来源<!--field--->befrom<!--record-->新闻正文<!--field--->newstext<!--record-->顶<!--field--->diggtop<!--record-->', '|55|56|57|', ',title,smalltext,', 7, 'article', '标题<!--field--->title<!--record-->副标题<!--field--->ftitle<!--record-->特殊属性<!--field--->special.field<!--record-->标题图片<!--field--->titlepic<!--record-->内容简介<!--field--->smalltext<!--record-->作者<!--field--->writer<!--record-->信息来源<!--field--->befrom<!--record-->新闻正文<!--field--->newstext<!--record-->', ',title,newstext,', '<table width=100% align=center cellpadding=3 cellspacing=1 class=\\"tableborder\\"><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>标题(*)</td><td bgcolor=\\''ffffff\\''>[!--title--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>副标题</td><td bgcolor=\\''ffffff\\''>[!--ftitle--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>关键字</td><td bgcolor=\\''ffffff\\''>[!--special.field--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>标题图片</td><td bgcolor=\\''ffffff\\''>[!--titlepic--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>内容简介</td><td bgcolor=\\''ffffff\\''>[!--smalltext--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>作者</td><td bgcolor=\\''ffffff\\''>[!--writer--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>信息来源</td><td bgcolor=\\''ffffff\\''>[!--befrom--]</td></tr><tr><td height=25 colspan=2 bgcolor=\\''ffffff\\''><div align=left>新闻正文(*)</div></td></tr></table><div style=\\"background-color:#D0D0D0\\">[!--newstext--]</div>', '', 0, '标题<!--field--->title<!--record-->副标题<!--field--->ftitle<!--record-->发布时间<!--field--->newstime<!--record-->标题图片<!--field--->titlepic<!--record-->内容简介<!--field--->smalltext<!--record-->顶<!--field--->diggtop<!--record-->', '文章', ',title,ftitle,newstime,titlepic,smalltext,writer,befrom,newstext,', ',title,ftitle,newstime,titlepic,smalltext,writer,befrom,newstext,', 0, 0, 0, 0, '', 1, '', 0, '', '', '', ''),
(8, '分类信息系统模型', '<table width=100% align=center cellpadding=3 cellspacing=1 class=\\"tableborder\\"><tr><td width=16% height=25 bgcolor=ffffff>标题</td><td bgcolor=ffffff>[!--title--]</td></tr><tr><td width=16% height=25 bgcolor=ffffff>特殊属性</td><td bgcolor=ffffff>[!--special.field--]</td></tr><tr><td width=16% height=25 bgcolor=ffffff>发布时间</td><td bgcolor=ffffff>[!--newstime--]</td></tr><tr><td width=16% height=25 bgcolor=ffffff>信息内容</td><td bgcolor=ffffff>[!--smalltext--]</td></tr><tr><td width=16% height=25 bgcolor=ffffff>图片</td><td bgcolor=ffffff>[!--titlepic--]</td></tr><tr><td width=16% height=25 bgcolor=ffffff>所在地</td><td bgcolor=ffffff>[!--myarea--]</td></tr><tr><td width=16% height=25 bgcolor=ffffff>联系邮箱</td><td bgcolor=ffffff>[!--email--]</td></tr><tr><td width=16% height=25 bgcolor=ffffff>联系方式</td><td bgcolor=ffffff>[!--mycontact--]</td></tr><tr><td width=16% height=25 bgcolor=ffffff>联系地址</td><td bgcolor=ffffff>[!--address--]</td></tr></table>', '', '标题<!--field--->title<!--record-->发布时间<!--field--->newstime<!--record-->信息内容<!--field--->smalltext<!--record-->图片<!--field--->titlepic<!--record-->所在地<!--field--->myarea<!--record-->联系邮箱<!--field--->email<!--record-->联系方式<!--field--->mycontact<!--record-->联系地址<!--field--->address<!--record-->', '标题<!--field--->title<!--record-->特殊属性<!--field--->special.field<!--record-->发布时间<!--field--->newstime<!--record-->信息内容<!--field--->smalltext<!--record-->图片<!--field--->titlepic<!--record-->所在地<!--field--->myarea<!--record-->联系邮箱<!--field--->email<!--record-->联系方式<!--field--->mycontact<!--record-->联系地址<!--field--->address<!--record-->', '标题<!--field--->title<!--record-->发布时间<!--field--->newstime<!--record-->信息内容<!--field--->smalltext<!--record-->图片<!--field--->titlepic<!--record-->所在地<!--field--->myarea<!--record-->联系邮箱<!--field--->email<!--record-->联系方式<!--field--->mycontact<!--record-->联系地址<!--field--->address<!--record-->', '|11|12|13|14|15|16|18|19|20|21|23|24|25|26|28|29|30|31|', ',title,smalltext,myarea,', 8, 'info', '标题<!--field--->title<!--record-->信息内容<!--field--->smalltext<!--record-->图片<!--field--->titlepic<!--record-->所在地<!--field--->myarea<!--record-->联系邮箱<!--field--->email<!--record-->联系方式<!--field--->mycontact<!--record-->联系地址<!--field--->address<!--record-->', ',title,smalltext,myarea,email,', '<table width=100% align=center cellpadding=3 cellspacing=1 class=\\"tableborder\\"><tr>\r\n    <td width=16% height=25 bgcolor=ffffff>信息标题(*)</td>\r\n    <td bgcolor=ffffff>[!--title--]</td></tr><tr>\r\n    <td width=16% height=25 bgcolor=ffffff>信息内容(*)</td>\r\n    <td bgcolor=ffffff>[!--smalltext--]</td></tr><tr><td width=16% height=25 bgcolor=ffffff>图片</td><td bgcolor=ffffff>[!--titlepic--]</td></tr><tr>\r\n    <td width=16% height=25 bgcolor=ffffff>所在地(*)</td>\r\n    <td bgcolor=ffffff>[!--myarea--]</td></tr><tr>\r\n    <td width=16% height=25 bgcolor=ffffff>联系邮箱(*)</td>\r\n    <td bgcolor=ffffff>[!--email--]</td></tr><tr><td width=16% height=25 bgcolor=ffffff>联系方式</td><td bgcolor=ffffff>[!--mycontact--]</td></tr><tr><td width=16% height=25 bgcolor=ffffff>联系地址</td><td bgcolor=ffffff>[!--address--]</td></tr></table>', ',myarea,', 0, '标题<!--field--->title<!--record-->发布时间<!--field--->newstime<!--record-->信息内容<!--field--->smalltext<!--record-->图片<!--field--->titlepic<!--record-->所在地<!--field--->myarea<!--record-->', '分类信息', ',title,newstime,smalltext,titlepic,myarea,email,mycontact,address,', ',title,newstime,smalltext,titlepic,myarea,email,mycontact,address,', 0, 0, 0, 0, '', 1, '', 0, '', '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `base_melvenewstemp`
--

CREATE TABLE IF NOT EXISTS `base_melvenewstemp` (
  `tempid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tempname` varchar(60) NOT NULL DEFAULT '',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  `temptext` mediumtext NOT NULL,
  `showdate` varchar(50) NOT NULL DEFAULT '',
  `modid` smallint(6) NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`tempid`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- 转存表中的数据 `base_melvenewstemp`
--

INSERT INTO `base_melvenewstemp` (`tempid`, `tempname`, `isdefault`, `temptext`, `showdate`, `modid`, `classid`) VALUES
(1, '默认新闻内容模板', 0, '<!DOCTYPE html PUBLIC \\"-//W3C//DTD XHTML 1.0 Transitional//EN\\" \\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\">\r\n<html xmlns=\\"http://www.w3.org/1999/xhtml\\">\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n<title>[!--pagetitle--] - Powered by ElvesCMS</title>\r\n<meta name=\\"keywords\\" content=\\"[!--pagekey--]\\" />\r\n<meta name=\\"description\\" content=\\"[!--pagedes--]\\" />\r\n<link href=\\"[!--news.url--]skin/default/css/style.css\\" rel=\\"stylesheet\\" type=\\"text/css\\" />\r\n<script type=\\"text/javascript\\" src=\\"[!--news.url--]skin/default/js/tabs.js\\"></script>\r\n<script type=\\"text/javascript\\" src=\\"[!--news.url--]core/data/js/ajax.js\\"></script>\r\n</head>\r\n<body class=\\"showpage news\\">\r\n[!--temp.header--]\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"10\\" cellpadding=\\"0\\">\r\n<tr valign=\\"top\\">\r\n<td class=\\"main\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"position\\">\r\n<tr>\r\n<td>您当前的位置：[!--newsnav--]</td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\" class=\\"title_info\\">\r\n<tr>\r\n<td><h1>[!--title--]</h1></td>\r\n</tr>\r\n<tr>\r\n<td class=\\"info_text\\">时间：[!--newstime--]&nbsp;&nbsp;来源：[!--befrom--]&nbsp;&nbsp;作者：[!--writer--]</td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\">\r\n<tr>\r\n<td id=\\"text\\">[!--newstext--]\r\n<p align=\\"center\\" class=\\"pageLink\\">[!--page.url--]</p></td>\r\n</tr>\r\n</table>\r\n<table border=\\"0\\" align=\\"center\\" cellpadding=\\"0\\" cellspacing=\\"8\\">\r\n<tr>\r\n<td><table border=\\"0\\" align=\\"center\\" cellpadding=\\"0\\" cellspacing=\\"0\\" class=\\"digg\\">\r\n<tr>\r\n<td class=\\"diggnum\\" id=\\"diggnum\\"><strong><script type=\\"text/javascript\\" src=\\"[!--news.url--]core/public/ViewClick/?classid=[!--classid--]&id=[!--id--]&down=5\\"></script></strong></td>\r\n</tr>\r\n<tr>\r\n<td class=\\"diggit\\"><a href=\\"JavaScript:makeRequest(\\''[!--news.url--]core/public/digg/?classid=[!--classid--]&id=[!--id--]&dotop=1&doajax=1&ajaxarea=diggnum\\'',\\''EchoReturnedText\\'',\\''GET\\'',\\''\\'');\\">来顶一下</a></td>\r\n</tr>\r\n</table></td>\r\n<td><table border=\\"0\\" align=\\"center\\" cellpadding=\\"0\\" cellspacing=\\"0\\" class=\\"digg\\">\r\n<tr>\r\n<td valign=\\"middle\\" class=\\"diggnum\\"><strong><a href=\\"[!--news.url--]\\"><img src=\\"[!--news.url--]skin/default/images/back.gif\\" alt=\\"返回首页\\" width=\\"12\\" height=\\"13\\" border=\\"0\\" align=\\"absmiddle\\" /></a></strong></td>\r\n</tr>\r\n<tr>\r\n<td class=\\"diggit\\"><a href=\\"[!--news.url--]\\">返回首页</a></td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>\r\n          </td>\r\n</tr>\r\n</table>\r\n[!--temp.pl--]\r\n</td>\r\n<td class=\\"sider\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title\\">\r\n<tr>\r\n<td><strong>推荐资讯</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"8\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td>[mgxmelvepic]\\''news\\'',2,4,128,90,1,20,20[/mgxmelvepic]\r\n</td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n<tr>\r\n<td><strong>相关文章</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><ul>\r\n[!--other.link--]\r\n</ul></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n<tr>\r\n<td><strong>栏目更新</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><ul>\r\n              <script src=''[!--news.url--]d/js/class/class[!--self.classid--]_newnews.js''></script></ul></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n<tr>\r\n<td><strong>栏目热门</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><ul>\r\n              <script src=''[!--news.url--]d/js/class/class[!--self.classid--]_hotnews.js''></script></ul></td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>\r\n[!--temp.footer--]\r\n[!--page.stats--]\r\n</body>\r\n</html>', 'Y-m-d H:i:s', 1, 0),
(2, '默认下载内容模板', 0, '<!DOCTYPE html PUBLIC \\"-//W3C//DTD XHTML 1.0 Transitional//EN\\" \\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\">\r\n<html xmlns=\\"http://www.w3.org/1999/xhtml\\">\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n<title>[!--pagetitle--] - Powered by ElvesCMS</title>\r\n<meta name=\\"Keywords\\" content=\\"[!--pagekey--]\\" />\r\n<meta name=\\"description\\" content=\\"[!--pagedes--]\\" />\r\n<link href=\\"[!--news.url--]skin/default/css/style.css\\" rel=\\"stylesheet\\" type=\\"text/css\\" />\r\n<script type=\\"text/javascript\\" src=\\"[!--news.url--]skin/default/js/tabs.js\\"></script>\r\n</head>\r\n<body class=\\"showpage\\">\r\n[!--temp.header--]\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"10\\" cellpadding=\\"0\\">\r\n	<tr valign=\\"top\\">\r\n		<td class=\\"main\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"position\\">\r\n				<tr>\r\n					<td>您当前的位置：[!--newsnav--]</td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n				<tr>\r\n					<td><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"3\\" cellspacing=\\"2\\" bgcolor=\\"#FFFFFF\\">\r\n							<tbody>\r\n								<tr>\r\n									<td width=\\"78\\" align=\\"center\\" nowrap=\\"nowrap\\" bgcolor=\\"#E1EFFB\\"><b>软件名称：</b></td>\r\n									<td colspan=\\"2\\" bgcolor=\\"#E1EFFB\\"><b>[!--title--]</b></td>\r\n								</tr>\r\n								<tr>\r\n									<td align=\\"center\\"><strong>文件类型：</strong></td>\r\n									<td width=\\"296\\">[!--filetype--]</td>\r\n									<td width=\\"180\\" rowspan=\\"9\\" align=\\"center\\"><a href=\\"[!--titlepic--]\\" target=\\"_blank\\"><img src=\\"[!--titlepic--]\\" border=\\"0\\" width=\\"128\\" /></a></td>\r\n								</tr>\r\n								<tr>\r\n									<td align=\\"center\\" bgcolor=\\"#F4F9FD\\"><strong>界面语言：</strong></td>\r\n									<td bgcolor=\\"#F4F9FD\\">[!--language--]</td>\r\n								</tr>\r\n								<tr>\r\n									<td align=\\"center\\"><strong>软件类型：</strong></td>\r\n									<td>[!--softtype--]</td>\r\n								</tr>\r\n								<tr>\r\n									<td align=\\"center\\" bgcolor=\\"#F4F9FD\\"><strong>运行环境：</strong></td>\r\n									<td bgcolor=\\"#F4F9FD\\">[!--softfj--]</td>\r\n								</tr>\r\n								<tr>\r\n									<td align=\\"center\\"><strong>授权方式：</strong></td>\r\n									<td>[!--softsq--]</td>\r\n								</tr>\r\n								<tr>\r\n									<td align=\\"center\\" bgcolor=\\"#F4F9FD\\"><strong>软件大小：</strong></td>\r\n									<td bgcolor=\\"#F4F9FD\\">[!--filesize--]</td>\r\n								</tr>\r\n								<tr>\r\n									<td align=\\"center\\"><strong>软件等级：</strong></td>\r\n									<td><img src=\\"[!--news.url--]core/data/images/[!--star--]star.gif\\" border=\\"0\\" /></td>\r\n								</tr>\r\n								<tr>\r\n									<td align=\\"center\\" bgcolor=\\"#F4F9FD\\"><strong>软件登陆：</strong></td>\r\n									<td bgcolor=\\"#F4F9FD\\">[!--username--]</td>\r\n								</tr>\r\n								<tr>\r\n									<td align=\\"center\\"><strong>作 者 ：</strong></td>\r\n									<td>[!--softwriter--]</td>\r\n								</tr>\r\n								<tr>\r\n									<td align=\\"center\\" bgcolor=\\"#F4F9FD\\"><strong>官方网址：</strong></td>\r\n									<td colspan=\\"2\\" bgcolor=\\"#F4F9FD\\"><a href=\\''[!--homepage--]\\'' target=\\"_blank\\">官方站</a></td>\r\n								</tr>\r\n								<tr>\r\n									<td align=\\"center\\"><strong>程序演示：</strong></td>\r\n									<td colspan=\\"2\\"><a href=\\''[!--demo--]\\'' target=\\"_blank\\">演示</a></td>\r\n								</tr>\r\n								<tr>\r\n									<td align=\\"center\\" bgcolor=\\"#F4F9FD\\"><strong>整理时间：</strong></td>\r\n									<td colspan=\\"2\\" bgcolor=\\"#F4F9FD\\">[!--newstime--]</td>\r\n								</tr>\r\n								<tr>\r\n									<td align=\\"center\\"><strong>软件简介：</strong></td>\r\n									<td \r\n            colspan=\\"2\\"> [!--softsay--]</td>\r\n								</tr>\r\n								<tr>\r\n									<td width=\\"78\\" align=\\"center\\" nowrap=\\"nowrap\\" bgcolor=\\"#F4F9FD\\"><b><font color=\\"#008E00\\">下载地址：</font></b></td>\r\n									<td colspan=\\"2\\" bgcolor=\\"#F4F9FD\\"> [!--downpath--]</td>\r\n								</tr>\r\n								<tr>\r\n									<td align=\\"center\\" nowrap=\\"nowrap\\"><strong>下载帮助：</strong></td>\r\n									<td colspan=\\"2\\"><img src=\\"[!--news.url--]core/data/images/gonggao.gif\\" border=\\"0\\" /><a href=\\"[!--news.url--]core/pl/?classid=[!--classid--]&amp;id=[!--id--]\\">发表评论</a> <img src=\\"[!--news.url--]core/data/images/gonggao.gif\\" border=\\"0\\" /><a href=\\"[!--news.url--]core/member/fava/add/?classid=[!--classid--]&amp;id=[!--id--]\\">加入收藏夹</a> <img src=\\"[!--news.url--]core/data/images/gonggao.gif\\" border=\\"0\\" /><a href=\\"[!--news.url--]core/public/report/?classid=[!--classid--]&amp;id=[!--id--]\\" target=\\"_blank\\">错误报告</a></td>\r\n								</tr>\r\n								<tr>\r\n									<td width=\\"78\\" align=\\"center\\" valign=\\"top\\" nowrap=\\"nowrap\\" bgcolor=\\"#F4F9FD\\"><b><font color=\\"#008E0\\">相关软件：</font></b></td>\r\n									<td colspan=\\"2\\" bgcolor=\\"#F4F9FD\\">[!--other.link--]</td>\r\n								</tr>\r\n								<tr>\r\n									<td align=\\"center\\" valign=\\"center\\" nowrap=\\"nowrap\\"><strong>下载说明：</strong></td>\r\n									<td colspan=\\"2\\">⊙推荐使用网际快车下载本站软件，使用 WinRAR v3.10 以上版本解压本站软件。<br />\r\n										⊙如果这个软件总是不能下载的请点击报告错误,谢谢合作!!<br />\r\n										⊙下载本站资源，如果服务器暂不能下载请过一段时间重试！<br />\r\n										⊙如果遇到什么问题，请到<a href=\\"http://www.webelves.org\\" target=\\"_blank\\">本站论坛</a>去咨寻，我们将在那里提供更多\r\n										、更好的资源！<br />\r\n										⊙本站提供的一些商业软件是供学习研究之用，如用于商业用途，请购买正版。 </td>\r\n								</tr>\r\n							</tbody>\r\n						</table>\r\n						</td>\r\n				</tr>\r\n			</table>\r\n			[!--temp.pl--]</td>\r\n		<td class=\\"sider\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title\\">\r\n				<tr>\r\n					<td><strong>推荐下载</strong></td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n				<tr>\r\n					<td><ul>\r\n              <script src=''[!--news.url--]d/js/class/class[!--self.classid--]_goodnews.js''></script></ul></td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n				<tr>\r\n					<td><strong>最后更新</strong></td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n				<tr>\r\n					<td><ul>\r\n              <script src=''[!--news.url--]d/js/class/class[!--self.classid--]_newnews.js''></script></ul></td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n				<tr>\r\n					<td><strong>热门点击</strong></td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n				<tr>\r\n					<td><ul>\r\n              <script src=''[!--news.url--]d/js/class/class[!--self.classid--]_hotnews.js''></script></ul></td>\r\n				</tr>\r\n			</table></td>\r\n	</tr>\r\n</table>\r\n[!--temp.footer--] [!--page.stats--]\r\n</body>\r\n</html>', 'Y-m-d', 2, 0),
(3, '默认图片内容模板(单图片)', 0, '<!DOCTYPE html PUBLIC \\"-//W3C//DTD XHTML 1.0 Transitional//EN\\" \\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\">\r\n<html xmlns=\\"http://www.w3.org/1999/xhtml\\">\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n<title>[!--pagetitle--] - Powered by ElvesCMS</title>\r\n<meta name=\\"Keywords\\" content=\\"[!--pagekey--]\\" />\r\n<meta name=\\"description\\" content=\\"[!--pagedes--]\\" />\r\n<link href=\\"[!--news.url--]skin/default/css/style.css\\" rel=\\"stylesheet\\" type=\\"text/css\\" />\r\n<script type=\\"text/javascript\\" src=\\"[!--news.url--]skin/default/js/tabs.js\\"></script>\r\n</head>\r\n<body class=\\"showpage\\">\r\n[!--temp.header--]\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"10\\" cellpadding=\\"0\\">\r\n	<tr valign=\\"top\\">\r\n		<td class=\\"main\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"position\\">\r\n				<tr>\r\n					<td>您当前的位置：[!--newsnav--]</td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n				<tr>\r\n					<td>\r\n						<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"4\\" cellspacing=\\"1\\" bgcolor=\\"#FFFFFF\\">\r\n							<tr>\r\n								<td bgcolor=\\"#E1EFFB\\">&nbsp;&nbsp;<strong>[!--title--]</strong></td>\r\n							</tr>\r\n							<tr>\r\n								<td><table width=\\"0\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"0\\" cellspacing=\\"0\\">\r\n										<tr>\r\n											<td width=\\"25\\"><img src=\\"[!--news.url--]core/data/images/mod/center_1.gif\\" width=\\"25\\" height=\\"24\\" /></td>\r\n											<td background=\\"[!--news.url--]core/data/images/mod/box_1.gif\\">&nbsp;</td>\r\n											<td width=\\"25\\"><img src=\\"[!--news.url--]core/data/images/mod/center_2.gif\\" width=\\"25\\" height=\\"24\\" /></td>\r\n										</tr>\r\n										<tr>\r\n											<td background=\\"[!--news.url--]core/data/images/mod/box_4.gif\\">&nbsp;</td>\r\n											<td bgcolor=\\"#F3F3F3\\"><a href=\\"[!--news.url--]core/ViewImg/index.html?url=[!--picurl--]\\" target=\\"_blank\\"><img border=\\"0\\" src=\\"[!--picurl--]\\" class=\\"photoresize\\" /></a></td>\r\n											<td background=\\"[!--news.url--]core/data/images/mod/box_2.gif\\">&nbsp;</td>\r\n										</tr>\r\n										<tr>\r\n											<td><img src=\\"[!--news.url--]core/data/images/mod/center_3.gif\\" width=\\"25\\" height=\\"24\\" /></td>\r\n											<td background=\\"[!--news.url--]core/data/images/mod/box_3.gif\\">&nbsp;</td>\r\n											<td><img src=\\"[!--news.url--]core/data/images/mod/center_4.gif\\" width=\\"25\\" height=\\"24\\" /></td>\r\n										</tr>\r\n								</table></td>\r\n							</tr>\r\n							<tr>\r\n								<td><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"4\\" cellspacing=\\"1\\">\r\n										<tr>\r\n											<td colspan=\\"2\\" bgcolor=\\"#F4F9FD\\">&nbsp;&nbsp;<strong>图片资料</strong></td>\r\n										</tr>\r\n										<tr>\r\n											<td width=\\"80\\">图片名称：</td>\r\n											<td width=\\"462\\"> [!--title--]</td>\r\n										</tr>\r\n										<tr>\r\n											<td bgcolor=\\"#F8F8F8\\">人气：</td>\r\n											<td bgcolor=\\"#F8F8F8\\"> [!--onclick--]</td>\r\n										</tr>\r\n										<tr>\r\n											<td>图片尺寸：</td>\r\n											<td> [!--picsize--]</td>\r\n										</tr>\r\n										<tr>\r\n											<td bgcolor=\\"#F8F8F8\\">图片大小：</td>\r\n											<td bgcolor=\\"#F8F8F8\\"> [!--filesize--]</td>\r\n										</tr>\r\n										<tr>\r\n											<td>编辑：</td>\r\n											<td> [!--username--]</td>\r\n										</tr>\r\n										<tr>\r\n											<td bgcolor=\\"#F8F8F8\\">创建日期：</td>\r\n											<td bgcolor=\\"#F8F8F8\\"> [!--newstime--]</td>\r\n										</tr>\r\n										<tr>\r\n											<td valign=\\"top\\">简介：</td>\r\n											<td valign=\\"top\\">[!--picsay--]</td>\r\n										</tr>\r\n								</table></td>\r\n							</tr>\r\n												</table>						</td>\r\n				</tr>\r\n			</table>\r\n			[!--temp.pl--]</td>\r\n		<td class=\\"sider\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title\\">\r\n				<tr>\r\n					<td><strong>图片推荐</strong></td>\r\n				</tr>\r\n			</table>\r\n				<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"8\\" cellpadding=\\"0\\" class=\\"box\\">\r\n					<tr>\r\n						<td>[mgxmelvepic]\\''selfinfo\\'',2,4,128,90,1,20,2[/mgxmelvepic] </td>\r\n					</tr>\r\n				</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n					<tr>\r\n						<td><strong>最后更新</strong></td>\r\n					</tr>\r\n				</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n					<tr>\r\n						<td><ul>\r\n              <script src=''[!--news.url--]d/js/class/class[!--self.classid--]_newnews.js''></script> </ul></td>\r\n					</tr>\r\n				</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n					<tr>\r\n						<td><strong>热门点击</strong></td>\r\n					</tr>\r\n				</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n					<tr>\r\n						<td><ul>\r\n              <script src=''[!--news.url--]d/js/class/class[!--self.classid--]_hotnews.js''></script></ul></td>\r\n					</tr>\r\n			</table></td>\r\n	</tr>\r\n</table>\r\n[!--temp.footer--] [!--page.stats--]\r\n</body>\r\n</html>', 'Y-m-d H:i:s', 3, 0),
(4, '默认图片内容模板(图片集)', 0, '<!DOCTYPE html PUBLIC \\"-//W3C//DTD XHTML 1.0 Transitional//EN\\" \\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\">\r\n<html xmlns=\\"http://www.w3.org/1999/xhtml\\">\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n<title>[!--pagetitle--] - Powered by ElvesCMS</title>\r\n<meta name=\\"Keywords\\" content=\\"[!--pagekey--]\\" />\r\n<meta name=\\"description\\" content=\\"[!--pagedes--]\\" />\r\n<link href=\\"[!--news.url--]skin/default/css/style.css\\" rel=\\"stylesheet\\" type=\\"text/css\\" />\r\n<script type=\\"text/javascript\\" src=\\"[!--news.url--]skin/default/js/tabs.js\\"></script>\r\n</head>\r\n<body class=\\"showpage\\">\r\n[!--temp.header--]\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"10\\" cellpadding=\\"0\\">\r\n	<tr valign=\\"top\\">\r\n		<td class=\\"main\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"position\\">\r\n				<tr>\r\n					<td>您当前的位置：[!--newsnav--]</td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n				<tr>\r\n					<td><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"4\\" cellspacing=\\"1\\" bgcolor=\\"#FFFFFF\\">\r\n						<tr>\r\n							<td align=\\"center\\" bgcolor=\\"#E1EFFB\\"><strong>[!--title--]</strong></td>\r\n						</tr>\r\n						<tr>\r\n							<td align=\\"center\\">[eshowphoto]11,0,0[/eshowphoto]</td>\r\n						</tr>\r\n						<tr>\r\n							<td>&nbsp;</td>\r\n						</tr>\r\n					</table></td>\r\n				</tr>\r\n			</table>\r\n			[!--temp.pl--]</td>\r\n		<td class=\\"sider\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title\\">\r\n				<tr>\r\n					<td><strong>图片推荐</strong></td>\r\n				</tr>\r\n			</table>\r\n				<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"8\\" cellpadding=\\"0\\" class=\\"box\\">\r\n					<tr>\r\n						<td>[mgxmelvepic]\\''selfinfo\\'',2,4,128,90,1,20,2[/mgxmelvepic] </td>\r\n					</tr>\r\n				</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n					<tr>\r\n						<td><strong>最后更新</strong></td>\r\n					</tr>\r\n				</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n					<tr>\r\n						<td><ul>\r\n              <script src=''[!--news.url--]d/js/class/class[!--self.classid--]_newnews.js''></script> </ul></td>\r\n					</tr>\r\n				</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n					<tr>\r\n						<td><strong>热门点击</strong></td>\r\n					</tr>\r\n				</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n					<tr>\r\n						<td><ul>\r\n              <script src=''[!--news.url--]d/js/class/class[!--self.classid--]_hotnews.js''></script></ul></td>\r\n					</tr>\r\n			</table></td>\r\n	</tr>\r\n</table>\r\n[!--temp.footer--] [!--page.stats--]\r\n</body>\r\n</html>', 'Y-m-d H:i:s', 3, 0),
(5, '默认FLASH内容模板', 0, '<!DOCTYPE html PUBLIC \\"-//W3C//DTD XHTML 1.0 Transitional//EN\\" \\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\">\r\n<html xmlns=\\"http://www.w3.org/1999/xhtml\\">\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n<title>[!--pagetitle--] - Powered by ElvesCMS</title>\r\n<meta name=\\"Keywords\\" content=\\"[!--pagekey--]\\" />\r\n<meta name=\\"description\\" content=\\"[!--pagedes--]\\" />\r\n<link href=\\"[!--news.url--]skin/default/css/style.css\\" rel=\\"stylesheet\\" type=\\"text/css\\" />\r\n<script type=\\"text/javascript\\" src=\\"[!--news.url--]skin/default/js/tabs.js\\"></script>\r\n</head>\r\n<body class=\\"showpage news\\">\r\n[!--temp.header--]\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"10\\" cellpadding=\\"0\\">\r\n	<tr valign=\\"top\\">\r\n		<td class=\\"main\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"position\\">\r\n				<tr>\r\n					<td>您当前的位置：[!--newsnav--]</td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n				<tr>\r\n					<td><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\" class=\\"title_info\\">\r\n							<tr>\r\n								<td><h1>[!--title--]</h1></td>\r\n							</tr>\r\n							<tr>\r\n								<td class=\\"info_text\\">时间：[!--newstime--]&nbsp;&nbsp;作者：[!--flashwriter--]&nbsp;&nbsp;大小：[!--filesize--]</td>\r\n							</tr>\r\n						</table>\r\n						<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\">\r\n							<tr>\r\n								<td id=\\"text\\"><p align=\\"center\\">\r\n										<object classid=\\"clsid:D27CDB6E-AE6D-11cf-96B8-444553540000\\" codebase=\\"http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0\\" name=\\"top10movie\\" width=\\"[!--width--]\\" height=\\"[!--height--]\\" id=\\"top10movie\\">\r\n											<param name=\\"movie\\" value=\\"[!--flashurl--]\\" />\r\n											<param name=\\"quality\\" value=\\"high\\" />\r\n											<param name=\\"menu\\" value=\\"false\\" />\r\n											<embed src=\\"[!--flashurl--]\\" width=\\"[!--width--]\\" height=\\"[!--height--]\\" quality=\\"high\\" pluginspage=\\"http://www.macromedia.com/go/getflashplayer\\" type=\\"application/x-shockwave-flash\\" id=\\"top10movie\\" name=\\"top10movie\\" menu=\\"false\\"></embed>\r\n										</object>\r\n									</p>\r\n									<p><strong>作品简介：</strong>[!--flashsay--]</p></td>\r\n							</tr>\r\n						</table></td>\r\n				</tr>\r\n			</table>\r\n			[!--temp.pl--]</td>\r\n		<td class=\\"sider\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title\\">\r\n				<tr>\r\n					<td><strong>推荐下载</strong></td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"8\\" cellpadding=\\"0\\" class=\\"box\\">\r\n				<tr>\r\n					<td>[mgxmelvepic]\\''selfinfo\\'',2,4,128,90,1,20,2[/mgxmelvepic] </td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n				<tr>\r\n					<td><strong>最后更新</strong></td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n				<tr>\r\n					<td><ul>\r\n              <script src=''[!--news.url--]d/js/class/class[!--self.classid--]_newnews.js''></script></ul></td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n				<tr>\r\n					<td><strong>热门点击</strong></td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n				<tr>\r\n					<td><ul>\r\n              <script src=''[!--news.url--]d/js/class/class[!--self.classid--]_hotnews.js''></script></ul></td>\r\n				</tr>\r\n			</table></td>\r\n	</tr>\r\n</table>\r\n[!--temp.footer--] [!--page.stats--]\r\n</body>\r\n</html>', 'Y-m-d H:i:s', 4, 0),
(6, '默认电影内容模板', 0, '<!DOCTYPE html PUBLIC \\"-//W3C//DTD XHTML 1.0 Transitional//EN\\" \\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\">\r\n<html xmlns=\\"http://www.w3.org/1999/xhtml\\">\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n<title>[!--pagetitle--] - Powered by ElvesCMS</title>\r\n<meta name=\\"Keywords\\" content=\\"[!--pagekey--]\\" />\r\n<meta name=\\"description\\" content=\\"[!--pagedes--]\\" />\r\n<link href=\\"[!--news.url--]skin/default/css/style.css\\" rel=\\"stylesheet\\" type=\\"text/css\\" />\r\n<script type=\\"text/javascript\\" src=\\"[!--news.url--]skin/default/js/tabs.js\\"></script>\r\n</head>\r\n<body class=\\"showpage\\">\r\n[!--temp.header--]\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"10\\" cellpadding=\\"0\\">\r\n	<tr valign=\\"top\\">\r\n		<td class=\\"main\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"position\\">\r\n				<tr>\r\n					<td>您当前的位置：[!--newsnav--]</td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n				<tr>\r\n					<td><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"3\\" cellspacing=\\"2\\">\r\n						<tr>\r\n							<td width=\\"16%\\"><div align=\\"center\\">[影片名称]</div></td>\r\n							<td width=\\"45%\\"><strong>[!--title--]</strong></td>\r\n							<td width=\\"39%\\" rowspan=\\"10\\" align=\\"center\\" valign=\\"top\\" bgcolor=\\"#F4F9FD\\" class=\\"photo\\"><a href=\\"[!--titlepic--]\\" title=\\"查看原图\\" target=\\"_blank\\"><img src=\\"[!--titlepic--]\\" width=\\"205\\" height=\\"278\\" border=\\"0\\" align=\\"top\\" /></a></td>\r\n						</tr>\r\n						<tr>\r\n							<td bgcolor=\\"#F4F9FD\\"><div align=\\"center\\">[领衔主演]</div></td>\r\n							<td bgcolor=\\"#F4F9FD\\">[!--player--]</td>\r\n						</tr>\r\n						<tr>\r\n							<td><div align=\\"center\\">[影片类型]</div></td>\r\n							<td>[!--movietype--]</td>\r\n						</tr>\r\n						<tr>\r\n							<td bgcolor=\\"#F4F9FD\\"><div align=\\"center\\">[带宽要求]</div></td>\r\n							<td bgcolor=\\"#F4F9FD\\">[!--playdk--]</td>\r\n						</tr>\r\n						<tr>\r\n							<td><div align=\\"center\\">\r\n									<p>[影片长度]</p>\r\n							</div></td>\r\n							<td>[!--playtime--]</td>\r\n						</tr>\r\n						<tr>\r\n							<td bgcolor=\\"#F4F9FD\\"><div align=\\"center\\">[文件大小]</div></td>\r\n							<td bgcolor=\\"#F4F9FD\\">[!--filesize--]</td>\r\n						</tr>\r\n						<tr>\r\n							<td><div align=\\"center\\">[推荐级别]</div></td>\r\n							<td><img src=\\"[!--news.url--]core/data/images/[!--star--]star.gif\\" border=\\"0\\" /></td>\r\n						</tr>\r\n						<tr>\r\n							<td bgcolor=\\"#F4F9FD\\"><div align=\\"center\\">[上传时间]</div></td>\r\n							<td bgcolor=\\"#F4F9FD\\">[!--movietime--]</td>\r\n						</tr>\r\n						<tr>\r\n							<td><div align=\\"center\\">[下载次数]</div></td>\r\n							<td><script src=\\"[!--news.url--]core/public/ViewClick/?classid=[!--classid--]&amp;id=[!--id--]&amp;down=1\\"></script></td>\r\n						</tr>\r\n						<tr>\r\n							<td bgcolor=\\"#F4F9FD\\"><div align=\\"center\\">[文件格式]</div></td>\r\n							<td bgcolor=\\"#F4F9FD\\">[!--filetype--]</td>\r\n						</tr>\r\n						<tr>\r\n							<td><div align=\\"center\\">[在线观看]</div></td>\r\n							<td colspan=\\"2\\">[!--onlinepath--]</td>\r\n						</tr>\r\n						<tr>\r\n							<td bgcolor=\\"#F4F9FD\\"><div align=\\"center\\">[下载影片]</div></td>\r\n							<td colspan=\\"2\\" bgcolor=\\"#F4F9FD\\">[!--downpath--]</td>\r\n						</tr>\r\n						<tr>\r\n							<td><div align=\\"center\\">[下载帮助]</div></td>\r\n							<td colspan=\\"2\\"><img src=\\"[!--news.url--]core/data/images/gonggao.gif\\" border=\\"0\\" /><a href=\\"[!--news.url--]core/pl/?classid=[!--classid--]&amp;id=[!--id--]\\">发表评论</a> <img src=\\"[!--news.url--]core/data/images/gonggao.gif\\" border=\\"0\\" /><a href=\\"[!--news.url--]core/member/fava/add/?classid=[!--classid--]&amp;id=[!--id--]\\">加入收藏夹</a> <img src=\\"[!--news.url--]core/data/images/gonggao.gif\\" border=\\"0\\" /><a href=\\"[!--news.url--]core/public/report/?classid=[!--classid--]&amp;id=[!--id--]\\" target=\\"_blank\\">错误报告</a></td>\r\n						</tr>\r\n						<tr>\r\n							<td bgcolor=\\"#F4F9FD\\"><div align=\\"center\\">[影片介绍]</div></td>\r\n							<td colspan=\\"2\\" bgcolor=\\"#F4F9FD\\">&nbsp;</td>\r\n						</tr>\r\n						<tr>\r\n							<td colspan=\\"3\\" valign=\\"top\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"4\\" style=\\"table-layout:  fixed;  word-wrap:  break-word\\">\r\n									<tr>\r\n										<td>[!--moviesay--]</td>\r\n									</tr>\r\n							</table></td>\r\n						</tr>\r\n					</table></td>\r\n				</tr>\r\n			</table>\r\n			[!--temp.pl--]</td>\r\n		<td class=\\"sider\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title\\">\r\n				<tr>\r\n					<td><strong>影视推荐</strong></td>\r\n				</tr>\r\n			</table>\r\n				<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"8\\" cellpadding=\\"0\\" class=\\"box\\">\r\n					<tr>\r\n						<td>[mgxmelvepic]\\''selfinfo\\'',2,4,128,90,1,20,2[/mgxmelvepic] </td>\r\n					</tr>\r\n				</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n					<tr>\r\n						<td><strong>最后更新</strong></td>\r\n					</tr>\r\n				</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n					<tr>\r\n						<td><ul>\r\n              <script src=''[!--news.url--]d/js/class/class[!--self.classid--]_newnews.js''></script></ul></td>\r\n					</tr>\r\n				</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n					<tr>\r\n						<td><strong>热门点击</strong></td>\r\n					</tr>\r\n				</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n					<tr>\r\n						<td><ul>\r\n              <script src=''[!--news.url--]d/js/class/class[!--self.classid--]_hotnews.js''></script></ul></td>\r\n					</tr>\r\n			</table></td>\r\n	</tr>\r\n</table>\r\n[!--temp.footer--] [!--page.stats--]\r\n</body>\r\n</html>', 'Y-m-d', 5, 0),
(7, '默认商城内容模板', 0, '<!DOCTYPE html PUBLIC \\"-//W3C//DTD XHTML 1.0 Transitional//EN\\" \\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\">\r\n<html xmlns=\\"http://www.w3.org/1999/xhtml\\">\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n<title>[!--pagetitle--] - Powered by ElvesCMS</title>\r\n<meta name=\\"Keywords\\" content=\\"[!--pagekey--]\\" />\r\n<meta name=\\"description\\" content=\\"[!--pagedes--]\\" />\r\n<link href=\\"[!--news.url--]skin/default/css/style.css\\" rel=\\"stylesheet\\" type=\\"text/css\\" />\r\n<script type=\\"text/javascript\\" src=\\"[!--news.url--]skin/default/js/tabs.js\\"></script>\r\n</head>\r\n<body class=\\"showpage\\">\r\n[!--temp.header--]\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"10\\" cellpadding=\\"0\\">\r\n	<tr valign=\\"top\\">\r\n		<td class=\\"main\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"position\\">\r\n				<tr>\r\n					<td>您当前的位置：[!--newsnav--]</td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n				<tr>\r\n					<td><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"3\\" cellspacing=\\"2\\">\r\n						<tr>\r\n							<td colspan=\\"2\\" bgcolor=\\"#F4F9FD\\">&nbsp;&nbsp;<strong>商品基本信息</strong></td>\r\n						</tr>\r\n						<tr>\r\n							<td width=\\"30%\\" align=\\"center\\" class=\\"titlepic\\"><a href=\\"[!--productpic--]\\" title=\\"预览大图\\" target=\\"_blank\\"><img height=\\"128\\" src=\\"[!--titlepic--]\\" width=\\"128\\" border=\\"0\\" /></a></td>\r\n							<td><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"3\\" cellspacing=\\"2\\">\r\n								<tr>\r\n									<td style=\\"font-size: 14px;\\"><strong>商品名称：[!--title--]</strong></td>\r\n								</tr>\r\n								<tr>\r\n									<td>市场价：<span class=\\"tprice\\">￥[!--tprice--]</span>&nbsp;优惠价：<span class=\\"price\\">￥[!--price--]</span>&nbsp; \r\n										点数: [!--buyfen--]</td>\r\n								</tr>\r\n								<tr>\r\n									<td>商品编号:[!--productno--]</td>\r\n								</tr>\r\n								<tr>\r\n									<td>商品品牌:[!--pbrand--]</td>\r\n								</tr>\r\n								<tr>\r\n									<td>计量单位:[!--unit--]</td>\r\n								</tr>\r\n								<tr>\r\n									<td>商品重量:[!--weight--]</td>\r\n								</tr>\r\n								<tr>\r\n									<td>[<a href=\\"#elve\\" onclick=\\"window.open(\\''[!--news.url--]core/ShopSys/doaction.php?melve=AddBuycar&amp;classid=[!--classid--]&amp;id=[!--id--]\\'',\\''\\'',\\''width=680,height=500,scrollbars=yes,resizable=yes\\'');\\">加入购物车</a>]&nbsp;&nbsp;&nbsp;&nbsp;[<a href=\\"[!--news.url--]core/member/fava/add/?classid=[!--classid--]&amp;id=[!--id--]\\" target=\\"_blank\\">放入收藏夹</a>]&nbsp;&nbsp;&nbsp;&nbsp;[<a href=\\"[!--news.url--]core/pl/?classid=[!--classid--]&amp;id=[!--id--]\\" target=\\"_blank\\">查看评论</a>]</td>\r\n								</tr>\r\n							</table></td>\r\n						</tr>\r\n						<tr>\r\n							<td colspan=\\"2\\" bgcolor=\\"#F4F9FD\\">&nbsp;&nbsp;<strong>商品介绍</strong></td>\r\n						</tr>\r\n						<tr>\r\n							<td colspan=\\"2\\"><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"8\\">\r\n									<tr>\r\n										<td id=\\"text\\">[!--newstext--]</td>\r\n									</tr>\r\n							</table></td>\r\n						</tr>\r\n					</table></td>\r\n				</tr>\r\n			</table>\r\n			[!--temp.pl--]</td>\r\n		<td class=\\"sider\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title\\">\r\n				<tr>\r\n					<td><strong>商品推荐</strong></td>\r\n				</tr>\r\n			</table>\r\n				<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"8\\" cellpadding=\\"0\\" class=\\"box\\">\r\n					<tr>\r\n						<td>[mgxmelvepic]\\''selfinfo\\'',2,4,128,90,1,20,2[/mgxmelvepic] </td>\r\n					</tr>\r\n				</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n					<tr>\r\n						<td><strong>最后更新</strong></td>\r\n					</tr>\r\n				</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n					<tr>\r\n						<td><ul>\r\n              <script src=''[!--news.url--]d/js/class/class[!--self.classid--]_newnews.js''></script></ul></td>\r\n					</tr>\r\n				</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n					<tr>\r\n						<td><strong>热门点击</strong></td>\r\n					</tr>\r\n				</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n					<tr>\r\n						<td><ul>\r\n              <script src=''[!--news.url--]d/js/class/class[!--self.classid--]_hotnews.js''></script></ul></td>\r\n					</tr>\r\n			</table></td>\r\n	</tr>\r\n</table>\r\n[!--temp.footer--] [!--page.stats--]\r\n</body>\r\n</html>', 'Y-m-d', 6, 0),
(8, '默认文章内容模板', 0, '<!DOCTYPE html PUBLIC \\"-//W3C//DTD XHTML 1.0 Transitional//EN\\" \\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\">\r\n<html xmlns=\\"http://www.w3.org/1999/xhtml\\">\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n<title>[!--pagetitle--] - Powered by ElvesCMS</title>\r\n<meta name=\\"keywords\\" content=\\"[!--pagekey--]\\" />\r\n<meta name=\\"description\\" content=\\"[!--pagedes--]\\" />\r\n<link href=\\"[!--news.url--]skin/default/css/style.css\\" rel=\\"stylesheet\\" type=\\"text/css\\" />\r\n<script type=\\"text/javascript\\" src=\\"[!--news.url--]skin/default/js/tabs.js\\"></script>\r\n<script type=\\"text/javascript\\" src=\\"[!--news.url--]core/data/js/ajax.js\\"></script>\r\n</head>\r\n<body class=\\"showpage news\\">\r\n[!--temp.header--]\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"10\\" cellpadding=\\"0\\">\r\n<tr valign=\\"top\\">\r\n<td class=\\"main\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"position\\">\r\n<tr>\r\n<td>您当前的位置：[!--newsnav--]</td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\" class=\\"title_info\\">\r\n<tr>\r\n<td><h1>[!--title--]</h1></td>\r\n</tr>\r\n<tr>\r\n<td class=\\"info_text\\">时间：[!--newstime--]&nbsp;&nbsp;来源：[!--befrom--]&nbsp;&nbsp;作者：[!--writer--]</td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\">\r\n<tr>\r\n<td id=\\"text\\">[!--newstext--]\r\n<p align=\\"center\\" class=\\"pageLink\\">[!--page.url--]</p></td>\r\n</tr>\r\n</table>\r\n<table border=\\"0\\" align=\\"center\\" cellpadding=\\"0\\" cellspacing=\\"8\\">\r\n<tr>\r\n<td><table border=\\"0\\" align=\\"center\\" cellpadding=\\"0\\" cellspacing=\\"0\\" class=\\"digg\\">\r\n<tr>\r\n<td class=\\"diggnum\\" id=\\"diggnum\\"><strong><script type=\\"text/javascript\\" src=\\"[!--news.url--]core/public/ViewClick/?classid=[!--classid--]&id=[!--id--]&down=5\\"></script></strong></td>\r\n</tr>\r\n<tr>\r\n<td class=\\"diggit\\"><a href=\\"JavaScript:makeRequest(\\''[!--news.url--]core/public/digg/?classid=[!--classid--]&id=[!--id--]&dotop=1&doajax=1&ajaxarea=diggnum\\'',\\''EchoReturnedText\\'',\\''GET\\'',\\''\\'');\\">来顶一下</a></td>\r\n</tr>\r\n</table></td>\r\n<td><table border=\\"0\\" align=\\"center\\" cellpadding=\\"0\\" cellspacing=\\"0\\" class=\\"digg\\">\r\n<tr>\r\n<td valign=\\"middle\\" class=\\"diggnum\\"><strong><a href=\\"[!--news.url--]\\"><img src=\\"[!--news.url--]skin/default/images/back.gif\\" alt=\\"返回首页\\" width=\\"12\\" height=\\"13\\" border=\\"0\\" align=\\"absmiddle\\" /></a></strong></td>\r\n</tr>\r\n<tr>\r\n<td class=\\"diggit\\"><a href=\\"[!--news.url--]\\">返回首页</a></td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>\r\n</td>\r\n</tr>\r\n</table>\r\n[!--temp.pl--]\r\n</td>\r\n<td class=\\"sider\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title\\">\r\n<tr>\r\n<td><strong>推荐资讯</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"8\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n          <td>[mgxmelvepic]\\''article\\'',2,4,128,90,1,20,20[/mgxmelvepic] </td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n<tr>\r\n<td><strong>相关文章</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><ul>\r\n[!--other.link--]\r\n</ul></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n<tr>\r\n<td><strong>栏目更新</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><ul>\r\n              <script src=''[!--news.url--]d/js/class/class[!--self.classid--]_newnews.js''></script></ul></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n<tr>\r\n<td><strong>栏目热门</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><ul>\r\n              <script src=''[!--news.url--]d/js/class/class[!--self.classid--]_hotnews.js''></script></ul></td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>\r\n[!--temp.footer--]\r\n[!--page.stats--]\r\n</body>\r\n</html>', 'Y-m-d H:i:s', 7, 0),
(9, '默认分类信息内容模板', 0, '<!DOCTYPE html PUBLIC \\"-//W3C//DTD XHTML 1.0 Transitional//EN\\" \\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\">\r\n<html xmlns=\\"http://www.w3.org/1999/xhtml\\">\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n<title>[!--pagetitle--] - Powered by ElvesCMS</title>\r\n<meta name=\\"Keywords\\" content=\\"[!--pagekey--]\\" />\r\n<meta name=\\"description\\" content=\\"[!--pagedes--]\\" />\r\n<link href=\\"[!--news.url--]skin/default/css/style.css\\" rel=\\"stylesheet\\" type=\\"text/css\\" />\r\n<script type=\\"text/javascript\\" src=\\"[!--news.url--]skin/default/js/tabs.js\\"></script>\r\n</head>\r\n<body class=\\"showpage info\\">\r\n[!--temp.header--]\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"10\\" cellpadding=\\"0\\">\r\n	<tr valign=\\"top\\">\r\n		<td class=\\"main\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"position\\">\r\n				<tr>\r\n					<td>您当前的位置：[!--newsnav--]</td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n				<tr>\r\n					<td><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\" class=\\"title_info\\">\r\n							<tr>\r\n								<td colspan=\\"2\\"><h1>[!--title--]</h1></td>\r\n							</tr>\r\n							<tr>\r\n								<td class=\\"info_text\\">所在地区：<a href=\\"[!--news.url--]core/action/ListInfo.php?classid=[!--classid--]&amp;ph=1&amp;myarea=[!--myarea--]\\">[!--myarea--]</a>&nbsp;&nbsp;</td>\r\n								<td align=\\"right\\" class=\\"info_text\\">时间：[!--newstime--]&nbsp;&nbsp;【<a \r\nhref=\\"[!--news.url--]core/member/fava/add/?classid=[!--classid--]&amp;id=[!--id--]\\">加入收藏夹</a>】【<a href=\\"[!--news.url--]core/public/report/?classid=[!--classid--]&amp;id=[!--id--]\\" target=\\"_blank\\">举报</a>】【<a href=\\"javascript:window.close()\\">关闭</a>】</td>\r\n							</tr>\r\n						</table>\r\n						<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\">\r\n							<tr>\r\n								<td id=\\"text\\"><p><a href=\\"[!--titlepic--]\\" title=\\"点击查看原图\\" target=\\"_blank\\"><img src=\\"[!--titlepic--]\\" hspace=\\"6\\" border=\\"0\\" align=\\"left\\" /></a>[!--smalltext--]</p></td>\r\n							</tr>\r\n						</table>\r\n						<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"4\\" cellspacing=\\"0\\" bgcolor=\\"#FFFFFF\\">\r\n							<tr>\r\n								<td bgcolor=\\"#F4F9FD\\">&nbsp;&nbsp;<strong>联系方式</strong></td>\r\n							</tr>\r\n						</table>\r\n						<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"3\\" cellspacing=\\"1\\" bgcolor=\\"#F4F9FD\\">\r\n							<tr>\r\n								<td width=\\"13%\\" bgcolor=\\"#FFFFFF\\"><div align=\\"right\\">发 布 者：</div></td>\r\n								\r\n                <td width=\\"88%\\" bgcolor=\\"#FFFFFF\\">[!--linkusername--]&nbsp;(<a href=\\"[!--news.url--]core/member/msg/AddMsg/?melve=AddMsg&amp;re=1&amp;username=[!--username--]\\" target=\\"_blank\\">发送站内信息</a>)</td>\r\n							</tr>\r\n							<tr>\r\n								<td bgcolor=\\"#FFFFFF\\"><div align=\\"right\\">联系邮箱：</div></td>\r\n								<td bgcolor=\\"#FFFFFF\\"><a href=\\"mailto:[!--email--]\\">[!--email--]</a></td>\r\n							</tr>\r\n							<tr>\r\n								<td bgcolor=\\"#FFFFFF\\"><div align=\\"right\\">联系方式：</div></td>\r\n								<td bgcolor=\\"#FFFFFF\\">[!--mycontact--]</td>\r\n							</tr>\r\n							<tr>\r\n								<td bgcolor=\\"#FFFFFF\\"><div align=\\"right\\">联系地址：</div></td>\r\n								<td bgcolor=\\"#FFFFFF\\">[!--address--]</td>\r\n							</tr>\r\n						</table>\r\n						<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"4\\" cellspacing=\\"1\\" bgcolor=\\"#FFFFFF\\">\r\n							<tr>\r\n								<td>&nbsp;</td>\r\n							</tr>\r\n							<tr>\r\n								<td bgcolor=\\"#F8F8F8\\">&nbsp;&nbsp;<strong>推荐给朋友</strong></td>\r\n							</tr>\r\n							<tr>\r\n								<td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\">\r\n										<tr>\r\n											<td width=\\"2%\\">&nbsp;</td>\r\n											<td><script>\r\nfunction sendtof(url)\r\n{\r\nwindow.clipboardData.setData(\\''Text\\'',url);\r\nalert(\\''复制地址成功，粘贴给你好友一起分享。\\'');\r\n}\r\n  			</script>\r\n												<input name=\\"textfield\\" type=\\"text\\" value=\\"http://域名[!--titleurl--]\\" size=\\"60\\" onclick=\\"sendtof(this.value);\\" /></td>\r\n										</tr>\r\n									</table></td>\r\n							</tr>\r\n						</table>\r\n						\r\n          </td>\r\n				</tr>\r\n			</table>\r\n			[!--temp.pl--]</td>\r\n		<td class=\\"sider\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title\\">\r\n				<tr>\r\n					<td><strong>地区导航</strong></td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n				<tr>\r\n					<td>[!--temp.infoarea--]</td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n				<tr>\r\n					<td><strong>分类导航</strong></td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n				<tr>\r\n					<td>[!--temp.infoclassnav--]</td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n				<tr>\r\n					<td><strong>推荐信息</strong></td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n				<tr>\r\n					<td><ul>\r\n							<script src=''[!--news.url--]d/js/class/class[!--self.classid--]_goodnews.js''></script>\r\n						</ul></td>\r\n				</tr>\r\n			</table></td>\r\n	</tr>\r\n</table>\r\n[!--temp.footer--] [!--page.stats--]\r\n</body>\r\n</html>', 'Y年m月d日 H:i:s', 8, 0);

-- --------------------------------------------------------

--
-- 表的结构 `base_melvenewstempclass`
--

CREATE TABLE IF NOT EXISTS `base_melvenewstempclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melvenotcj`
--

CREATE TABLE IF NOT EXISTS `base_melvenotcj` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `word` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `base_melvenotcj`
--

INSERT INTO `base_melvenotcj` (`id`, `word`) VALUES
(1, '<input type=hidden value=\\''欢迎使用Elves网站管理系统：www.webelves.org\\''>'),
(2, '<mgxe Elves网站管理系统,webelves.org>'),
(3, '<!--ElvesCMS,webelves.org-->'),
(4, '<table style=display=none><tr><td>\r\nElves CMS,webelves.org\r\n</td></tr></table>'),
(5, '<div style=display=none>\r\n拥有Elves一切，皆有可能。欢迎访问webelves.org\r\n</div>');

-- --------------------------------------------------------

--
-- 表的结构 `base_melvenotice`
--

CREATE TABLE IF NOT EXISTS `base_melvenotice` (
  `mid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(80) NOT NULL DEFAULT '',
  `msgtext` text NOT NULL,
  `haveread` tinyint(1) NOT NULL DEFAULT '0',
  `msgtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `to_username` varchar(30) NOT NULL DEFAULT '',
  `from_userid` int(10) unsigned NOT NULL DEFAULT '0',
  `from_username` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`mid`),
  KEY `to_username` (`to_username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melvepage`
--

CREATE TABLE IF NOT EXISTS `base_melvepage` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) NOT NULL DEFAULT '',
  `pagetext` mediumtext NOT NULL,
  `path` varchar(255) NOT NULL DEFAULT '',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `pagetitle` varchar(120) NOT NULL DEFAULT '',
  `pagekeywords` varchar(255) NOT NULL DEFAULT '',
  `pagedescription` varchar(255) NOT NULL DEFAULT '',
  `tempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melvepageclass`
--

CREATE TABLE IF NOT EXISTS `base_melvepageclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melvepagetemp`
--

CREATE TABLE IF NOT EXISTS `base_melvepagetemp` (
  `tempid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tempname` varchar(30) NOT NULL DEFAULT '',
  `temptext` mediumtext NOT NULL,
  PRIMARY KEY (`tempid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melvepayapi`
--

CREATE TABLE IF NOT EXISTS `base_melvepayapi` (
  `payid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `paytype` varchar(20) NOT NULL DEFAULT '',
  `myorder` tinyint(4) NOT NULL DEFAULT '0',
  `payfee` varchar(10) NOT NULL DEFAULT '',
  `payuser` varchar(60) NOT NULL DEFAULT '',
  `partner` varchar(60) NOT NULL DEFAULT '',
  `paykey` varchar(120) NOT NULL DEFAULT '',
  `paylogo` varchar(200) NOT NULL DEFAULT '',
  `paysay` text NOT NULL,
  `payname` varchar(120) NOT NULL DEFAULT '',
  `isclose` tinyint(1) NOT NULL DEFAULT '0',
  `payemail` varchar(120) NOT NULL DEFAULT '',
  `paymethod` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`payid`),
  UNIQUE KEY `paytype` (`paytype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `base_melvepayapi`
--

INSERT INTO `base_melvepayapi` (`payid`, `paytype`, `myorder`, `payfee`, `payuser`, `partner`, `paykey`, `paylogo`, `paysay`, `payname`, `isclose`, `payemail`, `paymethod`) VALUES
(1, 'tenpay', 1, '0', '', '', '', '', '财付通（www.tenpay.com） - 腾讯旗下在线支付平台，通过国家权威安全认证，支持各大银行网上支付。', '财付通', 0, '', 0),
(2, 'chinabank', 2, '0', '', '', '', '', '网银在线与中国工商银行、招商银行、中国建设银行、农业银行、民生银行等数十家金融机构达成协议。全面支持全国19家银行的信用卡及借记卡实现网上支付。（网址：http://www.chinabank.com.cn）', '网银在线', 0, '', 0),
(3, 'alipay', 0, '0', '', '', '', '', '支付宝网站(www.alipay.com) 是国内先进的网上支付平台。', '支付宝接口', 0, '', 1);

-- --------------------------------------------------------

--
-- 表的结构 `base_melvepayrecord`
--

CREATE TABLE IF NOT EXISTS `base_melvepayrecord` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `orderid` varchar(50) NOT NULL DEFAULT '',
  `money` varchar(20) NOT NULL DEFAULT '',
  `posttime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `paybz` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(12) NOT NULL DEFAULT '',
  `payip` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`,`orderid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melvepic`
--

CREATE TABLE IF NOT EXISTS `base_melvepic` (
  `picid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) NOT NULL DEFAULT '',
  `pic_url` varchar(200) NOT NULL DEFAULT '',
  `url` varchar(200) NOT NULL DEFAULT '',
  `pic_width` varchar(20) NOT NULL DEFAULT '',
  `pic_height` varchar(20) NOT NULL DEFAULT '',
  `open_pic` varchar(20) NOT NULL DEFAULT '',
  `border` tinyint(1) NOT NULL DEFAULT '0',
  `pictext` text NOT NULL,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`picid`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melvepicclass`
--

CREATE TABLE IF NOT EXISTS `base_melvepicclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(60) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `base_melvepicclass`
--

INSERT INTO `base_melvepicclass` (`classid`, `classname`) VALUES
(1, '默认图片信息类别');

-- --------------------------------------------------------

--
-- 表的结构 `base_melveplayer`
--

CREATE TABLE IF NOT EXISTS `base_melveplayer` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `player` varchar(30) NOT NULL DEFAULT '',
  `filename` varchar(20) NOT NULL DEFAULT '',
  `bz` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `base_melveplayer`
--

INSERT INTO `base_melveplayer` (`id`, `player`, `filename`, `bz`) VALUES
(1, 'RealPlayer', 'realplayer.php', 'RealPlayer播放器'),
(2, 'MediaPlayer', 'mediaplayer.php', 'MediaPlayer播放器'),
(3, 'FLASH', 'flasher.php', 'FLASH播放器'),
(4, 'FLV播放器', 'flver.php', 'FLV播放器');

-- --------------------------------------------------------

--
-- 表的结构 `base_melveplf`
--

CREATE TABLE IF NOT EXISTS `base_melveplf` (
  `fid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `f` varchar(30) NOT NULL DEFAULT '',
  `fname` varchar(30) NOT NULL DEFAULT '',
  `fzs` varchar(255) NOT NULL DEFAULT '',
  `ftype` varchar(30) NOT NULL DEFAULT '',
  `flen` varchar(20) NOT NULL DEFAULT '',
  `ismust` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melvepltemp`
--

CREATE TABLE IF NOT EXISTS `base_melvepltemp` (
  `tempid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tempname` varchar(60) NOT NULL DEFAULT '',
  `temptext` mediumtext NOT NULL,
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tempid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `base_melvepltemp`
--

INSERT INTO `base_melvepltemp` (`tempid`, `tempname`, `temptext`, `isdefault`) VALUES
(1, '默认评论列表模板', '<!DOCTYPE HTML PUBLIC \\"-//W3C//DTD HTML 4.01 Transitional//EN\\">\r\n<html>\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\">\r\n<title>[!--pagetitle--] - Powered by ElvesCMS</title>\r\n<meta name=\\"keywords\\" content=\\"[!--pagekey--]\\" />\r\n<meta name=\\"description\\" content=\\"[!--pagedes--]\\" />\r\n<style type=\\"text/css\\">\r\n<!--\r\nbody,Table{ color: #222; font-size: 12px; }\r\na { color: #222; text-decoration: none; }\r\na:hover { color: #f00; text-decoration: underline; }\r\nh1 { font-size:32px; font-weight: bold; }\r\nh2 { color: #1e3a9e; font-size: 25px; font-weight: bold;  }\r\n.you { color: #1f3a87; font-size: 14px; }\r\n.text { font-size: 14px; padding-left: 5px; padding-right: 5px; line-height: 20px}\r\n.re a { color: #1f3a87; }\r\n.name { color: #1f3a87; }\r\n.name a { color: #1f3a87; text-decoration: underline;}\r\n.retext { background-color: #f3f3f3; width: 100%; float: left; padding-top: 22px; padding-bottom: 22px; border-top: 1px solid #ccc; }\r\n.retext textarea { width: 535px; height: 130px; float: left; margin-left: 60px; border-top-style: inset; border-top-width: 2px; border-left-style: inset; border-left-width: 2px; }\r\n.hrLine{BORDER-BOTTOM: #807d76 1px dotted;}\r\n\r\n.ecomment {margin:0;padding:0;}\r\n.ecomment {margin-bottom:12px;overflow-x:hidden;overflow-y:hidden;padding-bottom:3px;padding-left:3px;padding-right:3px;padding-top:3px;background:#FFFFEE;padding:3px;border:solid 1px #999;}\r\n.ecommentauthor {float:left; color:#F96; font-weight:bold;}\r\n.ecommenttext {clear:left;margin:0;padding:0;}\r\n-->\r\n</style>\r\n<script src=\\"[!--news.url--]core/data/js/ajax.js\\"></script>\r\n</head>\r\n\r\n<body topmargin=\\"0\\">\r\n<table width=\\"766\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"3\\" cellspacing=\\"1\\">\r\n  <tr>\r\n    <td width=\\"210\\"><a href=\\"[!--news.url--]\\"><img src=\\"[!--news.url--]skin/default/images/logo.gif\\" border=\\"0\\" /></a></td>\r\n    <td><h1>网友评论</h1></td>\r\n    <td><div align=\\"right\\"><a href=\\"#tosaypl\\"><strong><font color=\\"#FF0000\\">我也评两句</font></strong></a></div></td>\r\n  </tr>\r\n</table>\r\n<table width=\\"766\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"3\\" cellspacing=\\"1\\" bgcolor=\\"#222\\">\r\n  <tr>\r\n    <td height=\\"2\\"></td>\r\n  </tr>\r\n</table>\r\n<table width=\\"766\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"3\\" cellspacing=\\"1\\">\r\n  <tr> \r\n    <td height=\\"42\\"> \r\n      <h2>评论：<a href=\\"[!--titleurl--]\\" target=\\"_blank\\"><font color=\\"#1e3a9e\\">[!--title--]</font></a></h2></td>\r\n    <td><div align=\\"right\\"><a href=\\"[!--titleurl--]\\" target=\\"_blank\\">查看原文</a></div></td>\r\n  </tr>\r\n</table>\r\n<hr align=\\"center\\" width=\\"766\\" size=1 class=hrline>\r\n<table width=\\"766\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"3\\" cellspacing=\\"1\\" bgcolor=\\"#384EA3\\">\r\n  <form action=\\"../melve/index.php\\" method=\\"post\\" name=\\"infopfenform\\">\r\n    <input type=\\"hidden\\" name=\\"melve\\" value=\\"AddInfoPfen\\" />\r\n    <input type=\\"hidden\\" name=\\"classid\\" value=\\"[!--classid--]\\" />\r\n    <input type=\\"hidden\\" name=\\"id\\" value=\\"[!--id--]\\" />\r\n    <tr> \r\n      <td width=\\"50%\\" height=\\"27\\" valign=\\"middle\\"><font color=\\"#FFFFFF\\">&nbsp;评分: \r\n        <input type=\\"radio\\" name=\\"fen\\" value=\\"1\\">\r\n        1分 \r\n        <input type=\\"radio\\" name=\\"fen\\" value=\\"2\\">\r\n        2分 \r\n        <input name=\\"fen\\" type=\\"radio\\" value=\\"3\\" checked>\r\n        3分 \r\n        <input type=\\"radio\\" name=\\"fen\\" value=\\"4\\">\r\n        4分 \r\n        <input type=\\"radio\\" name=\\"fen\\" value=\\"5\\">\r\n        5分 \r\n        <input type=\\"submit\\" name=\\"Submit\\" value=\\"提交\\">\r\n        </font></td>\r\n      <td width=\\"50%\\" valign=\\"middle\\"><div align=\\"center\\"><font color=\\"#FFFFFF\\">平均得分: \r\n          <strong><span id=\\"pfendiv\\">[!--pinfopfen--]</span></strong> 分，共有 <strong>[!--infopfennum--]</strong> \r\n          人参与评分</font></div></td>\r\n    </tr>\r\n  </form>\r\n</table>\r\n<table width=\\"766\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"3\\" cellspacing=\\"1\\" bgcolor=\\"#CCCCCC\\">\r\n  <tr> \r\n    <td height=\\"30\\" bgcolor=\\"#FFFFFF\\"> \r\n      <table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr> \r\n          <td width=\\"17%\\">&nbsp;&nbsp;&nbsp;网友评论</td>\r\n          <td width=\\"83%\\"><div align=\\"right\\">[!--listpage--]&nbsp;&nbsp;&nbsp;</div></td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n  <tr> \r\n    <td bgcolor=\\"#f8fcff\\"> [!--Elvesnews.listtemp--] \r\n      <table width=\\"96%\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"3\\" cellspacing=\\"1\\" style=\\"word-break:break-all; word-wrap:break-all;\\">\r\n        <tr> \r\n          <td height=\\"30\\"><span class=\\"name\\">本站网友 [!--username--]</span> <font color=\\"#666666\\">ip:[!--plip--]</font></td>\r\n          <td><div align=\\"right\\"><font color=\\"#666666\\">[!--pltime--] 发表</font></div></td>\r\n        </tr>\r\n        <tr valign=\\"top\\"> \r\n          <td height=\\"50\\" colspan=\\"2\\" class=\\"text\\">[!--pltext--]</td>\r\n        </tr>\r\n        <tr> \r\n          <td height=\\"30\\">&nbsp;</td>\r\n          <td><div align=\\"right\\" class=\\"re\\"><a href=\\"#tosaypl\\"[!--includelink--]>回复</a>&nbsp; \r\n              <a href=\\"JavaScript:makeRequest(\\''../pl/doaction.php?melve=DoForPl&plid=[!--plid--]&classid=[!--classid--]&id=[!--id--]&dopl=1&doajax=1&ajaxarea=zcpldiv[!--plid--]\\'',\\''EchoReturnedText\\'',\\''GET\\'',\\''\\'');\\">支持</a>[<span id=\\"zcpldiv[!--plid--]\\">[!--zcnum--]</span>]&nbsp; \r\n              <a href=\\"JavaScript:makeRequest(\\''../pl/doaction.php?melve=DoForPl&plid=[!--plid--]&classid=[!--classid--]&id=[!--id--]&dopl=0&doajax=1&ajaxarea=fdpldiv[!--plid--]\\'',\\''EchoReturnedText\\'',\\''GET\\'',\\''\\'');\\">反对</a>[<span id=\\"fdpldiv[!--plid--]\\">[!--fdnum--]</span>]\r\n            </div></td>\r\n        </tr>\r\n      </table>\r\n      <table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr>\r\n          <td background=\\"[!--news.url--]skin/default/images/plhrbg.gif\\"></td>\r\n        </tr>\r\n      </table>\r\n      [!--Elvesnews.listtemp--] \r\n      <div align=\\"right\\"><br />\r\n        [!--listpage--]&nbsp;&nbsp;&nbsp;<br />\r\n        <br />\r\n        <font color=\\"#FF0000\\">网友评论仅供网友表达个人看法，并不表明本站同意其观点或证实其描述&nbsp;&nbsp;&nbsp;</font><br><br> </div></td>\r\n  </tr>\r\n  <script>\r\n  function CheckPl(obj)\r\n  {\r\n  	if(obj.saytext.value==\\"\\")\r\n  	{\r\n  		alert(\\"错误，评论不能为空\\");\r\n  		obj.saytext.focus();\r\n  		return false;\r\n  	}\r\n  	return true;\r\n  }\r\n  </script>\r\n  <form action=\\"../pl/doaction.php\\" method=\\"post\\" name=\\"saypl\\" id=\\"saypl\\" onsubmit=\\"return CheckPl(document.saypl)\\">\r\n  <tr id=\\"tosaypl\\"> \r\n    <td bgcolor=\\"#f8fcff\\"> <table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr> \r\n            <td width=\\"13%\\" height=\\"28\\">&nbsp;&nbsp;&nbsp;<span class=\\"you\\">我也评两句</span></td>\r\n            <td valign=\\"middle\\">用户名： \r\n              <input name=\\"username\\" type=\\"text\\" id=\\"username\\" size=\\"12\\" value=\\"[!--lusername--]\\" />\r\n            密码： \r\n            <input name=\\"password\\" type=\\"password\\" id=\\"password\\" size=\\"12\\" value=\\"[!--lpassword--]\\" />\r\n            验证码： \r\n            <input name=\\"key\\" type=\\"text\\" id=\\"key\\" size=\\"6\\" />\r\n              <img src=\\"[!--key.url--]\\" align=\\"middle\\" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=\\"[!--news.url--]core/member/register/\\" target=\\"_blank\\">还没有注册？</a></td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n  <tr> \r\n    <td bgcolor=\\"#f8fcff\\"> <table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\" class=\\"retext\\">\r\n        <tr> \r\n          <td width=\\"78%\\"><div align=\\"center\\"> \r\n              <textarea name=\\"saytext\\" cols=\\"58\\" rows=\\"6\\" id=\\"saytext\\"></textarea>\r\n            </div></td>\r\n          <td width=\\"22%\\" rowspan=\\"2\\"> <div align=\\"center\\">\r\n              <input name=\\"nomember\\" type=\\"checkbox\\" id=\\"nomember\\" value=\\"1\\" checked=\\"checked\\" />\r\n                匿名发表<br>\r\n                <br />\r\n              <input name=\\"imageField\\" type=\\"submit\\" id=\\"imageField\\" value=\\" 提 交 \\" />\r\n            </div></td>\r\n        </tr>\r\n        <tr> \r\n          <td><div align=\\"center\\"> \r\n              <script src=\\"[!--news.url--]d/js/js/plface.js\\"></script>\r\n            </div></td>\r\n        </tr>\r\n      </table> </td>\r\n  </tr>\r\n  <input name=\\"id\\" type=\\"hidden\\" id=\\"id\\" value=\\"[!--id--]\\" />\r\n  <input name=\\"classid\\" type=\\"hidden\\" id=\\"classid\\" value=\\"[!--classid--]\\" />\r\n  <input name=\\"melve\\" type=\\"hidden\\" id=\\"melve\\" value=\\"AddPl\\" />\r\n  <input name=\\"repid\\" type=\\"hidden\\" id=\\"repid\\" value=\\"0\\" />\r\n  </form>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>', 1);

-- --------------------------------------------------------

--
-- 表的结构 `base_melvepl_1`
--

CREATE TABLE IF NOT EXISTS `base_melvepl_1` (
  `plid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pubid` bigint(16) NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `sayip` varchar(20) NOT NULL DEFAULT '',
  `saytime` int(10) unsigned NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `zcnum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `fdnum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `isgood` tinyint(1) NOT NULL DEFAULT '0',
  `saytext` text NOT NULL,
  PRIMARY KEY (`plid`),
  KEY `id` (`id`),
  KEY `classid` (`classid`),
  KEY `pubid` (`pubid`,`checked`,`plid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melvepl_set`
--

CREATE TABLE IF NOT EXISTS `base_melvepl_set` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `pltime` smallint(5) unsigned NOT NULL DEFAULT '0',
  `plsize` smallint(5) unsigned NOT NULL DEFAULT '0',
  `plincludesize` smallint(5) unsigned NOT NULL DEFAULT '0',
  `plkey_ok` tinyint(1) NOT NULL DEFAULT '0',
  `plface` text NOT NULL,
  `plfacenum` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `plgroupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `plclosewords` text NOT NULL,
  `plf` text NOT NULL,
  `plmustf` text NOT NULL,
  `pldatatbs` text NOT NULL,
  `defpltempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `pl_num` smallint(5) unsigned NOT NULL DEFAULT '0',
  `pldeftb` smallint(5) unsigned NOT NULL DEFAULT '0',
  `plurl` varchar(200) NOT NULL DEFAULT '',
  `plmaxfloor` smallint(5) unsigned NOT NULL DEFAULT '0',
  `plquotetemp` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `base_melvepl_set`
--

INSERT INTO `base_melvepl_set` (`id`, `pltime`, `plsize`, `plincludesize`, `plkey_ok`, `plface`, `plfacenum`, `plgroupid`, `plclosewords`, `plf`, `plmustf`, `pldatatbs`, `defpltempid`, `pl_num`, `pldeftb`, `plurl`, `plmaxfloor`, `plquotetemp`) VALUES
(1, 20, 500, 0, 1, '||[~e.jy~]##1.gif||[~e.kq~]##2.gif||[~e.se~]##3.gif||[~e.sq~]##4.gif||[~e.lh~]##5.gif||[~e.ka~]##6.gif||[~e.hh~]##7.gif||[~e.ys~]##8.gif||[~e.ng~]##9.gif||[~e.ot~]##10.gif||', 10, 0, '', '', '', ',1,', 1, 12, 1, '/baselve/core/pl/', 0, '<div class=\\"ecomment\\">\r\n<span class=\\"ecommentauthor\\">网友 [!--username--] 的原文：</span>\r\n<p class=\\"ecommenttext\\">[!--pltext--]</p>\r\n</div>');

-- --------------------------------------------------------

--
-- 表的结构 `base_melvepostdata`
--

CREATE TABLE IF NOT EXISTS `base_melvepostdata` (
  `postid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `rnd` varchar(32) NOT NULL DEFAULT '',
  `postdata` varchar(255) NOT NULL DEFAULT '',
  `ispath` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`postid`),
  KEY `rnd` (`rnd`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melvepostserver`
--

CREATE TABLE IF NOT EXISTS `base_melvepostserver` (
  `pid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `pname` varchar(60) NOT NULL DEFAULT '',
  `purl` varchar(255) NOT NULL DEFAULT '',
  `ptype` tinyint(1) NOT NULL DEFAULT '0',
  `ftphost` varchar(255) NOT NULL DEFAULT '',
  `ftpport` varchar(20) NOT NULL DEFAULT '',
  `ftpusername` varchar(120) NOT NULL DEFAULT '',
  `ftppassword` varchar(120) NOT NULL DEFAULT '',
  `ftppath` varchar(255) NOT NULL DEFAULT '',
  `ftpmode` tinyint(1) NOT NULL DEFAULT '0',
  `ftpssl` tinyint(1) NOT NULL DEFAULT '0',
  `ftppasv` tinyint(1) NOT NULL DEFAULT '0',
  `ftpouttime` smallint(5) unsigned NOT NULL DEFAULT '0',
  `lastposttime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pid`),
  KEY `ptype` (`ptype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `base_melvepostserver`
--

INSERT INTO `base_melvepostserver` (`pid`, `pname`, `purl`, `ptype`, `ftphost`, `ftpport`, `ftpusername`, `ftppassword`, `ftppath`, `ftpmode`, `ftpssl`, `ftppasv`, `ftpouttime`, `lastposttime`) VALUES
(1, '附件服务器', '', 1, '', '', '', '', '', 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `base_melveprinttemp`
--

CREATE TABLE IF NOT EXISTS `base_melveprinttemp` (
  `tempid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tempname` varchar(60) NOT NULL DEFAULT '',
  `temptext` mediumtext NOT NULL,
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  `showdate` varchar(50) NOT NULL DEFAULT '',
  `modid` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tempid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `base_melveprinttemp`
--

INSERT INTO `base_melveprinttemp` (`tempid`, `tempname`, `temptext`, `isdefault`, `showdate`, `modid`) VALUES
(1, '默认打印模板', '<html>\r\n<head>\r\n<meta http-equiv=\\"content-type\\" content=\\"text/html; charset=utf-8\\">\r\n<title>[!--pagetitle--] - Powered by ElvesCMS</title>\r\n<meta name=\\"keywords\\" content=\\"[!--pagekey--]\\" />\r\n<meta name=\\"description\\" content=\\"[!--pagedes--]\\" />\r\n<style>\r\nbody{font-family:宋体}td,.f12{font-size:12px}.f24 {font-size:24px;}.f14 {font-size:14px;}.title14 {font-size:14px;line-height:130%}.l17 {line-height:170%;}\r\n</style>\r\n</head>\r\n<body bgcolor=\\"#ffffff\\" topmargin=5 leftmargin=5 marginheight=5 marginwidth=5 onLoad=\\''window.print()\\''>\r\n<center>\r\n<table width=650 border=0 cellspacing=0 cellpadding=0>\r\n<tr>\r\n<td height=65 width=180><A href=\\"http://www.webelves.org/\\"><IMG src=\\"../../skin/default/images/elogo.jpg\\" alt=\\"Elves软件\\" width=\\"180\\" height=\\"65\\" border=0></A></td> \r\n<td valign=\\"bottom\\">[!--url--]</td>\r\n<td width=\\"83\\" align=\\"right\\" valign=\\"bottom\\"><a href=\\''javascript:history.back()\\''>返回</a>　<a href=\\''javascript:window.print()\\''>打印</a></td>\r\n</tr>\r\n</table>\r\n<table width=650 border=0 cellpadding=0 cellspacing=20 bgcolor=\\"#EDF0F5\\">\r\n<tr>\r\n<td>\r\n<BR>\r\n<TABLE cellSpacing=0 cellPadding=0 width=\\"100%\\" border=0>\r\n<TBODY>\r\n<TR>\r\n<TH class=\\"f24\\"><FONT color=#05006c>[!--title--]</FONT></TH></TR>\r\n<TR>\r\n<TD>\r\n<HR SIZE=1 bgcolor=\\"#d9d9d9\\">\r\n</TD>\r\n</TR>\r\n<TR>\r\n<TD align=\\"middle\\" height=20><div align=\\"center\\">[!--writer--]&nbsp;&nbsp;[!--newstime--]&nbsp;&nbsp;[!--befrom--]</div></TD>\r\n</TR>\r\n<TR>\r\n<TD height=15></TD>\r\n</TR>\r\n<TR>\r\n<TD class=\\"l17\\">\r\n<FONT class=\\"f14\\" id=\\"zoom\\"> \r\n<P>[!--newstext--]<br>\r\n<BR clear=all>\r\n</P>\r\n</FONT>\r\n</TD>\r\n</TR>\r\n<TR height=10>\r\n<TD></TD>\r\n</TR>\r\n</TBODY>\r\n</TABLE>\r\n[!--titlelink--]\r\n</td>\r\n</tr>\r\n</table>\r\n</center>\r\n</body>\r\n</html>', 1, 'Y-m-d H:i:s', 1);

-- --------------------------------------------------------

--
-- 表的结构 `base_melvepublic`
--

CREATE TABLE IF NOT EXISTS `base_melvepublic` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `newsurl` varchar(120) NOT NULL DEFAULT '',
  `sitename` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `filetype` text NOT NULL,
  `filesize` int(11) NOT NULL DEFAULT '0',
  `hotnum` tinyint(4) NOT NULL DEFAULT '0',
  `newnum` tinyint(4) NOT NULL DEFAULT '0',
  `relistnum` int(11) NOT NULL DEFAULT '0',
  `rmelvenum` int(11) NOT NULL DEFAULT '0',
  `min_keyboard` tinyint(4) NOT NULL DEFAULT '0',
  `max_keyboard` tinyint(4) NOT NULL DEFAULT '0',
  `search_num` tinyint(4) NOT NULL DEFAULT '0',
  `search_pagenum` tinyint(4) NOT NULL DEFAULT '0',
  `newslink` tinyint(4) NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `searchtime` int(11) NOT NULL DEFAULT '0',
  `loginnum` smallint(6) NOT NULL DEFAULT '0',
  `logintime` int(11) NOT NULL DEFAULT '0',
  `addnews_ok` tinyint(1) NOT NULL DEFAULT '0',
  `register_ok` tinyint(1) NOT NULL DEFAULT '0',
  `indextype` varchar(10) NOT NULL DEFAULT '',
  `goodlencord` tinyint(4) NOT NULL DEFAULT '0',
  `goodtype` varchar(10) NOT NULL DEFAULT '',
  `goodnum` tinyint(4) NOT NULL DEFAULT '0',
  `searchtype` varchar(10) NOT NULL DEFAULT '',
  `exittime` smallint(6) NOT NULL DEFAULT '0',
  `smalltextlen` smallint(6) NOT NULL DEFAULT '0',
  `defaultgroupid` smallint(6) NOT NULL DEFAULT '0',
  `fileurl` varchar(255) NOT NULL DEFAULT '',
  `phpmode` tinyint(1) NOT NULL DEFAULT '0',
  `ftphost` varchar(255) NOT NULL DEFAULT '',
  `ftpport` varchar(20) NOT NULL DEFAULT '21',
  `ftpusername` varchar(120) NOT NULL DEFAULT '',
  `ftppassword` varchar(120) NOT NULL DEFAULT '',
  `ftppath` varchar(255) NOT NULL DEFAULT '',
  `ftpmode` tinyint(1) NOT NULL DEFAULT '0',
  `install` tinyint(1) NOT NULL DEFAULT '0',
  `hotplnum` tinyint(4) NOT NULL DEFAULT '0',
  `softversion` varchar(30) NOT NULL DEFAULT '0',
  `lctime` int(11) NOT NULL DEFAULT '0',
  `dorepnum` smallint(6) NOT NULL DEFAULT '0',
  `loadtempnum` smallint(6) NOT NULL DEFAULT '0',
  `firstnum` tinyint(4) NOT NULL DEFAULT '0',
  `bakdbpath` varchar(50) NOT NULL DEFAULT '',
  `bakdbzip` varchar(50) NOT NULL DEFAULT '',
  `downpass` varchar(32) NOT NULL DEFAULT '',
  `min_userlen` tinyint(4) NOT NULL DEFAULT '0',
  `max_userlen` tinyint(4) NOT NULL DEFAULT '0',
  `min_passlen` tinyint(4) NOT NULL DEFAULT '0',
  `max_passlen` tinyint(4) NOT NULL DEFAULT '0',
  `filechmod` tinyint(1) NOT NULL DEFAULT '0',
  `tid` smallint(6) NOT NULL DEFAULT '0',
  `tbname` varchar(60) NOT NULL DEFAULT '',
  `loginkey_ok` tinyint(1) NOT NULL DEFAULT '0',
  `limittype` tinyint(1) NOT NULL DEFAULT '0',
  `redodown` smallint(6) NOT NULL DEFAULT '0',
  `candocode` tinyint(1) NOT NULL DEFAULT '0',
  `opennotcj` tinyint(1) NOT NULL DEFAULT '0',
  `reuserpagenum` int(11) NOT NULL DEFAULT '0',
  `revotejsnum` int(11) NOT NULL DEFAULT '0',
  `readjsnum` int(11) NOT NULL DEFAULT '0',
  `qaddtran` tinyint(1) NOT NULL DEFAULT '0',
  `qaddtransize` int(11) NOT NULL DEFAULT '0',
  `ebakthisdb` tinyint(1) NOT NULL DEFAULT '0',
  `delnewsnum` int(11) NOT NULL DEFAULT '0',
  `markpos` tinyint(4) NOT NULL DEFAULT '0',
  `markimg` varchar(80) NOT NULL DEFAULT '',
  `marktext` varchar(80) NOT NULL DEFAULT '',
  `markfontsize` varchar(12) NOT NULL DEFAULT '',
  `markfontcolor` varchar(12) NOT NULL DEFAULT '',
  `markfont` varchar(80) NOT NULL DEFAULT '',
  `adminloginkey` tinyint(1) NOT NULL DEFAULT '0',
  `php_outtime` int(11) NOT NULL DEFAULT '0',
  `listpagefun` varchar(36) NOT NULL DEFAULT '',
  `textpagefun` varchar(36) NOT NULL DEFAULT '',
  `adfile` varchar(30) NOT NULL DEFAULT '',
  `notsaveurl` text NOT NULL,
  `jstempid` smallint(6) NOT NULL DEFAULT '0',
  `rssnum` smallint(6) NOT NULL DEFAULT '0',
  `rsssub` smallint(6) NOT NULL DEFAULT '0',
  `savetxtf` text NOT NULL,
  `dorepdlevelnum` int(11) NOT NULL DEFAULT '0',
  `listpagelistfun` varchar(36) NOT NULL DEFAULT '',
  `listpagelistnum` smallint(6) NOT NULL DEFAULT '0',
  `infolinknum` int(11) NOT NULL DEFAULT '0',
  `searchgroupid` smallint(6) NOT NULL DEFAULT '0',
  `opencopytext` tinyint(1) NOT NULL DEFAULT '0',
  `reuserjsnum` int(11) NOT NULL DEFAULT '0',
  `reuserlistnum` int(11) NOT NULL DEFAULT '0',
  `opentitleurl` tinyint(1) NOT NULL DEFAULT '0',
  `qaddtranimgtype` text NOT NULL,
  `qaddtranfile` tinyint(1) NOT NULL DEFAULT '0',
  `qaddtranfilesize` int(11) NOT NULL DEFAULT '0',
  `qaddtranfiletype` text NOT NULL,
  `sendmailtype` tinyint(1) NOT NULL DEFAULT '0',
  `smtphost` varchar(255) NOT NULL DEFAULT '',
  `fromemail` varchar(120) NOT NULL DEFAULT '',
  `loginemail` tinyint(1) NOT NULL DEFAULT '0',
  `emailusername` varchar(60) NOT NULL DEFAULT '',
  `emailpassword` varchar(60) NOT NULL DEFAULT '',
  `smtpport` varchar(20) NOT NULL DEFAULT '',
  `emailname` varchar(120) NOT NULL DEFAULT '',
  `deftempid` smallint(6) NOT NULL DEFAULT '0',
  `feedbacktfile` tinyint(1) NOT NULL DEFAULT '0',
  `feedbackfilesize` int(11) NOT NULL DEFAULT '0',
  `feedbackfiletype` text NOT NULL,
  `searchtempvar` tinyint(1) NOT NULL DEFAULT '0',
  `showinfolevel` smallint(6) NOT NULL DEFAULT '0',
  `navfh` varchar(20) NOT NULL DEFAULT '',
  `spicwidth` smallint(6) NOT NULL DEFAULT '0',
  `spicheight` smallint(6) NOT NULL DEFAULT '0',
  `spickill` tinyint(1) NOT NULL DEFAULT '0',
  `jpgquality` tinyint(4) NOT NULL DEFAULT '0',
  `markpct` tinyint(4) NOT NULL DEFAULT '0',
  `redoview` smallint(6) NOT NULL DEFAULT '0',
  `reggetfen` smallint(6) NOT NULL DEFAULT '0',
  `regbooktime` smallint(6) NOT NULL DEFAULT '0',
  `revotetime` smallint(6) NOT NULL DEFAULT '0',
  `nreclass` text NOT NULL,
  `nreinfo` text NOT NULL,
  `nrejs` text NOT NULL,
  `fpath` tinyint(1) NOT NULL DEFAULT '0',
  `filepath` varchar(30) NOT NULL DEFAULT '',
  `openmembertranimg` tinyint(1) NOT NULL DEFAULT '0',
  `memberimgsize` int(11) NOT NULL DEFAULT '0',
  `memberimgtype` text NOT NULL,
  `openmembertranfile` tinyint(1) NOT NULL DEFAULT '0',
  `memberfilesize` int(11) NOT NULL DEFAULT '0',
  `memberfiletype` text NOT NULL,
  `nottobq` text NOT NULL,
  `defspacestyleid` smallint(6) NOT NULL DEFAULT '0',
  `canposturl` text NOT NULL,
  `openspace` tinyint(1) NOT NULL DEFAULT '0',
  `defadminstyle` smallint(6) NOT NULL DEFAULT '0',
  `realltime` smallint(6) NOT NULL DEFAULT '0',
  `closeip` text NOT NULL,
  `openip` text NOT NULL,
  `hopenip` text NOT NULL,
  `closewords` text NOT NULL,
  `closewordsf` text NOT NULL,
  `textpagelistnum` smallint(6) NOT NULL DEFAULT '0',
  `memberlistlevel` smallint(6) NOT NULL DEFAULT '0',
  `wapopen` tinyint(1) NOT NULL DEFAULT '0',
  `wapdefstyle` smallint(6) NOT NULL DEFAULT '0',
  `wapshowmid` varchar(255) NOT NULL DEFAULT '',
  `waplistnum` tinyint(4) NOT NULL DEFAULT '0',
  `wapsubtitle` tinyint(4) NOT NULL DEFAULT '0',
  `wapshowdate` varchar(50) NOT NULL DEFAULT '',
  `wapchar` tinyint(1) NOT NULL DEFAULT '0',
  `ebakcanlistdb` tinyint(1) NOT NULL DEFAULT '0',
  `paymoneytofen` int(11) NOT NULL DEFAULT '0',
  `payminmoney` int(11) NOT NULL DEFAULT '0',
  `keytog` tinyint(1) NOT NULL DEFAULT '0',
  `keyrnd` varchar(60) NOT NULL DEFAULT '',
  `keytime` int(11) NOT NULL DEFAULT '0',
  `regkey_ok` tinyint(1) NOT NULL DEFAULT '0',
  `opengetdown` tinyint(1) NOT NULL DEFAULT '0',
  `gbkey_ok` tinyint(1) NOT NULL DEFAULT '0',
  `fbkey_ok` tinyint(1) NOT NULL DEFAULT '0',
  `newaddinfotime` smallint(6) NOT NULL DEFAULT '0',
  `classnavline` smallint(6) NOT NULL DEFAULT '0',
  `classnavfh` varchar(120) NOT NULL DEFAULT '',
  `adminstyle` text NOT NULL,
  `sitekey` varchar(255) NOT NULL DEFAULT '',
  `siteintro` text NOT NULL,
  `docnewsnum` int(11) NOT NULL DEFAULT '0',
  `openschall` tinyint(1) NOT NULL DEFAULT '0',
  `schallfield` tinyint(1) NOT NULL DEFAULT '0',
  `schallminlen` tinyint(4) NOT NULL DEFAULT '0',
  `schallmaxlen` tinyint(4) NOT NULL DEFAULT '0',
  `schallnotcid` text NOT NULL,
  `schallnum` smallint(6) NOT NULL DEFAULT '0',
  `schallpagenum` smallint(6) NOT NULL DEFAULT '0',
  `dtcanbq` tinyint(1) NOT NULL DEFAULT '0',
  `dtcachetime` int(11) NOT NULL DEFAULT '0',
  `regretime` smallint(6) NOT NULL DEFAULT '0',
  `regclosewords` text NOT NULL,
  `regemailonly` tinyint(1) NOT NULL DEFAULT '0',
  `repkeynum` smallint(6) NOT NULL DEFAULT '0',
  `getpasstime` int(11) NOT NULL DEFAULT '0',
  `acttime` int(11) NOT NULL DEFAULT '0',
  `regacttype` tinyint(1) NOT NULL DEFAULT '0',
  `acttext` text NOT NULL,
  `getpasstext` text NOT NULL,
  `acttitle` varchar(120) NOT NULL DEFAULT '',
  `getpasstitle` varchar(120) NOT NULL DEFAULT '',
  `opengetpass` tinyint(1) NOT NULL DEFAULT '0',
  `hlistinfonum` int(11) NOT NULL DEFAULT '0',
  `qlistinfonum` int(11) NOT NULL DEFAULT '0',
  `dtncanbq` tinyint(1) NOT NULL DEFAULT '0',
  `dtncachetime` int(11) NOT NULL DEFAULT '0',
  `readdinfotime` smallint(6) NOT NULL DEFAULT '0',
  `qeditinfotime` int(11) NOT NULL DEFAULT '0',
  `ftpssl` tinyint(1) NOT NULL DEFAULT '0',
  `ftppasv` tinyint(1) NOT NULL DEFAULT '0',
  `ftpouttime` smallint(6) NOT NULL DEFAULT '0',
  `onclicktype` tinyint(1) NOT NULL DEFAULT '0',
  `onclickfilesize` int(11) NOT NULL DEFAULT '0',
  `onclickfiletime` int(11) NOT NULL DEFAULT '0',
  `schalltime` smallint(6) NOT NULL DEFAULT '0',
  `defprinttempid` smallint(6) NOT NULL DEFAULT '0',
  `opentags` tinyint(1) NOT NULL DEFAULT '0',
  `tagstempid` smallint(6) NOT NULL DEFAULT '0',
  `usetags` text NOT NULL,
  `chtags` text NOT NULL,
  `tagslistnum` smallint(6) NOT NULL DEFAULT '0',
  `closeqdt` tinyint(1) NOT NULL DEFAULT '0',
  `settop` tinyint(1) NOT NULL DEFAULT '0',
  `qlistinfomod` tinyint(1) NOT NULL DEFAULT '0',
  `gb_num` tinyint(4) NOT NULL DEFAULT '0',
  `member_num` tinyint(4) NOT NULL DEFAULT '0',
  `space_num` tinyint(4) NOT NULL DEFAULT '0',
  `opendoip` text NOT NULL,
  `closedoip` text NOT NULL,
  `doiptype` varchar(255) NOT NULL DEFAULT '',
  `filelday` int(11) NOT NULL DEFAULT '0',
  `infolday` int(11) NOT NULL DEFAULT '0',
  `baktempnum` tinyint(4) NOT NULL DEFAULT '0',
  `dorepkey` tinyint(1) NOT NULL DEFAULT '0',
  `dorepword` tinyint(1) NOT NULL DEFAULT '0',
  `onclickrnd` varchar(20) NOT NULL DEFAULT '',
  `indexpagedt` tinyint(1) NOT NULL DEFAULT '0',
  `keybgcolor` varchar(8) NOT NULL DEFAULT '',
  `keyfontcolor` varchar(8) NOT NULL DEFAULT '',
  `keydistcolor` varchar(8) NOT NULL DEFAULT '',
  `indexpageid` smallint(6) NOT NULL DEFAULT '0',
  `closeqdtmsg` varchar(255) NOT NULL DEFAULT '',
  `openfileserver` tinyint(1) NOT NULL DEFAULT '0',
  `closemods` varchar(255) NOT NULL DEFAULT '',
  `fieldandtop` tinyint(1) NOT NULL DEFAULT '0',
  `fieldandclosetb` text NOT NULL,
  `filedatatbs` text NOT NULL,
  `filedeftb` smallint(5) unsigned NOT NULL DEFAULT '0',
  `firsttitlename` varchar(255) NOT NULL DEFAULT '',
  `isgoodname` varchar(255) NOT NULL DEFAULT '',
  `closelisttemp` varchar(255) NOT NULL DEFAULT '',
  `chclasscolor` varchar(8) NOT NULL DEFAULT '',
  `timeclose` varchar(255) NOT NULL DEFAULT '',
  `timeclosedo` varchar(255) NOT NULL DEFAULT '',
  `ipaddinfonum` int(10) unsigned NOT NULL DEFAULT '0',
  `ipaddinfotime` smallint(5) unsigned NOT NULL DEFAULT '0',
  `rewriteinfo` varchar(120) NOT NULL DEFAULT '',
  `rewriteclass` varchar(120) NOT NULL DEFAULT '',
  `rewriteinfotype` varchar(120) NOT NULL DEFAULT '',
  `rewritetags` varchar(120) NOT NULL DEFAULT '',
  `closehmenu` varchar(80) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `base_melvepublic`
--

INSERT INTO `base_melvepublic` (`id`, `newsurl`, `sitename`, `email`, `filetype`, `filesize`, `hotnum`, `newnum`, `relistnum`, `rmelvenum`, `min_keyboard`, `max_keyboard`, `search_num`, `search_pagenum`, `newslink`, `checked`, `searchtime`, `loginnum`, `logintime`, `addnews_ok`, `register_ok`, `indextype`, `goodlencord`, `goodtype`, `goodnum`, `searchtype`, `exittime`, `smalltextlen`, `defaultgroupid`, `fileurl`, `phpmode`, `ftphost`, `ftpport`, `ftpusername`, `ftppassword`, `ftppath`, `ftpmode`, `install`, `hotplnum`, `softversion`, `lctime`, `dorepnum`, `loadtempnum`, `firstnum`, `bakdbpath`, `bakdbzip`, `downpass`, `min_userlen`, `max_userlen`, `min_passlen`, `max_passlen`, `filechmod`, `tid`, `tbname`, `loginkey_ok`, `limittype`, `redodown`, `candocode`, `opennotcj`, `reuserpagenum`, `revotejsnum`, `readjsnum`, `qaddtran`, `qaddtransize`, `ebakthisdb`, `delnewsnum`, `markpos`, `markimg`, `marktext`, `markfontsize`, `markfontcolor`, `markfont`, `adminloginkey`, `php_outtime`, `listpagefun`, `textpagefun`, `adfile`, `notsaveurl`, `jstempid`, `rssnum`, `rsssub`, `savetxtf`, `dorepdlevelnum`, `listpagelistfun`, `listpagelistnum`, `infolinknum`, `searchgroupid`, `opencopytext`, `reuserjsnum`, `reuserlistnum`, `opentitleurl`, `qaddtranimgtype`, `qaddtranfile`, `qaddtranfilesize`, `qaddtranfiletype`, `sendmailtype`, `smtphost`, `fromemail`, `loginemail`, `emailusername`, `emailpassword`, `smtpport`, `emailname`, `deftempid`, `feedbacktfile`, `feedbackfilesize`, `feedbackfiletype`, `searchtempvar`, `showinfolevel`, `navfh`, `spicwidth`, `spicheight`, `spickill`, `jpgquality`, `markpct`, `redoview`, `reggetfen`, `regbooktime`, `revotetime`, `nreclass`, `nreinfo`, `nrejs`, `fpath`, `filepath`, `openmembertranimg`, `memberimgsize`, `memberimgtype`, `openmembertranfile`, `memberfilesize`, `memberfiletype`, `nottobq`, `defspacestyleid`, `canposturl`, `openspace`, `defadminstyle`, `realltime`, `closeip`, `openip`, `hopenip`, `closewords`, `closewordsf`, `textpagelistnum`, `memberlistlevel`, `wapopen`, `wapdefstyle`, `wapshowmid`, `waplistnum`, `wapsubtitle`, `wapshowdate`, `wapchar`, `ebakcanlistdb`, `paymoneytofen`, `payminmoney`, `keytog`, `keyrnd`, `keytime`, `regkey_ok`, `opengetdown`, `gbkey_ok`, `fbkey_ok`, `newaddinfotime`, `classnavline`, `classnavfh`, `adminstyle`, `sitekey`, `siteintro`, `docnewsnum`, `openschall`, `schallfield`, `schallminlen`, `schallmaxlen`, `schallnotcid`, `schallnum`, `schallpagenum`, `dtcanbq`, `dtcachetime`, `regretime`, `regclosewords`, `regemailonly`, `repkeynum`, `getpasstime`, `acttime`, `regacttype`, `acttext`, `getpasstext`, `acttitle`, `getpasstitle`, `opengetpass`, `hlistinfonum`, `qlistinfonum`, `dtncanbq`, `dtncachetime`, `readdinfotime`, `qeditinfotime`, `ftpssl`, `ftppasv`, `ftpouttime`, `onclicktype`, `onclickfilesize`, `onclickfiletime`, `schalltime`, `defprinttempid`, `opentags`, `tagstempid`, `usetags`, `chtags`, `tagslistnum`, `closeqdt`, `settop`, `qlistinfomod`, `gb_num`, `member_num`, `space_num`, `opendoip`, `closedoip`, `doiptype`, `filelday`, `infolday`, `baktempnum`, `dorepkey`, `dorepword`, `onclickrnd`, `indexpagedt`, `keybgcolor`, `keyfontcolor`, `keydistcolor`, `indexpageid`, `closeqdtmsg`, `openfileserver`, `closemods`, `fieldandtop`, `fieldandclosetb`, `filedatatbs`, `filedeftb`, `firsttitlename`, `isgoodname`, `closelisttemp`, `chclasscolor`, `timeclose`, `timeclosedo`, `ipaddinfonum`, `ipaddinfotime`, `rewriteinfo`, `rewriteclass`, `rewriteinfotype`, `rewritetags`, `closehmenu`) VALUES
(1, '/baselve/', 'Elves网站管理系统', 'admin@webelves.org', '|.gif|.jpg|.swf|.rar|.zip|.mp3|.wmv|.txt|.doc|', 2048, 10, 10, 8, 100, 2, 20, 20, 16, 0, 0, 30, 5, 60, 0, 0, '.html', 0, '', 10, '.html', 40, 160, 1, '/baselve/d/file/', 0, '', '21', '', '', '', 0, 0, 10, '7.0,1357574410', 1222406370, 300, 50, 10, 'bdata', 'zip', 'V4CYBXGpbeWwqiAi9p8b', 3, 20, 6, 20, 1, 1, 'news', 0, 0, 1, 1, 0, 50, 100, 100, 1, 50, 1, 300, 5, '../data/mark/maskdef.gif', '', '5', '', '../data/mark/cour.ttf', 1, 0, 'sys_ShowListPage', 'sys_ShowTextPage', 'thea', '', 1, 50, 300, ',article.newstext,', 300, 'sys_ShowListMorePage', 12, 100, 0, 0, 100, 8, 1, '|.gif|.jpg|', 1, 500, '|.zip|.rar|', 1, 'smtp.163.com', 'elve@163.com', 1, 'elve', 'elve', '25', 'ElvesCMS', 0, 1, 500, '|.zip|.rar|', 1, 0, '>', 105, 118, 1, 80, 65, 24, 0, 30, 30, ',', ',', ',', 0, 'Y-m-d', 1, 50, '|.gif|.jpg|', 1, 500, '|.zip|.rar|', ',', 1, '', 0, 1, 0, '', '', '', '', '', 6, 0, 1, 1, '', 10, 30, 'm-d', 0, 0, 10, 1, 2, 'JrVyb6GFrGB6q2GZDT8DjBJJJaCBuR', 30, 0, 0, 0, 0, 0, 20, '&nbsp;|&nbsp;', ',1,2,', 'Elves网站管理系统,ElvesCMS', '　　Elves软件是一家专注于网络软件开发的科技公司，其主营产品“Elves网站管理系统(ElvesCMS)”是目前国内应用最广泛的CMS程序。通过多年的不断创新与完善，使系统集安全、强大、稳定、灵活于一身。目前ElvesCMS程序已经广泛应用在国内数十万家网站，覆盖国内上千万上网人群，并经过上千家知名网站的严格检测，被称为国内最安全、最稳定的开源CMS系统。', 300, 0, 1, 3, 20, ',,', 20, 16, 1, 43200, 0, '', 1, 0, 72, 720, 0, '[!--username--] ，\r\n这封信是由 [!--sitename--] 发送的。\r\n\r\n您收到这封邮件，是因为在我们网站的新用户注册 Email 使用\r\n了您的地址。如果您并没有访问过我们的网站，或没有进行上述操作，请忽\r\n略这封邮件。您不需要退订或进行其他进一步的操作。\r\n\r\n----------------------------------------------------------------------\r\n帐号激活说明\r\n----------------------------------------------------------------------\r\n\r\n您是我们网站的新用户，注册 Email 时使用了本地址，我们需\r\n要对您的地址有效性进行验证以避免垃圾邮件或地址被滥用。\r\n\r\n您只需点击下面的链接即可激活您的帐号：\r\n\r\n[!--pageurl--]\r\n\r\n(如果上面不是链接形式，请将地址手工粘贴到浏览器地址栏再访问)\r\n\r\n感谢您的访问，祝您使用愉快！\r\n\r\n\r\n\r\n此致\r\n\r\n[!--sitename--] 管理团队.\r\n[!--news.url--]', '[!--username--] ，\r\n这封信是由 [!--sitename--] 发送的。\r\n\r\n您收到这封邮件，是因为在我们的网站上这个邮箱地址被登记为用户邮箱，\r\n且该用户请求使用 Email 密码重置功能所致。\r\n\r\n----------------------------------------------------------------------\r\n重要！\r\n----------------------------------------------------------------------\r\n\r\n如果您没有提交密码重置的请求或不是我们网站的注册用户，请立即忽略\r\n并删除这封邮件。只在您确认需要重置密码的情况下，才继续阅读下面的\r\n内容。\r\n\r\n----------------------------------------------------------------------\r\n密码重置说明\r\n----------------------------------------------------------------------\r\n\r\n您只需在提交请求后的三天之内，通过点击下面的链接重置您的密码：\r\n\r\n[!--pageurl--]\r\n\r\n(如果上面不是链接形式，请将地址手工粘贴到浏览器地址栏再访问)\r\n\r\n上面的页面打开后，输入新的密码后提交，之后您即可使用新的密码登录\r\n网站了。您可以在用户控制面板中随时修改您的密码。\r\n\r\n\r\n\r\n此致\r\n\r\n[!--sitename--] 管理团队.\r\n[!--news.url--]', '[[!--sitename--]] Email 地址验证', '[[!--sitename--]] 取回密码说明', 0, 30, 25, 1, 43200, 0, 0, 0, 0, 0, 0, 10, 60, 0, 1, 1, 1, ',1,2,3,4,5,6,7,8,', '', 25, 0, 0, 0, 20, 20, 25, '', '', '', 0, 0, 3, 0, 0, '', 0, '', '', '', 0, '', 0, '', 0, '', ',1,', 1, '一级头条|二级头条|三级头条|四级头条|五级头条|六级头条|七级头条|八级头条|九级头条', '一级推荐|二级推荐|三级推荐|四级推荐|五级推荐|六级推荐|七级推荐|八级推荐|九级推荐', '', '#99C4E3', '', '', 0, 0, '', '', '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `base_melvepublic_update`
--

CREATE TABLE IF NOT EXISTS `base_melvepublic_update` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `lasttimeinfo` int(10) unsigned NOT NULL DEFAULT '0',
  `lasttimepl` int(10) unsigned NOT NULL DEFAULT '0',
  `lastnuminfo` int(10) unsigned NOT NULL DEFAULT '0',
  `lastnumpl` int(10) unsigned NOT NULL DEFAULT '0',
  `lastnuminfotb` text NOT NULL,
  `lastnumpltb` text NOT NULL,
  `todaytimeinfo` int(10) unsigned NOT NULL DEFAULT '0',
  `todaytimepl` int(10) unsigned NOT NULL DEFAULT '0',
  `todaynuminfo` int(10) unsigned NOT NULL DEFAULT '0',
  `yesterdaynuminfo` int(10) unsigned NOT NULL DEFAULT '0',
  `todaynumpl` int(10) unsigned NOT NULL DEFAULT '0',
  `yesterdaynumpl` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `base_melvepublic_update`
--

INSERT INTO `base_melvepublic_update` (`id`, `lasttimeinfo`, `lasttimepl`, `lastnuminfo`, `lastnumpl`, `lastnuminfotb`, `lastnumpltb`, `todaytimeinfo`, `todaytimepl`, `todaynuminfo`, `yesterdaynuminfo`, `todaynumpl`, `yesterdaynumpl`) VALUES
(1, 1355124469, 1355124476, 0, 0, '', '', 1355196792, 1355196792, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `base_melvepubtemp`
--

CREATE TABLE IF NOT EXISTS `base_melvepubtemp` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `indextemp` mediumtext NOT NULL,
  `cptemp` mediumtext NOT NULL,
  `searchtemp` mediumtext NOT NULL,
  `searchjstemp` mediumtext NOT NULL,
  `searchjstemp1` mediumtext NOT NULL,
  `otherlinktemp` mediumtext NOT NULL,
  `downsofttemp` text NOT NULL,
  `onlinemovietemp` text NOT NULL,
  `listpagetemp` text NOT NULL,
  `gbooktemp` mediumtext NOT NULL,
  `loginiframe` mediumtext NOT NULL,
  `otherlinktempsub` tinyint(4) NOT NULL DEFAULT '0',
  `otherlinktempdate` varchar(20) NOT NULL DEFAULT '',
  `loginjstemp` mediumtext NOT NULL,
  `downpagetemp` mediumtext NOT NULL,
  `pljstemp` mediumtext NOT NULL,
  `schalltemp` mediumtext NOT NULL,
  `schallsubnum` smallint(6) NOT NULL DEFAULT '0',
  `schalldate` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `base_melvepubtemp`
--

INSERT INTO `base_melvepubtemp` (`id`, `indextemp`, `cptemp`, `searchtemp`, `searchjstemp`, `searchjstemp1`, `otherlinktemp`, `downsofttemp`, `onlinemovietemp`, `listpagetemp`, `gbooktemp`, `loginiframe`, `otherlinktempsub`, `otherlinktempdate`, `loginjstemp`, `downpagetemp`, `pljstemp`, `schalltemp`, `schallsubnum`, `schalldate`) VALUES
(1, '<!DOCTYPE html PUBLIC \\"-//W3C//DTD XHTML 1.0 Transitional//EN\\" \\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\">\r\n<html xmlns=\\"http://www.w3.org/1999/xhtml\\">\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n<title>[!--pagetitle--] - Powered by ElvesCMS</title>\r\n<meta name=\\"keywords\\" content=\\"[!--pagekey--]\\" />\r\n<meta name=\\"description\\" content=\\"[!--pagedes--]\\" />\r\n<link href=\\"[!--news.url--]skin/default/css/style.css\\" rel=\\"stylesheet\\" type=\\"text/css\\" />\r\n<script type=\\"text/javascript\\" src=\\"[!--news.url--]skin/default/js/tabs.js\\"></script>\r\n</head>\r\n<body class=\\"homepage\\">\r\n[!--temp.header--]\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"10\\" cellpadding=\\"0\\">\r\n<tr valign=\\"top\\">\r\n<td class=\\"sider\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title\\">\r\n<tr>\r\n<td><strong>最后更新</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><ul>\r\n[elveinfo]0,11,28,0,3,2,0[/elveinfo]\r\n</ul>\r\n[elveinfo]0,1,18,0,5,5,1[/elveinfo]</td>\r\n</tr>\r\n</table></td>\r\n<td class=\\"content\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\">\r\n<tr>\r\n          <td> \r\n            <!-- 焦点图片，调用默认模型带标题图片的头条信息 -->\r\n            [mgxeflashpic]0,3,450,250,0,0,13,3[/mgxeflashpic] </td>\r\n</tr>\r\n</table>\r\n<!-- 头条信息调用 -->\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"8\\" cellpadding=\\"0\\" class=\\"focus\\">\r\n<tr>\r\n<td>[elveinfo]0,1,50,0,13,8,0[/elveinfo]</td>\r\n</tr>\r\n<tr>\r\n<td align=\\"center\\">[elveinfo]0,\\''1,2\\'',28,0,13,4,0[/elveinfo]</td>\r\n</tr>\r\n</table></td>\r\n<td class=\\"sider\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title\\">\r\n<tr>\r\n<td><strong>推荐资讯</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box no_doc\\">\r\n<tr>\r\n<td><ul>\r\n[elveinfo]0,5,28,0,5,3,0[/elveinfo]\r\n</ul></td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"0\\" cellspacing=\\"0\\">\r\n<tr>\r\n    <td align=\\"center\\" class=\\"banner_ad\\"><a href=\\"http://www.webelves.org/ebak2008/\\" target=\\"_blank\\" title=\\"马上免费下载\\"><img src=\\"[!--news.url--]skin/default/images/Elvesbak.gif\\" width=\\"920\\" height=\\"90\\" border=\\"0\\" /></a></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"10\\" cellpadding=\\"0\\">\r\n<tr valign=\\"top\\">\r\n<td width=\\"230\\" class=\\"sider\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title\\">\r\n<tr>\r\n<td><strong><a href=\\"[!--news.url--]info/\\">分类信息</a></strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><ul>\r\n[elveinfo]\\''info\\'',10,28,0,18,2,0[/elveinfo]\r\n</ul></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n<tr>\r\n<td><strong><a href=\\"[!--news.url--]download/\\">下载更新</a></strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box no_doc\\">\r\n<tr>\r\n<td><ul>\r\n              [elveinfo]\\''download\\'',4,26,0,18,9,0[/elveinfo] \r\n            </ul></td>\r\n</tr>\r\n</table></td>\r\n<td class=\\"content\\"><!-- tab选项卡，默认为点击变化，如需改为移动，将onmouseover改为onclick -->\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"tbtn1\\">\r\n<tr>\r\n<td class=\\"tbtncon\\"><ul><li class=\\"curr\\" id=\\"tab1_btn_0\\" onmouseover=\\"etabit(this)\\">新闻</li><li id=\\"tab1_btn_1\\" onmouseover=\\"etabit(this)\\">图片</li><li id=\\"tab1_btn_2\\" onmouseover=\\"etabit(this)\\">影视</li><li id=\\"tab1_btn_3\\" onmouseover=\\"etabit(this)\\">FLASH</li></ul></td>\r\n</tr>\r\n<tr>\r\n<td class=\\"picList\\"><div id=\\"tab1_div_0\\"> [mgxmelvepic]\\''news\\'',3,6,128,90,1,20,20[/mgxmelvepic] \r\n            </div>\r\n            <div id=\\"tab1_div_1\\" style=\\"display:none;\\"> [mgxmelvepic]\\''photo\\'',3,6,128,90,1,20,20[/mgxmelvepic] \r\n            </div>\r\n            <div id=\\"tab1_div_2\\" style=\\"display:none;\\"> [mgxmelvepic]\\''movie\\'',3,6,128,90,1,20,20[/mgxmelvepic] \r\n            </div>\r\n            <div id=\\"tab1_div_3\\" style=\\"display:none;\\"> [mgxmelvepic]\\''flash\\'',3,6,128,90,1,20,20[/mgxmelvepic] \r\n            </div></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n<tr>\r\n<td><strong>精彩专题</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\" class=\\"box\\">\r\n<tr valign=\\"top\\">\r\n<td width=\\"50%\\"><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\" class=\\"news_title\\">\r\n<tr>\r\n                <td>[elveinfo]34,1,20,0,2,8,0[/elveinfo] </td>\r\n</tr>\r\n</table>\r\n<ul>\r\n              [elveinfo]34,7,26,0,0,2,0[/elveinfo] \r\n            </ul></td>\r\n<td width=\\"50%\\"><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\" class=\\"news_title\\">\r\n<tr>\r\n                <td>[elveinfo]35,1,20,0,2,8,0[/elveinfo]</td>\r\n</tr>\r\n</table>\r\n<ul>\r\n              [elveinfo]35,7,26,0,0,2,0[/elveinfo] \r\n            </ul></td>\r\n</tr>\r\n</table></td>\r\n<td width=\\"240\\" class=\\"sider\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title\\">\r\n<tr>\r\n<td><strong>热门点击</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><ol class=\\"rank\\">\r\n[elveinfo]0,10,28,0,4,10,0[/elveinfo] \r\n</ol></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n<tr>\r\n<td><strong>热门评论文章</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><ul>\r\n[elveinfo]0,13,28,0,10,2,0[/elveinfo] \r\n</ul></td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>\r\n<!-- 友情链接 -->\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"10\\" cellpadding=\\"0\\" class=\\"links\\">\r\n<tr>\r\n<td><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\" bgcolor=\\"#E9F2FB\\" class=\\"title\\">\r\n<tr>\r\n<td><strong>友情链接</strong></td>\r\n          <td align=\\"right\\">&nbsp;</td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"10\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n          <td>\r\n            <!-- 文字链接 -->\r\n            [mgxelink]9,18,2,0,1[/mgxelink] \r\n            <hr width=\\"100%\\" size=\\"1\\" noshade=\\"noshade\\" />\r\n            <!-- logo链接 -->\r\n            [mgxelink]9,18,1,0,1[/mgxelink]</td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>', '<!DOCTYPE html PUBLIC \\"-//W3C//DTD XHTML 1.0 Transitional//EN\\" \\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\">\r\n<html xmlns=\\"http://www.w3.org/1999/xhtml\\">\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n<title>[!--pagetitle--] - Powered by ElvesCMS</title>\r\n<meta name=\\"keywords\\" content=\\"[!--pagekey--]\\" />\r\n<meta name=\\"description\\" content=\\"[!--pagedes--]\\" />\r\n<link href=\\"[!--news.url--]skin/default/css/style.css\\" rel=\\"stylesheet\\" type=\\"text/css\\" />\r\n<script type=\\"text/javascript\\" src=\\"[!--news.url--]skin/default/js/tabs.js\\"></script>\r\n</head>\r\n<body class=\\"listpage\\">\r\n[!--temp.dtheader--] \r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"10\\" cellpadding=\\"0\\">\r\n<tr valign=\\"top\\">\r\n<td class=\\"list_content\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"position\\">\r\n<tr>\r\n<td>现在的位置：[!--newsnav--]\r\n</td>\r\n</tr>\r\n</table>\r\n      <table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n        <tr> \r\n          <td width=\\"300\\" valign=\\"top\\"> \r\n		  <?php\r\n		  $lguserid=intval(getcvar(\\''mluserid\\''));//登陆用户ID\r\n		  $lgusername=RepPostVar(getcvar(\\''mlusername\\''));//登陆用户\r\n		  $lggroupid=intval(getcvar(\\''mlgroupid\\''));//会员组ID\r\n		  if($lggroupid)	//登陆会员显示菜单\r\n		  {\r\n		  ?>\r\n            <table width=\\"100%\\" border=\\"0\\" cellpadding=\\"3\\" cellspacing=\\"1\\" class=\\"tableborder\\">\r\n              <tr class=\\"header\\"> \r\n                <td height=\\"20\\" bgcolor=\\"#FFFFFF\\"> <div align=\\"center\\"><strong><a href=\\"[!--news.url--]core/member/cp/\\">功能菜单</a></strong></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\"25\\" bgcolor=\\"#FFFFFF\\" onmouseout=\\"this.style.backgroundColor=\\''#ffffff\\''\\" onmouseover=\\"this.style.backgroundColor=\\''#EBF3FC\\''\\"><div align=\\"center\\"><a href=\\"[!--news.url--]core/member/EditInfo/\\">修改资料</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\"25\\" bgcolor=\\"#FFFFFF\\" onmouseout=\\"this.style.backgroundColor=\\''#ffffff\\''\\" onmouseover=\\"this.style.backgroundColor=\\''#EBF3FC\\''\\"><div align=\\"center\\"><a href=\\"[!--news.url--]core/member/my/\\">帐号状态</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\"25\\" bgcolor=\\"#FFFFFF\\" onmouseout=\\"this.style.backgroundColor=\\''#ffffff\\''\\" onmouseover=\\"this.style.backgroundColor=\\''#EBF3FC\\''\\"><div align=\\"center\\"><a href=\\"[!--news.url--]core/member/msg/\\">站内信息</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\"25\\" bgcolor=\\"#FFFFFF\\" onmouseout=\\"this.style.backgroundColor=\\''#ffffff\\''\\" onmouseover=\\"this.style.backgroundColor=\\''#EBF3FC\\''\\"><div align=\\"center\\"><a href=\\"[!--news.url--]core/member/mspace/SetSpace.php\\">空间设置</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\"25\\" bgcolor=\\"#FFFFFF\\" onmouseout=\\"this.style.backgroundColor=\\''#ffffff\\''\\" onmouseover=\\"this.style.backgroundColor=\\''#EBF3FC\\''\\"><div align=\\"center\\"><a href=\\"[!--news.url--]core/DoInfo/\\">管理信息</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\"25\\" bgcolor=\\"#FFFFFF\\" onmouseout=\\"this.style.backgroundColor=\\''#ffffff\\''\\" onmouseover=\\"this.style.backgroundColor=\\''#EBF3FC\\''\\"><div align=\\"center\\"><a href=\\"[!--news.url--]core/member/fava/\\">收藏夹</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\"25\\" bgcolor=\\"#FFFFFF\\" onmouseout=\\"this.style.backgroundColor=\\''#ffffff\\''\\" onmouseover=\\"this.style.backgroundColor=\\''#EBF3FC\\''\\"><div align=\\"center\\"><a href=\\"[!--news.url--]core/payapi/\\">在线支付</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\"25\\" bgcolor=\\"#FFFFFF\\" onmouseout=\\"this.style.backgroundColor=\\''#ffffff\\''\\" onmouseover=\\"this.style.backgroundColor=\\''#EBF3FC\\''\\"><div align=\\"center\\"><a href=\\"[!--news.url--]core/member/friend/\\">我的好友</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\"25\\" bgcolor=\\"#FFFFFF\\" onmouseout=\\"this.style.backgroundColor=\\''#ffffff\\''\\" onmouseover=\\"this.style.backgroundColor=\\''#EBF3FC\\''\\"><div align=\\"center\\"><a href=\\"[!--news.url--]core/member/buybak/\\">消费记录</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\"25\\" bgcolor=\\"#FFFFFF\\" onmouseout=\\"this.style.backgroundColor=\\''#ffffff\\''\\" onmouseover=\\"this.style.backgroundColor=\\''#EBF3FC\\''\\"><div align=\\"center\\"><a href=\\"[!--news.url--]core/member/buygroup/\\">在线充值</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\"25\\" bgcolor=\\"#FFFFFF\\" onmouseout=\\"this.style.backgroundColor=\\''#ffffff\\''\\" onmouseover=\\"this.style.backgroundColor=\\''#EBF3FC\\''\\"><div align=\\"center\\"><a href=\\"[!--news.url--]core/member/card/\\">点卡充值</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\"25\\" bgcolor=\\"#FFFFFF\\" onmouseout=\\"this.style.backgroundColor=\\''#ffffff\\''\\" onmouseover=\\"this.style.backgroundColor=\\''#EBF3FC\\''\\"><div align=\\"center\\"><a href=\\"#elve\\" onclick=\\"window.open(\\''[!--news.url--]core/ShopSys/buycar/\\'',\\''\\'',\\''width=680,height=500,scrollbars=yes,resizable=yes\\'');\\">我的购物车</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\"25\\" bgcolor=\\"#FFFFFF\\" onmouseout=\\"this.style.backgroundColor=\\''#ffffff\\''\\" onmouseover=\\"this.style.backgroundColor=\\''#EBF3FC\\''\\"><div align=\\"center\\"><a href=\\"[!--news.url--]core/ShopSys/ListDd/\\">我的订单</a></div></td>\r\n              </tr>\r\n			  <tr> \r\n                <td height=\\"25\\" bgcolor=\\"#FFFFFF\\" onmouseout=\\"this.style.backgroundColor=\\''#ffffff\\''\\" onmouseover=\\"this.style.backgroundColor=\\''#EBF3FC\\''\\"><div align=\\"center\\"><a href=\\"[!--news.url--]core/member/login/\\">重新登陆</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\"25\\" bgcolor=\\"#FFFFFF\\" onmouseout=\\"this.style.backgroundColor=\\''#ffffff\\''\\" onmouseover=\\"this.style.backgroundColor=\\''#EBF3FC\\''\\"><div align=\\"center\\"><a href=\\"[!--news.url--]core/member/doaction.php?melve=exit\\" onclick=\\"return confirm(\\''确认要退出?\\'');\\">退出登陆</a></div></td>\r\n              </tr>\r\n            </table>\r\n			<?php\r\n			}\r\n			else	//游客显示菜单\r\n			{\r\n			?>  \r\n            <table width=\\"100%\\" border=\\"0\\" cellpadding=\\"3\\" cellspacing=\\"1\\" class=\\"tableborder\\">\r\n              <tr class=\\"header\\"> \r\n                <td height=\\"20\\" bgcolor=\\"#FFFFFF\\"> <div align=\\"center\\"><strong><a href=\\"[!--news.url--]core/member/cp/\\">功能菜单</a></strong></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\"25\\" bgcolor=\\"#FFFFFF\\" onmouseout=\\"this.style.backgroundColor=\\''#ffffff\\''\\" onmouseover=\\"this.style.backgroundColor=\\''#EBF3FC\\''\\"><div align=\\"center\\"><a href=\\"[!--news.url--]core/member/login/\\">会员登陆</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\"25\\" bgcolor=\\"#FFFFFF\\" onmouseout=\\"this.style.backgroundColor=\\''#ffffff\\''\\" onmouseover=\\"this.style.backgroundColor=\\''#EBF3FC\\''\\"><div align=\\"center\\"><a href=\\"[!--news.url--]core/member/register/\\">注册帐号</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\"25\\" bgcolor=\\"#FFFFFF\\" onmouseout=\\"this.style.backgroundColor=\\''#ffffff\\''\\" onmouseover=\\"this.style.backgroundColor=\\''#EBF3FC\\''\\"><div align=\\"center\\"><a href=\\"[!--news.url--]core/DoInfo/\\">发布投稿</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\"25\\" bgcolor=\\"#FFFFFF\\" onmouseout=\\"this.style.backgroundColor=\\''#ffffff\\''\\" onmouseover=\\"this.style.backgroundColor=\\''#EBF3FC\\''\\"><div align=\\"center\\"><a href=\\"#elve\\" onclick=\\"window.open(\\''[!--news.url--]core/ShopSys/buycar/\\'',\\''\\'',\\''width=680,height=500,scrollbars=yes,resizable=yes\\'');\\">我的购物车</a></div></td>\r\n              </tr>\r\n            </table>\r\n			<?php\r\n			}\r\n			?>\r\n			</td>\r\n          <td width=\\"85%\\" valign=\\"top\\">[!--Elvesnews.template--]</td>\r\n        </tr>\r\n      </table></td>\r\n</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>', '<!DOCTYPE html PUBLIC \\"-//W3C//DTD XHTML 1.0 Transitional//EN\\" \\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\">\r\n<html xmlns=\\"http://www.w3.org/1999/xhtml\\">\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n<title>高级搜索 - Powered by ElvesCMS</title>\r\n<link href=\\"[!--news.url--]skin/default/css/style.css\\" rel=\\"stylesheet\\" type=\\"text/css\\" />\r\n<script type=\\"text/javascript\\" src=\\"[!--news.url--]skin/default/js/tabs.js\\"></script>\r\n<script src=\\"[!--news.url--]core/data/images/setday.js\\"></script>\r\n</head>\r\n<body class=\\"listpage\\">\r\n[!--temp.dtheader--]\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"10\\" cellpadding=\\"0\\">\r\n	<tr valign=\\"top\\">\r\n		<td class=\\"list_content\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"position\\">\r\n				<tr>\r\n					<td>现在的位置：[!--url--]</td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n				<tr>\r\n					<td><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\">\r\n						<tr>\r\n							<td><form action=\\''[!--news.url--]core/search/index.php\\'' method=\\"post\\" name=\\"search_news\\" id=\\"search_news\\">\r\n									<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\">\r\n										<tr>\r\n											<td width=\\"54%\\"><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"6\\" cellspacing=\\"0\\">\r\n													<tr>\r\n														<td bgcolor=\\"#F4F4F4\\"><strong>搜索范围</strong></td>\r\n													</tr>\r\n											</table></td>\r\n											<td width=\\"46%\\"><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"6\\" cellspacing=\\"0\\">\r\n													<tr>\r\n														<td bgcolor=\\"#F4F4F4\\"><strong>搜索栏目</strong></td>\r\n													</tr>\r\n											</table></td>\r\n										</tr>\r\n										<tr>\r\n											<td valign=\\"top\\"><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"6\\" cellspacing=\\"0\\">\r\n													<tr>\r\n														<td><input type=\\"radio\\" name=\\"show\\" value=\\"title\\" checked=\\"checked\\" />\r\n															标题\r\n															<input type=\\"radio\\" name=\\"show\\" value=\\"smalltext\\" />\r\n															简介\r\n															<input type=\\"radio\\" name=\\"show\\" value=\\"newstext\\" />\r\n															内容\r\n															<input type=\\"radio\\" name=\\"show\\" value=\\"writer\\" />\r\n															作者\r\n															<input name=\\"show\\" type=\\"radio\\" value=\\"title,smalltext,newstext,writer\\" />\r\n															不限</td>\r\n													</tr>\r\n												</table>\r\n													<br />\r\n													<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"6\\" cellspacing=\\"0\\">\r\n														<tr bgcolor=\\"#F4F4F4\\">\r\n															<td><strong>时间限制</strong><font color=\\"#666666\\">(0000-00-00为不限制)</font></td>\r\n														</tr>\r\n														<tr>\r\n															<td height=\\"30\\" valign=\\"top\\">从\r\n																<input name=\\"starttime\\" type=\\"text\\" value=\\"0000-00-00\\" size=\\"12\\" onclick=\\"setday(this)\\" />\r\n																到\r\n																<input name=\\"endtime\\" type=\\"text\\" value=\\"0000-00-00\\" size=\\"12\\" onclick=\\"setday(this)\\" />\r\n																之间的数据</td>\r\n														</tr>\r\n														<tr>\r\n															<td bgcolor=\\"#F4F4F4\\"><strong>价格限制</strong><font color=\\"#666666\\">(商城模型中有效,0为不限制)</font></td>\r\n														</tr>\r\n														<tr>\r\n															<td>从\r\n																<input name=\\"startprice\\" type=\\"text\\" id=\\"startprice\\" value=\\"0\\" size=\\"6\\" />\r\n																到\r\n																<input name=\\"endprice\\" type=\\"text\\" id=\\"endprice\\" value=\\"0\\" size=\\"6\\" />\r\n																元之间</td>\r\n														</tr>\r\n												</table></td>\r\n											<td valign=\\"top\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"6\\" cellpadding=\\"0\\">\r\n													<tr>\r\n														<td><select name=\\"classid\\" size=\\"8\\" id=\\"select2\\" style=\\"width: 100%;height:112px\\">\r\n																<option value=\\"0\\" selected=\\"selected\\">所有栏目</option>\r\n															[!--class--]\r\n          \r\n														</select></td>\r\n													</tr>\r\n												</table>\r\n													<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"6\\" cellspacing=\\"0\\">\r\n														<tr>\r\n															<td bgcolor=\\"#F4F4F4\\"><strong>结果显示</strong></td>\r\n														</tr>\r\n														<tr>\r\n															<td height=\\"30\\"><select name=\\"orderby\\" id=\\"select4\\">\r\n																	<option value=\\"\\">按发布日期</option>\r\n																	<option value=\\"id\\">信息ID</option>\r\n																	<option value=\\"plnum\\">评论数</option>\r\n																	<option value=\\"onclick\\">人气</option>\r\n																	<option value=\\"totaldown\\">下载数</option>\r\n																</select>\r\n																	<select name=\\"myorder\\" id=\\"select5\\">\r\n																		<option value=\\"0\\">倒序排列</option>\r\n																		<option value=\\"1\\">顺序排列</option>\r\n																	</select>\r\n															</td>\r\n														</tr>\r\n												</table></td>\r\n										</tr>\r\n									</table>\r\n								<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"4\\" cellspacing=\\"0\\">\r\n										<tr>\r\n											<td>关键字：\r\n												<input name=\\"keyboard\\" type=\\"text\\" id=\\"keyboard2\\" size=\\"60\\" />\r\n													<input type=\\"submit\\" name=\\"Submit22\\" value=\\"搜索\\" />\r\n											</td>\r\n										</tr>\r\n									</table>\r\n							</form></td>\r\n						</tr>\r\n					</table></td>\r\n				</tr>\r\n			</table></td>\r\n	</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>', '<table border=0 cellpadding=3 cellspacing=1><form name=search_js1 method=post action=''[!--news.url--]core/search/index.php'' onsubmit=''return search_check(document.search_js1);''><tr><td><div align=center>搜索: <select name=show><option value=title>标题</option><option value=smalltext>简介</option><option value=newstext>内容</option><option value=writer>作者</option><option value=title,smalltext,newstext,writer>搜索全部</option></select><select name=classid><option value=0>所有栏目</option>[!--class--]</select><input name=keyboard type=text size=13><input type=submit name=Submit value=搜索></div></td></tr></form></table>', '<table width=99% border=0 cellpadding=3 cellspacing=1><form name=search_js2 method=post action=''[!--news.url--]core/search/index.php'' onsubmit=''return search_check(document.search_js2);''><tr><td height=25><div align=center>关键字: <input name=keyboard type=text size=13></div></td></tr><tr><td><div align=center>范围: <select name=show><option value=title>标题</option><option value=smalltext>简介</option><option value=newstext>内容</option><option value=writer>作者</option><option value=title,smalltext,newstext,writer>搜索全部</option></select></div></td></tr><tr><td><div align=center>栏目:<select name=classid><option value=0>所有栏目</option>[!--class--]</select></div></td></tr><tr><td><div align=center><input type=submit name=Submit value=搜索></div></td></tr></form></table>', '[!--Elvesnews.listtemp--]<li><a href="[!--titleurl--]" title="[!--oldtitle--]">[!--title--]</a></li>[!--Elvesnews.listtemp--]', '[ <a href=\\"#elve\\" onclick=\\"window.open(\\''[!--down.url--]\\'',\\''\\'',\\''width=300,height=300,resizable=yes\\'');\\">[!--down.name--]</a> ]', '[ <a href=\\"#elve\\" onclick=\\"window.open(\\''[!--down.url--]\\'',\\''\\'',\\''width=300,height=300,resizable=yes\\'');\\">[!--down.name--]</a> ]', '页次：[!--thispage--]/[!--pagenum--]&nbsp;每页[!--lencord--]&nbsp;总数[!--num--]&nbsp;&nbsp;&nbsp;&nbsp;[!--pagelink--]&nbsp;&nbsp;&nbsp;&nbsp;转到:[!--options--]', '<!DOCTYPE html PUBLIC \\"-//W3C//DTD XHTML 1.0 Transitional//EN\\" \\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\">\r\n<html xmlns=\\"http://www.w3.org/1999/xhtml\\">\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n<title>留言板 - Powered by ElvesCMS</title>\r\n<meta name=\\"keywords\\" content=\\"[!--bname--]\\" />\r\n<meta name=\\"description\\" content=\\"[!--bname--]\\" />\r\n<link href=\\"[!--news.url--]skin/default/css/style.css\\" rel=\\"stylesheet\\" type=\\"text/css\\" />\r\n<script type=\\"text/javascript\\" src=\\"[!--news.url--]skin/default/js/tabs.js\\"></script>\r\n</head>\r\n<body class=\\"listpage\\">\r\n[!--temp.dtheader--]\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"10\\" cellpadding=\\"0\\">\r\n<tr valign=\\"top\\">\r\n<td class=\\"list_content\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"position\\">\r\n<tr>\r\n<td>现在的位置：<a href=../../../>首页</a>&nbsp;>&nbsp;[!--bname--]\r\n</td>\r\n</tr>\r\n</table><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n	<tr>\r\n		<td><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"3\\" cellspacing=\\"2\\">\r\n			<tr>\r\n				<td align=\\"center\\" bgcolor=\\"#E1EFFB\\"><strong>[!--bname--]</strong></td>\r\n			</tr>\r\n			<tr>\r\n				<td align=\\"left\\" valign=\\"top\\"><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"4\\" cellspacing=\\"0\\" bgcolor=\\"#FFFFFF\\">\r\n						<tr>\r\n							<td height=\\"100%\\" valign=\\"top\\" bgcolor=\\"#FFFFFF\\"> [!--Elvesnews.listtemp--]\r\n								<table width=\\"92%\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"4\\" cellspacing=\\"1\\" bgcolor=\\"#F4F9FD\\" class=\\"tableborder\\">\r\n										<tr class=\\"header\\">\r\n											<td width=\\"55%\\" height=\\"23\\">发布者: [!--name--] </td>\r\n											<td width=\\"45%\\">发布时间: [!--lytime--] </td>\r\n										</tr>\r\n										<tr bgcolor=\\"#FFFFFF\\">\r\n											<td height=\\"23\\" colspan=\\"2\\"><table border=\\"0\\" width=\\"100%\\" cellspacing=\\"1\\" cellpadding=\\"8\\" bgcolor=\\''#cccccc\\''>\r\n													<tr>\r\n														<td width=\\''100%\\'' bgcolor=\\''#FFFFFF\\'' style=\\''word-break:break-all\\''> [!--lytext--] </td>\r\n													</tr>\r\n												</table>\r\n												[!--start.regbook--]\r\n												<table width=\\"100%\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"3\\" cellspacing=\\"1\\">\r\n													<tr>\r\n														<td><img src=\\"../../data/images/regb.gif\\" width=\\"18\\" height=\\"18\\" /><strong><font color=\\"#FF0000\\">回复:</font></strong> [!--retext--] </td>\r\n													</tr>\r\n												</table>\r\n												[!--end.regbook--] </td>\r\n										</tr>\r\n									</table>\r\n								<br />\r\n								[!--Elvesnews.listtemp--]\r\n								<table width=\\"92%\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"4\\" cellspacing=\\"1\\">\r\n									<tr>\r\n										<td>分页: [!--listpage--]</td>\r\n									</tr>\r\n								</table>\r\n								<form action=\\"../../melve/index.php\\" method=\\"post\\" name=\\"form1\\" id=\\"form1\\">\r\n									<table width=\\"92%\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"4\\" cellspacing=\\"1\\"class=\\"tableborder\\">\r\n										<tr class=\\"header\\">\r\n											<td colspan=\\"2\\" bgcolor=\\"#F4F9FD\\"><strong>请您留言:</strong></td>\r\n										</tr>\r\n										<tr bgcolor=\\"#FFFFFF\\">\r\n											<td width=\\"20%\\">姓名:</td>\r\n											<td width=\\"722\\" height=\\"23\\"><input name=\\"name\\" type=\\"text\\" id=\\"name\\" />\r\n												*</td>\r\n										</tr>\r\n										<tr bgcolor=\\"#FFFFFF\\">\r\n											<td>联系邮箱:</td>\r\n											<td height=\\"23\\"><input name=\\"email\\" type=\\"text\\" id=\\"email\\" />\r\n												*</td>\r\n										</tr>\r\n										<tr bgcolor=\\"#FFFFFF\\">\r\n											<td>联系电话:</td>\r\n											<td height=\\"23\\"><input name=\\"mycall\\" type=\\"text\\" id=\\"mycall\\" /></td>\r\n										</tr>\r\n										<tr bgcolor=\\"#FFFFFF\\">\r\n											<td>留言内容(*):</td>\r\n											<td height=\\"23\\"><textarea name=\\"lytext\\" cols=\\"60\\" rows=\\"12\\" id=\\"lytext\\"></textarea></td>\r\n										</tr>\r\n										<tr bgcolor=\\"#FFFFFF\\">\r\n											<td height=\\"23\\">&nbsp;</td>\r\n											<td height=\\"23\\"><input type=\\"submit\\" name=\\"Submit3\\" value=\\"提交\\" />\r\n											<input type=\\"reset\\" name=\\"Submit22\\" value=\\"重置\\" />\r\n											<input name=\\"melve\\" type=\\"hidden\\" id=\\"melve\\" value=\\"AddGbook\\" /></td>\r\n										</tr>\r\n									</table>\r\n								</form></td>\r\n						</tr>\r\n				</table></td>\r\n			</tr>\r\n		</table></td>\r\n	</tr>\r\n</table></td>\r\n</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>', '<html>\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\">\r\n<title>登陆</title>\r\n<LINK href=\\"../../data/images/qcss.css\\" rel=stylesheet>\r\n</head>\r\n<body bgcolor=\\"#ededed\\" topmargin=\\"0\\">\r\n<table border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\" width=\\"100%\\">\r\n  <form name=login method=post action=\\"../../member/doaction.php\\">\r\n    <input type=hidden name=melve value=login>\r\n    <input type=hidden name=prtype value=1>\r\n    <tr> \r\n      <td height=\\"23\\" align=\\"center\\">\r\n      <div align=\\"left\\">\r\n      用户名：<input name=\\"username\\" type=\\"text\\" size=\\"8\\">&nbsp;\r\n      密码：<input name=\\"password\\" type=\\"password\\" size=\\"8\\">\r\n      <select name=\\"lifetime\\" id=\\"lifetime\\">\r\n         <option value=\\"0\\">不保存</option>\r\n         <option value=\\"3600\\">一小时</option>\r\n         <option value=\\"86400\\">一天</option>\r\n         <option value=\\"2592000\\">一个月</option>\r\n         <option value=\\"315360000\\">永久</option>\r\n      </select>&nbsp;\r\n      <input type=\\"submit\\" name=\\"Submit\\" value=\\"登陆\\">&nbsp;\r\n      <input type=\\"button\\" name=\\"Submit2\\" value=\\"注册\\" onclick=\\"window.open(\\''../register/\\'');\\">\r\n      </div>\r\n      </td>\r\n    </tr>\r\n  </form>\r\n</table>\r\n</body>\r\n</html>\r\n[!--Elvesnews.template--]\r\n<html>\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\">\r\n<title>登陆</title>\r\n<LINK href=\\"../../data/images/qcss.css\\" rel=stylesheet>\r\n</head>\r\n<body bgcolor=\\"#ededed\\" topmargin=\\"0\\">\r\n<table border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\" width=\\"100%\\">\r\n    <tr>\r\n	<td height=\\"23\\" align=\\"center\\">\r\n	<div align=\\"left\\">\r\n		&raquo;&nbsp;<font color=red><b>[!--username--]</b></font>&nbsp;&nbsp;<a href=\\"../my/\\" target=\\"_parent\\">[!--groupname--]</a>&nbsp;[!--havemsg--]&nbsp;<a href=\\"[!--news.url--]core/space/?userid=[!--userid--]\\" target=_blank>我的空间</a>&nbsp;&nbsp;<a href=\\"../msg/\\" target=_blank>短信息</a>&nbsp;&nbsp;<a href=\\"../fava/\\" target=_blank>收藏夹</a>&nbsp;&nbsp;<a href=\\"../cp/\\" target=\\"_parent\\">控制面板</a>&nbsp;&nbsp;<a href=\\"../../member/doaction.php?melve=exit&prtype=9\\" onclick=\\"return confirm(\\''确认要退出?\\'');\\">退出</a> \r\n	</div>\r\n	</td>\r\n    </tr>\r\n</table>\r\n</body>\r\n</html>', 50, 'Y-m-d H:i:s', '<form name=login method=post action=\\"[!--news.url--]core/member/doaction.php\\">\r\n    <input type=hidden name=melve value=login>\r\n    <input type=hidden name=elvefrom value=9>\r\n    用户名：<input name=\\"username\\" type=\\"text\\" class=\\"inputText\\" size=\\"16\\" />&nbsp;\r\n    密码：<input name=\\"password\\" type=\\"password\\" class=\\"inputText\\" size=\\"16\\" />&nbsp;\r\n    <input type=\\"submit\\" name=\\"Submit\\" value=\\"登陆\\" class=\\"inputSub\\" />&nbsp;\r\n    <input type=\\"button\\" name=\\"Submit2\\" value=\\"注册\\" class=\\"inputSub\\" onclick=\\"window.open(\\''[!--news.url--]core/member/register/\\'');\\" />\r\n</form>\r\n[!--Elvesnews.template--]\r\n&raquo;&nbsp;<font color=red><b>[!--username--]</b></font>&nbsp;&nbsp;<a href=\\"[!--news.url--]core/member/my/\\" target=\\"_parent\\">[!--groupname--]</a>&nbsp;[!--havemsg--]&nbsp;<a href=\\"[!--news.url--]core/space/?userid=[!--userid--]\\" target=_blank>我的空间</a>&nbsp;&nbsp;<a href=\\"[!--news.url--]core/member/msg/\\" target=_blank>短信息</a>&nbsp;&nbsp;<a href=\\"[!--news.url--]core/member/fava/\\" target=_blank>收藏夹</a>&nbsp;&nbsp;<a href=\\"[!--news.url--]core/member/cp/\\" target=\\"_parent\\">控制面板</a>&nbsp;&nbsp;<a href=\\"[!--news.url--]core/member/doaction.php?melve=exit&elvefrom=9\\" onclick=\\"return confirm(\\''确认要退出?\\'');\\">退出</a>', '<html>\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\">\r\n<title>[!--pagetitle--]</title>\r\n<meta name=\\"keywords\\" content=\\"[!--pagekey--]\\">\r\n<meta name=\\"description\\" content=\\"[!--pagedes--]\\">\r\n<link href=\\"../../data/images/qcss.css\\" rel=\\"stylesheet\\" type=\\"text/css\\">\r\n</head>\r\n<body>\r\n<br>\r\n<br>\r\n<br>\r\n<br>\r\n<table align=\\"center\\" width=\\"100%\\">\r\n  <tr> \r\n    <td height=\\"32\\" align=center>\r\n	<a href=\\"[!--down.url--]\\" title=\\"[!--title--] －[!--down.name--]\\">\r\n	<img src=\\"../../data/images/download.jpg\\" border=0>\r\n	</a>\r\n	</td>\r\n  </tr>\r\n  <tr> \r\n    <td align=center>(点击下载)</td>\r\n  </tr>\r\n</table>\r\n<br>\r\n</body>\r\n</html>', '[!--Elvesnews.listtemp--] \r\n      <table width=\\"100%\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"3\\" cellspacing=\\"1\\" style=\\"word-break:break-all; word-wrap:break-all;\\">\r\n        <tr> \r\n          <td height=\\"30\\"><span class=\\"name\\">本站网友 [!--username--]</span> <font color=\\"#666666\\">ip:[!--plip--]</font></td>\r\n          <td><div align=\\"right\\"><font color=\\"#666666\\">[!--pltime--] 发表</font></div></td>\r\n        </tr>\r\n        <tr valign=\\"top\\"> \r\n          <td height=\\"50\\" colspan=\\"2\\" class=\\"text\\">[!--pltext--]</td>\r\n        </tr>\r\n        <tr> \r\n          <td height=\\"30\\">&nbsp;</td>\r\n          <td><div align=\\"right\\" class=\\"re\\"> \r\n              <a href=\\"JavaScript:makeRequest(\\''[!--news.url--]core/pl/doaction.php?melve=DoForPl&plid=[!--plid--]&classid=[!--classid--]&id=[!--id--]&dopl=1&doajax=1&ajaxarea=zcpldiv[!--plid--]\\'',\\''EchoReturnedText\\'',\\''GET\\'',\\''\\'');\\">支持</a>[<span id=\\"zcpldiv[!--plid--]\\">[!--zcnum--]</span>]&nbsp; \r\n              <a href=\\"JavaScript:makeRequest(\\''[!--news.url--]core/pl/doaction.php?melve=DoForPl&plid=[!--plid--]&classid=[!--classid--]&id=[!--id--]&dopl=0&doajax=1&ajaxarea=fdpldiv[!--plid--]\\'',\\''EchoReturnedText\\'',\\''GET\\'',\\''\\'');\\">反对</a>[<span id=\\"fdpldiv[!--plid--]\\">[!--fdnum--]</span>]\r\n            </div></td>\r\n        </tr>\r\n      </table>\r\n      <table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr>\r\n          <td background=\\"[!--news.url--]skin/default/images/plhrbg.gif\\"></td>\r\n        </tr>\r\n      </table>\r\n[!--Elvesnews.listtemp--]', '<!DOCTYPE html PUBLIC \\"-//W3C//DTD XHTML 1.0 Transitional//EN\\" \\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\">\r\n<html xmlns=\\"http://www.w3.org/1999/xhtml\\">\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n<title>搜索 - Powered by ElvesCMS</title>\r\n<link href=\\"[!--news.url--]skin/default/css/style.css\\" rel=\\"stylesheet\\" type=\\"text/css\\" />\r\n<script type=\\"text/javascript\\" src=\\"[!--news.url--]skin/default/js/tabs.js\\"></script>\r\n<style type=\\"text/css\\">\r\n<!--\r\n.r {\r\ndisplay:inline;\r\nfont-weight:normal;\r\nmargin:0;\r\nfont-size:16px;\r\nmargin-top:10px;\r\n}\r\n.a{color:green}\r\n.fl{color:#77c}\r\n-->\r\n</style>\r\n</head>\r\n<body class=\\"listpage\\">\r\n[!--temp.dtheader--]\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"10\\" cellpadding=\\"0\\">\r\n	<tr valign=\\"top\\">\r\n		<td class=\\"list_content\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"position\\">\r\n				<tr>\r\n					<td>现在的位置：<a href=\\"[!--news.url--]\\">首页</a>&nbsp;>&nbsp;搜索</td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n				<tr>\r\n					<td><form action=\\''index.php\\'' method=\\"GET\\" name=\\"search_news\\" id=\\"search_news\\">\r\n							<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"6\\" cellpadding=\\"0\\">\r\n								<tr>\r\n									<td height=\\"32\\">关键字：\r\n										<input name=\\"keyboard\\" type=\\"text\\" id=\\"keyboard\\" value=\\"[!--keyboard--]\\" size=\\"42\\" />\r\n                    <select name=\\"field\\" id=\\"field\\">\r\n                      <option value=\\"1\\">全文</option>\r\n                      <option value=\\"2\\">标题</option>\r\n                      <option value=\\"3\\">内容</option>\r\n                    </select> \r\n                    <input type=\\"submit\\" name=\\"Submit22\\" value=\\"搜索\\" />\r\n                    <font color=\\"#666666\\">(多个关键字请用&quot;空格&quot;隔开)</font> </td>\r\n								</tr>\r\n							</table>\r\n						</form>\r\n						<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"6\\">\r\n							<tr>\r\n								<td>系统搜索到约有<strong>[!--num--]</strong>项符合<strong>[!--keyboard--]</strong>的查询结果</td>\r\n							</tr>\r\n						</table>\r\n						[!--Elvesnews.listtemp--]\r\n						<h2 class=\\"r\\"><span>[!--no.num--].</span> <a class=\\"l\\" href=\\"[!--titleurl--]\\" target=\\"_blank\\">[!--title--]</a></h2>\r\n						<table width=\\"80%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\">\r\n							<tbody>\r\n							<tr>\r\n								<td>[!--smalltext--]</td>\r\n							</tr>\r\n							<tr>\r\n								<td><span class=\\"a\\">[!--titleurl--] - [!--newstime--]</span></td>\r\n							</tr>\r\n							<tr>\r\n								<td>&nbsp;</td>\r\n							</tr>\r\n							</tbody>\r\n						</table>\r\n						[!--Elvesnews.listtemp--]\r\n						<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"list_page\\">\r\n							<tr>\r\n								<td>[!--listpage--]</td>\r\n							</tr>\r\n						</table></td>\r\n				</tr>\r\n			</table></td>\r\n	</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>', 120, 'Y-m-d H:i:s');

-- --------------------------------------------------------

--
-- 表的结构 `base_melvepubvar`
--

CREATE TABLE IF NOT EXISTS `base_melvepubvar` (
  `varid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `myvar` varchar(60) NOT NULL DEFAULT '',
  `varname` varchar(20) NOT NULL DEFAULT '',
  `varvalue` text NOT NULL,
  `varsay` varchar(255) NOT NULL DEFAULT '',
  `myorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tocache` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`varid`),
  UNIQUE KEY `varname` (`varname`),
  KEY `classid` (`classid`),
  KEY `tocache` (`tocache`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melvepubvarclass`
--

CREATE TABLE IF NOT EXISTS `base_melvepubvarclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL DEFAULT '',
  `classsay` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melveqmsg`
--

CREATE TABLE IF NOT EXISTS `base_melveqmsg` (
  `mid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(80) NOT NULL DEFAULT '',
  `msgtext` text NOT NULL,
  `haveread` tinyint(1) NOT NULL DEFAULT '0',
  `msgtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `to_username` varchar(30) NOT NULL DEFAULT '',
  `from_userid` int(10) unsigned NOT NULL DEFAULT '0',
  `from_username` varchar(30) NOT NULL DEFAULT '',
  `isadmin` tinyint(1) NOT NULL DEFAULT '0',
  `issys` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`mid`),
  KEY `to_username` (`to_username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melvesearch`
--

CREATE TABLE IF NOT EXISTS `base_melvesearch` (
  `searchid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `keyboard` varchar(255) NOT NULL DEFAULT '',
  `searchtime` int(10) unsigned NOT NULL DEFAULT '0',
  `searchclass` varchar(255) NOT NULL DEFAULT '',
  `result_num` int(10) unsigned NOT NULL DEFAULT '0',
  `searchip` varchar(20) NOT NULL DEFAULT '',
  `classid` varchar(255) NOT NULL DEFAULT '',
  `onclick` int(10) unsigned NOT NULL DEFAULT '0',
  `orderby` varchar(30) NOT NULL DEFAULT '0',
  `myorder` tinyint(1) NOT NULL DEFAULT '0',
  `checkpass` varchar(32) NOT NULL DEFAULT '',
  `tbname` varchar(60) NOT NULL DEFAULT '',
  `tempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `iskey` tinyint(1) NOT NULL DEFAULT '0',
  `andsql` text NOT NULL,
  `trueclassid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`searchid`),
  KEY `checkpass` (`checkpass`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melvesearchall`
--

CREATE TABLE IF NOT EXISTS `base_melvesearchall` (
  `sid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` text NOT NULL,
  `infotime` int(10) unsigned NOT NULL DEFAULT '0',
  `infotext` mediumtext NOT NULL,
  PRIMARY KEY (`sid`),
  KEY `id` (`id`,`classid`,`infotime`),
  FULLTEXT KEY `title` (`title`,`infotext`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melvesearchall_load`
--

CREATE TABLE IF NOT EXISTS `base_melvesearchall_load` (
  `lid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tbname` varchar(60) NOT NULL DEFAULT '',
  `titlefield` varchar(30) NOT NULL DEFAULT '',
  `infotextfield` varchar(30) NOT NULL DEFAULT '',
  `smalltextfield` varchar(30) NOT NULL DEFAULT '',
  `loadnum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `lasttime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melvesearchtemp`
--

CREATE TABLE IF NOT EXISTS `base_melvesearchtemp` (
  `tempid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tempname` varchar(60) NOT NULL DEFAULT '',
  `temptext` mediumtext NOT NULL,
  `subnews` smallint(6) NOT NULL DEFAULT '0',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  `listvar` text NOT NULL,
  `rownum` smallint(6) NOT NULL DEFAULT '0',
  `modid` smallint(6) NOT NULL DEFAULT '0',
  `showdate` varchar(50) NOT NULL DEFAULT '',
  `subtitle` smallint(6) NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `docode` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tempid`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `base_melvesearchtemp`
--

INSERT INTO `base_melvesearchtemp` (`tempid`, `tempname`, `temptext`, `subnews`, `isdefault`, `listvar`, `rownum`, `modid`, `showdate`, `subtitle`, `classid`, `docode`) VALUES
(1, '默认搜索模板', '<!DOCTYPE html PUBLIC \\"-//W3C//DTD XHTML 1.0 Transitional//EN\\" \\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\">\r\n<html xmlns=\\"http://www.w3.org/1999/xhtml\\">\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n<title>[!--keyboard--] 搜索结果 - Powered by ElvesCMS</title>\r\n<link href=\\"[!--news.url--]skin/default/css/style.css\\" rel=\\"stylesheet\\" type=\\"text/css\\" />\r\n<script type=\\"text/javascript\\" src=\\"[!--news.url--]skin/default/js/tabs.js\\"></script>\r\n<style type=\\"text/css\\">\r\n<!--\r\n.r {\r\ndisplay:inline;\r\nfont-weight:normal;\r\nmargin:0;\r\nfont-size:16px;\r\nmargin-top:10px;\r\n}\r\n.a{color:green}\r\n.fl{color:#77c}\r\n-->\r\n</style>\r\n</head>\r\n<body class=\\"listpage\\">\r\n[!--temp.dtheader--]\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"10\\" cellpadding=\\"0\\">\r\n	<tr valign=\\"top\\">\r\n		<td class=\\"list_content\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"position\\">\r\n				<tr>\r\n					<td>现在的位置：<a href=\\"[!--news.url--]\\" class=\\"classlinkclass\\">首页</a>&nbsp;>&nbsp;<a href=\\"[!--news.url--]search/\\" class=\\"classlinkclass\\">高级搜索</a>&nbsp;>&nbsp;搜索结果</td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n				<tr>\r\n					<td><form action=\\''../../search/index.php\\'' method=\\"post\\" name=\\"search_news\\" id=\\"search_news\\">\r\n							<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"6\\" cellpadding=\\"0\\">\r\n								<input type=\\"hidden\\" name=\\"show\\" value=\\"title\\" />\r\n								<tr>\r\n									<td height=\\"32\\">关键字：\r\n										<input name=\\"keyboard\\" type=\\"text\\" id=\\"keyboard\\" value=\\"[!--keyboard--]\\" size=\\"42\\" />\r\n										<input type=\\"submit\\" name=\\"Submit22\\" value=\\"搜索\\" />\r\n										&nbsp;\r\n										<input type=\\"button\\" name=\\"Submit\\" value=\\"高级搜索\\" onclick=\\"self.location.href=\\''../../../search/\\''\\" />\r\n										(多个关键字请用&quot;空格&quot;隔开) </td>\r\n								</tr>\r\n							</table>\r\n						</form>\r\n						<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"6\\">\r\n							<tr>\r\n								<td>系统搜索到约有<strong>[!--elve.num--]</strong>项符合<strong>[!--keyboard--]</strong>的查询结果</td>\r\n							</tr>\r\n						</table>\r\n						[!--Elvesnews.listtemp--]\r\n						<!--list.var1-->\r\n						[!--Elvesnews.listtemp--]\r\n						<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"list_page\\">\r\n							<tr>\r\n								<td>[!--show.page--]</td>\r\n							</tr>\r\n						</table></td>\r\n				</tr>\r\n			</table></td>\r\n	</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>', 180, 1, '<h2 class=\\"r\\"><span>[!--no.num--].</span> <a class=\\"l\\" href=\\"[!--titleurl--]\\" target=\\"_blank\\">[!--title--]</a></h2>\r\n<table width=\\"80%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\">\r\n	<tbody>\r\n		<tr>\r\n			<td>[!--smalltext--]</td>\r\n		</tr>\r\n		<tr>\r\n			<td><span class=\\"a\\">[!--titleurl--] - [!--newstime--]</span> - <a class=\\"fl\\" href=\\"[!--this.classlink--]\\" target=\\"_blank\\">[!--this.classname--]</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 1, 1, 'Y-m-d', 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `base_melvesearchtempclass`
--

CREATE TABLE IF NOT EXISTS `base_melvesearchtempclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melveshopdd`
--

CREATE TABLE IF NOT EXISTS `base_melveshopdd` (
  `ddid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ddno` varchar(30) NOT NULL DEFAULT '',
  `ddtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `outproduct` tinyint(1) NOT NULL DEFAULT '0',
  `haveprice` tinyint(1) NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `truename` varchar(20) NOT NULL DEFAULT '',
  `oicq` varchar(25) NOT NULL DEFAULT '',
  `msn` varchar(120) NOT NULL DEFAULT '',
  `email` varchar(120) NOT NULL DEFAULT '',
  `mycall` varchar(30) NOT NULL DEFAULT '',
  `phone` varchar(30) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `zip` varchar(8) NOT NULL DEFAULT '',
  `psid` smallint(6) NOT NULL DEFAULT '0',
  `psname` varchar(60) NOT NULL DEFAULT '',
  `pstotal` float(11,2) NOT NULL DEFAULT '0.00',
  `alltotal` float(11,2) NOT NULL DEFAULT '0.00',
  `payfsid` smallint(6) NOT NULL DEFAULT '0',
  `payfsname` varchar(60) NOT NULL DEFAULT '',
  `payby` tinyint(4) NOT NULL DEFAULT '0',
  `alltotalfen` float(11,2) NOT NULL DEFAULT '0.00',
  `fp` tinyint(1) NOT NULL DEFAULT '0',
  `fptt` varchar(255) NOT NULL DEFAULT '',
  `fptotal` float(11,2) NOT NULL DEFAULT '0.00',
  `fpname` varchar(50) NOT NULL DEFAULT '',
  `userip` varchar(20) NOT NULL DEFAULT '',
  `signbuild` varchar(100) NOT NULL DEFAULT '',
  `besttime` varchar(120) NOT NULL DEFAULT '',
  `pretotal` float(11,2) NOT NULL DEFAULT '0.00',
  `ddtruetime` int(10) unsigned NOT NULL DEFAULT '0',
  `havecutnum` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ddid`),
  KEY `ddno` (`ddno`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melveshopdd_add`
--

CREATE TABLE IF NOT EXISTS `base_melveshopdd_add` (
  `ddid` int(10) unsigned NOT NULL DEFAULT '0',
  `buycar` mediumtext NOT NULL,
  `bz` text NOT NULL,
  `retext` text NOT NULL,
  PRIMARY KEY (`ddid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `base_melveshoppayfs`
--

CREATE TABLE IF NOT EXISTS `base_melveshoppayfs` (
  `payid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `payname` varchar(60) NOT NULL DEFAULT '',
  `payurl` varchar(255) NOT NULL DEFAULT '',
  `paysay` text NOT NULL,
  `userpay` tinyint(1) NOT NULL DEFAULT '0',
  `userfen` tinyint(1) NOT NULL DEFAULT '0',
  `isclose` tinyint(1) NOT NULL DEFAULT '0',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`payid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `base_melveshoppayfs`
--

INSERT INTO `base_melveshoppayfs` (`payid`, `payname`, `payurl`, `paysay`, `userpay`, `userfen`, `isclose`, `isdefault`) VALUES
(1, '邮政汇款', '', '邮政汇款地址:******', 0, 0, 0, 0),
(2, '银行转帐', '', '银行转帐帐号:******', 0, 0, 0, 0),
(3, '网银支付', '/baselve/core/payapi/ShopPay.php?paytype=alipay', '<p>网银支付</p>', 0, 0, 0, 1),
(4, '预付款支付', '', '预付款支付', 1, 0, 0, 0),
(5, '货到付款(或上门收款)', '', '货到付款(或上门收款)说明', 0, 0, 0, 0),
(6, '点数购买', '', '点数购买', 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `base_melveshopps`
--

CREATE TABLE IF NOT EXISTS `base_melveshopps` (
  `pid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `pname` varchar(60) NOT NULL DEFAULT '',
  `price` float(11,2) NOT NULL DEFAULT '0.00',
  `otherprice` text NOT NULL,
  `psay` text NOT NULL,
  `isclose` tinyint(1) NOT NULL DEFAULT '0',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `base_melveshopps`
--

INSERT INTO `base_melveshopps` (`pid`, `pname`, `price`, `otherprice`, `psay`, `isclose`, `isdefault`) VALUES
(1, '送货上门', 10.00, '', '送货上门', 0, 0),
(2, '特快专递（EMS）', 25.00, '', '特快专递（EMS）', 0, 0),
(3, '普通邮递', 5.00, '', '普通邮递', 0, 1),
(4, '邮局快邮', 12.00, '', '邮局快邮', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `base_melveshop_address`
--

CREATE TABLE IF NOT EXISTS `base_melveshop_address` (
  `addressid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `addressname` char(50) NOT NULL DEFAULT '',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `truename` char(20) NOT NULL DEFAULT '',
  `oicq` char(20) NOT NULL DEFAULT '',
  `msn` char(60) NOT NULL DEFAULT '',
  `email` char(60) NOT NULL DEFAULT '',
  `address` char(255) NOT NULL DEFAULT '',
  `zip` char(8) NOT NULL DEFAULT '',
  `mycall` char(30) NOT NULL DEFAULT '',
  `phone` char(30) NOT NULL DEFAULT '',
  `signbuild` char(100) NOT NULL DEFAULT '',
  `besttime` char(120) NOT NULL DEFAULT '',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`addressid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melveshop_ddlog`
--

CREATE TABLE IF NOT EXISTS `base_melveshop_ddlog` (
  `logid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ddid` int(10) unsigned NOT NULL DEFAULT '0',
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `elve` varchar(30) NOT NULL DEFAULT '',
  `bz` varchar(255) NOT NULL DEFAULT '',
  `addbz` varchar(255) NOT NULL DEFAULT '',
  `logtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`logid`),
  KEY `ddid` (`ddid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melveshop_precode`
--

CREATE TABLE IF NOT EXISTS `base_melveshop_precode` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `prename` varchar(30) NOT NULL DEFAULT '',
  `precode` varchar(36) NOT NULL DEFAULT '',
  `premoney` int(10) unsigned NOT NULL DEFAULT '0',
  `pretype` tinyint(1) NOT NULL DEFAULT '0',
  `reuse` tinyint(1) NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `groupid` varchar(255) NOT NULL DEFAULT '',
  `classid` text NOT NULL,
  `musttotal` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `precode` (`precode`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melveshop_set`
--

CREATE TABLE IF NOT EXISTS `base_melveshop_set` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `shopddgroupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `buycarnum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `havefp` tinyint(1) NOT NULL DEFAULT '0',
  `fpnum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `fpname` text NOT NULL,
  `ddmust` text NOT NULL,
  `haveatt` tinyint(1) NOT NULL DEFAULT '0',
  `shoptbs` varchar(255) NOT NULL DEFAULT '',
  `buystep` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `shoppsmust` tinyint(1) NOT NULL DEFAULT '0',
  `shoppayfsmust` tinyint(1) NOT NULL DEFAULT '0',
  `dddeltime` smallint(5) unsigned NOT NULL DEFAULT '0',
  `cutnumtype` tinyint(1) NOT NULL DEFAULT '0',
  `cutnumtime` int(10) unsigned NOT NULL DEFAULT '0',
  `freepstotal` int(10) unsigned NOT NULL DEFAULT '0',
  `singlenum` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `base_melveshop_set`
--

INSERT INTO `base_melveshop_set` (`id`, `shopddgroupid`, `buycarnum`, `havefp`, `fpnum`, `fpname`, `ddmust`, `haveatt`, `shoptbs`, `buystep`, `shoppsmust`, `shoppayfsmust`, `dddeltime`, `cutnumtype`, `cutnumtime`, `freepstotal`, `singlenum`) VALUES
(1, 0, 0, 0, 10, '商品名称\r\n办公用品\r\n日用品', ',truename,mycall,address,', 0, ',shop,', 0, 1, 1, 0, 0, 120, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `base_melvesp`
--

CREATE TABLE IF NOT EXISTS `base_melvesp` (
  `spid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `spname` varchar(30) NOT NULL DEFAULT '',
  `varname` varchar(30) NOT NULL DEFAULT '',
  `sppic` varchar(255) NOT NULL DEFAULT '',
  `spsay` varchar(255) NOT NULL DEFAULT '',
  `sptype` tinyint(1) NOT NULL DEFAULT '0',
  `cid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `maxnum` int(11) NOT NULL DEFAULT '0',
  `sptime` int(10) unsigned NOT NULL DEFAULT '0',
  `groupid` text NOT NULL,
  `userclass` text NOT NULL,
  `username` text NOT NULL,
  `isclose` tinyint(1) NOT NULL DEFAULT '0',
  `cladd` tinyint(1) NOT NULL DEFAULT '0',
  `refile` tinyint(1) NOT NULL DEFAULT '0',
  `spfile` varchar(255) NOT NULL DEFAULT '',
  `spfileline` smallint(6) NOT NULL DEFAULT '0',
  `spfilesub` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`spid`),
  UNIQUE KEY `varname` (`varname`),
  KEY `refile` (`refile`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melvespacestyle`
--

CREATE TABLE IF NOT EXISTS `base_melvespacestyle` (
  `styleid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `stylename` varchar(30) NOT NULL DEFAULT '',
  `stylepic` varchar(255) NOT NULL DEFAULT '',
  `stylesay` varchar(255) NOT NULL DEFAULT '',
  `stylepath` varchar(30) NOT NULL DEFAULT '0',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  `membergroup` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`styleid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `base_melvespacestyle`
--

INSERT INTO `base_melvespacestyle` (`styleid`, `stylename`, `stylepic`, `stylesay`, `stylepath`, `isdefault`, `membergroup`) VALUES
(1, '默认个人空间模板', '', '默认个人空间模板', 'default', 1, ',1,2,'),
(2, '默认企业空间模板', '', '默认企业空间模板', 'comdefault', 0, ',3,4,');

-- --------------------------------------------------------

--
-- 表的结构 `base_melvespclass`
--

CREATE TABLE IF NOT EXISTS `base_melvespclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL DEFAULT '',
  `classsay` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melvesp_1`
--

CREATE TABLE IF NOT EXISTS `base_melvesp_1` (
  `sid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `spid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(200) NOT NULL DEFAULT '',
  `titlepic` varchar(200) NOT NULL DEFAULT '',
  `bigpic` varchar(200) NOT NULL DEFAULT '',
  `titleurl` varchar(200) NOT NULL DEFAULT '',
  `smalltext` varchar(255) NOT NULL DEFAULT '',
  `titlefont` varchar(20) NOT NULL DEFAULT '',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `titlepre` varchar(30) NOT NULL DEFAULT '',
  `titlenext` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`sid`),
  KEY `spid` (`spid`),
  KEY `newstime` (`newstime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melvesp_2`
--

CREATE TABLE IF NOT EXISTS `base_melvesp_2` (
  `sid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `spid` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`sid`),
  KEY `spid` (`spid`),
  KEY `newstime` (`newstime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melvesp_3`
--

CREATE TABLE IF NOT EXISTS `base_melvesp_3` (
  `sid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `spid` int(10) unsigned NOT NULL DEFAULT '0',
  `sptext` mediumtext NOT NULL,
  PRIMARY KEY (`sid`),
  UNIQUE KEY `spid` (`spid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melvesp_3_bak`
--

CREATE TABLE IF NOT EXISTS `base_melvesp_3_bak` (
  `bid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `spid` int(10) unsigned NOT NULL DEFAULT '0',
  `sptext` mediumtext NOT NULL,
  `lastuser` varchar(30) NOT NULL DEFAULT '',
  `lasttime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bid`),
  KEY `sid` (`sid`),
  KEY `spid` (`spid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melvesql`
--

CREATE TABLE IF NOT EXISTS `base_melvesql` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `sqlname` varchar(60) NOT NULL DEFAULT '',
  `sqltext` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melvetable`
--

CREATE TABLE IF NOT EXISTS `base_melvetable` (
  `tid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tbname` varchar(60) NOT NULL DEFAULT '',
  `tname` varchar(60) NOT NULL DEFAULT '',
  `tsay` text NOT NULL,
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  `datatbs` text NOT NULL,
  `deftb` varchar(6) NOT NULL DEFAULT '',
  `yhid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `mid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `intb` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `base_melvetable`
--

INSERT INTO `base_melvetable` (`tid`, `tbname`, `tname`, `tsay`, `isdefault`, `datatbs`, `deftb`, `yhid`, `mid`, `intb`) VALUES
(1, 'news', '新闻系统数据表', '新闻系统数据表', 1, ',1,', '1', 0, 1, 0),
(2, 'download', '下载系统数据表', '下载系统数据表', 0, ',1,', '1', 0, 2, 0),
(3, 'photo', '图片系统数据表', '图片系统数据表', 0, ',1,', '1', 0, 3, 0),
(4, 'flash', 'FLASH系统数据表', 'FLASH系统数据表', 0, ',1,', '1', 0, 4, 0),
(5, 'movie', '电影系统数据表', '电影系统数据表', 0, ',1,', '1', 0, 5, 0),
(6, 'shop', '商城系统数据表', '商城系统数据表', 0, ',1,', '1', 0, 6, 0),
(7, 'article', '文章系统数据表', '文章系统数据表(内容存文本)', 0, ',1,', '1', 0, 7, 0),
(8, 'info', '分类信息数据表', '分类信息数据表', 0, ',1,', '1', 0, 8, 0);

-- --------------------------------------------------------

--
-- 表的结构 `base_melvetags`
--

CREATE TABLE IF NOT EXISTS `base_melvetags` (
  `tagid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tagname` char(20) NOT NULL DEFAULT '',
  `num` int(10) unsigned NOT NULL DEFAULT '0',
  `isgood` tinyint(1) NOT NULL DEFAULT '0',
  `cid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`tagid`),
  UNIQUE KEY `tagname` (`tagname`),
  KEY `isgood` (`isgood`),
  KEY `cid` (`cid`),
  KEY `num` (`num`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melvetagsclass`
--

CREATE TABLE IF NOT EXISTS `base_melvetagsclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(60) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melvetagsdata`
--

CREATE TABLE IF NOT EXISTS `base_melvetagsdata` (
  `tid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tagid` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `mid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`tid`),
  KEY `tagid` (`tagid`),
  KEY `classid` (`classid`),
  KEY `id` (`id`),
  KEY `newstime` (`newstime`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melvetask`
--

CREATE TABLE IF NOT EXISTS `base_melvetask` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `taskname` varchar(60) NOT NULL DEFAULT '',
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `isopen` tinyint(1) NOT NULL DEFAULT '0',
  `filename` varchar(60) NOT NULL DEFAULT '',
  `lastdo` int(10) unsigned NOT NULL DEFAULT '0',
  `doweek` char(1) NOT NULL DEFAULT '0',
  `doday` char(2) NOT NULL DEFAULT '0',
  `dohour` char(2) NOT NULL DEFAULT '0',
  `dominute` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melvetempbak`
--

CREATE TABLE IF NOT EXISTS `base_melvetempbak` (
  `bid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tempname` varchar(60) NOT NULL DEFAULT '',
  `temptext` mediumtext NOT NULL,
  `subnews` smallint(6) NOT NULL DEFAULT '0',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  `listvar` text NOT NULL,
  `rownum` smallint(6) NOT NULL DEFAULT '0',
  `modid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `showdate` varchar(50) NOT NULL DEFAULT '',
  `subtitle` smallint(6) NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `docode` tinyint(1) NOT NULL DEFAULT '0',
  `baktime` int(10) unsigned NOT NULL DEFAULT '0',
  `temptype` varchar(30) NOT NULL DEFAULT '',
  `gid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `lastuser` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`bid`),
  KEY `tempid` (`tempid`),
  KEY `temptype` (`temptype`),
  KEY `gid` (`gid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melvetempdt`
--

CREATE TABLE IF NOT EXISTS `base_melvetempdt` (
  `tempid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tempvar` char(30) NOT NULL DEFAULT '',
  `tempname` char(30) NOT NULL DEFAULT '',
  `tempsay` char(255) NOT NULL DEFAULT '',
  `tempfile` char(200) NOT NULL DEFAULT '',
  `myorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `temptype` char(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`tempid`),
  UNIQUE KEY `tempvar` (`tempvar`),
  KEY `temptype` (`temptype`),
  KEY `myorder` (`myorder`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=57 ;

--
-- 转存表中的数据 `base_melvetempdt`
--

INSERT INTO `base_melvetempdt` (`tempid`, `tempvar`, `tempname`, `tempsay`, `tempfile`, `myorder`, `temptype`) VALUES
(1, 'header', '主界面头部', '主界面头部', 'core/template/incfile/header.php', 0, 'incfile'),
(2, 'footer', '主界面尾部', '主界面尾部', 'core/template/incfile/footer.php', 0, 'incfile'),
(3, 'qDoInfo', '管理投稿首页', '管理投稿首页', 'core/template/DoInfo/DoInfo.php', 0, 'doinfo'),
(4, 'qChangeClass', '投稿选择栏目页', '投稿选择栏目页', 'core/template/DoInfo/ChangeClass.php', 0, 'doinfo'),
(5, 'qDoInfoTran', '发布投稿上传附件页面', '发布投稿上传附件页面', 'core/template/DoInfo/tran.php', 0, 'doinfo'),
(6, 'qAddInfo', '发布投稿页', '发布投稿页', 'core/template/DoInfo/AddInfo.php', 0, 'doinfo'),
(7, 'qListInfo', '默认管理投稿列表页', '默认管理投稿列表页', 'core/data/html/list/qlistinfo.php', 0, 'doinfo'),
(8, 'report', '提交错误报告页面', '提交错误报告页面', 'core/template/public/report.php', 0, 'pubtemp'),
(9, 'payapi', '在线支付页面', '在线支付页面', 'core/template/payapi/payapi.php', 0, 'pubtemp'),
(10, 'infovote', '信息投票页面', '信息投票页面', 'core/template/public/vote.php', 0, 'pubtemp'),
(11, 'vote', '投票插件页面', '投票插件页面', 'core/template/tool/vote.php', 0, 'pubtemp'),
(12, 'ShopBurcar', '购物车页面', '购物车页面', 'core/template/ShopSys/buycar.php', 0, 'shopsys'),
(13, 'ShopOrder', '提交订单页面', '提交订单页面', 'core/template/ShopSys/order.php', 0, 'shopsys'),
(14, 'ShopSubmitOrder', '确认提交订单页面', '确认提交订单页面', 'core/template/ShopSys/SubmitOrder.php', 0, 'shopsys'),
(15, 'ShopListDd', '订单列表页面', '订单列表页面', 'core/template/ShopSys/ListDd.php', 0, 'shopsys'),
(16, 'ShopShowDd', '订单详细页面', '订单详细页面', 'core/template/ShopSys/ShowDd.php', 0, 'shopsys'),
(17, 'ShopBurcarForm', '购物车-加入表单模板', '购物车-加入表单模板', 'core/template/ShopSys/buycar/buycar_form.php', 0, 'shopsys'),
(18, 'ShopBurcarOrder', '购物车-确认订单模板', '购物车-确认订单模板', 'core/template/ShopSys/buycar/buycar_order.php', 0, 'shopsys'),
(19, 'ShopBurcarShowdd', '购物车-显示订单模板', '购物车-显示订单模板', 'core/template/ShopSys/buycar/buycar_showdd.php', 0, 'shopsys'),
(20, 'ShopAddAddress', '增加配送地址页面', '增加配送地址页面', 'core/template/ShopSys/AddAddress.php', 0, 'shopsys'),
(21, 'ShopListAddress', '管理配送地址页面', '管理配送地址页面', 'core/template/ShopSys/ListAddress.php', 0, 'shopsys'),
(22, 'MemberReg', '会员注册页面', '会员注册页面', 'core/template/member/register.php', 0, 'member'),
(23, 'MemberChangeReg', '选择注册类型页面', '选择注册类型页面', 'core/template/member/ChangeRegister.php', 0, 'member'),
(24, 'MemberRegsend', '重发注册激活邮件页面', '重发注册激活邮件页面', 'core/template/member/regsend.php', 0, 'member'),
(25, 'MemberLogin', '会员登录页面', '会员登录页面', 'core/template/member/login.php', 0, 'member'),
(26, 'MemberLoginopen', '会员登录弹出页面', '会员登录弹出页面', 'core/template/member/loginopen.php', 0, 'member'),
(27, 'MemberEditinfo', '修改会员信息页面', '修改会员信息页面', 'core/template/member/EditInfo.php', 0, 'member'),
(28, 'MemberEditsafeinfo', '修改会员安全信息页面', '修改会员安全信息页面', 'core/template/member/EditSafeInfo.php', 0, 'member'),
(29, 'MemberGetPassword', '取回密码页面', '取回密码页面', 'core/template/member/GetPassword.php', 0, 'member'),
(30, 'MemberGetResetPass', '取回密码重置页面', '取回密码重置页面', 'core/template/member/getpass.php', 0, 'member'),
(31, 'MemberCp', '会员中心首页', '会员中心首页', 'core/template/member/cp.php', 0, 'member'),
(32, 'MemberMy', '会员状态页面', '会员状态页面', 'core/template/member/my.php', 0, 'member'),
(33, 'MemberShowInfo', '查看会员信息页面', '查看会员信息页面', 'core/template/member/ShowInfo.php', 0, 'member'),
(34, 'MemberList1', '默认会员列表页面', '默认会员列表页面', 'core/template/member/memberlist/1.php', 0, 'member'),
(35, 'MemberAddMsg', '发送站内消息页面', '发送站内消息页面', 'core/template/member/AddMsg.php', 0, 'membermsg'),
(36, 'MemberMsg', '站内消息列表页面', '站内消息列表页面', 'core/template/member/msg.php', 0, 'membermsg'),
(37, 'MemberViewMsg', '查看站内消息页面', '查看站内消息页面', 'core/template/member/ViewMsg.php', 0, 'membermsg'),
(38, 'MemberAddFriend', '增加好友页面', '增加好友页面', 'core/template/member/AddFriend.php', 0, 'memberfriend'),
(39, 'MemberFriend', '好友列表页面', '好友列表页面', 'core/template/member/friend.php', 0, 'memberfriend'),
(40, 'MemberFriendClass', '好友分类页面', '好友分类页面', 'core/template/member/FriendClass.php', 0, 'memberfriend'),
(41, 'MemberChangeFriend', '选择好友页面', '选择好友页面', 'core/template/member/ChangeFriend.php', 0, 'memberfriend'),
(42, 'MemberAddFava', '增加收藏信息页面', '增加收藏信息页面', 'core/template/member/AddFava.php', 0, 'memberfav'),
(43, 'MemberFava', '管理收藏页面', '管理收藏页面', 'core/template/member/fava.php', 0, 'memberfav'),
(44, 'MemberFavaClass', '管理收藏分类页面', '管理收藏分类页面', 'core/template/member/FavaClass.php', 0, 'memberfav'),
(45, 'MemberBuybak', '充值记录页面', '充值记录页面', 'core/template/member/buybak.php', 0, 'memberother'),
(46, 'MemberDownbak', '下载记录页面', '下载记录页面', 'core/template/member/downbak.php', 0, 'memberother'),
(47, 'MemberBuygroup', '购买会员类型页面', '购买会员类型页面', 'core/template/member/buygroup.php', 0, 'memberother'),
(48, 'MemberCard', '点卡充值页面', '点卡充值页面', 'core/template/member/card.php', 0, 'memberother'),
(49, 'MemberChangeStyle', '选择会员空间风格页面', '选择会员空间风格页面', 'core/template/member/mspace/ChangeStyle.php', 0, 'memberspace'),
(50, 'MemberSetSpace', '设置会员空间页面', '设置会员空间页面', 'core/template/member/mspace/SetSpace.php', 0, 'memberspace'),
(51, 'MemberFeedback', '管理会员空间反馈页面', '管理会员空间反馈页面', 'core/template/member/mspace/feedback.php', 0, 'memberspace'),
(52, 'MemberShowFeedback', '查看会员空间反馈页面', '查看会员空间反馈页面', 'core/template/member/mspace/ShowFeedback.php', 0, 'memberspace'),
(53, 'MemberGbook', '管理会员空间留言页面', '管理会员空间留言页面', 'core/template/member/mspace/gbook.php', 0, 'memberspace'),
(54, 'MemberReGbook', '回复会员空间留言页面', '回复会员空间留言页面', 'core/template/member/mspace/ReGbook.php', 0, 'memberspace'),
(55, 'MemberConnectListBind', '登录绑定管理页面', '登录绑定管理页面', 'core/template/memberconnect/ListBind.php', 0, 'memberconnect'),
(56, 'MemberConnectTobind', '绑定登录帐号页面', '绑定登录帐号页面', 'core/template/memberconnect/tobind.php', 0, 'memberconnect');

-- --------------------------------------------------------

--
-- 表的结构 `base_melvetempgroup`
--

CREATE TABLE IF NOT EXISTS `base_melvetempgroup` (
  `gid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `gname` varchar(60) NOT NULL DEFAULT '',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`gid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `base_melvetempgroup`
--

INSERT INTO `base_melvetempgroup` (`gid`, `gname`, `isdefault`) VALUES
(1, '默认模板组', 1);

-- --------------------------------------------------------

--
-- 表的结构 `base_melvetempvar`
--

CREATE TABLE IF NOT EXISTS `base_melvetempvar` (
  `varid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `myvar` varchar(60) NOT NULL DEFAULT '',
  `varname` varchar(60) NOT NULL DEFAULT '',
  `varvalue` mediumtext NOT NULL,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `isclose` tinyint(1) NOT NULL DEFAULT '0',
  `myorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`varid`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `base_melvetempvar`
--

INSERT INTO `base_melvetempvar` (`varid`, `myvar`, `varname`, `varvalue`, `classid`, `isclose`, `myorder`) VALUES
(1, 'header', '页面头部', '<!-- 页头 -->\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"top\\">\r\n<tr>\r\n<td>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\">\r\n<tr>\r\n<td width=\\"63%\\"> \r\n<!-- 登录 -->\r\n<script>\r\ndocument.write(\\''<script src=\\"[!--news.url--]core/member/login/loginjs.php?t=\\''+Math.random()+\\''\\"><\\''+\\''/script>\\'');\r\n</script>\r\n</td>\r\n<td align=\\"right\\">\r\n<a onclick=\\"window.external.addFavorite(location.href,document.title)\\" href=\\"#elve\\">加入收藏</a> | <a onclick=\\"this.style.behavior=\\''url(#default#homepage)\\'';this.setHomePage(\\''[!--news.url--]\\'')\\" href=\\"#elve\\">设为首页</a> | <a href=\\"[!--news.url--]core/member/cp/\\">会员中心</a> | <a href=\\"[!--news.url--]core/DoInfo/\\">我要投稿</a> | <a href=\\"[!--news.url--]core/web/?type=rss2&classid=[!--self.classid--]\\" target=\\"_blank\\">RSS<img src=\\"[!--news.url--]skin/default/images/rss.gif\\" border=\\"0\\" hspace=\\"2\\" /></a>\r\n</td>\r\n</tr>\r\n</table>\r\n</td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"10\\">\r\n<tr valign=\\"middle\\">\r\n<td width=\\"240\\" align=\\"center\\"><a href=\\"[!--news.url--]\\"><img src=\\"[!--news.url--]skin/default/images/logo.gif\\" width=\\"200\\" height=\\"65\\" border=\\"0\\" /></a></td>\r\n<td align=\\"center\\"><a href=\\"http://www.webelves.org/OpenSource/\\" target=\\"_blank\\"><img src=\\"[!--news.url--]skin/default/images/opensource.gif\\" width=\\"100%\\" height=\\"70\\" border=\\"0\\" /></a></td>\r\n</tr>\r\n</table>\r\n<!-- 导航tab选项卡 -->\r\n<table width=\\"920\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"0\\" cellspacing=\\"0\\" class=\\"nav\\">\r\n  <tr> \r\n    <td class=\\"nav_global\\"><ul>\r\n        <li class=\\"curr\\" id=\\"tabnav_btn_0\\" onmouseover=\\"tabit(this)\\"><a href=\\"[!--news.url--]\\">首页</a></li>\r\n        [showclasstemp]\\''0\\'',12,0,0[/showclasstemp] </ul></td>\r\n  </tr>\r\n</table>', 0, 0, 1),
(2, 'footer', '页面尾部', '<!-- 页脚 -->\r\n<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\">\r\n<tr>\r\n<td align=\\"center\\" class=\\"search\\">\r\n<form action=\\"[!--news.url--]core/search/index.php\\" method=\\"post\\" name=\\"searchform\\" id=\\"searchform\\">\r\n<table border=\\"0\\" cellspacing=\\"6\\" cellpadding=\\"0\\">\r\n<tr>\r\n<td><strong>站内搜索：</strong>\r\n<input name=\\"keyboard\\" type=\\"text\\" size=\\"32\\" id=\\"keyboard\\" class=\\"inputText\\" />\r\n<input type=\\"hidden\\" name=\\"show\\" value=\\"title\\" />\r\n<input type=\\"hidden\\" name=\\"tempid\\" value=\\"1\\" />\r\n<select name=\\"tbname\\">\r\n<option value=\\"news\\">新闻</option>\r\n<option value=\\"download\\">下载</option>\r\n<option value=\\"photo\\">图库</option>\r\n<option value=\\"flash\\">FLASH</option>\r\n<option value=\\"movie\\">电影</option>\r\n<option value=\\"shop\\">商品</option>\r\n<option value=\\"article\\">文章</option>\r\n<option value=\\"info\\">分类信息</option>\r\n</select>\r\n</td>\r\n<td><input type=\\"image\\" class=\\"inputSub\\" src=\\"[!--news.url--]skin/default/images/search.gif\\" />\r\n</td>\r\n<td><a href=\\"[!--news.url--]search/\\" target=\\"_blank\\">高级搜索</a></td>\r\n</tr>\r\n</table>\r\n</form>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n	<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"4\\" class=\\"copyright\\">\r\n        <tr> \r\n          <td align=\\"center\\"><a href=\\"[!--news.url--]\\">网站首页</a> | <a href=\\"#\\">关于我们</a> \r\n            | <a href=\\"#\\">服务条款</a> | <a href=\\"#\\">广告服务</a> | <a href=\\"#\\">联系我们</a> \r\n            | <a href=\\"#\\">网站地图</a> | <a href=\\"#\\">免责声明</a> | <a href=\\"[!--news.url--]core/wap/\\" target=\\"_blank\\">WAP</a></td>\r\n        </tr>\r\n        <tr> \r\n          <td align=\\"center\\">Powered by <strong><a href=\\"http://www.webelves.org\\" target=\\"_blank\\">ElvesCMS</a></strong> \r\n            <strong><font color=\\"#FF9900\\">7.0</font></strong>&nbsp; &copy; 2002-2013 \r\n            <a href=\\"http://www.digod.com\\" target=\\"_blank\\">ElvesSoft Inc.</a></td>\r\n        </tr>\r\n	</table>\r\n</td>\r\n</tr>\r\n</table>', 0, 0, 0),
(3, 'dtheader', '动态页面头部', '<!-- 页头 -->\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"top\\">\r\n<tr>\r\n<td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\">\r\n<tr>\r\n<td width=\\"63%\\">\r\n<!-- 登录 -->\r\n<script>\r\ndocument.write(\\''<script src=\\"[!--news.url--]core/member/login/loginjs.php?t=\\''+Math.random()+\\''\\"><\\''+\\''/script>\\'');\r\n</script>\r\n</td>\r\n<td align=\\"right\\">\r\n<a onclick=\\"window.external.addFavorite(location.href,document.title)\\" href=\\"#elve\\">加入收藏</a> | <a onclick=\\"this.style.behavior=\\''url(#default#homepage)\\'';this.setHomePage(\\''[!--news.url--]\\'')\\" href=\\"#elve\\">设为首页</a> | <a href=\\"[!--news.url--]core/member/cp/\\">会员中心</a> | <a href=\\"[!--news.url--]core/DoInfo/\\">我要投稿</a> | <a href=\\"[!--news.url--]core/web/?type=rss2\\" target=\\"_blank\\">RSS<img src=\\"[!--news.url--]skin/default/images/rss.gif\\" border=\\"0\\" hspace=\\"2\\" /></a>\r\n</td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"10\\">\r\n<tr valign=\\"middle\\">\r\n<td width=\\"240\\" align=\\"center\\"><a href=\\"[!--news.url--]\\"><img src=\\"[!--news.url--]skin/default/images/logo.gif\\" width=\\"200\\" height=\\"65\\" border=\\"0\\" /></a></td>\r\n<td align=\\"center\\"><a href=\\"http://www.webelves.org/OpenSource/\\" target=\\"_blank\\"><img src=\\"[!--news.url--]skin/default/images/opensource.gif\\" width=\\"100%\\" height=\\"70\\" border=\\"0\\" /></a></td>\r\n</tr>\r\n</table>\r\n<!-- 导航tab选项卡 -->\r\n<table width=\\"920\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"0\\" cellspacing=\\"0\\" class=\\"nav\\">\r\n  <tr> \r\n    <td class=\\"nav_global\\"><ul>\r\n        <li class=\\"curr\\" id=\\"tabnav_btn_0\\" onmouseover=\\"tabit(this)\\"><a href=\\"[!--news.url--]\\">首页</a></li>\r\n        <li id=\\"tabnav_btn_1\\" onmouseover=\\"tabit(this)\\"><a href=\\"[!--news.url--]news/\\">新闻中心</a></li>\r\n        <li id=\\"tabnav_btn_2\\" onmouseover=\\"tabit(this)\\"><a href=\\"[!--news.url--]download/\\">下载中心</a></li>\r\n        <li id=\\"tabnav_btn_3\\" onmouseover=\\"tabit(this)\\"><a href=\\"[!--news.url--]movie/\\">影视频道</a></li>\r\n        <li id=\\"tabnav_btn_4\\" onmouseover=\\"tabit(this)\\"><a href=\\"[!--news.url--]shop/\\">网上商城</a></li>\r\n        <li id=\\"tabnav_btn_5\\" onmouseover=\\"tabit(this)\\"><a href=\\"[!--news.url--]flash/\\">FLASH频道</a></li>\r\n        <li id=\\"tabnav_btn_6\\" onmouseover=\\"tabit(this)\\"><a href=\\"[!--news.url--]photo/\\">图片频道</a></li>\r\n        <li id=\\"tabnav_btn_7\\" onmouseover=\\"tabit(this)\\"><a href=\\"[!--news.url--]article/\\">文章中心</a></li>\r\n        <li id=\\"tabnav_btn_8\\" onmouseover=\\"tabit(this)\\"><a href=\\"[!--news.url--]info/\\">分类信息</a></li>\r\n      </ul></td>\r\n  </tr>\r\n</table>', 0, 0, 0),
(4, 'infoarea', '分类信息区域导航', '<table width=\\"96%\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"0\\" cellspacing=\\"4\\">\r\n	<tr>\r\n		<td width=\\"33%\\"><img src=\\"[!--news.url--]core/data/images/msgnav.gif\\" width=\\"5\\" height=\\"5\\" />&nbsp;<a href=\\"[!--news.url--]core/action/ListInfo.php?classid=[!--self.classid--]&ph=1&myarea=东城区\\">东城区</a></td>\r\n		<td width=\\"33%\\"><img src=\\"[!--news.url--]core/data/images/msgnav.gif\\" width=\\"5\\" height=\\"5\\" />&nbsp;<a href=\\"[!--news.url--]core/action/ListInfo.php?classid=[!--self.classid--]&ph=1&myarea=西城区\\">西城区</a></td>\r\n		<td width=\\"33%\\"><img src=\\"[!--news.url--]core/data/images/msgnav.gif\\" width=\\"5\\" height=\\"5\\" />&nbsp;<a href=\\"[!--news.url--]core/action/ListInfo.php?classid=[!--self.classid--]&ph=1&myarea=通州区\\">通州区</a></td>\r\n	</tr>\r\n	<tr>\r\n		<td><img src=\\"[!--news.url--]core/data/images/msgnav.gif\\" width=\\"5\\" height=\\"5\\" />&nbsp;<a href=\\"[!--news.url--]core/action/ListInfo.php?classid=[!--self.classid--]&ph=1&myarea=崇文区\\">崇文区</a></td>\r\n		<td><img src=\\"[!--news.url--]core/data/images/msgnav.gif\\" width=\\"5\\" height=\\"5\\" />&nbsp;<a href=\\"[!--news.url--]core/action/ListInfo.php?classid=[!--self.classid--]&ph=1&myarea=宣武区\\">宣武区</a></td>\r\n		<td><img src=\\"[!--news.url--]core/data/images/msgnav.gif\\" width=\\"5\\" height=\\"5\\" />&nbsp;<a href=\\"[!--news.url--]core/action/ListInfo.php?classid=[!--self.classid--]&ph=1&myarea=大兴区\\">大兴区</a></td>\r\n	</tr>\r\n	<tr>\r\n		<td><img src=\\"[!--news.url--]core/data/images/msgnav.gif\\" width=\\"5\\" height=\\"5\\" /><a href=\\"[!--news.url--]core/action/ListInfo.php?classid=[!--self.classid--]&ph=1&myarea=朝阳区\\">&nbsp;朝阳区</a></td>\r\n		<td><img src=\\"[!--news.url--]core/data/images/msgnav.gif\\" width=\\"5\\" height=\\"5\\" />&nbsp;<a href=\\"[!--news.url--]core/action/ListInfo.php?classid=[!--self.classid--]&ph=1&myarea=海淀区\\">海淀区</a></td>\r\n		<td><img src=\\"[!--news.url--]core/data/images/msgnav.gif\\" width=\\"5\\" height=\\"5\\" />&nbsp;<a href=\\"[!--news.url--]core/action/ListInfo.php?classid=[!--self.classid--]&ph=1&myarea=昌平区\\">昌平区</a></td>\r\n	</tr>\r\n	<tr>\r\n		<td><img src=\\"[!--news.url--]core/data/images/msgnav.gif\\" width=\\"5\\" height=\\"5\\" />&nbsp;<a href=\\"[!--news.url--]core/action/ListInfo.php?classid=[!--self.classid--]&ph=1&myarea=丰台区\\">丰台区</a></td>\r\n		<td><img src=\\"[!--news.url--]core/data/images/msgnav.gif\\" width=\\"5\\" height=\\"5\\" />&nbsp;<a href=\\"[!--news.url--]core/action/ListInfo.php?classid=[!--self.classid--]&ph=1&myarea=石景山区\\">石景山区</a></td>\r\n		<td><img src=\\"[!--news.url--]core/data/images/msgnav.gif\\" width=\\"5\\" height=\\"5\\" />&nbsp;<a href=\\"[!--news.url--]core/action/ListInfo.php?classid=[!--self.classid--]&ph=1&myarea=其它\\">其它</a></td>\r\n	</tr>\r\n</table>', 0, 0, 0),
(5, 'infoclassnav', '分类信息分类导航', '<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"4\\" cellspacing=\\"0\\">\r\n  <tr>\r\n    <td bgcolor=\\"#EEF1F4\\">&nbsp;<img src=\\"[!--news.url--]core/data/images/msgnav.gif\\" width=\\"5\\" height=\\"5\\" />&nbsp;<a href=\\"[!--news.url--]core/action/ListInfo/?classid=10\\"><strong>房屋信息</strong></a></td>\r\n  </tr> \r\n</table>\r\n<table width=\\"96%\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"0\\" cellspacing=\\"4\\">\r\n  <tr>\r\n    <td width=\\"33%\\"><a href=\\"[!--news.url--]core/action/ListInfo/?classid=11\\">房屋求租</a></td>\r\n    <td width=\\"33%\\"><a href=\\"[!--news.url--]core/action/ListInfo/?classid=12\\">房屋出租</a></td>\r\n  		<td width=\\"33%\\"><a href=\\"[!--news.url--]core/action/ListInfo/?classid=15\\">办公用房</a></td>\r\n  </tr>\r\n  <tr>\r\n    <td><a href=\\"[!--news.url--]core/action/ListInfo/?classid=13\\">房屋求购</a></td>\r\n    <td><a href=\\"[!--news.url--]core/action/ListInfo/?classid=14\\">房屋出售</a></td>\r\n  		<td><a href=\\"[!--news.url--]core/action/ListInfo/?classid=16\\">旺铺门面</a></td>\r\n  </tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"4\\" bgcolor=\\"#EEF1F4\\">\r\n  <tr>\r\n    <td>&nbsp;<img src=\\"[!--news.url--]core/data/images/msgnav.gif\\" width=\\"5\\" height=\\"5\\" />&nbsp;<a href=\\"[!--news.url--]core/action/ListInfo/?classid=17\\"><strong>跳蚤市场</strong></a></td>\r\n  </tr>\r\n</table>\r\n<table width=\\"96%\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"0\\" cellspacing=\\"4\\">\r\n  <tr>\r\n    <td width=\\"33%\\"><a href=\\"[!--news.url--]core/action/ListInfo/?classid=18\\">电脑配件</a></td>\r\n    <td width=\\"33%\\"><a href=\\"[!--news.url--]core/action/ListInfo/?classid=19\\">电器数码</a></td>\r\n  		<td width=\\"33%\\"><a href=\\"[!--news.url--]core/action/ListInfo/?classid=21\\">居家用品</a></td>\r\n  </tr>\r\n  <tr>\r\n    <td><a href=\\"[!--news.url--]core/action/ListInfo/?classid=20\\">通讯产品</a></td>\r\n    <td><a href=\\"[!--news.url--]core/action/ListInfo/?classid=21\\"></a></td>\r\n  		<td>&nbsp;</td>\r\n  </tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"4\\" cellspacing=\\"0\\" bgcolor=\\"#EEF1F4\\">\r\n  <tr>\r\n    <td>&nbsp;<img src=\\"[!--news.url--]core/data/images/msgnav.gif\\" width=\\"5\\" height=\\"5\\" />&nbsp;<a href=\\"[!--news.url--]core/action/ListInfo/?classid=22\\"><strong>同城生活</strong></a></td>\r\n  </tr>\r\n</table>\r\n<table width=\\"96%\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"0\\" cellspacing=\\"4\\">\r\n  <tr>\r\n    <td width=\\"33%\\"><a href=\\"[!--news.url--]core/action/ListInfo/?classid=23\\">本地新闻</a></td>\r\n    <td width=\\"33%\\"><a href=\\"[!--news.url--]core/action/ListInfo/?classid=24\\">购物打折</a></td>\r\n  		<td width=\\"33%\\"><a href=\\"[!--news.url--]core/action/ListInfo/?classid=26\\">便民告示</a></td>\r\n  </tr>\r\n  <tr>\r\n    <td><a href=\\"[!--news.url--]core/action/ListInfo/?classid=25\\">旅游活动</a></td>\r\n    <td>&nbsp;</td>\r\n  		<td>&nbsp;</td>\r\n  </tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"4\\" cellspacing=\\"0\\" bgcolor=\\"#EEF1F4\\">\r\n  <tr>\r\n    <td>&nbsp;<img src=\\"[!--news.url--]core/data/images/msgnav.gif\\" width=\\"5\\" height=\\"5\\" />&nbsp;<a href=\\"[!--news.url--]core/action/ListInfo/?classid=27\\"><strong>求职招聘</strong></a></td>\r\n  </tr>\r\n</table>\r\n<table width=\\"96%\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"0\\" cellspacing=\\"4\\">\r\n  <tr>\r\n    <td width=\\"33%\\"><a href=\\"[!--news.url--]core/action/ListInfo/?classid=28\\">工程技术</a></td>\r\n    <td width=\\"33%\\"><a href=\\"[!--news.url--]core/action/ListInfo/?classid=29\\">财务会计</a></td>\r\n  		<td width=\\"33%\\"><a href=\\"[!--news.url--]core/action/ListInfo/?classid=31\\">经营管理</a></td>\r\n  </tr>\r\n  <tr>\r\n    <td><a href=\\"[!--news.url--]core/action/ListInfo/?classid=30\\">餐饮行业</a></td>\r\n    <td><a href=\\"[!--news.url--]core/action/ListInfo/?classid=31\\"></a></td>\r\n  		<td>&nbsp;</td>\r\n  </tr>\r\n</table>', 0, 0, 0),
(7, 'pl', '评论表单', '<script>\r\n		  function CheckPl(obj)\r\n		  {\r\n		  if(obj.saytext.value==\\"\\")\r\n		  {\r\n		  alert(\\"您没什么话要说吗？\\");\r\n		  obj.saytext.focus();\r\n		  return false;\r\n		  }\r\n		  return true;\r\n		  }\r\n		  </script><form action=\\"[!--news.url--]core/pl/doaction.php\\" method=\\"post\\" name=\\"saypl\\" id=\\"saypl\\" onsubmit=\\"return CheckPl(document.saypl)\\">\r\n<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\" id=\\"plpost\\">\r\n\r\n<tr>\r\n<td><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\" class=\\"title\\">\r\n<tr>\r\n<td><strong>发表评论</strong></td>\r\n<td align=\\"right\\"><a href=\\"[!--news.url--]core/pl/?classid=[!--classid--]&amp;id=[!--id--]\\">共有<span><script type=\\"text/javascript\\" src=\\"[!--news.url--]core/public/ViewClick/?classid=[!--classid--]&id=[!--id--]&down=2\\"></script></span>条评论</a></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"10\\" cellpadding=\\"0\\">\r\n<tr>\r\n<td><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"2\\">\r\n<tr>\r\n<td width=\\"56%\\" align=\\"left\\">用户名:\r\n<input name=\\"username\\" type=\\"text\\" class=\\"inputText\\" id=\\"username\\" value=\\"\\" size=\\"16\\" /></td>\r\n<td width=\\"44%\\" align=\\"left\\">密码:\r\n<input name=\\"password\\" type=\\"password\\" class=\\"inputText\\" id=\\"password\\" value=\\"\\" size=\\"16\\" /></td>\r\n</tr>\r\n<tr>\r\n<td align=\\"left\\">验证码:\r\n<input name=\\"key\\" type=\\"text\\" class=\\"inputText\\" size=\\"10\\" />\r\n<img src=\\"[!--news.url--]core/ShowKey/?v=pl\\" align=\\"absmiddle\\" /> </td>\r\n<td align=\\"left\\"><input name=\\"nomember\\" type=\\"checkbox\\" id=\\"nomember\\" value=\\"1\\" checked=\\"checked\\" />\r\n匿名发表</td>\r\n</tr>\r\n</table>\r\n<textarea name=\\"saytext\\" rows=\\"6\\" id=\\"saytext\\"></textarea><input name=\\"imageField\\" type=\\"image\\" src=\\"[!--news.url--]core/data/images/postpl.gif\\"/>\r\n<input name=\\"id\\" type=\\"hidden\\" id=\\"id\\" value=\\"[!--id--]\\" />\r\n<input name=\\"classid\\" type=\\"hidden\\" id=\\"classid\\" value=\\"[!--classid--]\\" />\r\n<input name=\\"melve\\" type=\\"hidden\\" id=\\"melve\\" value=\\"AddPl\\" />\r\n<input name=\\"repid\\" type=\\"hidden\\" id=\\"repid\\" value=\\"0\\" />\r\n<input type=\\"hidden\\" name=\\"elvefrom\\" value=\\"[!--titleurl--]\\"></td>\r\n</tr>\r\n</table>\r\n</td>\r\n</tr>\r\n</table></form>', 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `base_melvetempvarclass`
--

CREATE TABLE IF NOT EXISTS `base_melvetempvarclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melvetogzts`
--

CREATE TABLE IF NOT EXISTS `base_melvetogzts` (
  `togid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `keyboard` varchar(255) NOT NULL DEFAULT '',
  `searchf` varchar(255) NOT NULL DEFAULT '',
  `query` text NOT NULL,
  `specialsearch` varchar(255) NOT NULL DEFAULT '',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `retype` tinyint(1) NOT NULL DEFAULT '0',
  `startday` varchar(20) NOT NULL DEFAULT '',
  `endday` varchar(20) NOT NULL DEFAULT '',
  `startid` int(10) unsigned NOT NULL DEFAULT '0',
  `endid` int(10) unsigned NOT NULL DEFAULT '0',
  `pline` int(11) NOT NULL DEFAULT '0',
  `doelvezt` tinyint(1) NOT NULL DEFAULT '0',
  `togztname` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`togid`),
  KEY `togztname` (`togztname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melveuser`
--

CREATE TABLE IF NOT EXISTS `base_melveuser` (
  `userid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `rnd` varchar(20) NOT NULL DEFAULT '',
  `adminclass` mediumtext NOT NULL,
  `groupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `styleid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `filelevel` tinyint(1) NOT NULL DEFAULT '0',
  `salt` varchar(8) NOT NULL DEFAULT '',
  `loginnum` int(10) unsigned NOT NULL DEFAULT '0',
  `lasttime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(20) NOT NULL DEFAULT '',
  `truename` varchar(20) NOT NULL DEFAULT '',
  `email` varchar(120) NOT NULL DEFAULT '',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `pretime` int(10) unsigned NOT NULL DEFAULT '0',
  `preip` varchar(20) NOT NULL DEFAULT '',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `addip` varchar(20) NOT NULL DEFAULT '',
  `userprikey` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`userid`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `base_melveuser`
--

INSERT INTO `base_melveuser` (`userid`, `username`, `password`, `rnd`, `adminclass`, `groupid`, `checked`, `styleid`, `filelevel`, `salt`, `loginnum`, `lasttime`, `lastip`, `truename`, `email`, `classid`, `pretime`, `preip`, `addtime`, `addip`, `userprikey`) VALUES
(1, 'ADmegic', '11c37f0bb9d67548a852623e8e117e53', 'zVRz2i7CiShwfazrZR3F', '', 1, 0, 1, 0, 'bFeyZv5K', 1, 1386416410, '::1', '', '', 0, 0, '', 1386416088, '::1', 'j9umjjgmBV2hJDfByZrJ622htLwpGVFC9uZiPRJHzfjRJpVk');

-- --------------------------------------------------------

--
-- 表的结构 `base_melveuseradd`
--

CREATE TABLE IF NOT EXISTS `base_melveuseradd` (
  `userid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `equestion` tinyint(4) NOT NULL DEFAULT '0',
  `eanswer` varchar(32) NOT NULL DEFAULT '',
  `openip` text NOT NULL,
  `certkey` varchar(60) NOT NULL DEFAULT '',
  `certtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `base_melveuseradd`
--

INSERT INTO `base_melveuseradd` (`userid`, `equestion`, `eanswer`, `openip`, `certkey`, `certtime`) VALUES
(1, 0, '', '', '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `base_melveuserclass`
--

CREATE TABLE IF NOT EXISTS `base_melveuserclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melveuserjs`
--

CREATE TABLE IF NOT EXISTS `base_melveuserjs` (
  `jsid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `jsname` varchar(60) NOT NULL DEFAULT '',
  `jssql` text NOT NULL,
  `jstempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `jsfilename` varchar(120) NOT NULL DEFAULT '',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`jsid`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melveuserjsclass`
--

CREATE TABLE IF NOT EXISTS `base_melveuserjsclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melveuserlist`
--

CREATE TABLE IF NOT EXISTS `base_melveuserlist` (
  `listid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `listname` varchar(60) NOT NULL DEFAULT '',
  `pagetitle` varchar(120) NOT NULL DEFAULT '',
  `filepath` varchar(120) NOT NULL DEFAULT '',
  `filetype` varchar(12) NOT NULL DEFAULT '',
  `totalsql` text NOT NULL,
  `listsql` text NOT NULL,
  `maxnum` int(11) NOT NULL DEFAULT '0',
  `lencord` int(11) NOT NULL DEFAULT '0',
  `listtempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `pagekeywords` varchar(255) NOT NULL DEFAULT '',
  `pagedescription` varchar(255) NOT NULL DEFAULT '',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`listid`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melveuserlistclass`
--

CREATE TABLE IF NOT EXISTS `base_melveuserlistclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melveuserloginck`
--

CREATE TABLE IF NOT EXISTS `base_melveuserloginck` (
  `userid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `andauth` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `base_melveuserloginck`
--

INSERT INTO `base_melveuserloginck` (`userid`, `andauth`) VALUES
(1, '9307703bb8461e0b16e50c8c3b317a4f');

-- --------------------------------------------------------

--
-- 表的结构 `base_melvevote`
--

CREATE TABLE IF NOT EXISTS `base_melvevote` (
  `voteid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) NOT NULL DEFAULT '',
  `votenum` int(10) unsigned NOT NULL DEFAULT '0',
  `voteip` mediumtext NOT NULL,
  `votetext` text NOT NULL,
  `voteclass` tinyint(1) NOT NULL DEFAULT '0',
  `doip` tinyint(1) NOT NULL DEFAULT '0',
  `votetime` int(10) unsigned NOT NULL DEFAULT '0',
  `dotime` date NOT NULL DEFAULT '0000-00-00',
  `width` int(11) NOT NULL DEFAULT '0',
  `height` int(11) NOT NULL DEFAULT '0',
  `addtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`voteid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melvevotemod`
--

CREATE TABLE IF NOT EXISTS `base_melvevotemod` (
  `voteid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) NOT NULL DEFAULT '',
  `votetext` text NOT NULL,
  `voteclass` tinyint(1) NOT NULL DEFAULT '0',
  `doip` tinyint(1) NOT NULL DEFAULT '0',
  `dotime` date NOT NULL DEFAULT '0000-00-00',
  `tempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `width` int(11) NOT NULL DEFAULT '0',
  `height` int(11) NOT NULL DEFAULT '0',
  `votenum` int(10) unsigned NOT NULL DEFAULT '0',
  `ysvotename` varchar(60) NOT NULL DEFAULT '',
  PRIMARY KEY (`voteid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melvevotetemp`
--

CREATE TABLE IF NOT EXISTS `base_melvevotetemp` (
  `tempid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tempname` varchar(60) NOT NULL DEFAULT '',
  `temptext` mediumtext NOT NULL,
  PRIMARY KEY (`tempid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `base_melvevotetemp`
--

INSERT INTO `base_melvevotetemp` (`tempid`, `tempname`, `temptext`) VALUES
(1, '默认投票模板', '<table width=100% border=0 align=center cellpadding=3 cellspacing=0><form name=melvevote method=POST action=''[!--vote.action--]'' target=_blank><tr><td><strong>[!--title--]</strong></td></tr><input type=hidden name=voteid value=''[!--voteid--]''><input type=hidden name=melve value=AddVote>\r\n[!--Elvesnews.listtemp--]\r\n<tr><td>[!--vote.box--]&nbsp;[!--vote.name--]</td></tr>\r\n[!--Elvesnews.listtemp--]\r\n<tr><td align=center><input type=submit name=submit value=投票>&nbsp;&nbsp;<input type=button name=button value=查看结果 onclick=javascript:window.open(''[!--vote.view--]'','''',''width=[!--width--],height=[!--height--],scrollbars=yes'');></td></tr></form></table>'),
(2, '默认信息投票模板', '<table width=\\''100%\\'' border=0 align=center cellpadding=3 cellspacing=0><form name=melvevote method=POST action=\\''[!--news.url--]core/melve/index.php\\'' target=_blank><tr><td><strong>[!--title--]</strong></td></tr><input type=hidden name=id value=\\''[!--id--]\\''><input type=hidden name=classid value=\\''[!--classid--]\\''><input type=hidden name=melve value=AddInfoVote>\r\n[!--Elvesnews.listtemp--]\r\n<tr><td>[!--vote.box--]&nbsp;[!--vote.name--]</td></tr>\r\n[!--Elvesnews.listtemp--]\r\n<tr><td align=center><input type=submit name=submit value=投票>&nbsp;&nbsp;<input type=button name=button value=查看结果 onclick=javascript:window.open(\\''[!--news.url--]core/public/vote/?classid=[!--classid--]&id=[!--id--]\\'',\\''\\'',\\''width=[!--width--],height=[!--height--],scrollbars=yes\\'');></td></tr></form></table>');

-- --------------------------------------------------------

--
-- 表的结构 `base_melvewapstyle`
--

CREATE TABLE IF NOT EXISTS `base_melvewapstyle` (
  `styleid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `stylename` varchar(60) NOT NULL DEFAULT '',
  `path` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`styleid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `base_melvewapstyle`
--

INSERT INTO `base_melvewapstyle` (`styleid`, `stylename`, `path`) VALUES
(1, '新闻模板', 1),
(2, '分类信息模板', 2);

-- --------------------------------------------------------

--
-- 表的结构 `base_melvewfinfo`
--

CREATE TABLE IF NOT EXISTS `base_melvewfinfo` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `wfid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tid` int(10) unsigned NOT NULL DEFAULT '0',
  `groupid` text NOT NULL,
  `userclass` text NOT NULL,
  `username` text NOT NULL,
  `checknum` tinyint(4) NOT NULL DEFAULT '0',
  `tstatus` varchar(30) NOT NULL DEFAULT '0',
  `checktno` tinyint(4) NOT NULL DEFAULT '0',
  KEY `id` (`id`,`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `base_melvewfinfolog`
--

CREATE TABLE IF NOT EXISTS `base_melvewfinfolog` (
  `logid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `wfid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tid` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `checktime` int(10) unsigned NOT NULL DEFAULT '0',
  `checktext` text NOT NULL,
  `checknum` tinyint(4) NOT NULL DEFAULT '0',
  `checktype` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`logid`),
  KEY `id` (`id`,`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melvewords`
--

CREATE TABLE IF NOT EXISTS `base_melvewords` (
  `wordid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `oldword` varchar(255) NOT NULL DEFAULT '',
  `newword` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`wordid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melveworkflow`
--

CREATE TABLE IF NOT EXISTS `base_melveworkflow` (
  `wfid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `wfname` varchar(60) NOT NULL DEFAULT '',
  `wftext` varchar(255) NOT NULL DEFAULT '',
  `myorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `adduser` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`wfid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melveworkflowitem`
--

CREATE TABLE IF NOT EXISTS `base_melveworkflowitem` (
  `tid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wfid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tname` varchar(60) NOT NULL DEFAULT '',
  `tno` int(11) NOT NULL DEFAULT '0',
  `ttext` varchar(255) NOT NULL DEFAULT '',
  `groupid` text NOT NULL,
  `userclass` text NOT NULL,
  `username` text NOT NULL,
  `lztype` tinyint(1) NOT NULL DEFAULT '0',
  `tbdo` int(10) unsigned NOT NULL DEFAULT '0',
  `tddo` int(10) unsigned NOT NULL DEFAULT '0',
  `tstatus` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`tid`),
  KEY `wfid` (`wfid`),
  KEY `tno` (`tno`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melvewriter`
--

CREATE TABLE IF NOT EXISTS `base_melvewriter` (
  `wid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `writer` varchar(30) NOT NULL DEFAULT '',
  `email` varchar(120) NOT NULL DEFAULT '',
  PRIMARY KEY (`wid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melveyh`
--

CREATE TABLE IF NOT EXISTS `base_melveyh` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `yhname` varchar(30) NOT NULL DEFAULT '',
  `yhtext` varchar(255) NOT NULL DEFAULT '',
  `hlist` int(11) NOT NULL DEFAULT '0',
  `qlist` int(11) NOT NULL DEFAULT '0',
  `bqnew` int(11) NOT NULL DEFAULT '0',
  `bqhot` int(11) NOT NULL DEFAULT '0',
  `bqpl` int(11) NOT NULL DEFAULT '0',
  `bqgood` int(11) NOT NULL DEFAULT '0',
  `bqfirst` int(11) NOT NULL DEFAULT '0',
  `bqdown` int(11) NOT NULL DEFAULT '0',
  `otherlink` int(11) NOT NULL DEFAULT '0',
  `qmlist` int(11) NOT NULL DEFAULT '0',
  `dobq` tinyint(1) NOT NULL DEFAULT '0',
  `dojs` tinyint(1) NOT NULL DEFAULT '0',
  `dosbq` tinyint(1) NOT NULL DEFAULT '0',
  `rehtml` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melvezt`
--

CREATE TABLE IF NOT EXISTS `base_melvezt` (
  `ztid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `ztname` varchar(60) NOT NULL DEFAULT '',
  `onclick` int(10) unsigned NOT NULL DEFAULT '0',
  `ztnum` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `listtempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ztpath` varchar(255) NOT NULL DEFAULT '',
  `zttype` varchar(10) NOT NULL DEFAULT '',
  `zturl` varchar(200) NOT NULL DEFAULT '',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `islist` tinyint(1) NOT NULL DEFAULT '0',
  `maxnum` int(11) NOT NULL DEFAULT '0',
  `reorder` varchar(50) NOT NULL DEFAULT '',
  `intro` text NOT NULL,
  `ztimg` varchar(255) NOT NULL DEFAULT '',
  `zcid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `showzt` tinyint(1) NOT NULL DEFAULT '0',
  `ztpagekey` varchar(255) NOT NULL DEFAULT '',
  `classtempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `myorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `usezt` tinyint(1) NOT NULL DEFAULT '0',
  `yhid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `closepl` tinyint(1) NOT NULL DEFAULT '0',
  `checkpl` tinyint(1) NOT NULL DEFAULT '0',
  `restb` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `usernames` varchar(255) NOT NULL DEFAULT '',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `pltempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ztid`),
  KEY `classid` (`classid`),
  KEY `zcid` (`zcid`),
  KEY `usezt` (`usezt`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melveztadd`
--

CREATE TABLE IF NOT EXISTS `base_melveztadd` (
  `ztid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `classtext` mediumtext NOT NULL,
  PRIMARY KEY (`ztid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `base_melveztclass`
--

CREATE TABLE IF NOT EXISTS `base_melveztclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melveztf`
--

CREATE TABLE IF NOT EXISTS `base_melveztf` (
  `fid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `f` varchar(30) NOT NULL DEFAULT '',
  `fname` varchar(30) NOT NULL DEFAULT '',
  `fform` varchar(20) NOT NULL DEFAULT '',
  `fhtml` mediumtext NOT NULL,
  `fzs` varchar(255) NOT NULL DEFAULT '',
  `myorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ftype` varchar(30) NOT NULL DEFAULT '',
  `flen` varchar(20) NOT NULL DEFAULT '',
  `fvalue` text NOT NULL,
  `fformsize` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melveztinfo`
--

CREATE TABLE IF NOT EXISTS `base_melveztinfo` (
  `zid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ztid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `cid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `mid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `isgood` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`zid`),
  KEY `ztid` (`ztid`),
  KEY `cid` (`cid`),
  KEY `classid` (`classid`),
  KEY `id` (`id`),
  KEY `newstime` (`newstime`),
  KEY `mid` (`mid`),
  KEY `isgood` (`isgood`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melvezttype`
--

CREATE TABLE IF NOT EXISTS `base_melvezttype` (
  `cid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `ztid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `cname` varchar(20) NOT NULL DEFAULT '',
  `myorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `islist` tinyint(1) NOT NULL DEFAULT '0',
  `listtempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `maxnum` int(10) unsigned NOT NULL DEFAULT '0',
  `tnum` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `reorder` varchar(50) NOT NULL DEFAULT '',
  `ttype` varchar(10) NOT NULL DEFAULT '',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`),
  KEY `ztid` (`ztid`),
  KEY `myorder` (`myorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `base_melvezttypeadd`
--

CREATE TABLE IF NOT EXISTS `base_melvezttypeadd` (
  `cid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `classtext` mediumtext NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
