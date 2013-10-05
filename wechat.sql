-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2013 年 09 月 21 日 07:31
-- 服务器版本: 5.6.12-log
-- PHP 版本: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `wechat`
--
CREATE DATABASE IF NOT EXISTS `wechat` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `wechat`;

-- --------------------------------------------------------

--
-- 表的结构 `info`
--

CREATE TABLE IF NOT EXISTS `info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wechatid` varchar(50) COLLATE utf8_bin NOT NULL,
  `wechatdes` text COLLATE utf8_bin NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `imgurl` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=52 ;

--
-- 转存表中的数据 `info`
--

INSERT INTO `info` (`id`, `wechatid`, `wechatdes`, `date`, `imgurl`) VALUES
(1, 'fuck', 'fuck you', '0000-00-00 00:00:00', 'http://fuck.com'),
(2, 'wei_yanyuan                     5.0', '\r\n', '0000-00-00 00:00:00', 'http://www.anyv.net/datafile/2013/09/20525_201309152229401prTp.jpg'),
(3, 'asdfasdf          ddddddd                     dddd', '\r\n', '0000-00-00 00:00:00', 'http://www.anyv.net/datafile/2013/09/20083_2013091421575115BIh.jpg'),
(4, 'wei_yanyuan                     5.0', '\r\n', '0000-00-00 00:00:00', 'http://www.anyv.net/datafile/2013/09/20525_201309121610591GJ64.jpg'),
(5, 'yulepi', '\r\n', '0000-00-00 00:00:00', 'http://www.anyv.net/datafile/2013/09/20421_201309111617401PiNF.jpg'),
(6, 'hongji_vip                     ', '\r\n', '0000-00-00 00:00:00', 'http://www.anyv.net/datafile/2013/06/12490_201306170026391aosy.jpg'),
(7, 'beyond          wwwbeyonddiguocn                  ', ' 是一家以提供BEYOND相关信息为主的专业网站!BEYOND成员,黄家驹,黄家强,黄贯中,叶世荣.  ', '0000-00-00 00:00:00', 'http://www.anyv.net/attachments/2013/04/5783_201304191712041e11O.jpg'),
(8, 'jingboranzixun', '\r\n\r\n  \r\n  井柏然资讯直通车微信正式开通啦，扫描二维码或者添加微信号，就可以及时了解到井柏然的最新消息咯~期待你的加入~~ ', '0000-00-00 00:00:00', 'http://www.anyv.net/attachments/2013/01/1_2013011503381116COP.jpg'),
(9, 'Willpanweipo', 'Willpanweipo 潘玮柏（Wilber Pan）美籍华人， 台湾流行歌手 2011年主演《爱∞无限》当选台湾46届金钟奖最佳男主角。潘玮柏刚出道时除身为ChannelV音乐台VJ外，常在台北接拍平面及电视广告，2002年向歌坛发展，缔造出《高手》《零零七》等八张畅销专辑，成为歌影视界的实力偶像全能艺人，在大陆人气鼎旺。2009年更升级潮店老板，所开设的NPC潮流服饰店在上海、北京均有店铺。2011年跨界软件行业，担任卡米果公司游戏创意总监设计了下载量第一的“熊猫屁王”游戏，成为中国演艺界第一个成功跨足软件业的艺人。其唱片全亚洲总销量已突破600万张。  			  			  			  			', '0000-00-00 00:00:00', 'http://www.anyv.net/attachments/2013/01/1_201301060615551B4G4.jpg'),
(10, 'zhangxinyixinyi', '\r\n张歆艺（1981年5月29日—），中国内地女演员。出生于四川成都。1998年毕业于四川艺术职业学院，1998至2001年为深圳市歌舞团演员，2001年至2005年为中央戏剧学院表演系本科班学生。2012年，凭借热播剧《北京爱情故事》中爽朗率性的“夏姑娘”林夏一角而人气高涨。同年，主演杨树鹏指导的电影《匹夫》，受到更多的关注。在2012年“80后新生代娱乐大明星”评选活动中，张歆艺被评选为内地新“四小花旦”（与杨幂、刘诗诗及白百何）之一。', '0000-00-00 00:00:00', 'http://www.anyv.net/attachments/2013/01/1_201301060555531812q.jpg'),
(11, 'jcfangzi', '房祖名，原名陈祖名。中国香港知名演员、歌手。父亲是巨星成龙，母亲是港姐林凤娇，人称“龙子”。 自出道以来，他已出演了《千机变2》《追影》《早熟》《花木兰》等影片，他还出过自己的唱片《边走边唱》。', '0000-00-00 00:00:00', 'http://www.anyv.net/attachments/2013/01/1_201301060554021d7oq.jpg'),
(12, 'fengshaofeng1007', 'fengshaofeng1007 冯绍峰，本名冯威，出生于上海，中国内地男演员，2001年毕业于上海戏剧学院97级表演系本科。前期多饰演风度翩翩的贵族公子，《锁清秋》中的沈朝宗、《佳期如梦》中的孟和平等，获得「年代戏第一小生」的称号。2011年凭借清穿剧《宫锁心玉》中的八阿哥一角一炮而红，同年出演李仁港导演的电影《鸿门宴传奇》中项羽一角，成功塑造了霸气与柔情兼具的西楚霸王。之后相继参与了多部电影演出，获得媒体和观众的一致肯定。2012年担任电视剧《兰陵王》的监制和主演。  			  			  			  			', '0000-00-00 00:00:00', 'http://www.anyv.net/attachments/2013/01/1_201301060552071qQoc.jpg'),
(13, 'liyugang1311', '李玉刚微信号：liyugang1311 \r\n', '0000-00-00 00:00:00', 'http://www.anyv.net/attachments/2013/01/1_201301060549461gbjO.jpg'),
(14, 'Rainieyang060477', '杨丞琳（Rainie Yang，1984年6月4日—）中国台湾人，祖籍广东省，毕业于华冈艺校，华语女歌手、演员、主持人，是一位多栖发展的女明星，唱片销量超过1005万张，有“亚洲全能天后”之称。2000年加入4 in love组合出道，2002年末主持综艺节目《我猜我猜我猜猜猜》长达4年。2005年凭借专辑《暧昧》和偶像剧《恶魔在身边》而走红。2010年凭借主演的偶像剧《海派甜心》夺得第45届电视金钟奖最佳女演员，封获“金钟影后”称号。', '0000-00-00 00:00:00', 'http://www.anyv.net/attachments/2013/01/1_2013010605472712uft.jpeg'),
(15, 'caoyunjin', '微信号：caoyunjin 曹云金，相声演员，2001年经田立禾先生开蒙，2002年拜师郭德纲先生学习相声艺术。经常表演的节目有《拴娃娃》、《大保镖》、《托妻献子》、《学四省》等，被称为“德云四少”之一。', '0000-00-00 00:00:00', 'http://www.anyv.net/attachments/2013/01/1_20130106054504161u6.jpg'),
(16, 'le-jia', '乐嘉微信号： le-jia \r\n 乐嘉，中国性格色彩研究中心创办人，FPA(Four-colors Personality Analysis) 性格色彩创始人，培训师，电视节目主持人。备受各阶层广泛推崇的卓越的演讲者和培训导师，著有畅销书《FPA性格色彩入门——跟乐嘉色眼识人》、《色眼再识人》、《让你的爱非诚勿扰》、《人之初，性本色》《跟乐嘉学性格色彩》和《微勃症》。同时出版了培训教学DVD《性格色彩乐嘉说》。于2010年担任江苏卫视《非诚勿扰》嘉宾主持，11年江苏卫视《不见不散》主持人。   			  			  			  			', '0000-00-00 00:00:00', 'http://www.anyv.net/attachments/2013/01/1_201301060543261qFw3.jpg'),
(17, 'BY2          by2youyou01', 'BY2微信号：by2youyou01 ', '0000-00-00 00:00:00', 'http://www.anyv.net/attachments/2013/01/1_2013010605415815999.jpg'),
(18, 'liksunfong', 'liksunfong 方力申（Alex Fong，1980年2月26日—），香港歌手、演员，前香港游泳代表，曾代表香港参与2000年悉尼奥运游泳项目，后来签约百代唱片加入娱乐圈。电视剧代表作有电视广播有限公司的《甜孙爷爷》。歌曲有《就是这么爱你》、《ABC君》、《在你遥远的附近》等，与绯闻女友邓丽欣合唱多首歌曲例如《好心好报》、《好好恋爱》、《十分．爱》。电影方面，他主演的爱情片《十分爱》与《我的最爱》票房均高达1200万。  			  			  			  			', '0000-00-00 00:00:00', 'http://www.anyv.net/attachments/2013/01/1_201301060540311H8mQ.jpg'),
(19, 'kenjiwu01', '吴克羣 微信号：kenjiwu01 \r\n吴克羣， 流行歌手，著名音乐人，作曲家，词人，兼具偶像与实力的创作歌手，华语乐坛颇具影响力的唱作天王。同时拥有演员、主持人、模特等多重身份，在戏剧、主持、电影、广告等领域都取得不俗成绩。2000年发行首张专辑并正式出道。 2010年9月15日宣布将艺名“吴克群”正式改回本名“吴克羣”， 出道至今，共发行7张唱片，其中6张全创作专辑。其唱片全亚洲总销量已突破600万张。 ', '0000-00-00 00:00:00', 'http://www.anyv.net/attachments/2013/01/1_2013010605355414gF8.jpg'),
(20, 'mengfeiweixin', '孟非微信号：mengfeiweixin \r\n\r\n', '0000-00-00 00:00:00', 'http://www.anyv.net/attachments/2013/01/1_201301060533171Xac7.jpg'),
(21, 'chilinglin', '林志玲，出生于中国台湾省台北市，毕业于多伦多大学，是台湾的一位超级名模，是港台两地的大明星。2003年，林志玲取代萧蔷当选“台湾第一美女”，接拍了无数名牌广告。2007年，林志玲和吴宇森合作拍摄大片《赤壁》，饰演周瑜的妻子小乔，之后出演了《幸福额度》《刺陵》《&nbsp;决战刹马镇》等多部影视剧。2011年，林志玲收入近2亿新台币，使其连续八年蝉联台湾最富女模。', '0000-00-00 00:00:00', 'http://www.anyv.net/attachments/2013/01/1_20130106053048178C7.jpg'),
(22, 'wangfengmusic', '\r\n\r\n汪峰，内地著名音乐人，中国新摇滚乐的代表人物之一。鲍家街43号乐队发起人，自幼接受专业音乐教育。汪峰本人具有较强的歌曲创造能力，被称为“音乐才子”。曾多次荣获国内各大音乐颁奖典礼的最佳男歌手、最佳制作人大奖。其音乐风格独特，歌曲较为关注人的理想与现实世界的困惑。《飞得更高》《怒放的生命》《春天里》《再见青春》等作品广为传唱。火爆2012夏天的《中国好声音》选秀节目，汪峰不但助阵那英的小二班比赛，其多首歌曲如《北京北京》由好声音年度总冠军梁博在巅峰时刻演唱，再次将汪峰及其作品推向新的高度。', '0000-00-00 00:00:00', 'http://www.anyv.net/attachments/2013/01/1_201301060529091WoPq.jpg'),
(23, 'dazuozone', '\r\n大左，原名左大建，中国大陆著名节目主持人，光线传媒首推男主持，“光线三宝”之一（另外两人是谢楠、柳岩）。主持娱乐现场、和蒙牛酸酸乳音乐风云榜等节目。', '0000-00-00 00:00:00', 'http://www.anyv.net/attachments/2013/01/1_201301060526251Czvn.jpg'),
(24, 'showlo_no1', '\r\n\r\n罗志祥（Show Lo），亚洲超人气偶像天王，有着亚洲舞王之称。是一名集歌手、舞者、演员、主持人等多方位发展的的全能艺人。近年自创品牌“STAGE”，成功进军潮流界，先后在台湾、香港、新加坡开设分店。所有唱片全亚洲销量超过700万张，并获得2010年和2011年台湾销售总冠军。唱片公司金牌大风及经纪公司百娱国际文化传媒有限公司称罗志祥2012年第9张最新专辑《有我在》于2012年4月6日正式发行。', '0000-00-00 00:00:00', 'http://www.anyv.net/attachments/2013/01/1_2013010605193410rJA.jpg'),
(25, 'qw735439846', '\r\n&nbsp;戚薇，中国大陆人气女歌手、演员。毕业于浙江传媒学院录音艺术专业。2006年参加上海东方卫视的《我型我秀》选秀节目出道，凭借一首《外滩十八号》红遍全国。发表个人单曲《太过爱你》《如果爱忘了》《黑白之间》《没收》《放开爱》等，也是内地为数不多的极具表演天赋的女歌手，主演电视作品《美人心计》《无懈可击之美女如云》《夏家三千金》《无懈可击之高手如林》《爱情睡醒了》等。', '0000-00-00 00:00:00', 'http://www.anyv.net/attachments/2013/01/1_2013010605055813Q3T.jpg'),
(26, 'wangjieloveyou', 'wangjieloveyou 王杰，1962年10月20日生，华语流行乐坛的超级巨星，出道至今已发行50余张个人专辑和30张精选辑，唱片累计销量至今已过8千万张。1987年发行专辑《一场游戏一场梦》，至今销量1800万张。代表作有歌曲《英雄泪》、《她的背影》、《永远相信爱情》、《我爱你》、《谁明浪子心》、《回家》、《红尘有你》、《梦在无梦的夜里》、《最后的温柔》、《向太阳怒吼》；专辑《是否我真的一无所有》、《忘了你忘了我》、《为了爱梦一生》。也出演过电影《七匹狼之青春引爆》、《至尊无上2之永霸天下》等。广州、深圳演唱会票房告捷。  			  			  			  			', '0000-00-00 00:00:00', 'http://www.anyv.net/attachments/2013/01/1_201301060500201r9Cf.jpg'),
(27, 'tangyan_wxvip', '\r\n唐嫣，中国女演员。1986年12月6日出生于上海，祖籍宁波。2004年被张艺谋亲定为奥运宝贝，代表中国站在世界的舞台上。2006年毕业于中央戏剧学院表演系本科班。2007年凭借电影处女作《离别也是爱》获第十三届上海电视节电视电影最佳女演员提名。2009年出演电视剧《仙剑奇侠传三》中坚强执着的紫萱和电影《风云2》中单纯善良的楚楚使她脱颖而出。2011年因在热播剧《夏家三千金》中饰演女主角夏天美一角而人气高涨。2012年接连在《乱世佳人》《X女特工》《面包树上的女人》《格子间女人》等电视剧中担任女主角，并成立「唐嫣工作室」。', '0000-00-00 00:00:00', 'http://www.anyv.net/attachments/2013/01/1_20130106045658127up.jpg'),
(28, 'Jiro_fans', '\r\n人气偶像汪东城携全新专辑入驻，搜索添加为好友，一手快讯早知晓。扫描汪东城微信帐号二维码添加为好友参与互动', '0000-00-00 00:00:00', 'http://www.anyv.net/attachments/2013/01/1_201301060451431xjIQ.jpg'),
(29, 'wxhelaoshi', '何炅 微信号：wxhelaoshi 何炅，中国知名主持人，北京外国语大学阿拉伯语系教师。自1998年起，主持湖南卫视的《快乐大本营》栏目长达十余年。此外，曾主演《正德演义》等影视剧，并发行过3张音乐专辑和4部文学作品 ', '0000-00-00 00:00:00', 'http://www.anyv.net/attachments/2012/12/1_20121224044835188J7.jpg'),
(30, 'foreverlove_mayday', '五月天（Mayday）是台湾的乐团，由乐队团长兼吉他手怪兽、主唱阿信、吉他手石头、贝斯玛莎和鼓手冠佑组成，前身为“So Band”乐团，在1997年3月29日改名为“ 五月天”。 ', '0000-00-00 00:00:00', 'http://www.anyv.net/attachments/2012/12/1_201212240447031wtXT.jpg'),
(31, 'libingbinglove', '李冰冰官方微信帐号', '0000-00-00 00:00:00', 'http://www.anyv.net/attachments/2012/12/1_201212102310281hWw6.jpg'),
(32, 'wx_liyc', '', '0000-00-00 00:00:00', 'http://www.starbot.org/attachments/2012/11/1_201211291300121h775.jpg'),
(33, 'shis_liu', '', '0000-00-00 00:00:00', 'http://www.starbot.org/attachments/2012/11/1_201211291258251gn95.jpg'),
(34, 'wx_hangeng', '', '0000-00-00 00:00:00', 'http://www.starbot.org/attachments/2012/11/1_201211291256501M357.jpg'),
(35, 'kangyong_cai', '', '0000-00-00 00:00:00', 'http://www.starbot.org/attachments/2012/11/1_2012112912551215RId.jpg'),
(36, 'wushowzongxian', '', '0000-00-00 00:00:00', 'http://www.starbot.org/attachments/2012/11/1_201211291253261hS2H.jpg'),
(37, 'hawicklaw', '\r\n刘恺威，香港影视歌多栖男艺人。1993年获加拿大华人歌手选拔赛冠军，1994年踏足演艺圈。在TVB做过歌手，跑过龙套，当过主角，2005年离开TVB，2007年正式投身内地。2008年凭《凤穿牡丹》中的霍冬青在内地崭露头角。2011年因《千山暮雪》中饰演的莫绍谦进一步走红，人气暴增，被观众封为“言情小说男主角最佳代言人”。2012年刘恺威首次制片并主演《盛夏晚晴天》。其他代表作有《国色天香》、《美人无泪》、《画皮Ⅱ》电视剧、《江南四大才子》等。12年12月28日，刘恺威正式宣布刘恺威工作室成立，13年3月刘恺威工作室将开拍《一念向北》。&nbsp;  			  			  			  			  			  			  			', '0000-00-00 00:00:00', 'http://www.anyv.net/attachments/2013/01/1_201301060613121k3hC.jpg'),
(38, 'huge_weixin', '\r\n&nbsp;胡歌（1982年9月20日－），中国上海人，知名男演员、歌手，有“古装王子”的美称。14岁便成为电视台的主持人，2005年毕业于上海戏剧学院01级表演系本科，随后签约上海唐人电影制作有限公司，凭借电视剧《仙剑奇侠传》男主角李逍遥而成名。2006年拍摄《射雕英雄传》期间遭遇车祸停滞一年，随后又出演了《仙剑奇侠传三》《神话》等热播剧，打破电视台收视记录。2012年担任电视剧《轩辕剑之天之痕》的出品人和主演。曾发行个人专辑《出发》及出版书籍《幸福的拾荒者》。其人擅长摄影，文采飞扬，志做导演，频唱影视剧歌曲  			  			  			', '0000-00-00 00:00:00', 'http://www.anyv.net/attachments/2013/01/1_201301060618241jBLx.jpg'),
(39, 'jingleixu', '&nbsp;徐静蕾，中国著名女演员、导演，与章子怡、周迅、赵薇并称中国演艺界四大花旦。代表作品有《一场风花雪月的事》《将爱情进行到底》《一个陌生女人的来信》《杜拉拉升职记》等。因其自导自演电影票房口碑双丰收及博客点击率在中国大陆地区长期排名第一，故有大陆影视圈才女之称；书法手写体“清冽而又优雅”独具个性美感，被开发出字库“方正静蕾简体”。2007年开设网络电子杂志《开啦》。2011年4月27日，博客女王徐静蕾正式开通腾讯微博，于2011年6月30号突破千万级粉丝，成为史上最快拥有千万粉丝的腾讯微博。  			  			  			', '0000-00-00 00:00:00', 'http://www.anyv.net/attachments/2013/01/1_2013010606212716531.jpg'),
(40, 'Chenkun_Chenkun', 'Chenkun_Chenkun 陈坤，内地著名男演员、歌手，中国影坛青年一代领军人物。1976年2月4日生于重庆，1999年主演电影《国歌》步入影坛，凭电影《云水谣》《画皮》荣获华表奖、百花奖双料影帝。近年以《龙门飞甲》《建国大业》《画皮》等电影中的突出表现赢得瞩目。曾任东方歌舞团歌唱演员，是内地首位登上央视春晚独唱、举行个人演唱会的男演员。演艺之外热心公益，被联合国儿童基金会任命为中国大使，持续捐助大爱清尘、关爱老兵、大病医保等民间慈善项目。发起公益项目“行走的力量”，个人随笔集《突然就走到了西藏》畅销30余万册，登上畅销作家榜。', '0000-00-00 00:00:00', 'http://www.anyv.net/attachments/2013/01/1_201301060623121Qss4.jpg'),
(41, 'ouhansheng', '', '0000-00-00 00:00:00', 'http://www.starbot.org/attachments/2012/11/1_201211291234211135D.jpg'),
(42, 'xuruyun_valen', '', '0000-00-00 00:00:00', 'http://www.starbot.org/attachments/2012/11/1_201211291231421mqiR.jpg'),
(43, 'karenmok01', '莫文蔚，香港著名影、视、歌多栖女星。英国伦敦大学高材生，掌握多门外语及乐器，在多部电影、电视剧中担纲主演，并且出有多张专辑并获得重量级音乐奖项。是华人娱乐圈中非常成功的女星之一，因此在整个华人地区拥有很高的知名度。2011年10月1日，莫文蔚与德国初恋男友Johannes在意大利完婚  			  			  			', '0000-00-00 00:00:00', 'http://www.anyv.net/attachments/2013/01/1_201301060625571uRzH.jpg'),
(44, 'angelababyyeung', '', '0000-00-00 00:00:00', 'http://www.starbot.org/attachments/2012/11/1_2012112912275216y8H.jpg'),
(45, 'account', '', '0000-00-00 00:00:00', 'http://www.starbot.org/attachments/2012/11/1_201211291226061qq88.jpg'),
(46, 'wlhmusicman', '\r\n王力宏（Leehom Wang，1976年5月17日—），美籍华人，祖籍浙江义乌。华语流行乐坛男歌手、音乐人，亚洲华语流行乐坛最具代表性的创作、偶像、实力派音乐天王。其唱片总销量在全亚洲已超过2500万张。从改编歌曲《龙的传人》中令人惊讶地融合DJ电子乐节奏的华人流行嘻哈摇滚风，到首次开创了chinked-out的新曲风，将华语音乐进一步推向全世界。除了在音乐方面的成就外，还参演了多部电影的拍摄，2010年首部自导自演的电影《恋爱通告》受到广大观众的好评。2011年9月推出全新作品《火力全开》，并以此为契机开展Music-man II全球巡回演唱会。&nbsp;  			  			  			', '0000-00-00 00:00:00', 'http://www.anyv.net/attachments/2013/01/1_201301060619471nM0U.jpg'),
(47, 'lovemingzone', 'lovemingzone \r\n黄晓明（1977年11月13日—），山东青岛人，中国著名男演员、歌手。2000年毕业于北京电影学院表演系本科班，现就读于北京大学EMBA。1998年开始拍电视剧，凭《大汉天子》成名，《神雕侠侣》和《新上海滩》跻身一线。2006年开始与名导合作商业片，奠定了其华语影坛新一代领军人物的地位，主演电影包括《风声》《叶问2》《唐伯虎点秋香2》《赵氏孤儿》《匹夫》《血滴子》《大上海》《中国先生》《白发魔女传之明月天国》等。除了片约不断，黄晓明也投资生意，积极参与慈善，并发行了两张个人专辑。  			  			  			', '0000-00-00 00:00:00', 'http://www.anyv.net/attachments/2013/01/1_20130106055727175vb.jpg'),
(48, 'vae_xs', '', '0000-00-00 00:00:00', 'http://www.starbot.org/attachments/2012/11/1_201211291220371ooU1.jpg'),
(49, 'miniyangmi', '\r\n&nbsp;杨幂（1986年9月12日—），中国女演员、歌手。出生于北京。毕业于北京电影学院表演系2005级本科班。在2009年4月的“80后新生代娱乐大明星”评选活动中，杨幂成为内地新“四小花旦”（与黄圣依、王珞丹以及刘亦菲）之一。2006年因出演《神雕侠侣》中“小东邪”郭襄而受到观众的关注，2009年又凭借《仙剑奇侠传三》而人气飙升。2011年因为在穿越剧《宫》（又名《宫锁心玉》）中扮演洛晴川一角而获得了更高的人气。  			  			  			', '0000-00-00 00:00:00', 'http://www.anyv.net/attachments/2013/01/1_201301060624531DMLG.jpg'),
(50, 'wsl-silence', '\r\n  			  			  			  			\r\n', '0000-00-00 00:00:00', ''),
(51, 'mavis-fan', '\r\n范晓萱是一位集演唱、乐器演奏、词曲创作于一体的专业音乐人。年仅12岁（1989年）出道，以小魔女的形象红遍全亚洲。曾获得台湾金曲奖最佳单曲制作人和最佳专辑。2000年后不甘于只做儿童偶像，便从活泼可爱的风格转型为成熟中性的摇滚朋克风格，由于前后差异较大，使大多数的儿童、少年歌迷不能接受从而转型失败。近年以乐团和驻唱表演为主，近日颇受欢迎的作品有范晓萱与100%乐团合作的新专辑《赤子》，2010年获第十届华语音乐传媒大奖最佳国语女歌手。2011年正式宣布签约新艺宝唱片及百娱国际文化传媒有限公司，唱片约和经纪约双丰收。  			  			  			', '0000-00-00 00:00:00', 'http://www.anyv.net/attachments/2013/01/1_201301060628471C20c.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `person`
--

CREATE TABLE IF NOT EXISTS `person` (
  `number` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
