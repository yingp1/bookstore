/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1_3306
Source Server Version : 50621
Source Host           : 127.0.0.1:3306
Source Database       : book

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2015-06-11 21:17:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_admin
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin` (
  `userId` int(11) NOT NULL,
  `userName` longtext,
  `userPw` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_admin
-- ----------------------------
INSERT INTO `t_admin` VALUES ('1', 'admin', 'admin');
INSERT INTO `t_admin` VALUES ('2', '1', '11');

-- ----------------------------
-- Table structure for t_catelog
-- ----------------------------
DROP TABLE IF EXISTS `t_catelog`;
CREATE TABLE `t_catelog` (
  `catelog_id` int(11) NOT NULL,
  `catelog_name` longtext,
  `catelog_miaoshu` longtext,
  `catelog_del` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`catelog_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_catelog
-- ----------------------------
INSERT INTO `t_catelog` VALUES ('1', '文学类', '文学 小学 综合', 'no');
INSERT INTO `t_catelog` VALUES ('2', '计算机类', '编程语言 基础', 'no');
INSERT INTO `t_catelog` VALUES ('3', '工具书', '工具书', 'no');
INSERT INTO `t_catelog` VALUES ('4', '小说', null, 'no');
INSERT INTO `t_catelog` VALUES ('5', '历史', null, 'no');

