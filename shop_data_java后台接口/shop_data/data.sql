/*
SQLyog Ultimate v12.3.1 (64 bit)
MySQL - 5.7.20-log : Database - hm_shop
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`hm_shop` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `hm_shop`;

/*Table structure for table `detail_introduce` */

DROP TABLE IF EXISTS `detail_introduce`;

CREATE TABLE `detail_introduce` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='详细介绍';

/*Data for the table `detail_introduce` */

insert  into `detail_introduce`(`id`,`title`,`content`) values 
(1,'华为MATE 40PRO 麒麟9000 5G芯片，限量销售','<b>华为Mate40Pro</b> 5G手机,支持鸿蒙HarmonyOs,高端旗舰处理器,全球领先5G技术<br><br>\r\n<img src=\"https://s1.ax1x.com/2022/04/05/qOJnXD.md.jpg\" style=\"width: 100%;height: 100%;\"></image><br><br>\r\n<img src=\"https://s1.ax1x.com/2022/04/05/qOYFKS.jpg\" style=\"width: 100%;height: 100%;\"></image><br><br>\r\n<b>华为Mate40Pro</b> 5G手机,支持鸿蒙HarmonyOs,高端旗舰处理器,全球领先5G技术'),
(3,'女士大品牌服装','女士大品牌服装。穿上特别漂亮<br><br>\r\n\r\n<img src=\"https://s1.ax1x.com/2022/04/05/qOJnXD.md.jpg\" style=\"width: 100%;height: 100%;\"></image><br>\r\n'),
(4,'男士格子衬衫','男士格子衫。穿上你就是潮男，hahah'),
(6,'女士大品牌服装','女士漂亮服装，给你青春般的感觉，价格便宜，支持0元购'),
(8,'女士大品牌服装','女士漂亮服装，给你青春般的感觉，价格便宜，支持0元购'),
(10,'男士格子衬衫','男士格子衫。穿上你就是潮男，hahah');

/*Table structure for table `information` */

DROP TABLE IF EXISTS `information`;