-- ----------------------------
-- Table structure for t_gonggao
-- ----------------------------
DROP TABLE IF EXISTS `t_gonggao`;
CREATE TABLE `t_gonggao` (
  `gonggao_id` int(11) NOT NULL,
  `gonggao_title` longtext,
  `gonggao_content` longtext,
  `gonggao_data` varchar(50) DEFAULT NULL,
  `gonggao_fabuzhe` tinytext,
  `gonggao_del` varchar(50) DEFAULT NULL,
  `gonggao_one1` varchar(50) DEFAULT NULL,
  `gonggao_one2` varchar(50) DEFAULT NULL,
  `gonggao_one3` varchar(50) DEFAULT NULL,
  `gonggao_one4` varchar(50) DEFAULT NULL,
  `gonggao_one5` datetime DEFAULT NULL,
  `gonggao_one6` datetime DEFAULT NULL,
  `gonggao_one7` int(11) DEFAULT NULL,
  `gonggao_one8` int(11) DEFAULT NULL,
  PRIMARY KEY (`gonggao_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_gonggao
-- ----------------------------
INSERT INTO `t_gonggao` VALUES ('1', '对于本欢迎大家提出宝贵意见', '<strong>对于本欢迎大家提出宝贵意见</strong>', '2015-05-24 0:37:30', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_gonggao` VALUES ('2', '部分商品8折销售。欢迎选购', '<strong>部分商品8折销售。欢迎选购</strong>', '2015-05-24 0:37:30', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_gonggao` VALUES ('4', '1111111111', '请输入内容111111', '2015-05-24 0:37:30', null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for t_goods
-- ----------------------------
DROP TABLE IF EXISTS `t_goods`;
CREATE TABLE `t_goods` (
  `goods_id` int(11) NOT NULL,
  `goods_name` longtext,
  `goods_miaoshu` longtext,
  `goods_pic` varchar(50) DEFAULT NULL,
  `goods_yanse` varchar(50) DEFAULT NULL,
  `goods_shichangjia` int(11) DEFAULT NULL,
  `goods_tejia` int(11) DEFAULT NULL,
  `goods_isnottejia` varchar(50) DEFAULT NULL,
  `goods_isnottuijian` varchar(50) DEFAULT NULL,
  `goods_catelog_id` int(11) DEFAULT NULL,
  `goods_kucun` int(11) DEFAULT NULL,
  `goods_Del` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_goods
-- ----------------------------
INSERT INTO `t_goods` VALUES ('11', '二战十大著名战役', '作　者：于重宇&nbsp;ISBN&nbsp;：7-80639-998-4&nbsp;<br />\r\n出版社：哈尔滨出版社&nbsp;开　本：大32开&nbsp;&nbsp;<br />\r\n出版日期：2009-1-1&nbsp;页　数：309&nbsp;&nbsp;<br />\r\n装　帧：平装&nbsp;&nbsp;版　次：1&nbsp;&nbsp;<br />\r\n回首二战，那一幅幅残酷而血腥、雄伟而悲壮的历史画面，永远震撼着人们的心灵，令人难以忘怀。在这场血与火的考验中，双方将领奇谋迭出，创造了一次又一次的战争奇迹。认识战争，记住历史，这是我们每个人的责任。虽然我们没有亲身经历这场炼狱的考验，但是可以想像：那血肉横飞的场面，那惨无人道的杀戮。这是血的教训，也是无数无辜生命换回来的对战争的深层思考和对和平的祈盼。', '/upload/1395676916031.jpg', '于重宇', '25', '25', 'no', null, '1', '0', 'no');
INSERT INTO `t_goods` VALUES ('12', '落日', ' \r\n						         \r\n						         \r\n						         \r\n						        作　者：方方&nbsp;ISBN&nbsp;：7-5014-2976-6&nbsp;<br />\r\n出版社：群众出版社&nbsp;开　本：大32开&nbsp;&nbsp;<br />\r\n出版日期：2009-1-1&nbsp;页　数：191&nbsp;&nbsp;<br />\r\n装　帧：平装&nbsp;&nbsp;版　次：1&nbsp;&nbsp;<br />\r\n祖母丁太本是个富足商人家的千金，她聪明，美丽。但不长时间之内，她的母亲带着全部家当与人私奔了，她的父亲则死无葬身之地。她只有放弃自己的中学学业，去姑母家挣钱还债。然后，尽快找了个婆家。可二儿子尚未出世，丈夫就出事了。那时，丁太只有24岁。但她为了一心一意照顾好孩子，一直守寡。为了孩子长大成人，丁太什么都干，甚至当街捡起了垃圾。&nbsp;如今，两个儿子都成家，又有了孙子与重孙，可谓四世同堂。\r\n						        \r\n						      \r\n						        \r\n						        ', '/upload/1395677036796.jpg', '方方', '32', '32', 'no', null, '1', '0', 'no');
INSERT INTO `t_goods` VALUES ('13', '使命', '作　者：胡海&nbsp;ISBN&nbsp;：7-5014-3007-1&nbsp;<br />\r\n出版社：群众出版社&nbsp;开　本：大32开&nbsp;&nbsp;<br />\r\n出版日期：2009-1-1&nbsp;页　数：498&nbsp;&nbsp;<br />\r\n装　帧：平装&nbsp;&nbsp;版　次：3&nbsp;&nbsp;<br />\r\n本书描写一位基层公安局长面对队伍不纯的困扰，经费的匮乏，执法环境的恶劣，腐败分子的高压，犯罪的升级，黑恶势力的挑战，党和人民的重托，做出了怎样的抉择。', '/upload/1395677086015.jpg', '胡海', '26', '26', 'no', null, '1', '-2', 'no');
INSERT INTO `t_goods` VALUES ('14', '从平凡到卓越的产品策略', '作　者：[美]特里.A.布里顿&nbsp;ISBN&nbsp;：7-80073-955-4&nbsp;<br />\r\n出版社：中信出版社&nbsp;开　本：大32开&nbsp;&nbsp;<br />\r\n出版日期：2003-1-1&nbsp;页　数：157&nbsp;&nbsp;<br />\r\n装　帧：平装&nbsp;&nbsp;版　次：1&nbsp;&nbsp;<br />\r\n几乎所有的商界人士都认为，&ldquo;了解顾客，想顾客之所想&rdquo;是成功经营的最大挑战。但是在现实生活中，有太多的产品和服务让顾客的期望被失望和沮丧所打破：难以打开的包装、永不停息循环播放的电话录音、购买到名不副实的商品、商店里放在离人们头顶半米高处的商品&hellip;&hellip;难道这一切就非得如此吗？精密的技术、尖端的科技以及我们积累的经营理念和方法都在不断地发展，但是，为什么顾客依然感到失望呢？&nbsp;&nbsp;<br />', '/upload/1395677136937.jpg', '特里.A.布里顿', '26', '26', 'no', null, '1', '-88', 'no');
INSERT INTO `t_goods` VALUES ('15', '史说略', '作　者：王钟翰&nbsp;ISBN&nbsp;：7-5402-1404-X&nbsp;<br />\r\n出版社：北京燕山出版社&nbsp;开　本：大32开&nbsp;&nbsp;<br />\r\n出版日期：2003-1-1&nbsp;页　数：602&nbsp;&nbsp;<br />\r\n装　帧：平装本&nbsp;&nbsp;版　次：5胡海&nbsp;&nbsp;<br />', '/upload/1395677175937.jpg', '王钟翰', '30', '30', 'no', null, '1', '-5', 'no');
INSERT INTO `t_goods` VALUES ('16', '青春鸟', '作　者：韩啸&nbsp;ISBN&nbsp;：7-5360-3816-X&nbsp;<br />\r\n出版社：花城出版社&nbsp;开　本：大32开&nbsp;&nbsp;<br />\r\n出版日期：2003-1-1&nbsp;页　数：419&nbsp;&nbsp;<br />\r\n装　帧：平装&nbsp;&nbsp;版　次：1&nbsp;&nbsp;<br />\r\n风起了，默默地拂动着轻盈的情思；雨落了，悄悄地滋润着稚嫩的心房。终于，所有纯真的心灵、自由的天性，在一个雨过天晴的早晨醒来，开始了他们执著的飞翔。看到了吗？那飞扬的青春，带着骄傲与憧憬，在梦想与爱情中徜徉&hellip;&hellip;&nbsp;<br />', '/upload/1395677229140.jpg', '韩啸', '30', '30', 'no', null, '1', '-1', 'no');
INSERT INTO `t_goods` VALUES ('17', 'Pro/ENGINEER实战手机设计', '作　者：祝凌云&nbsp;ISBN&nbsp;：7-115-11798-5&nbsp;<br />\r\n出版社：人民邮电出版社&nbsp;开　本：16&nbsp;&nbsp;<br />\r\n出版日期：2009-12-1&nbsp;页　数：425&nbsp;&nbsp;<br />\r\n装　帧：平装&nbsp;&nbsp;版　次：1&nbsp;&nbsp;<br />\r\n本书以两款时尚手机造型设计为例，详细介绍如何使用Pro/ENGINEER进行造型及结构设计的全部操作。&nbsp;<br />\r\n本书的范例采用的是大型、复杂的设计，共涉及到1800余个特征。本书分为两篇，分别介绍了两款时尚手机的全部设计流程。通过对本书的学习与研究，读者将会从实际制作过程中体验&quot;自顶向下的设计&quot;，同时形成良好、规范的设计习惯，进而培养独立设计的能力。', '/upload/1395677273640.jpg', '祝凌云', '44', '44', 'no', null, '2', '-2', 'no');
INSERT INTO `t_goods` VALUES ('18', 'ASP.NET电子商务入门经典', '作　者：Cristian&nbsp;Darie&nbsp;ISBN&nbsp;：7-302-06397-4&nbsp;<br />\r\n出版社：清华大学出版社&nbsp;开　本：16&nbsp;&nbsp;<br />\r\n出版日期：2009-12-1&nbsp;页　数：444&nbsp;&nbsp;<br />\r\n装　帧：平装&nbsp;&nbsp;版　次：1&nbsp;&nbsp;<br />\r\n<br />\r\n面对当今及未来的网络程序开发所面临的挑战，必须有一种与语言无关、与平台无关的应用程序，它可以让诸多机构继续使用已有的硬件，使用即有的应用程序，并且让现有的开发人员可以在不经培训的前提下继续工作。随着XML&nbsp;Web&nbsp;Service的出现，这样的梦想随即成为现实。　<br />\r\n　　本书旨在为广大读者引进国外有关XML&nbsp;Web&nbsp;Services的最新知识，让读者通过本书的学习掌握其中的精髓。<br />', '/upload/1395677310734.jpg', 'Cristian', '36', '36', 'no', null, '2', '-2', 'no');
INSERT INTO `t_goods` VALUES ('19', '系统分析员教程', '作　者：罗晓沛&nbsp;ISBN&nbsp;：7-302-06464-4&nbsp;<br />\r\n出版社：清华大学出版社&nbsp;开　本：16开&nbsp;&nbsp;<br />\r\n出版日期：2003-1-1&nbsp;页　数：622&nbsp;&nbsp;<br />\r\n装　帧：平装&nbsp;&nbsp;版　次：1&nbsp;<br />\r\n本书是信息产业部计算机软件专业技术资格和水平考试办公室组织编写的考试指定用书。本书对系统分析员考试中的部分要点做了阐述。<br />\r\n　　本书内容包括：信息与系统概述、结构化分析与设计方法、企业系统规划方法、战略数据规划方法、应用原型化方法、信息工程方法、软件与软件工程、数据与数据仓库，计算机网络、计算机系统与配置和信息安全技术等。', '/upload/1395677351656.jpg', '罗晓沛', '75', '75', 'no', null, '2', '-123', 'no');
INSERT INTO `t_goods` VALUES ('20', 'Fireworks MX2004标准教程', '作　者：胡崧&nbsp;ISBN&nbsp;：7-5006-4700-X&nbsp;<br />\r\n出版社：中国青年出版社&nbsp;开　本：16开&nbsp;&nbsp;<br />\r\n出版日期：2004-1-1&nbsp;页　数：289&nbsp;&nbsp;<br />\r\n装　帧：平装&nbsp;&nbsp;版　次：1&nbsp;&nbsp;<br />\r\n本书是Macromedia软件产品专家和资深培训专家参与策划的Fireworks&nbsp;MX&nbsp;2004标准教材。全书内容完全遵循Macromedia&nbsp;Fireworks授课大纲与授权认证考试的规定进行编写，并从实际操作出发、涵盖了Fireworks&nbsp;MX&nbsp;2004常用的概念和操作技巧。<br />\r\n　　本书结构合理、实例丰富、图文并茂、讲练结合，是初、中级读者学习Fireworks&nbsp;MX&nbsp;2004的首选图书，也是大中专院校相关专业的社会各级培训班理想的Fireworks培训教材。', '/upload/1395677386640.jpg', '胡崧', '46', '46', 'no', null, '2', '-3', 'no');
INSERT INTO `t_goods` VALUES ('21', 'DREAMWEAVER MX标准教程', '作　者：胡海&nbsp;ISBN&nbsp;：7-900118-61-6&nbsp;<br />\r\n出版社：北京希望电子出版社&nbsp;开　本：16开&nbsp;&nbsp;<br />\r\n出版日期：2003-5-1&nbsp;页　数：349&nbsp;&nbsp;<br />\r\n装　帧：平装&nbsp;&nbsp;版　次：2&nbsp;&nbsp;<br />\r\n本书详细介绍了Macromedia公司的Dreamweaver&nbsp;MX的使用方法和技巧。&nbsp;<br />\r\n全书由24章组成，主要内容包括Dreamweaver&nbsp;MX简介，Dreamweaver&nbsp;MX快速入门、HTML简介、设置Dreamweaver&nbsp;MX用户参数、使用文本、使用图像、超链接、格式化网页属性、历史面板和命令菜单、使用表格、页面排版、使用表单、使用框架、动态HTML、样式表、使用层、使用时间线制作动态网页、动态HTML行为、多媒体网页制作、建立网站概述、使用可复用元素库、使用模板、资源管理、使用第三方扩展、网站制作流程等。<br />', '/upload/1395677424734.jpg', '胡海', '47', '47', 'no', null, '2', '-2', 'no');
INSERT INTO `t_goods` VALUES ('22', 'ASP动态网页设计', '　者：赵增敏&nbsp;ISBN&nbsp;：7-5053-8744-8&nbsp;<br />\r\n出版社：电子工业出版社&nbsp;开　本：16开&nbsp;&nbsp;<br />\r\n出版日期：2009-8-1&nbsp;页　数：336&nbsp;&nbsp;<br />\r\n装　帧：平装&nbsp;&nbsp;版　次：4&nbsp;&nbsp;<br />\r\nASP是当今流行的Web应用程序开发技术之一，它将HTML语言、脚本代码和服务器组件有机地结合在一起，可以用来创建交互式的动态网页和具有数据库访问功能的Web应用程序。本书共分为7章，详细讲述了ASP动态网页设计的基本知识和编程技巧。本书首先介绍了ASP的基本概念、HTML语言和VBScript语言，然后介绍如何使用ASP内置对象、ASP组件和ADO对象，最后结合网站论坛和成绩管理系统的设计过程介绍了ASP技术的综合应用。本书结构合理，内容翔实，步骤清晰，并提供了大量的示例，在每章后面都附有小结、习题和上机实验。&nbsp;本书可作为高职高专院校计算机类专业的教材，也可供网站设计和开发人员参考和使用。', '/upload/1395677459406.jpg', '赵增敏', '55', '55', 'no', null, '2', '-3', 'no');
INSERT INTO `t_goods` VALUES ('23', '资本风暴', '作　者：何继青&nbsp;ISBN&nbsp;：7-5033-1677-2&nbsp;<br />\r\n出版社：解放军文艺出版社&nbsp;开　本：大32开&nbsp;&nbsp;<br />\r\n出版日期：2003-1-1&nbsp;页　数：361&nbsp;&nbsp;<br />\r\n装　帧：平装&nbsp;&nbsp;版　次：22&nbsp;&nbsp;<br />\r\n古城是一座历史悠久的纺织业重镇，但因一起严重的突发性环境污染事件，导致民怨沸腾，终于被上级责令停业整顿。在市政府被改组、几十万纺织工人面临失业、全市经济面临大崩溃之时，号称纺织业超级航母的普罗斯跨国集团，以经济间谍的渗透和上百亿美元的资金进入，对古城造成泰山压顶之势，试图将古城的名牌名街和支柱性产业尽收囊中。新任市长章剑书和市委书记曹远锋，以人民利益为重，站在不同的立场，与家族曾败走古城、此次想携国外资本卷土重来的普罗斯公司副总裁李儒怀，在台前幕后进行了惊心动魄的较量，最后以双方达成共识和取得双赢而落幕。在国外资本的艰难进入中，人们的政治观念、权利观念、资本观念和历史恩怨、内心情感等方面，同样也在经历着一场剧烈冲突和艰难脱变。&nbsp;<br />\r\n&nbsp;<br />', '/upload/1395678375000.jpg', '何继青', '45', '45', 'no', null, '3', '-13', 'no');
INSERT INTO `t_goods` VALUES ('24', '企划手册', '　者：屈云波&nbsp;ISBN&nbsp;：7-80147-781-2&nbsp;<br />\r\n出版社：企业管理出版社&nbsp;开　本：16开&nbsp;&nbsp;<br />\r\n出版日期：2003-9-1&nbsp;页　数：258&nbsp;&nbsp;<br />\r\n装　帧：平装&nbsp;&nbsp;版　次：1&nbsp;&nbsp;<br />\r\n《企划手册》是提供给想通过努力获得更大回报，希望提升预算投资报酬率的资深营销人，以及那些想晋升为专业营销人的有心人士。书中还加入了品牌定位、文字及印刷技巧的有效运用等章节，对什么是营销传播，以及如何运用，有更详尽的描述。本书是为想要在营销传播上创造销售佳绩的有心人士，所写的最佳实用教战手册。', '/upload/1395678409234.jpg', '屈云波', '18', '18', 'no', null, '3', '-42', 'no');
INSERT INTO `t_goods` VALUES ('25', '你的孤独虽败犹荣', ' \r\n						        本书由中信出版社出版<br />\r\n围绕年轻人最有共鸣的话题：孤独，用33个真实动人的故事，讲述33种形式各异但又直抵内心的孤独。用最温暖的笔触诉说：孤独不是失败，它是自己与自己对话最好的时光。愿你比别人更不怕一个人独处，愿日后谈起时你会被自己感动。\r\n						        ', '/upload/8525.jpg', '刘同', '18', '18', 'no', null, '1', '-39', 'no');
INSERT INTO `t_goods` VALUES ('26', '荒野求生少年生存小说系列第一辑', ' \r\n						        接力出版社出版<br />\r\n亲身验证的险境求生技巧，逆境求生的少年硬汉形象，父亲对儿子的真情大爱，让本系列图书成为一套专为少年儿童创作的荒野求生的探险奇作和险境求生的实用宝典。\r\n						        ', '/upload/85.jpg', '贝尔.格里尔斯', '48', '48', 'no', null, '4', '0', 'no');
INSERT INTO `t_goods` VALUES ('27', '吴姐姐讲历史故事 全套/全集 16开本（全十五册）', ' \r\n						        &nbsp; 新世界出版社出版<br />\r\n&nbsp; 《吴姐姐讲历史故事》内容上起远古，下终明代中叶，作者选取这段漫长历史中富于教益和人和事，写成一系列轻松而富于情致的短篇故事。全书凡1075篇，200万言，故事之间相互勾连，前后贯通，连缀起来，即成一部规模颇大的中国通史。作者吴涵碧女士，台湾著名学者、作家，自上世纪八十年代起，以&ldquo;吴姐姐讲历史故事&rdquo;为题，在台湾《中华日报》、《国语日报》开辟专栏，连载历史故事，每周一篇，21年未有间断，本书即这些专栏文章结集而成。专栏读者对象原定为青少年，却得到成人和青少年的一致喜爱，这得益于其诸多特点：所采史实，皆出自信史，对流传甚广的野史及民间传说，偶有采择，皆指明其非为史实，并以信史与相对照；所选史材避开艰深的历史问题，选取其中意义浅白易懂、富于情趣的故事，务使读者轻松明了其中要义；故事标题皆富于意趣、亲切可观，内容富于情致、浅易畅晓，不以森然面目以待读者；故事皆两千字以内，读者略有空闲即可进入，开卷即有收获。\r\n						        ', '/upload/8545.jpg', '吴涵碧', '256', '256', 'no', null, '5', '0', 'no');
INSERT INTO `t_goods` VALUES ('28', '我不要一成不变的生活', ' \r\n						        湖南少年儿童出版社出版<br />\r\n忙碌的日子里，你是否脚步匆匆，在日复一日的生活中迷失了梦想和初心？2015年1月，一本名为《我不要一成不变的生活》，代表着80后向世界勇敢发出宣言。美丽的风光转瞬即逝，仓促的人生却格外漫长。这漫漫一生，我不要一成不变的生活！\r\n						        ', '/upload/4568.jpg', '郝月梅', '22', '22', 'no', null, '1', '0', 'no');
INSERT INTO `t_goods` VALUES ('29', '中华上下五千年', ' \r\n						        华艺出版社出版<br />\r\n五千年悠悠岁月，留下了绵延不绝的历史传承，成就的是一首大气天成的英雄赞歌。一首顽强抗争的劳动人民的赞歌，一首慷慨激昂、惩恶扬善的浩然正气之歌。五干年的沧桑巨变，五千年的兴衰成败，浩瀚的历史皆浓缩于一个个荡气回肠的故事中。<br />\r\n&ldquo;读史以明鉴，察古以知今。&rdquo;为此，编者墨人精心编选了这套《中华上下五千年》。《中华上下五千年》共为四册，编者以时间为经，以事件和人物为纬，穿针引线，纵横交织，从盘古开天辟地的传说开始。将中华上下五千年历史文化的精髓一一展现。为读者提供了了解历史的捷径。详实的历史片断，弥足珍贵的图片，加之细腻的笔法，简洁的语言和亲切的文风，清晰地勾勒出历史事件的来龙去脉和历史人物的真伪善恶，也使得此书成为名副其实的掌上历史博物馆。\r\n						        ', '/upload/5686.jpg', '无', '50', '50', 'no', null, '5', '0', 'no');
INSERT INTO `t_goods` VALUES ('30', '皮囊', ' \r\n						        <p>天津人民出版社出版<br />\r\n时间沉淀之后，或许，80后出现了最重要（最好）的作家&mdash;&mdash;蔡崇达。</p>\r\n<p>他让韩寒为了促成结集邀约三年；</p>\r\n<p>他让刘德华三十年来首次亲笔推介；</p>\r\n<p>他让文学评论大家李敬泽提笔作序；</p>\r\n<p>他让白岩松引为同路人并倾情赞赏。</p>\r\n<p>莫言、韩寒、白岩松、刘德华、刘同、蒋方舟、李敬泽、阿来、阎连科、韩松落、谢有顺、李海鹏、陈希我、曾念长联名推荐。</p>\r\n						        ', '/upload/5868.jpg', '蔡崇达', '26', '26', 'no', null, '1', '0', 'no');
INSERT INTO `t_goods` VALUES ('31', '胡小闹日记全10册(1、2合辑)', ' \r\n						        朝华出版社出版<br />\r\n国内首套专为小学生创作的校园励志成长型小说！孩子认识自我、重塑自我、掌控未来的第一本书！行文幽默并有深刻的教育意义，。独立+自律篇；进取+乐学性格；自信+奋进篇；感悟母爱；理财+理想；自我保护+勇敢；科学高效的学习窍门+趣味十足的成长故事=在悦读中快速提升成绩，像胡小闹一样爱学习、会学习！\r\n						        ', '/upload/1234.jpg', '乐多多', '80', '80', 'no', null, '4', '0', 'no');
INSERT INTO `t_goods` VALUES ('32', '围城', ' \r\n						         \r\n						        上海晨光出版公司出版<br />\r\n《围城》初版近七十年，新时期以前无人问津，于今出版三十年来，横贯常销畅销小说之首，至今每年依然几十万销量。\r\n						        \r\n						        ', '/upload/5652.jpg', '钱钟书', '18', '18', 'no', null, '1', '0', 'no');
INSERT INTO `t_goods` VALUES ('33', '龙族全套', ' \r\n						        长江出版社出版<br />\r\n全新正版 闪电发货 全国包邮 随书赠送海报，包邮超值套装《龙族》全套5册全集，最经典的热血幻想小说，十年一遇，没有之一！\r\n						        ', '/upload/96.jpg', '江南', '115', '115', 'no', null, '4', '0', 'no');
INSERT INTO `t_goods` VALUES ('34', '后来我们都哭了2', ' \r\n						        花山文艺出版社出版<br />\r\n年度最虐心青春小说NO.1。曾经叛逆青春生死与共，后来散落天涯两两相忘。即便青春成了废墟，可为什么，我却笑着，不愿遗忘\r\n						        ', '/upload/6.jpg', '夏七夕', '20', '20', 'no', null, '4', '0', 'no');
INSERT INTO `t_goods` VALUES ('35', '后来我们都哭了2', '花山文艺出版社出版<br />\r\n年度最虐心青春小说NO.1。曾经叛逆青春生死与共，后来散落天涯两两相忘。即便青春成了废墟，可为什么，我却笑着，不愿遗忘', '/upload/1433265739476.jpg', '夏七夕', '20', '20', 'no', null, '4', '0', 'yes');
INSERT INTO `t_goods` VALUES ('36', '那些回不去的年少时光(上下两册新版)', ' \r\n						        湖南文艺出版社出版<br />\r\n那些回不去的年少时光新版\r\n						        ', '/upload/7897.jpg', '桐华', '34', '34', 'no', null, '4', '0', 'no');
INSERT INTO `t_goods` VALUES ('37', '四大名著原著精装全套', ' \r\n						        辽海出版社出版<br />\r\n豪华精美，收藏珍品，精美手提袋 图文珍藏版 超高性价比 送礼佳品。\r\n						        ', '/upload/65.jpg', '施耐庵 罗贯中 吴承恩 曹雪芹', '47', '47', 'no', null, '1', '0', 'no');
INSERT INTO `t_goods` VALUES ('38', '文化苦旅', ' \r\n						         \r\n						        东方出版中心出版<br />\r\n此书中有提到的景点有很多，每一个景点都带给余秋雨不同的感触和震撼。他触碰到中国几千年的文化，见证自己国家一路走来深刻的历史痕迹。其中主要包括两部分，一部分是历史、文化散文，散点论述，探寻文化；另一部分是回忆散文\r\n						        \r\n						        ', '/upload/5652 (2).jpg', '余秋雨', '19', '19', 'no', null, '1', '0', 'no');
INSERT INTO `t_goods` VALUES ('39', '文化苦旅(新版)', ' \r\n						        东方出版中心出版<br />\r\n此书中有提到的景点有很多，每一个景点都带给余秋雨不同的感触和震撼。他触碰到中国几千年的文化，见证自己国家一路走来深刻的历史痕迹。其中主要包括两部分，一部分是历史、文化散文，散点论述，探寻文化；另一部分是回忆散文\r\n						        ', '/upload/5652 (2).jpg', '余秋雨', '19', '19', 'no', null, '1', '-2', 'no');
INSERT INTO `t_goods` VALUES ('40', '何以笙箫默', ' \r\n						        朝华出版社出版<br />\r\n我还记得与他们初遇在人群熙攘的超市，就像在后记里写的那样，忽然就冒出那样一种感触攫住了我。也许早一步，晚一步，他们不是他们，我不是我，谁知道呢，缘分总是那么玄之又玄。我还记得那是大三的暑假，我在我的老台式机上，一遍遍的写着他们的重逢，写了十几遍，终于我满意了，他们也满意了。我还记得我在学校的机房排队，等不及了，就拿出白纸先把情节记下来，生怕灵感转瞬即逝。我还记得上课的时候他们也不安分，不断地在我脑袋里自行演绎着，让我不得不当个不专心的学生，一遍遍在笔记本上写着他们的名字，才能得到抒发后的平静。一时间有些恍然。好像是眨眼间，却已经很远了。时间真是世间最残酷又最美好的东西。从写这篇文开始，到现在，已经过去了七年，已经和以琛和默笙分开的时间一样漫长了。嗨，以琛默笙，又见面了。\r\n						        ', '/upload/5.jpg', '顾漫', '19', '19', 'no', null, '4', '0', 'no');
INSERT INTO `t_goods` VALUES ('41', '村上春树.猫', ' \r\n						        朝华出版社出版<br />\r\n欢迎来到只有猫知道的&ldquo;村上世界&rdquo;！独家收录铃村和成最新专访，为你解读&ldquo;村上春树&middot;猫&rdquo;的故事。 铃村和成所著《村上春树猫（精）》全彩精装图文版华丽上市，附赠精美书签／明信片。 一本文艺范儿十足的暖心之作，写给所有喜爱喵星人、喜爱村上春树的读者。\r\n						        ', '/upload/25.jpg', '(日)铃村和成', '25', '25', 'no', null, '1', '0', 'no');
INSERT INTO `t_goods` VALUES ('42', '我的遥远的清平湾', ' \r\n						        新华出版社出版<br />\r\n猎人 <br />\r\n&nbsp;&nbsp;&nbsp; 早年，地坛里有个通弯儿的老太太，手里一根拐杖常引得路人驻步。拐杖是一整条鹿腿做的：鹿蹄黑亮，腕部弯曲成手柄，筋骨分明，皮毛犹在。众人把玩一回，而后感叹：&quot;真东西，漂亮！&quot;老太太落座石阶，面目冷峻。有人问：&quot;这东西您哪儿来的？&quot;&quot;抢来的！&quot;老太太没好气。&quot;不不，咱是问您哪儿买的？&quot;&quot;哪儿也不卖！&quot;&quot;那，您这东西西是？&quot;&quot;你才东西哪！&quot;&quot;哎哟喂老太太，您别生气呀，咱是说&hellip;&hellip;&quot;&quot;猎人留下的。我那相好的，留下的。&quot;众人窃笑，不敢再问。老太太倒说开了&mdash;&mdash; <br />\r\n&nbsp;&nbsp;&nbsp; 猎人年轻时不打猎。猎人好跑，也能跑，跑一万米能把别人落下两三圈。猎人心憨，打小儿就实在；跑到一万米，他心想这也算跑？就又跑，一圈一圈总也不像要停下的样子。众人就喊：&quot;行嘞，行嘞！&quot;&quot;够啦，傻小子！&quot;可猎人压根儿没明白他们为啥要这么喊。 <br />\r\n&nbsp;&nbsp;&nbsp; 猎人跑得高兴，出了体育场，跑上大马路。不知啥时候喊声却变成了：&quot;加油！加油！&quot;&quot;嘿，这哥们儿行啊！&quot;路人以为他是在跑马拉松。 <br />\r\n&nbsp;&nbsp;&nbsp; 跑马拉松他也不含糊，跑过终点\r\n						        ', '/upload/562.jpg', '史铁生', '25', '25', 'no', null, '1', '0', 'no');
INSERT INTO `t_goods` VALUES ('43', '有你,时光恰好', ' \r\n						        江苏文艺出版出版<br />\r\n是选择虐恋情深的初恋，还是前途多舛的大BOSS？陶青春姗姗来迟的春天为何如此像冬天&hellip;&hellip;\r\n						        ', '/upload/562 (2).jpg', '王了了', '17', '17', 'no', null, '4', '-1', 'no');
INSERT INTO `t_goods` VALUES ('44', '平凡的世界', ' \r\n						        &nbsp;&nbsp;&nbsp;&nbsp;中国青年出版社出版<br />\r\n&nbsp;&nbsp; 这是一部全景式地表现中国当代城乡社会生活的长篇小说。全书共三部。作者在近十年问广阔背景上，通过复杂的矛盾纠葛，刻划了社会各阶层众多普通人的形象。劳动与爱情，挫折与追求，痛苦与欢乐，日常生活与巨大社会冲突，纷繁地交织在一起，深刻地展示了普通人在大时代历史进程中所走过的艰难曲折的道路。\r\n						        ', '/upload/5672.jpg', '路遥', '48', '48', 'no', null, '1', '-11', 'no');
INSERT INTO `t_goods` VALUES ('45', '夏有乔木 雅望天堂2', ' \r\n						        春风文艺出版社出版<br  />\r\n一场以爱为名的阴谋正式开场了。\r\n						        ', '/upload/45656.jpg', '籽月', '17', '17', 'no', null, '4', '-13', 'no');
INSERT INTO `t_goods` VALUES ('46', '山月不知心底事', ' \r\n						        　　百花洲文艺出版社出版<br  />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ★2011年下半年，《青春》同名电影即将盛大开拍。届时，辛夷坞全新修订版系列经典作品也将开展一系列的签售或电影见面会等相关活动。请大家支持全新修订版！绝对不会令你失望！\r\n						        ', '/upload/5656.jpg', '辛夷坞', '15', '15', 'no', null, '4', '0', 'no');

-- ----------------------------
-- Table structure for t_liuyan
-- ----------------------------
DROP TABLE IF EXISTS `t_liuyan`;
CREATE TABLE `t_liuyan` (
  `liuyan_id` int(11) NOT NULL,
  `liuyan_title` varchar(50) DEFAULT NULL,
  `liuyan_content` longtext,
  `liuyan_date` longtext,
  `liuyan_user` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`liuyan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_liuyan
-- ----------------------------
INSERT INTO `t_liuyan` VALUES ('1', '好评', '<p>商品发货速度很快，赞一个</p>', '2015-5-22:30:28', 'lnyxb');
INSERT INTO `t_liuyan` VALUES ('2', '好评', '<p>图书质量很好</p>', '2015-5-22 22:30:28', 'chenming');
INSERT INTO `t_liuyan` VALUES ('3', '好评', '好好好', '2015-5-29 23:14:38', 'zhangli');
INSERT INTO `t_liuyan` VALUES ('4', '好评', '发货很快，第二天就收到了！好评！', '2015-6-4 5:50:29', '逐月');
INSERT INTO `t_liuyan` VALUES ('5', '好评', '发货很快', '2015-6-4 10:08:07', '3');

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order` (
  `order_id` int(11) NOT NULL,
  `order_bianhao` longtext,
  `order_date` varchar(50) DEFAULT NULL,
  `order_zhuangtai` varchar(50) DEFAULT NULL,
  `order_songhuodizhi` varchar(50) DEFAULT NULL,
  `order_fukuangfangshi` varchar(50) DEFAULT NULL,
  `order_jine` int(11) DEFAULT NULL,
  `order_user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_order
-- ----------------------------
INSERT INTO `t_order` VALUES ('1', '20150325122024', '2014-03-25 12:20:24', 'yes', '胜利路99号', '货到付款', '210', '1');
INSERT INTO `t_order` VALUES ('2', '20150325122109', '2014-03-25 12:21:09', 'yes', '中华路25号', '在线付款', '441', '2');
INSERT INTO `t_order` VALUES ('3', '20150325122209', '2014-03-25 12:22:09', 'yes', '中华路22号', '货到付款', '135', '3');
INSERT INTO `t_order` VALUES ('4', '20150325122247', '2014-03-25 12:22:47', 'yes', '兴华路99号', '货到付款', '96', '4');
INSERT INTO `t_order` VALUES ('5', '20150325122333', '2014-03-25 12:23:33', 'yes', '兴工路65号', '在线付款', '237', '5');
INSERT INTO `t_order` VALUES ('31', '20150603054743', '2015-06-03 05:47:43', 'yes', '南京工业大学', '在线付款', '18', '6');
INSERT INTO `t_order` VALUES ('36', '20150603061314', '2015-06-03 06:13:14', 'yes', '胜利街23号', '在线付款', '17', '6');
INSERT INTO `t_order` VALUES ('37', '20150603061347', '2015-06-03 06:13:47', 'yes', '胜利街23号', '在线付款', '65', '6');
INSERT INTO `t_order` VALUES ('38', '20150603062249', '2015-06-03 06:22:49', 'yes', '荒原路12号', '在线付款', '18', '11');
INSERT INTO `t_order` VALUES ('39', '20150603062709', '2015-06-03 06:27:09', 'yes', '园丁小区', '在线付款', '85', '11');
INSERT INTO `t_order` VALUES ('41', '20150603065255', '2015-06-03 06:52:55', 'yes', '南京工业大学', '在线付款', '18', '6');
INSERT INTO `t_order` VALUES ('42', '20150603065611', '2015-06-03 06:56:11', 'yes', '南京工业大学', '在线付款', '17', '6');
INSERT INTO `t_order` VALUES ('49', '20150603103624', '2015-06-03 10:36:24', 'yes', '南京工业大学', '在线付款', '18', '6');
INSERT INTO `t_order` VALUES ('50', '20150603103851', '2015-06-03 10:38:51', 'yes', '南京工业大学', '在线付款', '18', '6');
INSERT INTO `t_order` VALUES ('51', '20150603103915', '2015-06-03 10:39:15', 'yes', '南京工业大学', '货到付款', '17', '6');
INSERT INTO `t_order` VALUES ('52', '20150604051137', '2015-06-04 05:11:37', 'yes', '南京工业大学', '在线付款', '18', '6');
INSERT INTO `t_order` VALUES ('53', '20150604054656', '2015-06-04 05:46:56', 'yes', '南京工业大学', '在线付款', '18', '6');
INSERT INTO `t_order` VALUES ('54', '20150604055206', '2015-06-04 05:52:06', 'yes', '南京工业大学', '货到付款', '144', '6');
INSERT INTO `t_order` VALUES ('55', '20150604060635', '2015-06-04 06:06:35', 'yes', '南京工业大学', '在线付款', '17', '6');
INSERT INTO `t_order` VALUES ('56', '20150604082620', '2015-06-04 08:26:20', 'yes', '南京工业大学', '在线付款', '48', '6');
INSERT INTO `t_order` VALUES ('57', '20150604090853', '2015-06-04 09:08:53', 'no', '南京工业大学', '在线付款', '35', '6');
INSERT INTO `t_order` VALUES ('58', '20150604100727', '2015-06-04 10:07:27', 'no', '南京', '货到付款', '18', '12');
INSERT INTO `t_order` VALUES ('59', '20150604100754', '2015-06-04 10:07:54', 'no', '南京', '在线付款', '17', '12');

-- ----------------------------
-- Table structure for t_orderitem
-- ----------------------------
DROP TABLE IF EXISTS `t_orderitem`;
CREATE TABLE `t_orderitem` (
  `orderItem_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `goods_quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`orderItem_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_orderitem
-- ----------------------------
INSERT INTO `t_orderitem` VALUES ('211', '26', '24', '1');
INSERT INTO `t_orderitem` VALUES ('212', '27', '25', '5');
INSERT INTO `t_orderitem` VALUES ('213', '28', '25', '1');
INSERT INTO `t_orderitem` VALUES ('214', '29', '25', '1');
INSERT INTO `t_orderitem` VALUES ('215', '30', '24', '1');
INSERT INTO `t_orderitem` VALUES ('216', '31', '25', '1');
INSERT INTO `t_orderitem` VALUES ('223', '36', '45', '1');
INSERT INTO `t_orderitem` VALUES ('224', '37', '43', '1');
INSERT INTO `t_orderitem` VALUES ('225', '37', '44', '1');
INSERT INTO `t_orderitem` VALUES ('226', '38', '25', '1');
INSERT INTO `t_orderitem` VALUES ('227', '39', '45', '5');
INSERT INTO `t_orderitem` VALUES ('229', '41', '24', '1');
INSERT INTO `t_orderitem` VALUES ('230', '42', '45', '1');
INSERT INTO `t_orderitem` VALUES ('236', '49', '25', '1');
INSERT INTO `t_orderitem` VALUES ('237', '49', '25', '1');
INSERT INTO `t_orderitem` VALUES ('238', '50', '25', '1');
INSERT INTO `t_orderitem` VALUES ('239', '51', '45', '1');
INSERT INTO `t_orderitem` VALUES ('240', '52', '25', '1');
INSERT INTO `t_orderitem` VALUES ('241', '53', '25', '1');
INSERT INTO `t_orderitem` VALUES ('242', '54', '44', '3');
INSERT INTO `t_orderitem` VALUES ('243', '55', '45', '1');
INSERT INTO `t_orderitem` VALUES ('244', '56', '44', '1');
INSERT INTO `t_orderitem` VALUES ('245', '57', '25', '1');
INSERT INTO `t_orderitem` VALUES ('246', '57', '45', '1');
INSERT INTO `t_orderitem` VALUES ('247', '58', '25', '1');
INSERT INTO `t_orderitem` VALUES ('248', '59', '45', '1');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `user_id` int(11) NOT NULL,
  `user_name` longtext,
  `user_pw` varchar(50) DEFAULT NULL,
  `user_type` int(11) DEFAULT NULL,
  `user_realname` varchar(50) DEFAULT NULL,
  `user_address` varchar(50) DEFAULT NULL,
  `user_sex` varchar(50) DEFAULT NULL,
  `user_tel` varchar(50) DEFAULT NULL,
  `user_email` varchar(50) DEFAULT NULL,
  `user_qq` varchar(50) DEFAULT NULL,
  `user_man` varchar(50) DEFAULT NULL,
  `user_age` varchar(50) DEFAULT NULL,
  `user_birthday` varchar(50) DEFAULT NULL,
  `user_xueli` varchar(50) DEFAULT NULL,
  `user_del` varchar(50) DEFAULT NULL,
  `user_one1` varchar(50) DEFAULT NULL,
  `user_one2` varchar(50) DEFAULT NULL,
  `user_one3` varchar(50) DEFAULT NULL,
  `user_one4` varchar(50) DEFAULT NULL,
  `user_one5` varchar(50) DEFAULT NULL,
  `user_one6` int(11) DEFAULT NULL,
  `user_one7` int(11) DEFAULT NULL,
  `user_one8` int(11) DEFAULT NULL,
  `user_one9` datetime DEFAULT NULL,
  `user_one10` datetime DEFAULT NULL,
  `user_one11` decimal(19,0) DEFAULT NULL,
  `user_one12` decimal(19,0) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'liusan', '123456', '0', '刘明', '胜利路99号', '男', '13555555555', 'liusan@yahoo.cn', '1125541251', null, null, null, null, 'no', null, null, null, null, null, '500', null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('2', 'lnyxb', '123456', '0', '于小明', '中华路25号', '男', '13488854454', 'lnyxb@163.com', '3983928883', null, null, null, null, 'no', null, null, null, null, null, '500', null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('3', 'zhangli', '123456', '0', '张丽', '文艺路27号', '女', '13544214458', 'zhangli@163.com', '65221544', null, null, null, null, 'no', null, null, null, null, null, '150', null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('4', 'zhouyue', '123456', '0', '周月', '兴华路99号', '女', '13488541225', 'zhouyue@163.com', '452215478', null, null, null, null, 'no', null, null, null, null, null, '5', null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('5', 'chenming', '123456', '0', '陈明', '兴工路65号', '男', '13422102155', 'zhouming@163.com', '465132135', null, null, null, null, 'no', null, null, null, null, null, '50', null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('6', '逐月', '428225', '0', '逐月', '南京工业大学', '男', '18915920556', '3330sdad@qq.com', '', null, null, null, null, 'no', null, null, null, null, null, '96', null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('10', '2', '2', '0', '2', '2', '男', '2', '2', '2', null, null, null, null, 'no', null, null, null, null, null, '100', null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('11', 'wanxiao', 'wanxiao', '0', '万小', '东大街23号', '男', '18915920331', '', '', null, null, null, null, 'no', null, null, null, null, null, '97', null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('12', '3', '3', '0', '3', '3', '男', '3', '3', '3', null, null, null, null, 'no', null, null, null, null, null, '83', null, null, null, null, null, null);