CREATE TABLE `information` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `add_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `zhaiyao` varchar(200) DEFAULT NULL,
  `click` int(5) DEFAULT NULL,
  `img_url` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `title` (`title`),
  KEY `add_time` (`add_time`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='资讯列表';

/*Data for the table `information` */

insert  into `information`(`id`,`title`,`add_time`,`zhaiyao`,`click`,`img_url`) values 
(1,'test data','2021-12-09 17:03:25','房企一季度销售业绩已经陆续公布，克而瑞研究中心统计',0,'http://pic.quanjing.com/6v/9r/QJ6177870627.jpg@!794ws'),
(2,'一季度多家房企利润跌幅超50% 去库存促销战打响','2022-04-05 08:29:03','test data',0,'http://pic.quanjing.com/6v/9r/QJ6177870627.jpg@!794ws'),
(3,'tets data2','2022-04-05 08:32:26','yyyy',0,'http://pic.quanjing.com/kt/lj/QJ6238948081.jpg@!794ws'),
(4,'test data3','2022-04-05 10:18:24','hhhha',12,'http://pic.quanjing.com/6v/9r/QJ6177870627.jpg@!794ws'),
(5,'title','2022-04-05 10:33:02','hhhhhhhha',14,'http://pic.quanjing.com/kt/lj/QJ6238948081.jpg@!794ws'),
(6,'title','2022-04-05 10:33:04','hhhhhhhhha',1,'http://pic.quanjing.com/kt/lj/QJ6238948081.jpg@!794ws'),
(105,'test data4','2022-04-05 10:31:03','tttttttttttttttttt',0,'http://pic.quanjing.com/kt/lj/QJ6238948081.jpg@!794ws');

/*Table structure for table `information_detail` */

DROP TABLE IF EXISTS `information_detail`;

CREATE TABLE `information_detail` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `click` varchar(5) DEFAULT NULL,
  `add_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `content` text,
  PRIMARY KEY (`id`),
  KEY `information_title` (`title`),
  KEY `information_time` (`add_time`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8 COMMENT='资讯详情';

/*Data for the table `information_detail` */

insert  into `information_detail`(`id`,`title`,`click`,`add_time`,`content`) values 
(1,'资讯标题1','4','2022-04-03 17:05:07','轻轻地，夜雨悄悄落在窗前，静静地，夜雨无声落在心田。那一帘冬夜之雨，刷新了我的好梦，我彻底丢失了睡眠。子夜窗外，除了无边的黑就是醒着的风雨，平日里从窄窄窗棂投射在小房间的昏暗光亮，今夜却被例外收起。我舍不得开灯，怕灼伤夜的眼睛，也怕丢失美妙的旧忆。夜深听雨，离入眠只有越来越远，索性窝在被里，想那些被大多数人冷落却被我热爱的温馨若梦的情感故事，这是多么惬意的时刻呀，心无旁骛，我完全沉醉在这不自觉之中了。'),
(2,'资讯标题2','3','2022-04-05 10:18:13','<p>房企一季度销售业绩已经陆续公布，克而瑞研究中心统计数据显示，今年一季度，TOP20的房企仅6家实现业绩同比增长。</p><p><b>多家企业销售下滑</b> </p><p>\r\n	记者了解到，虽然恒大、融创一季度交出了不错的答卷，但是，万科等排名靠前的房企均出现销售下滑。其中万科公布前三个月销售金额为460.6亿元，同比去年的542.3亿元减少15%，而碧桂园公布，截至2015年3月31日止三个月，集团共实现合同销售金额约177.3亿元，同比下跌44.32%。\r\n</p><p><b>此外，一季度多家企业的利润跌幅超过50%。数据显示，万科预计2015年1月至3月归属于上市公司股东的净利润为6亿~7亿元，比上年同期下降54%至61%。</b> </p><p>\r\n	<b>趋势</b> </p><p><b>地价占比上升及去库存压力下&nbsp;房企利润回归</b> </p><p>\r\n	中原地产首席分析师张大伟称，一季度房企销售及利润普遍下滑，主要是因为企业销售节奏的变化，“大部分企业在2013年完成情况非常好，预留了大量签约结转到2014年。但2014年整体企业完成情况较差，大部分企业反而透支了2015年年初的签约，导致2015年签约不尽如人意。”\r\n</p><p>同时，张大伟表示，大多数城市住房供大于求，价格过高，未来增值不确定，已经不再是最佳投资选择，因此房地产投资需求也出现显著回落。</p><p>\r\n	而易居房地产研究院研究员严跃进则表示，一季度部分房企还是坚持降价促销的策略，对此出现利润下滑也是符合预期的。随着地价占房价比例越来越高，开发商利润空间不断被挤压。同时，很多房企目前的营销费用还是比较大的，也会损耗房企利润。\r\n</p><p>此外，严跃进说，从长期看，地价占比上升与去库存压力将成为长期趋势，房企已告别高利润时代，回归正常利润成为趋势。</p><p>\r\n	不过，张大伟认为，3月下半月市场告别签约淡季。部分城市出现小阳春现象，预计整体市场的走势将会继续向好，后续改善型需求的入市量将会有所增加。</p><p><b>分析：</b> </p>\r\n<p><b>房企打响去库存促销战</b> </p><p>\r\n	“对于房地产市场来说，出现退房的原因有两种：1.收房的时候质量差。2.房价下调。无理由退房对于中国90%成交是期房的房地产市场现状来说，这的确是解决了购房者对房屋质量的担忧。”中原地产首席分析师张大伟对记者表示，后续预计也会有更多企业学习借鉴。\r\n</p><p>而亚太城市房地产研究院院长谢逸枫则表示，恒大2015年率先打出全国项目“无理由退房”计划第一枪，意味正式打响房企主动去库存的促销战。</p><p>\r\n	“承诺无理由退房，意味着开发商承担更多的风险，在资金方面承受更大压力，后续肯定会有企业跟风。”知名地产评论人赵卓文表示。</p><p>\r\n	因此，有业内人士认为，无理由退房可能加速市场优胜劣汰。夏海钧回应称，中国房地产市场高峰时有五六万家房地产开发企业，现在还有两三万家。市场竞争、行业洗牌再洗掉两万多家，剩几百几千家很正常，“到那时行业整体素质会更高”。\r\n</p><p>“在目前这个市场周期，恒大提出无理由退房，也的确更多是为了去库存营销的努力，从营销上看，对增加成交量肯定有帮助。”张大伟表示。</p><p>\r\n	“常规的降价促销已经无法触及购房者的神经，房企必须使出浑身解数吸引购房者。另一方面是购房者对价格敏感性在减弱，对降价没有之前那么敏感，购房者普遍存在买涨不买跌，无理由退房主要是打消购房者对房价不断下降的顾虑。目的在于制造市场\r\n	上涨 预期，引导购房者对后市乐观的态度。”谢逸枫认为。</p><p>也有部分业内人士对“无理由退房”的操作性心存疑虑。</p><p><b>相关新闻</b> </p>\r\n<p><b>恒大宣布全国范围内无理由退房</b> </p><p>\r\n	恒大地产集团昨日宣布，自今日起，将在全国所有楼盘住宅实施无理由退房，该措施覆盖全国147个城市的305个楼盘。恒大副总裁夏海钧表示，希望住宅“包退”成为市场新常态。</p><p>\r\n	<b>今日起买恒大房“包退货”</b> </p><p>\r\n	昨日下午，恒大宣布，全国所有楼盘住宅从4月16日8时起正式实施无理由退房，覆盖恒大所有在售住宅，遍布全国147个城市的305个楼盘。</p><p>\r\n	恒大集团承诺：凡购买恒大所有楼盘住宅的客户，若已履行《楼宇认购书》、《商品房买卖合同》的各项义务，并且无任何违约行为，则自签署《商品房买卖合同》及《无理由退房协议书》之日起至办理入住手续前的任何时间内，均可无理由退房。\r\n</p><p>\r\n	最新数据显示，2015年1~3月，恒大累计合约销售金额约305.4亿元，其中3月实现合约销售额137.1亿元，&nbsp;恒大地产2014年全年销售额达1315亿元，2015年销售目标定为1500亿元，较2014年目标增36.4%\r\n</p>\r\n'),
(105,'资讯标题3','0','2022-04-05 10:31:17','<b>测试数据</b>\r\n\r\n<p>测试数据测试数据测试数据<br>测试数据测试数据测试数据</p>');

/*Table structure for table `picture_category` */

DROP TABLE IF EXISTS `picture_category`;

CREATE TABLE `picture_category` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='图分类';

/*Data for the table `picture_category` */

insert  into `picture_category`(`id`,`title`) values 
(1,'家居生活'),
(2,'摄影设计'),
(3,'明星美女'),
(4,'空间设计'),
(5,'户型装饰'),
(6,'广告摄影'),
(7,'摄影学习'),
(8,'摄影器材'),
(9,'明星写真'),
(10,'清纯甜美'),
(11,'古典美女');

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `add_time` datetime DEFAULT NULL,
  `zhaiyao` varchar(200) DEFAULT NULL,
  `img_url` varchar(200) DEFAULT NULL,
  `sell_price` varchar(200) DEFAULT NULL COMMENT '现价',
  `market_price` varchar(200) DEFAULT NULL COMMENT '原价',
  `stock_quantity` int(10) DEFAULT NULL COMMENT '库存',
  PRIMARY KEY (`id`),
  KEY `title` (`title`,`zhaiyao`,`add_time`,`sell_price`,`market_price`,`stock_quantity`),
  KEY `title_2` (`title`,`zhaiyao`,`add_time`,`sell_price`,`market_price`,`stock_quantity`,`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COMMENT='商品列表';

/*Data for the table `product` */

insert  into `product`(`id`,`title`,`add_time`,`zhaiyao`,`img_url`,`sell_price`,`market_price`,`stock_quantity`) values 
(1,'华为MATE 40PRO 麒麟9000 5G芯片，限量销售','2022-04-03 20:50:54','华为MATE 40PRO 麒麟9000 5G芯片，限量销售','https://s1.ax1x.com/2022/04/05/qOYe5n.md.jpg','2999','6999',150),
(2,'华为MATE 40PRO 麒麟9000 5G芯片，限量销售','2022-04-03 20:51:11','华为MATE 40PRO 麒麟9000 5G芯片，限量销售','https://s1.ax1x.com/2022/04/05/qOYe5n.md.jpg','2999','6999',150),
(3,'女士大品牌服装','2022-04-03 20:51:48','女士大品牌服装','https://s1.ax1x.com/2022/04/05/qOYY5R.jpg','59','299',150),
(4,'男士格子衬衫','2022-04-03 20:51:54','男士格子衬衫','https://s1.ax1x.com/2022/04/05/qOYdxK.jpg','59','99',200),
(5,'男士格子衬衫','2022-04-03 20:52:00','男士格子衬衫','https://s1.ax1x.com/2022/04/05/qOYdxK.jpg','69','358',500),
(6,'女士大品牌服装','2022-04-03 20:50:54','女士大品牌服装','https://s1.ax1x.com/2022/04/05/qOYY5R.jpg','18','588',150),
(7,'华为MATE 40PRO 麒麟9000 5G芯片，限量销售','2022-04-03 20:51:11','华为MATE 40PRO 麒麟9000 5G芯片，限量销售','https://s1.ax1x.com/2022/04/05/qOYe5n.md.jpg','2999','6999',150),
(8,'女士大品牌服装','2022-04-03 20:51:48','女士大品牌服装','https://s1.ax1x.com/2022/04/05/qOYY5R.jpg','1201','2658',150),
(9,'女士大品牌服装','2022-04-03 20:51:54','女士大品牌服装','https://s1.ax1x.com/2022/04/05/qOYY5R.jpg','59','99',200),
(10,'男士格子衬衫','2022-04-03 20:52:00','男士格子衬衫','https://s1.ax1x.com/2022/04/05/qOYdxK.jpg','69','358',500),
(11,'华为MATE 40PRO 麒麟9000 5G芯片，限量销售','2022-04-03 20:50:54','华为MATE 40PRO 麒麟9000 5G芯片，限量销售','https://s3.bmp.ovh/imgs/2022/04/02/08ed027169a36bf4.jpg','2999','6999',150),
(12,'女士大品牌服装','2022-04-03 20:51:11','女士大品牌服装','https://s1.ax1x.com/2022/04/05/qOYY5R.jpg','129','1857',150),
(13,'华为MATE 40PRO 麒麟9000 5G芯片，限量销售','2022-04-03 20:51:48','华为MATE 40PRO 麒麟9000 5G芯片，限量销售','https://s3.bmp.ovh/imgs/2022/04/02/08ed027169a36bf4.jpg','2999','6999',150),
(14,'华为MATE 40PRO 麒麟9000 5G芯片，限量销售','2022-04-03 20:50:54','华为MATE 40PRO 麒麟9000 5G芯片，限量销售','https://s3.bmp.ovh/imgs/2022/04/02/08ed027169a36bf4.jpg','2999','6999',150),
(15,'华为MATE 40PRO 麒麟9000 5G芯片，限量销售','2022-04-03 20:51:11','华为MATE 40PRO 麒麟9000 5G芯片，限量销售','https://s3.bmp.ovh/imgs/2022/04/02/08ed027169a36bf4.jpg','2999','6999',150),
(16,'女士大品牌服装','2022-04-03 20:51:48','女士大品牌服装','https://s3.bmp.ovh/imgs/2022/04/02/a93400983971d2e8.jpg','59','299',150),
(17,'男士格子衬衫','2022-04-03 20:51:54','男士格子衬衫','https://s1.ax1x.com/2022/04/05/qOYdxK.jpg','59','99',200),
(18,'男士格子衬衫','2022-04-03 20:52:00','男士格子衬衫','https://s3.bmp.ovh/imgs/2022/04/02/549a74d94ae2a65e.jpg','69','358',500),
(19,'女士大品牌服装','2022-04-03 20:50:54','女士大品牌服装','https://s3.bmp.ovh/imgs/2022/04/02/a93400983971d2e8.jpg','18','588',150),
(20,'华为MATE 40PRO 麒麟9000 5G芯片，限量销售','2022-04-03 20:51:11','华为MATE 40PRO 麒麟9000 5G芯片，限量销售','https://s3.bmp.ovh/imgs/2022/04/02/08ed027169a36bf4.jpg','2999','6999',150),
(21,'女士大品牌服装','2022-04-03 20:51:48','女士大品牌服装','https://s3.bmp.ovh/imgs/2022/04/02/a93400983971d2e8.jpg','1201','2658',150),
(22,'女士大品牌服装','2022-04-03 20:51:54','女士大品牌服装','https://s3.bmp.ovh/imgs/2022/04/02/a93400983971d2e8.jpg','59','99',200),
(23,'男士格子衬衫','2022-04-03 20:52:00','男士格子衬衫','https://s3.bmp.ovh/imgs/2022/04/02/549a74d94ae2a65e.jpg','69','358',500),
(24,'华为MATE 40PRO 麒麟9000 5G芯片，限量销售','2022-04-03 20:50:54','华为MATE 40PRO 麒麟9000 5G芯片，限量销售','https://s3.bmp.ovh/imgs/2022/04/02/08ed027169a36bf4.jpg','2999','6999',150),
(25,'女士大品牌服装','2022-04-03 20:51:11','女士大品牌服装','https://s3.bmp.ovh/imgs/2022/04/02/a93400983971d2e8.jpg','129','1857',150),
(26,'华为MATE 40PRO 麒麟9000 5G芯片，限量销售','2022-04-03 20:51:48','华为MATE 40PRO 麒麟9000 5G芯片，限量销售','https://s3.bmp.ovh/imgs/2022/04/02/08ed027169a36bf4.jpg','2999','6999',150),
(27,'华为MATE 40PRO 麒麟9000 5G芯片，限量销售','2022-04-03 20:50:54','华为MATE 40PRO 麒麟9000 5G芯片，限量销售','https://s3.bmp.ovh/imgs/2022/04/02/08ed027169a36bf4.jpg','2999','6999',150),
(28,'华为MATE 40PRO 麒麟9000 5G芯片，限量销售','2022-04-03 20:51:11','华为MATE 40PRO 麒麟9000 5G芯片，限量销售','https://s3.bmp.ovh/imgs/2022/04/02/08ed027169a36bf4.jpg','2999','6999',150),
(29,'女士大品牌服装','2022-04-03 20:51:48','女士大品牌服装','https://s3.bmp.ovh/imgs/2022/04/02/a93400983971d2e8.jpg','59','299',150),
(30,'男士格子衬衫','2022-04-03 20:51:54','男士格子衬衫','https://s3.bmp.ovh/imgs/2022/04/02/549a74d94ae2a65e.jpg','59','99',200),
(31,'男士格子衬衫','2022-04-03 20:52:00','男士格子衬衫','https://s3.bmp.ovh/imgs/2022/04/02/549a74d94ae2a65e.jpg','69','358',500),
(32,'女士大品牌服装','2022-04-03 20:50:54','女士大品牌服装','https://s3.bmp.ovh/imgs/2022/04/02/a93400983971d2e8.jpg','18','588',150),
(33,'华为MATE 40PRO 麒麟9000 5G芯片，限量销售','2022-04-03 20:51:11','华为MATE 40PRO 麒麟9000 5G芯片，限量销售','https://s3.bmp.ovh/imgs/2022/04/02/08ed027169a36bf4.jpg','2999','6999',150),
(34,'女士大品牌服装','2022-04-03 20:51:48','女士大品牌服装','https://s3.bmp.ovh/imgs/2022/04/02/a93400983971d2e8.jpg','1201','2658',150),
(35,'女士大品牌服装','2022-04-03 20:51:54','女士大品牌服装','https://s3.bmp.ovh/imgs/2022/04/02/a93400983971d2e8.jpg','59','99',200),
(36,'男士格子衬衫','2022-04-03 20:52:00','男士格子衬衫','https://s3.bmp.ovh/imgs/2022/04/02/549a74d94ae2a65e.jpg','69','358',500),
(37,'华为MATE 40PRO 麒麟9000 5G芯片，限量销售','2022-04-03 20:50:54','华为MATE 40PRO 麒麟9000 5G芯片，限量销售','https://s3.bmp.ovh/imgs/2022/04/02/08ed027169a36bf4.jpg','2999','6999',150),
(38,'女士大品牌服装','2022-04-03 20:51:11','女士大品牌服装','https://s3.bmp.ovh/imgs/2022/04/02/a93400983971d2e8.jpg','129','1857',150),
(39,'华为MATE 40PRO 麒麟9000 5G芯片，限量销售','2022-04-03 20:51:48','华为MATE 40PRO 麒麟9000 5G芯片，限量销售','https://s3.bmp.ovh/imgs/2022/04/02/08ed027169a36bf4.jpg','2999','6999',150),
(40,'华为MATE 40PRO 麒麟9000 5G芯片，限量销售','2022-04-03 20:50:54','华为MATE 40PRO 麒麟9000 5G芯片，限量销售','https://s3.bmp.ovh/imgs/2022/04/02/08ed027169a36bf4.jpg','2999','6999',150),
(41,'华为MATE 40PRO 麒麟9000 5G芯片，限量销售','2022-04-03 20:51:11','华为MATE 40PRO 麒麟9000 5G芯片，限量销售','https://s3.bmp.ovh/imgs/2022/04/02/08ed027169a36bf4.jpg','2999','6999',150),
(42,'女士大品牌服装','2022-04-03 20:51:48','女士大品牌服装','https://s3.bmp.ovh/imgs/2022/04/02/a93400983971d2e8.jpg','59','299',150),
(43,'男士格子衬衫','2022-04-03 20:51:54','男士格子衬衫','https://s3.bmp.ovh/imgs/2022/04/02/549a74d94ae2a65e.jpg','59','99',200),
(44,'男士格子衬衫','2022-04-03 20:52:00','男士格子衬衫','https://s3.bmp.ovh/imgs/2022/04/02/549a74d94ae2a65e.jpg','69','358',500),
(45,'女士大品牌服装','2022-04-03 20:50:54','女士大品牌服装','https://s3.bmp.ovh/imgs/2022/04/02/a93400983971d2e8.jpg','18','588',150);

/*Table structure for table `product_detail` */

DROP TABLE IF EXISTS `product_detail`;

CREATE TABLE `product_detail` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `add_time` datetime DEFAULT NULL,
  `goods_no` varchar(200) DEFAULT NULL,
  `sell_price` int(10) DEFAULT NULL,
  `market_price` int(10) DEFAULT NULL,
  `stock_quantity` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_title` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COMMENT='商品的详情参数';

/*Data for the table `product_detail` */

insert  into `product_detail`(`id`,`title`,`add_time`,`goods_no`,`sell_price`,`market_price`,`stock_quantity`) values 
(1,'华为MATE 40PRO 麒麟9000 5G芯片，限量销售','2022-04-03 20:50:54','SD9102356032',2999,6999,150),
(2,'华为MATE 40PRO 麒麟9000 5G芯片，限量销售','2022-04-03 20:51:11','SD9102356056',2999,6999,150),
(3,'女士大品牌服装','2022-04-03 20:51:48','SD9102356057',59,299,150),
(4,'男士格子衬衫','2022-04-03 20:51:54','SD9102356058',59,99,200),
(5,'男士格子衬衫','2022-04-03 20:52:00','SD9102356059',69,358,500),
(6,'女士大品牌服装','2022-04-03 20:50:54','SD9102356060',18,588,150),
(7,'华为MATE 40PRO 麒麟9000 5G芯片，限量销售','2022-04-03 20:51:11','SD9102356061',2999,6999,150),
(8,'女士大品牌服装','2022-04-03 20:51:48','SD910235605662',1201,2658,150),
(9,'女士大品牌服装','2022-04-03 20:51:54','SD91023560',59,99,200),
(10,'男士格子衬衫','2022-04-03 20:52:00','SD9102356056',69,358,500),
(11,'华为MATE 40PRO 麒麟9000 5G芯片，限量销售','2022-04-03 20:50:54','SD91023560',2999,6999,150),
(12,'女士大品牌服装','2022-04-03 20:51:11','SD91023560',129,1857,150),
(13,'华为MATE 40PRO 麒麟9000 5G芯片，限量销售','2022-04-03 20:51:48','SD9102356056',2999,6999,150),
(14,'华为MATE 40PRO 麒麟9000 5G芯片，限量销售','2022-04-03 20:50:54','SD9102356050',2999,6999,150),
(15,'华为MATE 40PRO 麒麟9000 5G芯片，限量销售','2022-04-03 20:51:11','SD9102356056',2999,6999,150),
(16,'女士大品牌服装','2022-04-03 20:51:48','SD9102356056',59,299,150),
(17,'男士格子衬衫','2022-04-03 20:51:54','SD9102356056',59,99,200),
(18,'男士格子衬衫','2022-04-03 20:52:00','SD9102356085',69,358,500),
(19,'女士大品牌服装','2022-04-03 20:50:54','SD9102356056',18,588,150),
(20,'华为MATE 40PRO 麒麟9000 5G芯片，限量销售','2022-04-03 20:51:11','SD9102356056',2999,6999,150),
(21,'女士大品牌服装','2022-04-03 20:51:48','SD9102356056',1201,2658,150),
(22,'女士大品牌服装','2022-04-03 20:51:54','SD9102356056',59,99,200),
(23,'男士格子衬衫','2022-04-03 20:52:00','SD9102356004',69,358,500),
(24,'华为MATE 40PRO 麒麟9000 5G芯片，限量销售','2022-04-03 20:50:54','SD9102356056',2999,6999,150),
(25,'女士大品牌服装','2022-04-03 20:51:11','女士大品牌服装',129,1857,150),
(26,'华为MATE 40PRO 麒麟9000 5G芯片，限量销售','2022-04-03 20:51:48','SD9102356056',2999,6999,150),
(27,'华为MATE 40PRO 麒麟9000 5G芯片，限量销售','2022-04-03 20:50:54','SD9102356056',2999,6999,150),
(28,'华为MATE 40PRO 麒麟9000 5G芯片，限量销售','2022-04-03 20:51:11','SD9102356056',2999,6999,150),
(29,'女士大品牌服装','2022-04-03 20:51:48','SD9102356056',59,299,150),
(30,'男士格子衬衫','2022-04-03 20:51:54','SD91023560',59,99,200),
(31,'男士格子衬衫','2022-04-03 20:52:00','SD9102356056',69,358,500),
(32,'女士大品牌服装','2022-04-03 20:50:54','SD9102356056',18,588,150),
(33,'华为MATE 40PRO 麒麟9000 5G芯片，限量销售','2022-04-03 20:51:11','SD9102356056',2999,6999,150),
(34,'女士大品牌服装','2022-04-03 20:51:48','SD91023560',1201,2658,150),
(35,'女士大品牌服装','2022-04-03 20:51:54','SD91023560',59,99,200),
(36,'男士格子衬衫','2022-04-03 20:52:00','SD9102356056',69,358,500),
(37,'华为MATE 40PRO 麒麟9000 5G芯片，限量销售','2022-04-03 20:50:54','SD9102356056',2999,6999,150),
(38,'女士大品牌服装','2022-04-03 20:51:11','SD9102605674',129,1857,150),
(39,'华为MATE 40PRO 麒麟9000 5G芯片，限量销售','2022-04-03 20:51:48','SD9102356056',2999,6999,150),
(40,'华为MATE 40PRO 麒麟9000 5G芯片，限量销售','2022-04-03 20:50:54','SD9102356056',2999,6999,150),
(41,'华为MATE 40PRO 麒麟9000 5G芯片，限量销售','2022-04-03 20:51:11','SD9102356058',2999,6999,150),
(42,'女士大品牌服装','2022-04-03 20:51:48','SD9102356056',59,299,150),
(43,'男士格子衬衫','2022-04-03 20:51:54','SD9102356072',59,99,200),
(44,'男士格子衬衫','2022-04-03 20:52:00','SD9102356056',69,358,500),
(45,'女士大品牌服装','2022-04-03 20:50:54','SD9102356004',18,588,150);

/*Table structure for table `second_category` */

DROP TABLE IF EXISTS `second_category`;

CREATE TABLE `second_category` (
  `id` bigint(10) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `img_url` varchar(200) DEFAULT NULL,
  `zhaiyao` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='二级图分类列表';

/*Data for the table `second_category` */

insert  into `second_category`(`id`,`title`,`img_url`,`zhaiyao`) values 
(1,'欧式风格继承了巴洛克风格中豪华、动感、多变的视觉效果','https://img14.360buyimg.com/n0/jfs/t1/89041/19/25791/257632/6249d8b8Efc8ae409/2a555c1d434b0f9d.jpg','继上编欧式客厅装修效果图之后，今天，小编为大家带来的是一组不同类型的欧式卧室装修效果图。欧式卧室的设计风格按不同的地域文化可分为北欧卧室、简欧卧室和传统欧式卧室。在中国，因为欧式风格继承了巴洛克风格中豪华、动感、多变的视觉效果，也吸取了洛可可风格中唯美、律…'),
(2,'好房子','https://img.alicdn.com/imgextra/i3/651798426/O1CN01FKlo0L2C79w9GbcZM_!!651798426.jpg_430x430q90.jpg','地理位置优越采光好，绿化多'),
(5,'空间设计测试数据','https://img.alicdn.com/imgextra/i3/651798426/O1CN01FKlo0L2C79w9GbcZM_!!651798426.jpg_430x430q90.jpg','这是测试数据 this is test datas.. 这是测试数据 this is test datas'),
(5,'空间设计测试数据','https://img14.360buyimg.com/n0/jfs/t1/89041/19/25791/257632/6249d8b8Efc8ae409/2a555c1d434b0f9d.jpg','这是测试数据 this is test datas.. 这是测试数据 this is test datas');

/*Table structure for table `slideshow` */

DROP TABLE IF EXISTS `slideshow`;

CREATE TABLE `slideshow` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT NULL,
  `img` text,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='轮播图';

/*Data for the table `slideshow` */

insert  into `slideshow`(`id`,`url`,`img`) values 
(1,'http://www.itcast.cn/subject/phoneweb/index.html','http://m.itheima.com/images/slidead/mobile/20191213180241750x410.jpg'),
(2,'http://www.itcast.cn/subject/phoneweb/index.html','http://m.itheima.com/images/slidead/mobile/20191210154717750-410.jpg'),
(3,'http://www.itcast.cn/subject/phoneweb/index.html','http://m.itheima.com/images/slidead/mobile/20190327135101750x410-%E4%BC%A0%E6%99%BA%E9%BB%91%E9%A9%AC%E7%A7%BB%E5%8A%A8%E7%AB%AF%E5%B9%BB%E7%81%AF.jpg');

/*Table structure for table `slideshow_detail` */

DROP TABLE IF EXISTS `slideshow_detail`;

CREATE TABLE `slideshow_detail` (
  `id` bigint(10) DEFAULT NULL,
  `src` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='详情轮播图';

/*Data for the table `slideshow_detail` */

insert  into `slideshow_detail`(`id`,`src`) values 
(1,'https://s3.bmp.ovh/imgs/2022/04/02/08ed027169a36bf4.jpg'),
(2,'https://s3.bmp.ovh/imgs/2022/04/02/08ed027169a36bf4.jpg'),
(3,'https://s3.bmp.ovh/imgs/2022/04/02/a93400983971d2e8.jpg'),
(1,'https://img12.360buyimg.com/n1/s450x450_jfs/t1/215207/38/14624/342237/622e95d7E797216bf/677187ffa58bc428.png'),
(4,'https://s3.bmp.ovh/imgs/2022/04/02/549a74d94ae2a65e.jpg');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
