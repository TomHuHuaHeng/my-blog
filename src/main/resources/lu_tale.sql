/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50554
Source Host           : localhost:3306
Source Database       : lu_tale

Target Server Type    : MYSQL
Target Server Version : 50554
File Encoding         : 65001

Date: 2019-05-09 23:17:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_attach
-- ----------------------------
DROP TABLE IF EXISTS `t_attach`;
CREATE TABLE `t_attach` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fname` varchar(100) NOT NULL DEFAULT '',
  `ftype` varchar(50) DEFAULT '',
  `fkey` text NOT NULL,
  `authorId` int(10) DEFAULT NULL,
  `created` int(10) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of t_attach
-- ----------------------------
INSERT INTO `t_attach` VALUES ('6', '/upload/2019/05/v11dte7ta8hrgv11dte7ta8hrg.png', 'image', 'pr6w2yy51.bkt.clouddn.com/upload/2019/05/v11dte7ta8hrgv11dte7ta8hrg.png', '1', '1557326341');
INSERT INTO `t_attach` VALUES ('7', '/upload/2019/05/4lug9ok4esigj4lug9ok4esigj.png', 'image', 'pr6w2yy51.bkt.clouddn.com/upload/2019/05/4lug9ok4esigj4lug9ok4esigj.png', '1', '1557329636');

-- ----------------------------
-- Table structure for t_comments
-- ----------------------------
DROP TABLE IF EXISTS `t_comments`;
CREATE TABLE `t_comments` (
  `coid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned DEFAULT '0',
  `created` int(10) unsigned DEFAULT '0',
  `author` varchar(200) DEFAULT NULL,
  `authorId` int(10) unsigned DEFAULT '0',
  `ownerId` int(10) unsigned DEFAULT '0',
  `mail` varchar(200) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `ip` varchar(64) DEFAULT NULL,
  `agent` varchar(200) DEFAULT NULL,
  `content` text,
  `type` varchar(16) DEFAULT 'comment',
  `status` varchar(16) DEFAULT 'approved',
  `parent` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`coid`) USING BTREE,
  KEY `cid` (`cid`) USING BTREE,
  KEY `created` (`created`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of t_comments
-- ----------------------------
INSERT INTO `t_comments` VALUES ('4', '34', '1534647437', 'test', null, null, 'test@qq.com', 'baidu.com', '0:0:0:0:0:0:0:1', null, '评论个鸡腿+鸡腿啊 啊啊啊啊啊', null, 'approved', null);

-- ----------------------------
-- Table structure for t_contents
-- ----------------------------
DROP TABLE IF EXISTS `t_contents`;
CREATE TABLE `t_contents` (
  `cid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `titlePic` varchar(55) DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `created` int(10) unsigned DEFAULT '0',
  `modified` int(10) unsigned DEFAULT '0',
  `content` text COMMENT '内容文字',
  `authorId` int(10) unsigned DEFAULT '0',
  `type` varchar(16) DEFAULT 'post',
  `status` varchar(16) DEFAULT 'publish',
  `tags` varchar(200) DEFAULT NULL,
  `categories` varchar(200) DEFAULT NULL,
  `hits` int(10) unsigned DEFAULT '0',
  `commentsNum` int(10) unsigned DEFAULT '0',
  `allowComment` tinyint(1) DEFAULT '1',
  `allowPing` tinyint(1) DEFAULT '1',
  `allowFeed` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`cid`) USING BTREE,
  UNIQUE KEY `slug` (`slug`) USING BTREE,
  KEY `created` (`created`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of t_contents
-- ----------------------------
INSERT INTO `t_contents` VALUES ('1', '愿与你一起看尽人世间的繁华', null, null, '1557408740', '0', '如果 思念有声音，那便是窗前的风声，丝丝入耳。\r\n\r\n阳光灿烂，只因为那一路，有你相伴。\r\n\r\n我曾一度认为，最有意义的远行是背着背包去 自己想去的地方。\r\n\r\n直到遇见你，我才深切的明白，是与你手牵手走过的距离。\r\n\r\n我曾一度认为，最富有深情的陪伴是一起去 爱情海的徜徉。\r\n\r\n直到遇见你，我才深切明白，是与你相伴渡过的每一个夜晚。\r\n\r\n愿与你一起看尽人世间的繁华。\r\n\r\n愿与你风烛残年，愿与你一起分享喜怒哀乐。\r\n\r\n与你一起走过似水流年。\r\n\r\n看尽灯火阑珊的喧嚣世界，陪你一起怀念记忆中的小桥流水人家。\r\n\r\n闭着眼睛聆听着你的风花雪月，脑海中想着你应该拥有的模样。\r\n\r\n我的世界，因为有你的陪伴，分外绚烂。\r\n\r\n你路过我的 人生，惊艳了我的时光。\r\n\r\n不管怎样，时至今日，我如此爱你。\r\n\r\n希望在你也步入爱的圣殿后，还能听到你的声音。', null, 'post', 'publish', '美文', '鸡腿', '1', '0', '1', null, null);
INSERT INTO `t_contents` VALUES ('2', '物联网卡因为什么这么火，主要有哪些优势？', null, null, '1557409146', '0', '由于物联网的快速发展，物联网卡也跟着火爆起来，受到了越来越多的企业欢迎。这个时候就有人问了，物联网卡为什么会这么火？它有哪些优势呢？接下来小编来个大家讲解一下吧。\r\n\r\n物联网卡为什么会这么火？\r\n\r\n1．发展趋势\r\n\r\n由于现在需要物联网卡的智能设备太多了，所以物联网卡的发展会越来越好，互联网巨头们纷纷表示“互联网时代即将过去，物联网时代即将到来”，而且各大巨头在近期都加大了对物联网行业的投入，比如阿里巴巴就成立了达摩院专门进行物联网方面的研发。\r\n\r\n2．应用范围\r\n\r\n物联网卡可以应用于各个领域，例如监控和监测、医疗健康、车联网、可穿戴设备、智能表具、无线POS机等诸多领域，物联网本质的是各种设备间的连接。物联网的成长基于互联网的发展，移动互联网让手机等智能终端连网，物联网则是让各个设备、各个物体、甚至人与人都连上互联网，通过连接创造更大的价值。\r\n\r\n3．三大运营商\r\n\r\n中国移动、中国联通和中国电信三大运营商对于物联网的发展都比较重视，都在快速布局物联网，加大对物联网的投入，2017年8月三大运营商就分别获得了新的物联网卡号段，加速在物联网方面的推动。\r\n\r\n物联网卡有哪些优势？\r\n\r\n物联网卡看上去和普通SIM卡区别不大，不过和普通的SIM卡相比物联网卡具备以下几个明显优势：\r\n\r\n1．成本\r\n\r\n由于物联网卡不具备通话的功能，只用于智能设备的连接，所以在价格方面比普通sim卡的资费要低。\r\n\r\n2．号段\r\n\r\n企业的智能硬件、设施设备动辄成千上万，数量级非常大，SIM卡的11位号码无法满足，而物联网卡是13位号码，采用独立网元，能够更加快速的实现物物相连。\r\n\r\n3．管理\r\n\r\n客户在选择购买物联网卡之后，物联网卡平台会提供物联网卡的接入、管理、运营和数据服务；同时针对不同行业提供安全高效稳定低延时的行业解决方案与平台支撑，帮助客户搭建完善的物联云服务应用体系。\r\n', null, 'post', 'publish', '物联网', 'Java', '1', '0', '1', null, null);
INSERT INTO `t_contents` VALUES ('3', 'Oracle 扼杀 Java EE！', null, null, '1557409226', '0', '2017 年，Oracle 对外宣布，为了 Java EE 可以拥有更快速的创新发展，其决定将 Java EE 移交给新东家 Eclipse 基金会。彼时无论是对着 Java EE 有着突出贡献的 IBM、Red Hat，还是 Eclipse 基金会，均对这次的移交持乐观态度，Eclipse 基金会的执行总监 Mike Milinkovich 也曾表示，这正是企业级 Java 所需要的，也是社区所期望的。\r\n\r\n不过短短两年后，在 Oracle 将 Java EE 向 Eclipse 基金会移交的过程中，不少业界人士得出 Oracle 事实上已经扼杀了 Java EE，而这究竟是怎么一回事？\r\n\r\n今天，Eclipse基金会主席Mike Milinkovic在博客上公布了Oracle与Eclipse基金会秘密谈判商标的最终结果。我们记得，Oracle曾宣布Java EE会开源给Eclipse基金会，并且Java EE会实现真正意义上的开源。经过18个月的紧张谈判，这一努力宣告结束：谈判失败了。双方并未达成商标协议。\r\n\r\n根据最近的董事会会议记录，谈判失败的原因可以简单归结为：Oracle反过来提出了一系列难以接受的要求。其中某些要求还将会置Eclipse基金会于十分危险的境地。\r\n\r\nOracle声称，Eclipse基金会发布的产品（如Eclipse IDE）必须只与Java进行运行绑定，尤其是经过Oracle及其授权方认证的Java运行环境——而非其他任何供应商的认证，也并非任何未经认证的运行环境。因此，IDE和GlassFish将不再是供应商中立的产品。在谈判开始时并没有提出这一条件，它是在谈判开始很久后才加进来的，而当时已经在开展转移工作了。人们认为，这是对IBM OpenJ9 JVM捐赠的反应，这对Oracle的Java业务有明显的威胁。但是，一旦Eclipse的产品不再是供应商中立的，Eclipse基金会的免税政策可能会失效，这将意味着财务危机或组织的终结。因此，Oracle提的这一要求非但是难以接受的，而是根本上不可能接受的，所以谈判基本算是彻底失败了。\r\n\r\n\r\n接下来面临的不仅仅是Java EE的终结。Eclipse基金会可能使用一些相当老旧的代码，但又不能修改它。如果修改了，就必须重新命名——包括项目名称(如JAX-RS，这并不理想，但也可以接受)和包名(如javax.*)，这意味着，如果进行密集的重构但不重新编译，那么现有的应用程序将无法在更新的平台上运行。因此，新平台将成为一个全新的、不兼容的平台，最糟糕的情况可能是，这不仅使得“WORA”（编写一次，随处运行）原则失效，也不允许发生这种情况：18个月后，几乎没有应用程序供应商愿意花时间和金钱来更新所有重新编译的版本，就仅仅为了这一前途未卜的重名平台。前途茫茫，因为Oracle已经开始在Eclipse基金会的董事会上进行政治阻挠，而Oracle在其董事会是有一席之地的，并且该董事会需要意见一致才能做决定。Oracle具备这种能力，显然，它会利用这种能力来阻止基金会。这表明，在董事会会议上，他们有权反对该项举措。\r\n\r\nEclipse基金会目前的举措是：至少依靠Jakarta商标成功地挽回了部分市场。但代价是什么呢？为什么要保留一个现在已成空壳的商标呢？它现在不再是Java EE的全球标准的继承者，它只是一些基础构建的框架，而用户最终会学习并得出结论。目前Eclipse基金会的计划是尽快重新命名。但是，当这意味着要更改所有现有的应用程序时，谁还会真正愿意跳上这列火车呢？Eclipse的Mike Milinkovic对未来仍然充满希望。其表示，“对我来说，这个杯子已经不再是半空的了：今天它已经破碎成碎片。”今天就是Java EE被Oracle扼杀的一天。', null, 'post', 'publish', 'oracle', 'Java', '1', '0', '1', null, null);
INSERT INTO `t_contents` VALUES ('4', 'java常用数据结构源码', null, null, '1557409292', '0', 'TreeMap源码 非线程安全 （结合synchronizedMap()可变为线程安全）\r\n继承于AbstractMap[k-v集合]，实现了NavigableMap接口【支持一系列的导航方法getFirstEntry】、Cloneable接口、Serializable接口\r\n基于红黑树进行排序，key比较大小是根据比较器comparator来进行判断;红黑树节点是Entry类型\r\nTreeMap的基本操作 containsKey、get、put 和 remove 的时间复杂度是 log(n) 。\r\nTreeMap是非同步的。 它的iterator 方法返回的迭代器是fail-fastl的\r\nEntry\r\n\r\nEntry是红黑数的节点，它包含了红黑数的6个基本组成成分：key(键)、value(值)、left(左孩子)、right(右孩子)、parent(父节点)、color(颜色)\r\n\r\nEntry节点根据key进行排序，Entry节点包含的内容为value\r\n\r\nTreeMap的Entry相关函数  NavigableMap接口\r\n\r\nfirstEntry()、 lastEntry()、 lowerEntry()、 higherEntry()、 floorEntry()、 ceilingEntry()、 pollFirstEntry() 、 pollLastEntry()\r\n\r\nfirstEntry() 和 getFirstEntry() 都是用于获取第一个节点\r\n\r\nfirstEntry() 是对外接口，返回的Entry不能被修改； getFirstEntry() 是内部接口，返回的Entry可以被修改\r\n\r\n还有key、value\r\n\r\nTreeMap的entrySet()函数\r\n\r\ncontains(Object o)：比较equals比较是否有相同的value\r\nremove(Object o)：类似contains如果有相同，则删除\r\nsize()，clear\r\n \r\n\r\nif (p != null && valEquals(p.getValue(), value)) { deleteEntry(p); return true; }\r\n\r\nTreeMap实现java.io.Serializable，分别实现了串行读取、写入功能。\r\n\r\n串行写入函数是writeObject()，它的作用是将TreeMap的“容量，所有的Entry”都写入到输出流中。\r\n\r\n而串行读取函数是readObject()，它的作用是将TreeMap的“容量、所有的Entry”依次读出。\r\n\r\nreadObject() 和 writeObject() 正好是一对，通过它们，我能实现TreeMap的串行传输。\r\n\r\n \r\n\r\n遍历TreeMap的键值对 entrySet()\r\n\r\n第一步：根据entrySet()获取TreeMap的“键值对”的Set集合\r\n\r\n第二步：通过Iterator迭代器遍历“第一步”得到的集合\r\n\r\n// 假设map是TreeMap对象 // map中的key是String类型，value是Integer类型 Integer integ = null; Iterator iter = map.entrySet().iterator(); while(iter.hasNext()) { Map.Entry entry = (Map.Entry)iter.next(); // 获取key key = (String)entry.getKey(); // 获取value integ = (Integer)entry.getValue(); }\r\n\r\nmap.keySet()获取TreeMap的“键”的Set集合\r\n\r\nmap.values()获取TreeMap的“值”的集合\r\n\r\n \r\n\r\n顺序遍历和逆序遍历\r\n\r\n \r\n\r\n由于TreeMap中的元素是从小到大的顺序排列的。因此，顺序遍历，就是从第一个元素开始，逐个向后遍历；\r\n\r\n而倒序遍历则恰恰相反，它是从最后一个元素开始，逐个往前遍历。\r\n\r\n我们可以通过 keyIterator() 和 descendingKeyIterator()来实现\r\n\r\nkeyIterator()的作用是返回顺序的KEY的集合，先getFirstEntry()，再nextEntry().key\r\ndescendingKeyIterator()的作用是返回逆序的KEY的集合。先getLastEntry()，再prevEntry().key\r\n \r\n\r\n红黑树插入删除\r\n为什么要旋转：防止树退化成链，导致O(n)（而不是logn）的高度\r\n\r\n第一步: 将红黑树当作一颗二叉查找树，将节点插入\r\n\r\n根据树的键的顺序进行插入，保证插入后仍然有序\r\n\r\n第二步：将插入的节点着色为\"红色\"\r\n\r\n(1) 每个节点或者是黑色，或者是红色。\r\n\r\n(2) 根节点是黑色。\r\n\r\n(3) 每个叶子节点是黑色。 [注意：这里叶子节点，是指为空的叶子节点！]\r\n\r\n(4) 如果一个节点是红色的，则它的子节点必须是黑色的。\r\n\r\n(5) 从一个节点到该节点的子孙节点的所有路径上包含相同数目的黑节点。\r\n\r\n       将插入的节点着色为红色，不会违背\"特性(5)\"！少违背一条特性，就意味着我们需要处理的情况越少。接下来，就要努力的让这棵树满足其它性质即可；满足了的话，它就又是一颗红黑树了。o(∩∩)o...哈哈\r\n\r\n第三步: 通过一系列的旋转或着色等操作，使之重新成为一颗红黑树。\r\n\r\n第二步中，将插入节点着色为\"红色\"之后，不会违背\"特性(5)\"。那它到底会违背哪些特性呢？\r\n\r\n       对于\"特性(1)\"，显然不会违背了。因为我们已经将它涂成红色了。\r\n\r\n       对于\"特性(2)\"，显然也不会违背。在第一步中，我们是将红黑树当作二叉查找树，然后执行的插入操作。而根据二叉查找数的特点，插入操作不会改变根节点。所以，根节点仍然是黑色。\r\n\r\n       对于\"特性(3)\"，显然不会违背了。这里的叶子节点是指的空叶子节点，插入非空节点并不会对它们造成影响。\r\n\r\n       对于\"特性(4)\"，是有可能违背的！\r\n\r\n       那接下来，想办法使之\"满足特性(4)\"，就可以将树重新构造成红黑树了。\r\n', null, 'post', 'publish', 'java,数据结构', 'Java', '1', '0', '1', null, null);
INSERT INTO `t_contents` VALUES ('5', '必须要裁掉那些老家伙', null, null, '1557409366', '0', '晚上， 张总和他的朋友王总在一起喝茶，顺便交流一下各自的近况。\r\n\r\n\r\n\r\n“张总，你这个软件公司搞得不错吧，年销售额过亿了吧？”\r\n\r\n\r\n\r\n“哪里哪里，国际形势，国内经济整体不好，今年不亏本已经万幸了！”\r\n\r\n\r\n\r\n“听说你们公司最近裁了一批人？”\r\n\r\n\r\n\r\n“没错，裁了一批35岁以上老家伙！” 张总回答。\r\n\r\n\r\n\r\n“为啥啊？35岁正是年富力强，无论智力和精力，都处于巅峰啊，放到别的行业，那绝对是中坚力量，裁掉这样的人岂不可惜？”\r\n\r\n\r\n\r\n“哎呀，你不知道，” 张总端起桌子上精致的茶杯， 喝了一口茶，接着说道：“这软件互联网行业和别的行业不一样，是年轻人的天下。”\r\n\r\n\r\n\r\n“年轻人的天下？”\r\n\r\n\r\n\r\n“是啊，软件互联网行业竞争多激烈啊，你不仅要把活儿做出来，还得做得快，每天都在夺命狂奔啊，要不就被别人干死。在这种大环境下，加班多正常啊， 但是有些老员工，这晚上才干到11点半，老程序员就想开溜，说是身体吃不消了，明天起不来了，8点到不了公司了。”\r\n\r\n\r\n\r\n“啊， 你们工作到这么晚？！” 王总大惊。\r\n\r\n\r\n\r\n“互联网公司不都是996？我们偶尔有个急活，干到凌晨2点也正常。”\r\n\r\n\r\n\r\n“你们真是疯狂啊！”\r\n\r\n\r\n\r\n“没办法，竞争激烈，你看我， 每天早上6点起床，现在晚上10点半了，我还在工作，和你联络感情，我的工作时间远远超过996了。”  张总感慨道。\r\n\r\n\r\n\r\n“哈哈，你这能一样吗？你的时间自由掌控，累了就到你的套间眯一会儿，坐火车飞机都是头等舱，商务舱，能充分休息，能和程序员比吗？”\r\n\r\n\r\n\r\n“哈哈哈， 我也心累啊，掌控这么大一摊生意，养活这么多人容易吗我！”\r\n\r\n\r\n\r\n“哎，你们的人都这么拼，整天睡不好觉，这软件质量能好吗？”\r\n\r\n\r\n\r\n“我们的功能都实现了啊，至于软件内部实现得怎么样，我也不太懂，得问CTO， 不过能赚钱就行了，管不了那么多了。”\r\n\r\n\r\n\r\n“但是我还是觉得老员工价值高，虽然他们熬不了夜了， 但是经验丰富，对公司业务了解透彻， 精通技术，有洞察力，出了问题能很快定位，这是不是比新员工强多了？我听说国外的那些著名IT公司，五六十岁的程序员都比比皆是啊！我还是不理解你为什么这么裁人。”\r\n\r\n\r\n\r\n“你说的也许有道理，但是我的公司不是大厂，不会做那些底层的东西， 我们做的都是应用项目，技术含量能高到哪儿去？说得难听一点，就是低水平重复劳动， 一个年轻人，用不了三个月就能干得不错了， 年轻人多好使啊，无牵无挂，很容易忽悠，加班，出差，甚至封闭开发都没有问题，工资还低，我当然要用年轻人了。”\r\n\r\n\r\n\r\n“国内的公司难道都是这样？”\r\n\r\n\r\n\r\n“可能大厂好一点吧？我也不太清楚，不过国内的软件和互联网公司基本上都是在应用层折腾，有核心技术的很少。”\r\n\r\n\r\n\r\n“说来说去，你裁人还是觉得35岁以上的性价比低。”\r\n\r\n\r\n\r\n“那是，这些老员工的工资相当于新人的两三倍， 但是他的贡献却达不到两三倍，从成本上考虑，不裁他裁谁？”\r\n\r\n\r\n\r\n“那你把35岁以上的都裁了吗？”\r\n\r\n\r\n\r\n“那是不可能的，我也不会乱来， 裁掉的都是那些安于现状，不思进取，没有激情的老员工。有几个我是舍不得裁掉的，比如老李，既懂技术又擅长沟通，每次都能把客户‘忽悠’得一愣一愣的，哈哈，很多单子没有他还真拿下来。再比如老钱，CTO说他是我们公司的为数不多的技术专家，在业界都有影响力了，虽然我们的项目技术含量不高，但也会遇到技术问题，这时候去找老钱准没错，不过我们的池子太小，老钱已经待不住了 .....”\r\n\r\n\r\n\r\n“你还真不糊涂，他们都是直接给你创造价值，创造利润的。不过也是，工作了10多年，要么是走上了管理岗位，有资源有人脉；要么是成为了技术专家，有了技术有影响力，最怕就是高不成低不就，那就危险了。”\r\n\r\n\r\n\r\n“哈哈，是啊， 不早了，今天就到这儿吧，明天早上我还得去拜访一个客户，下次再聊。”\r\n', null, 'post', 'publish', '职场', '鸡腿', '1', '0', '1', null, null);
INSERT INTO `t_contents` VALUES ('6', '互联网程序员黑话合集！要想混的好，爬的快，这些你不能不知道！', null, null, '1557409551', '0', '刚开始投简历时，你总以为是这样的，其实大部分情况下是那样的……\r\n\r\n面试之后，HR让回去等消息，傻傻的等待，半个月以上没有回音，各种焦虑……\r\n\r\n明面上的意思就是实际意思的公司，貌似都是说的是别人的公司~~~~\r\n\r\n下面是职场达人总结的招聘行业术语（俗称招聘黑话），一看就懂证明你是历经磨难且具有拼搏精神的老司机，让我们一起来看看吧：\r\n\r\n1、能承受较大的工作压力——加班\r\n\r\n2、抗压能力强——加班+替别人扛雷\r\n\r\n3、工作有激情——自觉加班还要特美\r\n\r\n4、有强烈责任心——没做完不准走\r\n\r\n4、＋qun276-582-434免费领取java学习资料\r\n\r\n5、弹性工作制——加班不给加班费\r\n\r\n6、弹性工作制，但不保证准时下班——做完了才准走\r\n\r\n7、包三餐——早晚都得加班\r\n\r\n8、双休——工作日加班\r\n\r\n9、薪资+社保+带薪休假+职位晋升——是个正经公司都有，没什么拿得出手的福利\r\n\r\n10、适应较快的工作节奏——加班把三天的工作两天做完\r\n\r\n11、公司提供水果——貌似也就这一个福利\r\n\r\n12、有强烈的上进心——干完工作就加班去干其他工作\r\n\r\n13、喜欢有挑战性的工作——加班、前人留的坑不少\r\n\r\n14、不提倡加班——你懂的（该加还得加，加班是因为你工作效率低，不是安排工作多）\r\n\r\n15、不强制加班——你懂的 （不做完额外安排的工作你走一个试试！）\r\n\r\n16、上不封顶——下不保底\r\n\r\n17、偶尔会忙——以后忙了你别抱怨，提醒过了\r\n\r\n18、团队氛围很好——大家经常一起加班，一起吃加班餐，聊聊工作，多happy\r\n\r\n19、上升空间大——工资低，3000元涨个50%不也就4500吗？\r\n\r\n20、领导安排的其它任务——我叫你干啥你就得干啥\r\n\r\n21、妹子多——这个屌丝虽然脑子不太好使但便宜，看看这个理由能不能骗一蛤\r\n\r\n22、有期权——没多余的现金发工资给你\r\n\r\n23、有股权——工资微妙地低于你应得的数，反正我不信你能干满拿走\r\n\r\n24、年底双薪——13薪\r\n\r\n25、13薪起——别想了，就是13薪\r\n\r\n26、年底有奖金——年薪大于 12薪小于 13薪\r\n\r\n27、我们 6点准时下班 -——入职才知道最严重的早晨 6点下班，回家吃早饭睡觉。\r\n28、扁平化管理 -——领导和你坐一屋，盯着你干活\r\n\r\n29、核心团队来自 BAT ——嗯，你不是BAT的，所以你不是核心\r\n\r\n30、\"我把你的简历整理一下\"——对方说这个的话基本可以判断他是卖人头外派的了,把你的简历给他的甲方。\r\n\r\n31、弹性工作时间——只弹下班（下班时间不固定），不弹上班\r\n\r\n32、能独立完成任务 ——前端后端或产品测试推广运营全都你一个人干\r\n\r\n33、领导好——看你顺眼就好，不顺眼就 XX ；你有生之年不可能有晋升的空间\r\n\r\n34、XXX比钱重要——钱达不到你的要求\r\n\r\n35、公司会给你培训，但是工作之后你要交培训费——麻痹就是培训班\r\n\r\n36、BAT薪资——略微高于本地市场价\r\n\r\n37、帮员工避税——按最低工资给你交社保公积金（五险一金）\r\n\r\n38、我们是创业公司——有不少坑要填，另请做好加班拼命的准备\r\n\r\n39、老板 /负责人不在，稍后会联系你的——面试不合格，不要抱期望了\r\n\r\n## **程序员的职场行话**\r\n程序员也有自己的行业表达方式，这些话只要是老司机都能懂的：\r\n\r\n1、那个bug没问题啊，你再试试——刚偷偷改完这个bug\r\n\r\n2、下个版本再做吧——根本就不想做\r\n\r\n3、正在改——忘了有这回事了\r\n\r\n4、需求太不合理——这逻辑不好做\r\n\r\n5、别人家的实现方式不一样——我不会做\r\n\r\n6、产品逻辑不对——傻X，还不如我上\r\n\r\n7、最近老加班——老板该加工资了\r\n\r\n8、我回去评估一下技术难度——先拖两天\r\n\r\n9、你这个需求不清晰——我不想做\r\n\r\n10、你确定有这个需求吗？——做出来没人用老子跟你拼了\r\n', null, 'post', 'publish', '互联网', 'Java', '1', '0', '1', null, null);
INSERT INTO `t_contents` VALUES ('7', '京东强推 995 工作制，中国式变态加班何时休？', null, null, '1557409617', '0', '听惯了996，京东来个995，是不是觉得还挺有人性的？\r\n\r\n就连京东大快消事业群公关总监，都在职场社交平台上回应称，“不会强制要求员工加班，但鼓励大家全情投入。”\r\n\r\n都这么说了，员工还敢不加班吗？\r\n\r\n加班，对于科技圈来说，就和呼吸一样“自然”。\r\n\r\n \r\n\r\n中国人加班可以有多“狂”？\r\n去年，一位外派肯尼亚工作的华为工程师，劳累过度、客死他乡，留下了没有工作的妻子、和两个孩子。\r\n\r\n其妻子发帖说他直到离世，还有33天年假没休。\r\n\r\n笔者去华为心声社区翻了翻，没有看到华为官方关于此事的说法。\r\n\r\n \r\n\r\n倒是看到几位员工在里面讨论称，“很多在非洲苦的兄弟，早就拿了几百万上千万存款了，不吃苦，达得到吗？吃得苦中苦，方为人上人，劝各位好好想想。”\r\n\r\n有句哲言说得好，“人若赚得全世界，却赔上自己的性命，又有什么益处呢？”\r\n\r\n \r\n\r\n我不否认艰苦奋斗和多劳多得，但当加班成为一种常态，那其实就是“变态”。\r\n\r\n中国人加班有多“变态”？\r\n\r\n2016年，滴滴发布的《2016年度加班最“狠”公司排行榜》中，京东以23：16的平均下班时间，成为中国最“狠”公司冠军。\r\n\r\n而在高德地图发布的《2016年度中国主要城市交通分析报告》中，华为每日人均加班时间长达3.96小时，成为中国企业“加班王”。\r\n\r\n \r\n\r\n“变态”加班文化的形成\r\n最近，笔者妹妹刚从培训班结业，出来找产品经理的工作。\r\n\r\n去北京奥运村附近的一家初创公司面试，上来就说公司是996，问妹妹能不能接受。\r\n\r\n着急找工作的她，当然答应能接受。\r\n\r\n面试完，公司看她还可以，立马就留下她看产品介绍。\r\n\r\n入职后，说是996，但是妹妹常常是10点才走，等回到昌平的出租屋里，都快12点了。\r\n\r\n才二十来岁的她，累得连周末我约她去赏花，都没精力去了。\r\n\r\n无独有偶，笔者一位做Java开发的老同学，最近换工作，去一家给国家电网做外包的公司面试，也是到那儿就被告知，如被录用起码要几个月都是996。\r\n\r\n \r\n\r\n程序员早已是被默认为加班狗的职业，也有人说，程序员工资高啊，累点怎么啦？\r\n\r\n但程序员工资高，不是因为工作时间长，而是因为他们的职业技能壁垒高。\r\n\r\n试问，富士康流水线上的工人，和程序员同样工作12小时，能拿一样的工资吗？\r\n\r\n所以工资高，就得加班多，这个理论很坑爹。\r\n\r\n更可怕的是，微信的人手一份，让隐形加班愈演愈烈。\r\n\r\n隐形加班越来越多\r\n早几年，人们工作都是用QQ，QQ一般都是电脑登录，所以周末领导很少在QQ群另外安排工作。\r\n\r\n有的公司用的还是内部PC版工作软件，这就更不可能在周末收到领导消息了。\r\n\r\n那时，有急事，领导都会直接电话。\r\n\r\n现在，微信人手一份，很多人的微信，工作、生活混着用。\r\n\r\n这种情况下，领导明知道你就开着微信，但你要是敢在周末不回，堪称是工作上的忤逆。\r\n\r\n宁波有位店长，有次下班后没有看微信消息。结果当天晚上，领导在微信群里，让每个店长必须十分钟内，做出他想要的报表。\r\n\r\n无辜的店长，第二天就被扫地出门了。\r\n\r\n事实上，论加班的回报，白领还不如工人。\r\n\r\n白领其实不如工人\r\n在富士康，工人的工资因为是计件制，所以他们的工资，是看得见的多劳多得。\r\n\r\n底薪低的工人，甚至会抢着加班。有的工人为了加班，不惜贿赂组长。\r\n\r\n2015年，富士康的一位线长，威胁不配合加班的下属：“只要有一次不配合加班，我就让你从此以后一个班都没得加。”\r\n\r\n加班，曾几何时，竟成了我们的宿命。\r\n\r\n视频《你知道 中国人有多拼吗？》里，讲了加班到凌晨四点的白领、讲了凌晨四点起来蒸包子的女商贩、讲了为了及时收到领导消息而让手机电脑24小时待命的姑娘、讲了做手术累得靠在走廊里连家人消息都顾不上回的医生、讲了休假旅行却不忘把电脑放旅行箱的年轻人......', null, 'post', 'publish', '狗东', '鸡腿', '1', '0', '1', null, null);
INSERT INTO `t_contents` VALUES ('8', 'HR问：“你为什么离开上一家公司？”，这样回答最机智', null, null, '1557409687', '0', '金三银四是求职旺季，很多职场人都希望抓住这个机会跳槽到一家更适合自己发展的公司。\r\n\r\n\r\n\r\n在求职的面试的时候，必须要经受得住HR的刁难，这样你才能够顺利拿到offer。\r\n\r\n\r\n\r\n经常在后台看到有粉丝留言说，“毕老师，HR问我为什么要离开上一家公司，我应该怎么回答才是最好的啊？”\r\n\r\n\r\n\r\n这个问题确实是一个比较普遍的问题，几乎每一个HR都会问到这个问题（除非你是应届生）。\r\n\r\n\r\n\r\n当面试时HR问，“为什么要离开上一家公司”的时候，应该怎么回答才是最机智的呢？\r\n\r\n\r\n\r\n下面就由毕老师跟大家一起来分析一下这个问题的回答思路吧。\r\n首先明确HR的意图\r\n\r\n\r\n\r\nA：考察求职者的稳定性\r\n\r\n\r\n\r\n从你离职的原因HR就可以判断出你是一个怎么样的人，你是否能在他们公司长久做下去。\r\n\r\n\r\n\r\nHR最害怕给公司招到因为能力、人品问题被淘汰或是忠诚度低、频繁跳槽的员工。\r\n\r\n\r\n\r\nB：了解求职者对上一家公司的看法\r\n\r\n\r\n\r\nHR从求职者对上一家公司的看法中就能轻而易举地看出求职者的人品如何，是否适合做这份工作。\r\n\r\n\r\n\r\nC：了解求职者对自己的职业规划\r\n\r\n\r\n\r\n每个人辞职都会有自己的理由，但是有的人是为了钱，有的人是为了前途，从离职理由可以看出一个人对自己的职业规划是怎么样的。\r\n\r\n\r\n\r\nD：判断求职者是否诚实\r\n\r\n\r\n\r\n有HR总结发现，上一家公司的离职原因是仅次于上一份工作薪资水平，出现虚假信息最多的环节。\r\n\r\n\r\n\r\n其实，HR阅人无数，很容易能从你的话语中得知你是否诚实。哪些话是真的，哪些话一听就是假的，他们心中有数。\r\n\r\n\r\n\r\nHR问这个问题也是在试探求职者是否诚实，是否故弄玄虚，投机取巧。\r\n\r\n\r\n\r\n在回答这个问题之前，每一位求职者都需要了解HR为什么要问你这个问题。\r\n\r\n\r\n\r\n然后才能更加有针对性，更加能迎合HR的口味去回答这个问题，而不是把答案包装得越好看越好。\r\n\r\n哪些离职理由一定不能说\r\n\r\n\r\n\r\n前阵子，有一个HR朋友对我说，她面试了一位应聘游戏岗位的设计师，虽然他不是特别优秀的那种，但感觉还可以接受。\r\n\r\n\r\n\r\n但是当她问了“你为什么要从上一家公司离职？”这个问题的时候，求职者的回答让她打消了录用的念头。\r\n\r\n\r\n\r\n当时，求职者说了几个离职理由都是最致命的。\r\n\r\n\r\n\r\n第一个，上一家公司的工资太低了，我工作了两年都没有给我涨过多少薪水，感觉自己的薪水低于行业水平。\r\n\r\n\r\n\r\n第二个，公司人员太复杂，老板太奇葩了，天天自己游手好闲，却像催命鬼一样，催着别人干活。\r\n\r\n\r\n\r\n第三个，公司天天加班加点，还没有加班费，受不了。\r\n\r\n\r\n\r\n听完他描述的三个离职理由之后，我的朋友立刻就决定不录用他了，也不想再和他交流下去了。\r\n\r\n\r\n\r\n原因很简单：\r\n\r\n\r\n\r\nA：你来这里抱怨前一家公司工资低，那你入职我们家公司要给多少才算不低呢？你的能力又不是很突出。\r\n\r\n\r\n\r\nB：你在这里说你的同事不好，老板奇葩，那你自己的人品又如何呢？是不是从这里离职后，也骂你现在的同事和老板？\r\n\r\n\r\n\r\nC：公司是让你来工作的，而不是养老的，偶尔加班加点也是正常的，何况你需要加班或许你因为你没有在规定时间内完成工作任务。\r\n\r\n\r\n\r\n在回答这个问题的时候，一定要注意了，不要不断讲上家公司的坏话，尤其是你在里面待的时间比较长的情况下。\r\n\r\n\r\n\r\n还有以下这些离职理由也绝对不能说：\r\n\r\n\r\n\r\n我想通过跳槽实现加薪的梦想。\r\n\r\n\r\n\r\n工作压力太多，不适合我，我想找一个更轻松的活。\r\n\r\n\r\n\r\n工作单位没有双休，我希望找双休的工作。\r\n\r\n\r\n\r\n公司的制度太严格了，动不动就扣工资，我那点薪水都不够扣。\r\n\r\n\r\n\r\n我跟同事闹矛盾了，不想天天看到他，就辞职咯。\r\n\r\n\r\n\r\n公司的领导看不到我的才华，我觉得在那里没有用武之地。\r\n\r\n\r\n\r\n我只是想试一下提离职看会不会有人留我，结果没人留，尴尬到只能走了。\r\n\r\n\r\n\r\n项目没做好，被公司辞退了。\r\n\r\n\r\n\r\n公司的工资分配不公平，老板以公谋私。\r\n\r\n\r\n\r\n公司竞争太激烈了，我在那里没有未来。\r\n\r\n\r\n\r\n这些离职理由说一个都会对你极其不利，所以千万不要乱说，就算是事实也不要直接说出来，要学会真话不全说。', null, 'post', 'publish', 'HR', 'test', '1', '0', '1', null, null);
INSERT INTO `t_contents` VALUES ('9', 'java系统高并发解决方案', null, null, '1557409776', '0', '一个小型的网站，比如个人网站，可以使用最简单的html静态页面就实现了，配合一些图片达到美化效果，所有的页面均存放在一个目录下，这样的网站对系统架构、性能的要求都很简单，随着互联网业务的不断丰富，网站相关的技术经过这些年的发展，已经细分到很细的方方面面，尤其对于大型网站来说，所采用的技术更是涉及面非常广，从硬件到软件、编程语言、数据库、WebServer、防火墙等各个领域都有了很高的要求，已经不是原来简单的html静态网站所能比拟的。\r\n\r\n大型网站，比如门户网站。在面对大量用户访问、高并发请求方面，基本的解决方案集中在这样几个环节：使用高性能的服务器、高性能的数据库、高效率的编程语言、还有高性能的Web容器。但是除了这几个方面，还没法根本解决大型网站面临的高负载和高并发问题。\r\n\r\n上面提供的几个解决思路在一定程度上也意味着更大的投入，并且这样的解决思路具备瓶颈，没有很好的扩展性，下面我从低成本、高性能和高扩张性的角度来说说我的一些经验。\r\n\r\n1、HTML静态化\r\n\r\n其实大家都知道，效率最高、消耗最小的就是纯静态化的html页面，所以我们尽可能使我们的网站上的页面采用静态页面来实现，这个最简单的方法其实也是最有效的方法。但是对于大量内容并且频繁更新的网站，我们无法全部手动去挨个实现，于是出现了我们常见的信息发布系统CMS，像我们常访问的各个门户站点的新闻频道，甚至他们的其他频道，都是通过信息发布系统来管理和实现的，信息发布系统可以实现最简单的信息录入自动生成静态页面，还能具备频道管理、权限管理、自动抓取等功能，对于一个大型网站来说，拥有一套高效、可管理的CMS是必不可少的。\r\n\r\n除了门户和信息发布类型的网站，对于交互性要求很高的社区类型网站来说，尽可能的静态化也是提高性能的必要手段，将社区内的帖子、文章进行实时的静态化，有更新的时候再重新静态化也是大量使用的策略，像Mop的大杂烩就是使用了这样的策略，网易社区等也是如此。\r\n\r\n同时，html静态化也是某些缓存策略使用的手段，对于系统中频繁使用数据库查询但是内容更新很小的应用，可以考虑使用html静态化来实现，比如论坛中论坛的公用设置信息，这些信息目前的主流论坛都可以进行后台管理并且存储再数据库中，这些信息其实大量被前台程序调用，但是更新频率很小，可以考虑将这部分内容进行后台更新的时候进行静态化，这样避免了大量的数据库访问请求。\r\n\r\n2、图片服务器分离\r\n\r\n大家知道，对于Web服务器来说，不管是Apache、IIS还是其他容器，图片是最消耗资源的，于是我们有必要将图片与页面进行分离，这是基本上大型网站都会采用的策略，他们都有独立的图片服务器，甚至很多台图片服务器。这样的架构可以降低提供页面访问请求的服务器系统压力，并且可以保证系统不会因为图片问题而崩溃，在应用服务器和图片服务器上，可以进行不同的配置优化，比如apache在配置ContentType的时候可以尽量少支持，尽可能少的LoadModule，保证更高的系统消耗和执行效率。\r\n\r\n3、数据库集群和库表散列\r\n\r\n大型网站都有复杂的应用，这些应用必须使用数据库，那么在面对大量访问的时候，数据库的瓶颈很快就能显现出来，这时一台数据库将很快无法满足应用，于是我们需要使用数据库集群或者库表散列。\r\n\r\n在数据库集群方面，很多数据库都有自己的解决方案，Oracle、Sybase等都有很好的方案，常用的MySQL提供的Master/Slave也是类似的方案，您使用了什么样的DB，就参考相应的解决方案来实施即可。\r\n\r\n上面提到的数据库集群由于在架构、成本、扩张性方面都会受到所采用DB类型的限制，于是我们需要从应用程序的角度来考虑改善系统架构，库表散列是常用并且最有效的解决方案。我们在应用程序中安装业务和应用或者功能模块将数据库进行分离，不同的模块对应不同的数据库或者表，再按照一定的策略对某个页面或者功能进行更小的数据库散列，比如用户表，按照用户ID进行表散列，这样就能够低成本的提升系统的性能并且有很好的扩展性。sohu的论坛就是采用了这样的架构，将论坛的用户、设置、帖子等信息进行数据库分离，然后对帖子、用户按照板块和ID进行散列数据库和表，最终可以在配置文件中进行简单的配置便能让系统随时增加一台低成本的数据库进来补充系统性能。\r\n\r\n4、缓存\r\n\r\n缓存一词搞技术的都接触过，很多地方用到缓存。网站架构和网站开发中的缓存也是非常重要。这里先讲述最基本的两种缓存。高级和分布式的缓存在后面讲述。 \r\n架构方面的缓存，对Apache比较熟悉的人都能知道Apache提供了自己的缓存模块，也可以使用外加的Squid模块进行缓存，这两种方式均可以有效的提高Apache的访问响应能力。 \r\n网站程序开发方面的缓存，Linux上提供的Memory Cache是常用的缓存接口，可以在web开发中使用，比如用Java开发的时候就可以调用MemoryCache对一些数据进行缓存和通讯共享，一些大型社区使用了这样的架构。另外，在使用web语言开发的时候，各种语言基本都有自己的缓存模块和方法，PHP有Pear的Cache模块，Java就更多了，.net不是很熟悉，相信也肯定有。\r\n\r\n5、镜像\r\n\r\n镜像是大型网站常采用的提高性能和数据安全性的方式，镜像的技术可以解决不同网络接入商和地域带来的用户访问速度差异，比如ChinaNet和EduNet之间的差异就促使了很多网站在教育网内搭建镜像站点，数据进行定时更新或者实时更新。在镜像的细节技术方面，这里不阐述太深，有很多专业的现成的解决架构和产品可选。也有廉价的通过软件实现的思路，比如Linux上的rsync等工具。\r\n\r\n6、负载均衡\r\n\r\n负载均衡将是大型网站解决高负荷访问和大量并发请求采用的终极解决办法。\r\n\r\n负载均衡技术发展了多年，有很多专业的服务提供商和产品可以选择，我个人接触过一些解决方法，其中有两个架构可以给大家做参考。\r\n\r\n1）硬件四层交换\r\n\r\n第四层交换使用第三层和第四层信息包的报头信息，根据应用区间识别业务流，将整个区间段的业务流分配到合适的应用服务器进行处理。 第四层交换功能就象是虚IP，指向物理服务器。它传输的业务服从的协议多种多样，有HTTP、FTP、NFS、Telnet或其他协议。这些业务在物理服务器基础上，需要复杂的载量平衡算法。在IP世界，业务类型由终端TCP或UDP端口地址来决定，在第四层交换中的应用区间则由源端和终端IP地址、TCP和UDP端口共同决定。\r\n\r\n在硬件四层交换产品领域，有一些知名的产品可以选择，比如Alteon、F5等，这些产品很昂贵，但是物有所值，能够提供非常优秀的性能和很灵活的管理能力。Yahoo中国当初接近2000台服务器使用了三四台Alteon就搞定了。\r\n\r\n2）软件四层交换\r\n\r\n大家知道了硬件四层交换机的原理后，基于OSI模型来实现的软件四层交换也就应运而生，这样的解决方案实现的原理一致，不过性能稍差。但是满足一定量的压力还是游刃有余的，有人说软件实现方式其实更灵活，处理能力完全看你配置的熟悉能力。\r\n\r\n软件四层交换我们可以使用Linux上常用的LVS来解决，LVS就是Linux Virtual Server，他提供了基于心跳线heartbeat的实时灾难应对解决方案，提高系统的鲁棒性，同时可供了灵活的虚拟VIP配置和管理功能，可以同时满足多种应用需求，这对于分布式的系统来说必不可少。\r\n\r\n一个典型的使用负载均衡的策略就是，在软件或者硬件四层交换的基础上搭建squid集群，这种思路在很多大型网站包括搜索引擎上被采用，这样的架构低成本、高性能还有很强的扩张性，随时往架构里面增减节点都非常容易。这样的架构我准备空了专门详细整理一下和大家探讨。\r\n\r\n\r\n\r\n\r\n一：高并发高负载类网站关注点之数据库\r\n\r\n没错,首先是数据库,这是大多数应用所面临的首个SPOF。尤其是Web2.0的应用，数据库的响应是首先要解决的。\r\n一般来说MySQL是最常用的，可能最初是一个mysql主机，当数据增加到100万以上，那么，MySQL的效能急剧下降。常用的优化措施是M-S（主-从）方式进行同步复制，将查询和操作和分别在不同的服务器上进行操作。我推荐的是M-M-Slaves方式，2个主Mysql，多个Slaves，需要注意的是，虽然有2个Master，但是同时只有1个是Active，我们可以在一定时候切换。之所以用2个M，是保证M不会又成为系统的SPOF。\r\nSlaves可以进一步负载均衡，可以结合LVS,从而将select操作适当的平衡到不同的slaves上。\r\n以上架构可以抗衡到一定量的负载，但是随着用户进一步增加，你的用户表数据超过1千万，这时那个M变成了SPOF。你不能任意扩充Slaves，否则复制同步的开销将直线上升，怎么办？我的方法是表分区，从业务层面上进行分区。最简单的，以用户数据为例。根据一定的切分方式，比如id，切分到不同的数据库集群去。\r\n\r\n全局数据库用于meta数据的查询。缺点是每次查询，会增加一次，比如你要查一个用户nightsailer,你首先要到全局数据库群找到nightsailer对应的cluster id，然后再到指定的cluster找到nightsailer的实际数据。\r\n每个cluster可以用m-m方式，或者m-m-slaves方式。这是一个可以扩展的结构，随着负载的增加，你可以简单的增加新的mysql cluster进去。\r\n\r\n需要注意的是：\r\n1、禁用全部auto_increment的字段\r\n2、id需要采用通用的算法集中分配\r\n3、要具有比较好的方法来监控mysql主机的负载和服务的运行状态。如果你有30台以上的mysql数据库在跑就明白我的意思了。\r\n4、不要使用持久性链接（不要用pconnect）,相反，使用sqlrelay这种第三方的数据库链接池，或者干脆自己做，因为php4中mysql的链接池经常出问题。\r\n\r\n二：高并发高负载网站的系统架构之HTML静态化\r\n\r\n其实大家都知道，效率最高、消耗最小的就是纯静态化 http://www.ablanxue.com/shtml/201207/776.shtml的html页面，所以我们尽可能使我们的网站上的页面采用静态页面来实现，这个最简单的方法其实也是 最有效的方法。但是对于大量内容并且频繁更新的网站，我们无法全部手动去挨个实现，于是出现了我们常见的信息发布系统CMS，像我们常访问的各个门户站点 的新闻频道，甚至他们的其他频道，都是通过信息发布系统来管理和实现的，信息发布系统可以实现最简单的信息录入自动生成静态页面，还能具备频道管理、权限 管理、自动抓取等功能，对于一个大型网站来说，拥有一套高效、可管理的CMS是必不可少的。\r\n　　\r\n　　除了门户和信息发布类型的网站，对于交互性要求很高的社区类型网站来说，尽可能的静态化也是提高性能的必要手段，将社区内的帖子、文章进行实时的静态化，有更新的时候再重新静态化也是大量使用的策略，像Mop的大杂烩就是使用了这样的策略，网易社区等也是如此。\r\n　　\r\n　 　同时，html静态化也是某些缓存策略使用的手段，对于系统中频繁使用数据库查询但是内容更新很小的应用，可以考虑使用html静态化来实现，比如论坛 中论坛的公用设置信息，这些信息目前的主流论坛都可以进行后台管理并且存储再数据库中，这些信息其实大量被前台程序调用，但是更新频率很小，可以考虑将这 部分内容进行后台更新的时候进行静态化，这样避免了大量的数据库访问请求高并发。\r\n　　\r\n\r\n网站HTML静态化解决方案 \r\n当一个Servlet资源请求到达WEB服务器之后我们会填充指定的JSP页面来响应请求:\r\n\r\nHTTP请求---Web服务器---Servlet--业务逻辑处理--访问数据--填充JSP--响应请求\r\n\r\nHTML静态化之后:\r\n\r\nHTTP请求---Web服务器---Servlet--HTML--响应请求\r\n\r\n静态访求如下\r\n\r\nServlet:\r\n\r\npublic void doGet(HttpServletRequest request, HttpServletResponse response)  \r\n        throws ServletException, IOException {  \r\n    if(request.getParameter(\"chapterId\") != null){  \r\n        String chapterFileName = \"bookChapterRead_\"+request.getParameter(\"chapterId\")+\".html\";  \r\n        String chapterFilePath = getServletContext().getRealPath(\"/\") + chapterFileName;  \r\n        File chapterFile = new File(chapterFilePath);  \r\n        if(chapterFile.exists()){response.sendRedirect(chapterFileName);return;}//如果有这个文件就告诉浏览器转向   \r\n        INovelChapterBiz novelChapterBiz = new NovelChapterBizImpl();  \r\n        NovelChapter novelChapter = novelChapterBiz.searchNovelChapterById(Integer.parseInt(request.getParameter(\"chapterId\")));//章节信息   \r\n        int lastPageId = novelChapterBiz.searchLastCHapterId(novelChapter.getNovelId().getId(), novelChapter.getId());  \r\n        int nextPageId = novelChapterBiz.searchNextChapterId(novelChapter.getNovelId().getId(), novelChapter.getId());  \r\n        request.setAttribute(\"novelChapter\", novelChapter);  \r\n        request.setAttribute(\"lastPageId\", lastPageId);  \r\n        request.setAttribute(\"nextPageId\", nextPageId);  \r\n        new CreateStaticHTMLPage().createStaticHTMLPage(request, response, getServletContext(),   \r\n                chapterFileName, chapterFilePath, \"/bookRead.jsp\");  \r\n    }  \r\n}  \r\n生成HTML静态页面的类:\r\n\r\npackage com.jb.y2t034.thefifth.web.servlet;  \r\nimport java.io.ByteArrayOutputStream;  \r\nimport java.io.FileOutputStream;  \r\nimport java.io.IOException;  \r\nimport java.io.OutputStreamWriter;  \r\nimport java.io.PrintWriter;  \r\nimport javax.servlet.RequestDispatcher;  \r\nimport javax.servlet.ServletContext;  \r\nimport javax.servlet.ServletException;  \r\nimport javax.servlet.ServletOutputStream;  \r\nimport javax.servlet.http.HttpServletRequest;  \r\nimport javax.servlet.http.HttpServletResponse;  \r\nimport javax.servlet.http.HttpServletResponseWrapper;  \r\n/** \r\n* 创建HTML静态页面 \r\n* 功能：创建HTML静态页面 \r\n* 时间：2009年1011日 \r\n* 地点：home \r\n* @author mavk \r\n* \r\n*/  \r\npublic class CreateStaticHTMLPage {  \r\n    /** \r\n     * 生成静态HTML页面的方法 \r\n     * @param request 请求对象 \r\n     * @param response 响应对象 \r\n     * @param servletContext Servlet上下文 \r\n     * @param fileName 文件名称 \r\n     * @param fileFullPath 文件完整路径 \r\n     * @param jspPath 需要生成静态文件的JSP路径(相对即可) \r\n     * @throws IOException \r\n     * @throws ServletException \r\n     */  \r\n    public void createStaticHTMLPage(HttpServletRequest request, HttpServletResponse response,ServletContext servletContext,String fileName,String fileFullPath,String jspPath) throws ServletException, IOException{  \r\n        response.setContentType(\"text/html;charset=gb2312\");//设置HTML结果流编码(即HTML文件编码)   \r\n        RequestDispatcher rd = servletContext.getRequestDispatcher(jspPath);//得到JSP资源   \r\n        final ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();//用于从ServletOutputStream中接收资源   \r\n        final ServletOutputStream servletOuputStream = new ServletOutputStream(){//用于从HttpServletResponse中接收资源   \r\n            public void write(byte[] b, int off,int len){  \r\n                byteArrayOutputStream.write(b, off, len);  \r\n            }  \r\n            public void write(int b){  \r\n                byteArrayOutputStream.write(b);  \r\n            }  \r\n        };  \r\n        final PrintWriter printWriter = new PrintWriter(new OutputStreamWriter(byteArrayOutputStream));//把转换字节流转换成字符流   \r\n        HttpServletResponse httpServletResponse = new HttpServletResponseWrapper(response){//用于从response获取结果流资源(重写了两个方法)   \r\n            public ServletOutputStream getOutputStream(){  \r\n                return servletOuputStream;  \r\n            }  \r\n            public PrintWriter getWriter(){  \r\n                return printWriter;  \r\n            }  \r\n        };  \r\n        rd.include(request, httpServletResponse);//发送结果流   \r\n        printWriter.flush();//刷新缓冲区，把缓冲区的数据输出   \r\n        FileOutputStream fileOutputStream = new FileOutputStream(fileFullPath);  \r\n        byteArrayOutputStream.writeTo(fileOutputStream);//把byteArrayOuputStream中的资源全部写入到fileOuputStream中   \r\n        fileOutputStream.close();//关闭输出流，并释放相关资源   \r\n        response.sendRedirect(fileName);//发送指定文件流到客户端   \r\n    }  \r\n} \r\n\r\n三：高并发高负载类网站关注点之缓存、负载均衡、存储\r\n\r\n缓存是另一个大问题，我一般用memcached来做缓存集群，一般来说部署10台左右就差不多（10g内存池）。需要注意一点，千万不能用使用\r\nswap，最好关闭linux的swap。\r\n\r\n\r\n负载均衡/加速\r\n\r\n可能上面说缓存的时候，有人第一想的是页面静态化，所谓的静态html，我认为这是常识，不属于要点了。页面的静态化随之带来的是静态服务的\r\n负载均衡和加速。我认为Lighttped+Squid是最好的方式了。\r\nLVS <------->lighttped====>squid(s) ====lighttpd\r\n\r\n上面是我经常用的。注意，我没有用apache，除非特定的需求，否则我不部署apache，因为我一般用php-fastcgi配合lighttpd,\r\n性能比apache+mod_php要强很多。\r\n\r\nsquid的使用可以解决文件的同步等等问题，但是需要注意，你要很好的监控缓存的命中率，尽可能的提高的90%以上。\r\nsquid和lighttped也有很多的话题要讨论，这里不赘述。\r\n\r\n\r\n存储\r\n存储也是一个大问题，一种是小文件的存储，比如图片这类。另一种是大文件的存储，比如搜索引擎的索引，一般单文件都超过2g以上。\r\n小文件的存储最简单的方法是结合lighttpd来进行分布。或者干脆使用Redhat的GFS，优点是应用透明，缺点是费用较高。我是指\r\n你购买盘阵的问题。我的项目中，存储量是2-10Tb，我采用了分布式存储。这里要解决文件的复制和冗余。\r\n这样每个文件有不同的冗余，这方面可以参考google的gfs的论文。\r\n大文件的存储，可以参考nutch的方案，现在已经独立为hadoop子项目。(你可以google it)\r\n\r\n其他：\r\n此外，passport等也是考虑的，不过都属于比较简单的了。\r\n四：高并发高负载网站的系统架构之图片服务器分离 \r\n大家知道，对于Web 服务器来说，不管是Apache、IIS还是其他容器，图片是最消耗资源的，于是我们有必要将图片与页面进行分离，这是基本上大型网站都会采用的策略，他 们都有独立的图片服务器，甚至很多台图片服务器。这样的架构可以降低提供页面访问请求的服务器系统压力，并且可以保证系统不会因为图片问题而崩溃，在应用 服务器和图片服务器上，可以进行不同的配置优化，比如apache在配置ContentType的时候可以尽量少支持，尽可能少的LoadModule， 保证更高的系统消耗和执行效率。\r\n\r\n\r\n利用Apache实现图片服务器的分离\r\n缘由： \r\n起步阶段的应用，都可能部署在一台服务器上（费用上的原因） \r\n第一个优先分离的，肯定是数据库和应用服务器。 \r\n第二个分离的，会是什么呢？各有各的考虑，我所在的项目组重点考虑的节约带宽，服务器性能再好，带宽再高，并发来了，也容易撑不住。因此，我这篇文章的重点在这里。这里重点是介绍实践，不一定符合所有情况，供看者参考吧， \r\n环境介绍： \r\nWEB应用服务器：4CPU双核2G, 内存4G \r\n  部署：Win2003/Apache Http Server 2.1/Tomcat6 \r\n数据库服务器：4CPU双核2G, 内存4G \r\n  部署：Win2003/MSSQL2000 \r\n步骤： \r\n步骤一：增加2台配置为：2CPU双核2G，内存2G普通服务器，做资源服务器 \r\n  部署：Tomcat6，跑了一个图片上传的简单应用，（记得指定web.xml的<distributable/>），并指定域名为res1.***.com,res2.***.com，采用ajp协议 \r\n步骤二：修改Apache httpd.conf配置 \r\n  原来应用的文件上传功能网址为： \r\n   1、/fileupload.html \r\n   2、/otherupload.html \r\n  在httpd.conf中增加如下配置\r\n\r\n<VirtualHost *:80>   \r\n  ServerAdmin webmaster@***.com   \r\n  ProxyPass /fileupload.html balancer://rescluster/fileupload lbmethod=byrequests stickysession=JSESSIONID nofailover=Off timeout=5 maxattempts=3      \r\n  ProxyPass /otherupload.html balancer://rescluster/otherupload.html lbmethod=byrequests stickysession=JSESSIONID nofailover=Off timeout=5 maxattempts=3      \r\n  #<!--负载均衡-->   \r\n  <Proxy balancer://rescluster/>   \r\n    BalancerMember ajp://res1.***.com:8009 smax=5 max=500 ttl=120 retry=300 loadfactor=100 route=tomcat1  \r\n    BalancerMember ajp://res2.***.com:8009 smax=5 max=500 ttl=120 retry=300 loadfactor=100 route=tomcat2  \r\n  </Proxy>   \r\n   \r\n< /VirtualHost>  \r\n步骤三，修改业务逻辑： \r\n  所有上传文件在数据库中均采用全url的方式保存，例如产品图片路径存成：http://res1.***.com/upload/20090101/product120302005.jpg\r\n\r\n现在，你可以高枕无忧了，带宽不够时，增加个几十台图片服务器，只需要稍微修改一下apache的配置文件，即可。\r\n\r\n五：高并发高负载网站的系统架构之数据库集群和库表散列\r\n\r\n大型网站都有复杂的应用，这些应用必须使用数据库，那么在面对大量访问的时候，数据库的瓶颈很快就能显现出来，这时一台数据库将很快无法满足应用，于是我们需要使用数据库集群或者库表散列。\r\n　　\r\n　　在数据库集群方面，很多数据库都有自己的解决方案，Oracle、Sybase等都有很好的方案，常用的MySQL提供的Master/Slave也是类似的方案，您使用了什么样的DB，就参考相应的解决方案来实施即可。\r\n　　\r\n　 　上面提到的数据库集群由于在架构、成本、扩张性方面都会受到所采用DB类型的限制，于是我们需要从应用程序的角度来考虑改善系统架构，库表散列是常用并 且最有效的解决方案。我们在应用程序中安装业务和应用或者功能模块将数据库进行分离，不同的模块对应不同的数据库或者表，再按照一定的策略对某个页面或者 功能进行更小的数据库散列，比如用户表，按照用户ID进行表散列，这样就能够低成本的提升系统的性能并且有很好的扩展性。sohu的论坛就是采用了这样的 架构，将论坛的用户、设置、帖子等信息进行数据库分离，然后对帖子、用户按照板块和ID进行散列数据库和表，最终可以在配置文件中进行简单的配置便能让系 统随时增加一台低成本的数据库进来补充系统性能。\r\n\r\n\r\n集群软件的分类：\r\n一般来讲，集群软件根据侧重的方向和试图解决的问题，分为三大类：高性能集群（High performance cluster，HPC）、负载均衡集群（Load balance cluster， LBC），高可用性集群（High availability cluster，HAC）。\r\n高性能集群（High performance cluster，HPC），它是利用一个集群中的多台机器共同完成同一件任务，使得完成任务的速度和可靠性都远远高于单机运行的效果。弥补了单机性能上的不足。该集群在天气预报、环境监控等数据量大，计算复杂的环境中应用比较多；\r\n负载均衡集群（Load balance cluster， LBC），它是利用一个集群中的多台单机，完成许多并行的小的工作。一般情况下，如果一个应用使用的人多了，那么用户请求的响应时间就会增大，机器的性能也会受到影响，如果使用负载均衡集群，那么集群中任意一台机器都能响应用户的请求，这样集群就会在用户发出服务请求之后，选择当时负载最小，能够提供最好的服务的这台机器来接受请求并相应，这样就可用用集群来增加系统的可用性和稳定性。这类集群在网站中使用较多；\r\n高可用性集群（High availability cluster，HAC），它是利用集群中系统 的冗余，当系统中某台机器发生损坏的时候，其他后备的机器可以迅速的接替它来启动服务，等待故障机的维修和返回。最大限度的保证集群中服务的可用性。这类系统一般在银行，电信服务这类对系统可靠性有高的要求的领域有着广泛的应用。\r\n2 数据库集群的现状\r\n数据库集群是将计算机集群技术引入到数据库中来实现的，尽管各厂商宣称自己的架构如何的完美，但是始终不能改变Oracle当先，大家追逐的事实，在集群的解决方案上Oracle RAC还是领先于包括微软在内的其它数据库厂商，它能满足客户高可用性、高性能、数据库负载均衡和方便扩展的需求。\r\nOracle’s Real Application Cluster (RAC)\r\nMicrosoft SQL Cluster Server (MSCS)\r\nIBM’s DB2 UDB High Availability Cluster(UDB)\r\nSybase ASE High Availability Cluster (ASE)\r\nMySQL High Availability Cluster (MySQL CS)\r\n基于IO的第三方HA(高可用性)集群\r\n当前主要的数据库集群技术有以上六大类，有数据库厂商自己开发的；也有第三方的集群公司开发的；还有数据库厂商与第三方集群公司合作开发的，各类集群实现的功能及架构也不尽相同。\r\nRAC（Real Application Cluster，真正应用集群）是Oracle9i数据库中采用的一项新技术，也是Oracle数据库支持网格计算环境的核心技术。它的出现解决了传统数据库应用中面临的一个重要问题：高性能、高可伸缩性与低价格之间的矛盾。在很长一段时间里，甲骨文都以其实时应用集群技术(Real Application Cluster，RAC)统治着集群数据库市场\r\n\r\n六：高并发高负载网站的系统架构之缓存\r\n\r\n缓存一词搞技术的都接触过，很多地方用到缓存。网站架构和网站开发中的缓存也是非常重要。这里先讲述最基本的两种缓存。高级和分布式的缓存在后面讲述。 \r\n　　架构方面的缓存，对Apache比较熟悉的人都能知道Apache提供了自己的缓存模块，也可以使用外加的Squid模块进行缓存，这两种方式均可以有效的提高Apache的访问响应能力。\r\n　 　网站程序开发方面的缓存，Linux上提供的Memory Cache是常用的缓存接口，可以在web开发中使用，比如用Java开发的时候就可以调用MemoryCache对一些数据进行缓存和通讯共享，一些大 型社区使用了这样的架构。另外，在使用web语言开发的时候，各种语言基本都有自己的缓存模块和方法，PHP有Pear的Cache模块，Java就更多 了，.net不是很熟悉，相信也肯定有。\r\n\r\nJava开源缓存框架 \r\nJBossCache/TreeCache JBossCache是一个复制的事务处理缓存，它允许你缓存企业级应用数据来更好的改善性能。缓存数据被自动复制，让你轻松进行Jboss服务器之间的集群工作。JBossCache能够通过Jboss应用服务或其他J2EE容器来运行一个Mbean服务，当然，它也能独立运行。 JBossCache包括两个模块：TreeCache和TreeCacheAOP。 TreeCache --是一个树形结构复制的事务处理缓存。 TreeCacheAOP --是一个“面向对象”缓存，它使用AOP来动态管理POJO\r\nOSCache OSCache标记库由OpenSymphony设计，它是一种开创性的JSP定制标记应用，提供了在现有JSP页面之内实现快速内存缓冲的功能。OSCache是个一个广泛采用的高性能的J2EE缓存框架，OSCache能用于任何Java应用程序的普通的缓存解决方案。OSCache有以下特点：缓存任何对象，你可以不受限制的缓存部分jsp页面或HTTP请求，任何java对象都可以缓存。 拥有全面的API--OSCache API给你全面的程序来控制所有的OSCache特性。 永久缓存--缓存能随意的写入硬盘，因此允许昂贵的创建（expensive-to-create）数据来保持缓存，甚至能让应用重启。 支持集群--集群缓存数据能被单个的进行参数配置，不需要修改代码。 缓存记录的过期--你可以有最大限度的控制缓存对象的过期，包括可插入式的刷新策略（如果默认性能不需要时）。\r\nJCACHE JCACHE是一种即将公布的标准规范（JSR 107），说明了一种对Java对象临时在内存中进行缓存的方法，包括对象的创建、共享访问、假脱机（spooling）、失效、各JVM的一致性等。它可被用于缓存JSP内最经常读取的数据，如产品目录和价格列表。利用JCACHE，多数查询的反应时间会因为有缓存的数据而加快（内部测试表明反应时间大约快15倍）。\r\nEhcache Ehcache出自Hibernate，在Hibernate中使用它作为数据缓存的解决方案。\r\nJava Caching System JCS是Jakarta的项目Turbine的子项目。它是一个复合式的缓冲工具。可以将对象缓冲到内存、硬盘。具有缓冲对象时间过期设定。还可以通过JCS构建具有缓冲的分布式构架，以实现高性能的应用。 对于一些需要频繁访问而每访问一次都非常消耗资源的对象，可以临时存放在缓冲区中，这样可以提高服务的性能。而JCS正是一个很好的缓冲工具。缓冲工具对于读操作远远多于写操作的应用性能提高非常显著。\r\nSwarmCache SwarmCache是一个简单而功能强大的分布式缓存机制。它使用IP组播来有效地在缓存的实例之间进行通信。它是快速提高集群式Web应用程序的性能的理想选择。\r\nShiftOne ShiftOne Object Cache这个Java库提供了基本的对象缓存能力。实现的策略有先进先出（FIFO），最近使用（LRU），最不常使用（LFU）。所有的策略可以最大化元素的大小，最大化其生存时间。\r\nWhirlyCache Whirlycache是一个快速的、可配置的、存在于内存中的对象的缓存。它能够通过缓存对象来加快网站或应用程序的速度，否则就必须通过查询数据库或其他代价较高的处理程序来建立。\r\nJofti Jofti可对在缓存层中(支持EHCache，JBossCache和OSCache)的对象或在支持Map接口的存储结构中的对象进行索引与搜索。这个框架还为对象在索引中的增删改提供透明的功能同样也为搜索提供易于使用的查询功能。\r\ncache4j cache4j是一个有简单API与实现快速的Java对象缓存。它的特性包括：在内存中进行缓存，设计用于多线程环境，两种实现：同步与阻塞，多种缓存清除策略：LFU, LRU, FIFO，可使用强引用(strong reference)与软引用(soft reference)存储对象。\r\nOpen Terracotta 一个JVM级的开源群集框架，提供：HTTP Session复制，分布式缓存，POJO群集，跨越群集的JVM来实现分布式应用程序协调(采用代码注入的方式，所以你不需要修改任何)。\r\nsccache SHOP.COM使用的对象缓存系统。sccache是一个in-process cache和二级、共享缓存。它将缓存对象存储到磁盘上。支持关联Key，任意大小的Key和任意大小的数据。能够自动进行垃圾收集。\r\nShoal Shoal是一个基于Java可扩展的动态集群框架，能够为构建容错、可靠和可用的Java应用程序提供了基础架构支持。这个框架还可以集成到不希望绑定到特定通信协议，但需要集群和分布式系统支持的任何Java产品中。Shoal是GlassFish和JonAS应用服务器的集群引擎。\r\nSimple-Spring-Memcached Simple-Spring-Memcached，它封装了对MemCached的调用，使MemCached的客户端开发变得超乎寻常的简单。\r\n\r\n\r\n\r\n\r\n', null, 'post', 'publish', '高并发', 'Java', '1', '0', '1', null, null);
INSERT INTO `t_contents` VALUES ('10', '为什么越来越多的开发者选择使用Spring Boot？', null, null, '1557409849', '0', '一、Web应用开发背景\r\n使用Java做Web应用开发已经有近20年的历史了，从最初的Servlet1.0一步步演化到现在如此多的框架、库以及整个生态系统。经过这么长时间的发展，Java作为一个成熟的语言，也演化出了非常成熟的生态系统，这也是许多公司采用Java作为主流的语言进行服务器端开发的原因，也是为什么Java一直保持着非常活跃的用户群体的原因。\r\n\r\n最受Java开发者喜好的框架当属Spring，Spring也成为了在Java EE开发中真正意义上的标准，但是随着新技术的发展，脚本语言大行其道的时代（Node JS，Ruby，Groovy，Scala等），Java EE使用Spring逐渐变得笨重起来，大量的XML文件存在与项目中，繁琐的配置，整合第三方框架的配置问题，低下的开发效率和部署效率等等问题。\r\n\r\n这些问题在不断的社区反馈下，Spring团队也开发出了相应的框架：Spring Boot。Spring Boot可以说是至少近5年来Spring乃至整个Java社区最有影响力的项目之一，也被人看作是：Java EE开发的颠覆者！\r\n\r\n二、Spring Boot解决的问题\r\n(1) Spring Boot使编码变简单\r\n\r\n(2) Spring Boot使配置变简单\r\n\r\n(3) Spring Boot使部署变简单\r\n\r\n(4) Spring Boot使监控变简单\r\n\r\n(5) Spring的不足\r\n\r\n三、Spring Boot的优点\r\n官方地址：https://spring.io/projects/spring-boot\r\nSpring Boot继承了Spring的优点，并新增了一些新功能和特性：\r\n\r\n（1）SpringBoot是伴随着Spring4.0诞生的，一经推出，引起了巨大的反向； \r\n（2）从字面理解，Boot是引导的意思，因此SpringBoot帮助开发者快速搭建Spring框架； \r\n（3）SpringBoot帮助开发者快速启动一个Web容器； \r\n（4）SpringBoot继承了原有Spring框架的优秀基因； \r\n（5）SpringBoot简化了使用Spring的过程； \r\n（6）Spring Boot为我们带来了脚本语言开发的效率，但是Spring Boot并没有让我们意外的新技术，都是Java EE开发者常见的额技术。\r\n\r\n四、Spring Boot主要特性\r\n（1）遵循“习惯优于配置”的原则，使用Spring Boot只需要很少的配置，大部分的时候我们直接使用默认的配置即可； \r\n（2）项目快速搭建，可以无需配置的自动整合第三方的框架； \r\n（3）可以完全不使用XML配置文件，只需要自动配置和Java Config； \r\n（4）内嵌Servlet容器，降低了对环境的要求，可以使用命令直接执行项目，应用可用jar包执行：java -jar； \r\n（5）提供了starter POM, 能够非常方便的进行包管理, 很大程度上减少了jar hell或者dependency hell； \r\n（6）运行中应用状态的监控； \r\n（7）对主流开发框架的无配置集成； \r\n（8）与云计算的天然继承；\r\n\r\n五、Spring Boot的核心功能\r\n（1）独立运行的Spring项目\r\n\r\nSpring Boot可以以jar包的形式进行独立的运行，使用：java -jar xx.jar 就可以成功的运行项目，或者在应用项目的主程序中运行main函数即可；\r\n\r\n（2）内嵌的Servlet容器\r\n\r\n内嵌容器，使得我们可以执行运行项目的主程序main函数，实现项目的快速运行；\r\n\r\n主程序代码SpringbootDemoApplication.java\r\n\r\npackage com.springboot.demo.helloworld;\r\n\r\nimport org.springframework.boot.SpringApplication;\r\nimport org.springframework.boot.autoconfigure.SpringBootApplication;\r\n\r\n@SpringBootApplication\r\npublic class SpringBootHelloWorldApplication {\r\n\r\n    public static void main(String[] args) {\r\n        SpringApplication.run(SpringBootHelloWorldApplication.class, args);\r\n    }\r\n}\r\n1\r\n2\r\n3\r\n4\r\n5\r\n6\r\n7\r\n8\r\n9\r\n10\r\n11\r\n12\r\n13\r\n（3）提供starter简化Manen配置\r\n\r\nSpring Boot提供了一系列的starter pom用来简化我们的Maven依赖,下边是创建一个web项目中自动包含的依赖，使用的starter pom依赖为：spring-boot-starter-web\r\n\r\n\r\n\r\nSpring Boot官网还提供了很多的starter pom，请参考：\r\n\r\nhttps://docs.spring.io/spring-boot/docs/2.0.4.RELEASE/reference/htmlsingle/#using-boot-starter\r\n\r\n\r\n\r\n（4）自动配置Spring\r\n\r\nSpring Boot会根据我们项目中类路径的jar包/类，为jar包的类进行自动配置Bean，这样一来就大大的简化了我们的配置。当然，这只是Spring考虑到的大多数的使用场景，在一些特殊情况，我们还需要自定义自动配置；\r\n\r\n（5）应用监控\r\n\r\n注意：以前的版本还支持这个功能，目前使用的2.0.4.RELEASE已经不再支持此功能！\r\n\r\nSpring Boot提供了基于http、ssh、telnet对运行时的项目进行监控；这个听起来是不是很炫酷！\r\n\r\n示例：以SSH登录为例\r\n\r\n1、首先，添加starter pom依赖\r\n\r\n<dependency>\r\n    <groupId>org.springframework.boot</groupId>\r\n    <artifactId>spring-boot-starter-remote-shell</artifactId>\r\n</dependency>\r\n1\r\n2\r\n3\r\n4\r\n2、运行项目,此时在控制台中会出现SSH访问的密码：\r\n\r\n\r\n\r\n3、使用SecureCRT登录到我们的程序，端口为2000，用户为user：\r\n\r\n\r\n\r\n密码就是刚才的shell access；\r\n\r\n但是当我点击连接的时候，出现错误：\r\n\r\n\r\n\r\n显然是SecureCRT的版本不支持，所以就放弃了这个，使用Git Bash：\r\n\r\nssh -p 2000 user@127.0.0.1\r\n1\r\n\r\n\r\n剩下的事情，大家自己玩吧！\r\n\r\n（6）无代码生成和XML配置\r\n\r\nSpring Boot神奇的地方不是借助于代码生成来实现的，而是通过条件注解的方式来实现的，这也是Spring 4.x的新特性。\r\n\r\n六、Spring Boot的快速搭建案例\r\n下边使用的是IDEA快速搭建一个Spring Boot项目\r\n\r\n（1）File—-New—New Project\r\n\r\n\r\n\r\n（2）点击Next填写相应的信息\r\n\r\n\r\n\r\n（3）点击Next，选择Dependencies，这里创建Web项目选择—–Web：\r\n\r\n\r\n\r\n（4）点击Next，设置项目名称，这里默认设置，点击Next之后，项目等一下就创建好了\r\n\r\n\r\n\r\n找到应用程序的主函数，运行即可：\r\n\r\n\r\n\r\n注意，在pom文件里的java版本这个要和你的机子上一致！我的是1.8，默认创建项目的时候为1.8：\r\n\r\n<properties>\r\n    <project.build.sourceEncoding>UTF-8</project.build.sourceEncoding>\r\n    <project.reporting.outputEncoding>UTF-8</project.reporting.outputEncoding>\r\n    <java.version>1.8</java.version>\r\n</properties>\r\n1\r\n2\r\n3\r\n4\r\n5\r\n七、案例代码\r\nGitOS 项目地址：\r\n\r\nhttps://gitee.com/xuliugen/spring-boot-unofficial-guide/tree/master/spring-boot-hello-world\r\n\r\n\r\n\r\n\r\n\r\n', null, 'post', 'publish', 'spring boot', 'Java', '1', '0', '1', null, null);
INSERT INTO `t_contents` VALUES ('11', '用Redis轻松实现秒杀系统', null, null, '1557409889', '0', '导论\r\n曾经被问过好多次怎样实现秒杀系统的问题。昨天又在CSDN架构师微信群被问到了。因此这里把我设想的实现秒杀系统的价格设计分享出来。供大家参考。\r\n\r\n秒杀系统的架构设计\r\n秒杀系统，是典型的短时大量突发访问类问题。对这类问题，有三种优化性能的思路： \r\n写入内存而不是写入硬盘 \r\n异步处理而不是同步处理 \r\n分布式处理 \r\n用上这三招，不论秒杀时负载多大，都能轻松应对。更好的是，Redis能够满足上述三点。因此，用Redis就能轻松实现秒杀系统。 \r\n用我这个方案，无论是电商平台特价秒杀，12306火车票秒杀，都不是事:)\r\n\r\n下面介绍一下为什么上述三种性能优化思路能够解决秒杀系统的性能问题：\r\n\r\n写入内存而不是写入硬盘 \r\n传统硬盘的读写性能是相当差的。SSD硬盘比传统硬盘快100倍。而内存又比SSD硬盘快10倍以上。因此，写入内存而不是写入硬盘，就能使系统的能力提升上千倍。也就是说，原来你的秒杀系统可能需要1000台服务器支撑，现在1台服务器就可以扛住了。 \r\n你可能会有这样的疑问：写入内存而不是持久化，那么如果此时计算机宕机了，那么写入的数据不就全部丢失了吗？如果你就这么倒霉碰到服务器宕机，那你就没秒到了，有什么大不了？ \r\n最后，后面真正处理秒杀订单时，我们会把信息持久化到硬盘中。因此不会丢失关键数据。 \r\nRedis是一个缓存系统，数据写入内存后就返回给客户端了，能够支持这个特性。\r\n\r\n异步处理而不是同步处理 \r\n像秒杀这样短时大并发的系统，在性能负载上有一个明显的波峰和长期的波谷。为了应对相当短时间的大并发而准备大量服务器来应对，在经济上是相当不合算的。 \r\n因此，对付秒杀类需求，就应该化同步为异步。用户请求写入内存后立刻返回。后台启动多个线程从内存池中异步读取数据，进行处理。如用户请求可能是1秒钟内进入的，系统实际处理完成可能花30分钟。那么一台服务器在异步情况下其处理能力大于同步情况下1800多倍！ \r\n异步处理，通常用MQ(消息队列)来实现。Redis可以看作是一个高性能的MQ。因为它的数据读写都发生在内存中。\r\n\r\n分布式处理 \r\n好吧。也许你的客户很多，秒杀系统即使用了上面两招，还是捉襟见肘。没关系，我们还有大招：分布式处理。如果一台服务器撑不住秒杀系统，那么就多用几台服务器。10台不行，就上100台。分布式处理，就是把海量用户的请求分散到多个服务器上。一般使用hash实现均匀分布。 \r\n这类系统在大数据云计算时代的今天已经有很多了。无非是用Paxos算法和Hash Ring实现的。 \r\nRedis Cluster正是这样一个分布式的产品。\r\n\r\n使用Redis实现描述系统\r\nRedis和Redis Cluster（分布式版本），是一个分布式缓存系统。其支持多种数据结构，也支持MQ。Redis在性能上做了大量优化。因此使用Redis或者Redis Cluster就可以轻松实现一个强大的秒杀系统。 \r\n基本上，你用Redis的这些命令就可以了。 \r\nRPUSH key value \r\n插入秒杀请求\r\n\r\n当插入的秒杀请求数达到上限时，停止所有后续插入。 \r\n后台启动多个工作线程，使用 \r\nLPOP key \r\n读取秒杀成功者的用户id，进行后续处理。 \r\n或者使用LRANGE key start end命令读取秒杀成功者的用户id，进行后续处理。 \r\n每完成一条秒杀记录的处理，就执行INCR key_num。一旦所有库存处理完毕，就结束该商品的本次秒杀，关闭工作线程，也不再接收秒杀请求。\r\n\r\n要是还撑不住，该怎么办\r\n也许你会说，我们的客户很多。即使部署了Redis Cluster，仍然撑不住。那该怎么办呢？ \r\n记得某个伟人曾经说过：办法总比困难多！\r\n\r\n下面，我们具体分析下，还有哪些情况会压垮我们架构在Redis（Cluster）上的秒杀系统。\r\n\r\n脚本攻击\r\n如现在有很多抢火车票的软件。它们会自动发起http请求。一个客户端一秒会发起很多次请求。如果有很多用户使用了这样的软件，就可能会直接把我们的交换机给压垮了。\r\n\r\n这个问题其实属于网络问题的范畴，和我们的秒杀系统不在一个层面上。因此不应该由我们来解决。很多交换机都有防止一个源IP发起过多请求的功能。开源软件也有不少能实现这点。如linux上的TC可以控制。流行的Web服务器Nginx（它也可以看做是一个七层软交换机）也可以通过配置做到这一点。一个IP，一秒钟我就允许你访问我2次，其他软件包直接给你丢了，你还能压垮我吗？\r\n\r\n交换机撑不住了\r\n可能你们的客户并发访问量实在太大了，交换机都撑不住了。 \r\n这也有办法。我们可以用多个交换机为我们的秒杀系统服务。 \r\n原理就是DNS可以对一个域名返回多个IP，并且对不同的源IP，同一个域名返回不同的IP。如网通用户访问，就返回一个网通机房的IP；电信用户访问，就返回一个电信机房的IP。也就是用CDN了！ \r\n我们可以部署多台交换机为不同的用户服务。 用户通过这些交换机访问后面数据中心的Redis Cluster进行秒杀作业。\r\n\r\n总结\r\n有了Redis Cluster的帮助，做个支持海量用户的秒杀系统其实So Easy！ \r\n这里介绍的方案虽然是针对秒杀系统的，但其背后的原理对其他高并发系统一样有效。 \r\n最后，我们再重温一下高性能系统的优化原则\r\n', null, 'post', 'publish', 'redis', '鸡腿', '1', '0', '1', null, null);

-- ----------------------------
-- Table structure for t_logs
-- ----------------------------
DROP TABLE IF EXISTS `t_logs`;
CREATE TABLE `t_logs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键编号',
  `action` varchar(100) DEFAULT NULL COMMENT '事件',
  `data` varchar(2000) DEFAULT NULL COMMENT '数据',
  `authorId` int(10) DEFAULT NULL COMMENT '作者编号',
  `ip` varchar(20) DEFAULT NULL COMMENT 'ip地址',
  `created` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=245 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of t_logs
-- ----------------------------
INSERT INTO `t_logs` VALUES ('184', '登录后台', 'admin用户', '1', '0:0:0:0:0:0:0:1', '1534569722');
INSERT INTO `t_logs` VALUES ('185', '登录后台', 'admin用户', '1', '0:0:0:0:0:0:0:1', '1534575270');
INSERT INTO `t_logs` VALUES ('186', '登录后台', 'admin用户', '1', '0:0:0:0:0:0:0:1', '1534575692');
INSERT INTO `t_logs` VALUES ('187', '登录后台', 'admin用户', '1', '0:0:0:0:0:0:0:1', '1534575703');
INSERT INTO `t_logs` VALUES ('188', '登录后台', 'admin用户', '1', '0:0:0:0:0:0:0:1', '1534647255');
INSERT INTO `t_logs` VALUES ('189', '登录后台', 'admin用户', '1', '0:0:0:0:0:0:0:1', '1534647619');
INSERT INTO `t_logs` VALUES ('190', '登录后台', 'admin用户', '1', '0:0:0:0:0:0:0:1', '1534648221');
INSERT INTO `t_logs` VALUES ('191', '登录后台', 'admin用户', '1', '0:0:0:0:0:0:0:1', '1534648559');
INSERT INTO `t_logs` VALUES ('192', '登录后台', 'admin用户', '1', '0:0:0:0:0:0:0:1', '1534649472');
INSERT INTO `t_logs` VALUES ('193', '登录后台', 'admin用户', '1', '0:0:0:0:0:0:0:1', '1534653995');
INSERT INTO `t_logs` VALUES ('194', '登录后台', 'admin用户', '1', '0:0:0:0:0:0:0:1', '1534654102');
INSERT INTO `t_logs` VALUES ('195', '保存系统设置', '{\"site_record\":\"ICP 1234123\",\"google_site_verification\":\"1231231\",\"site_description\":\"这是一个神奇的地方\",\"baidu_site_verification\":\"22213\",\"site_title\":\"什么什么博客\",\"allow_install\":\"\"}', '1', '0:0:0:0:0:0:0:1', '1534654259');
INSERT INTO `t_logs` VALUES ('196', '登录后台', 'admin用户', '1', '0:0:0:0:0:0:0:1', '1534691867');
INSERT INTO `t_logs` VALUES ('197', '登录后台', 'admin用户', '1', '0:0:0:0:0:0:0:1', '1534775734');
INSERT INTO `t_logs` VALUES ('198', '登录后台', 'admin用户', '1', '0:0:0:0:0:0:0:1', '1535190691');
INSERT INTO `t_logs` VALUES ('199', '保存系统设置', '{\"site_record\":\"\",\"google_site_verification\":\"\",\"site_description\":\"\",\"baidu_site_verification\":\"\",\"site_title\":\"lvoyee\",\"allow_install\":\"\"}', '1', '0:0:0:0:0:0:0:1', '1535190742');
INSERT INTO `t_logs` VALUES ('200', '登录后台', 'admin用户', '1', '0:0:0:0:0:0:0:1', '1535286897');
INSERT INTO `t_logs` VALUES ('201', '登录后台', 'admin用户', '1', '0:0:0:0:0:0:0:1', '1535288255');
INSERT INTO `t_logs` VALUES ('202', '登录后台', 'admin用户', '1', '0:0:0:0:0:0:0:1', '1535288556');
INSERT INTO `t_logs` VALUES ('203', '登录后台', 'admin用户', '1', '0:0:0:0:0:0:0:1', '1535288801');
INSERT INTO `t_logs` VALUES ('204', '登录后台', 'admin用户', '1', '0:0:0:0:0:0:0:1', '1535636559');
INSERT INTO `t_logs` VALUES ('205', '删除附件', 'admin用户', '1', '0:0:0:0:0:0:0:1', '1535637411');
INSERT INTO `t_logs` VALUES ('206', '登录后台', 'admin用户', '1', '0:0:0:0:0:0:0:1', '1536973899');
INSERT INTO `t_logs` VALUES ('207', '登录后台', 'admin用户', '1', '0:0:0:0:0:0:0:1', '1539440094');
INSERT INTO `t_logs` VALUES ('208', '登录后台', 'admin用户', '1', '0:0:0:0:0:0:0:1', '1539440366');
INSERT INTO `t_logs` VALUES ('209', '登录后台', 'admin用户', '1', '0:0:0:0:0:0:0:1', '1539507431');
INSERT INTO `t_logs` VALUES ('210', '登录后台', 'admin用户', '1', '0:0:0:0:0:0:0:1', '1539516417');
INSERT INTO `t_logs` VALUES ('211', '登录后台', 'admin用户', '1', '0:0:0:0:0:0:0:1', '1542896600');
INSERT INTO `t_logs` VALUES ('212', '登录后台', 'admin用户', '1', '0:0:0:0:0:0:0:1', '1543040879');
INSERT INTO `t_logs` VALUES ('213', '删除附件', 'admin用户', '1', '0:0:0:0:0:0:0:1', '1543040906');
INSERT INTO `t_logs` VALUES ('214', '删除附件', 'admin用户', '1', '0:0:0:0:0:0:0:1', '1543040910');
INSERT INTO `t_logs` VALUES ('215', '保存系统设置', '{\"social_zhihu\":\"\",\"social_resume\":\"\",\"social_jianshu\":\"\",\"social_github\":\"\",\"social_twitter\":\"\",\"social_csdn\":\"https://blog.csdn.net/lvoyee\",\"social_weibo\":\"\"}', '1', '0:0:0:0:0:0:0:1', '1543040959');
INSERT INTO `t_logs` VALUES ('216', '登录后台', 'admin用户', '1', '0:0:0:0:0:0:0:1', '1543240136');
INSERT INTO `t_logs` VALUES ('217', '登录后台', 'admin用户', '1', '0:0:0:0:0:0:0:1', '1557324291');
INSERT INTO `t_logs` VALUES ('218', '登录后台', 'admin用户', '1', '0:0:0:0:0:0:0:1', '1557325218');
INSERT INTO `t_logs` VALUES ('219', '登录后台', 'admin用户', '1', '0:0:0:0:0:0:0:1', '1557325388');
INSERT INTO `t_logs` VALUES ('220', '删除附件', 'admin用户', '1', '0:0:0:0:0:0:0:1', '1557325398');
INSERT INTO `t_logs` VALUES ('221', '删除附件', 'admin用户', '1', '0:0:0:0:0:0:0:1', '1557325402');
INSERT INTO `t_logs` VALUES ('222', '登录后台', 'admin用户', '1', '0:0:0:0:0:0:0:1', '1557325578');
INSERT INTO `t_logs` VALUES ('223', '删除附件', 'admin用户', '1', '0:0:0:0:0:0:0:1', '1557325583');
INSERT INTO `t_logs` VALUES ('224', '登录后台', 'admin用户', '1', '0:0:0:0:0:0:0:1', '1557326095');
INSERT INTO `t_logs` VALUES ('225', '删除附件', 'admin用户', '1', '0:0:0:0:0:0:0:1', '1557326100');
INSERT INTO `t_logs` VALUES ('226', '登录后台', 'admin用户', '1', '0:0:0:0:0:0:0:1', '1557326332');
INSERT INTO `t_logs` VALUES ('227', '登录后台', 'admin用户', '1', '0:0:0:0:0:0:0:1', '1557326479');
INSERT INTO `t_logs` VALUES ('228', '登录后台', 'admin用户', '1', '0:0:0:0:0:0:0:1', '1557326835');
INSERT INTO `t_logs` VALUES ('229', '登录后台', 'admin用户', '1', '0:0:0:0:0:0:0:1', '1557327124');
INSERT INTO `t_logs` VALUES ('230', '删除附件', 'admin用户', '1', '0:0:0:0:0:0:0:1', '1557327129');
INSERT INTO `t_logs` VALUES ('231', '登录后台', 'admin用户', '1', '0:0:0:0:0:0:0:1', '1557327189');
INSERT INTO `t_logs` VALUES ('232', '登录后台', 'admin用户', '1', '0:0:0:0:0:0:0:1', '1557327791');
INSERT INTO `t_logs` VALUES ('233', '登录后台', 'admin用户', '1', '0:0:0:0:0:0:0:1', '1557328027');
INSERT INTO `t_logs` VALUES ('234', '登录后台', 'admin用户', '1', '0:0:0:0:0:0:0:1', '1557328125');
INSERT INTO `t_logs` VALUES ('235', '登录后台', 'admin用户', '1', '0:0:0:0:0:0:0:1', '1557329512');
INSERT INTO `t_logs` VALUES ('236', '登录后台', 'admin用户', '1', '0:0:0:0:0:0:0:1', '1557329587');
INSERT INTO `t_logs` VALUES ('237', '登录后台', 'admin用户', '1', '0:0:0:0:0:0:0:1', '1557406501');
INSERT INTO `t_logs` VALUES ('238', '登录后台', 'admin用户', '1', '0:0:0:0:0:0:0:1', '1557407496');
INSERT INTO `t_logs` VALUES ('239', '登录后台', 'admin用户', '1', '0:0:0:0:0:0:0:1', '1557408045');
INSERT INTO `t_logs` VALUES ('240', '登录后台', 'admin用户', '1', '0:0:0:0:0:0:0:1', '1557408178');
INSERT INTO `t_logs` VALUES ('241', '登录后台', 'admin用户', '1', '0:0:0:0:0:0:0:1', '1557410458');
INSERT INTO `t_logs` VALUES ('242', '登录后台', 'admin用户', '1', '0:0:0:0:0:0:0:1', '1557410584');
INSERT INTO `t_logs` VALUES ('243', '登录后台', 'admin用户', '1', '0:0:0:0:0:0:0:1', '1557410633');
INSERT INTO `t_logs` VALUES ('244', '登录后台', 'admin用户', '1', '0:0:0:0:0:0:0:1', '1557410677');

-- ----------------------------
-- Table structure for t_metas
-- ----------------------------
DROP TABLE IF EXISTS `t_metas`;
CREATE TABLE `t_metas` (
  `mid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `type` varchar(32) NOT NULL DEFAULT '',
  `contentType` varchar(32) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `sort` int(10) unsigned DEFAULT '0',
  `parent` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`mid`) USING BTREE,
  KEY `slug` (`slug`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of t_metas
-- ----------------------------
INSERT INTO `t_metas` VALUES ('49', 'test', 'https://www.baidu.com/?tn=95479840_hao_pg', 'link', null, '', '1', null);
INSERT INTO `t_metas` VALUES ('50', 'Java', null, 'category', null, null, null, null);
INSERT INTO `t_metas` VALUES ('51', '测试文章', '测试文章', 'tag', null, null, null, null);
INSERT INTO `t_metas` VALUES ('52', '鸡腿', null, 'category', null, null, null, null);
INSERT INTO `t_metas` VALUES ('53', 'test', null, 'category', null, null, null, null);
INSERT INTO `t_metas` VALUES ('54', '美文', '美文', 'tag', null, null, null, null);
INSERT INTO `t_metas` VALUES ('55', '图片', '图片', 'tag', null, null, null, null);
INSERT INTO `t_metas` VALUES ('56', '老虎', '老虎', 'tag', null, null, null, null);
INSERT INTO `t_metas` VALUES ('57', '哈哈哈', '哈哈哈', 'tag', null, null, null, null);
INSERT INTO `t_metas` VALUES ('58', '123', '123', 'tag', null, null, null, null);
INSERT INTO `t_metas` VALUES ('59', '111', '111', 'tag', null, null, null, null);
INSERT INTO `t_metas` VALUES ('60', '223', '223', 'tag', null, null, null, null);
INSERT INTO `t_metas` VALUES ('61', '程序员', '程序员', 'tag', null, null, null, null);
INSERT INTO `t_metas` VALUES ('62', '代码', '代码', 'tag', null, null, null, null);
INSERT INTO `t_metas` VALUES ('63', 'oracle', 'oracle', 'tag', null, null, null, null);
INSERT INTO `t_metas` VALUES ('64', '123123', '123123', 'tag', null, null, null, null);
INSERT INTO `t_metas` VALUES ('65', '物联网', '物联网', 'tag', null, null, null, null);
INSERT INTO `t_metas` VALUES ('66', 'java', 'java', 'tag', null, null, null, null);
INSERT INTO `t_metas` VALUES ('67', '数据结构', '数据结构', 'tag', null, null, null, null);
INSERT INTO `t_metas` VALUES ('68', '职场', '职场', 'tag', null, null, null, null);
INSERT INTO `t_metas` VALUES ('69', '互联网', '互联网', 'tag', null, null, null, null);
INSERT INTO `t_metas` VALUES ('70', '狗东', '狗东', 'tag', null, null, null, null);
INSERT INTO `t_metas` VALUES ('71', 'HR', 'HR', 'tag', null, null, null, null);
INSERT INTO `t_metas` VALUES ('72', '高并发', '高并发', 'tag', null, null, null, null);
INSERT INTO `t_metas` VALUES ('73', 'spring boot', 'spring boot', 'tag', null, null, null, null);
INSERT INTO `t_metas` VALUES ('74', 'redis', 'redis', 'tag', null, null, null, null);

-- ----------------------------
-- Table structure for t_options
-- ----------------------------
DROP TABLE IF EXISTS `t_options`;
CREATE TABLE `t_options` (
  `name` varchar(32) NOT NULL DEFAULT '',
  `value` varchar(1000) DEFAULT '',
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of t_options
-- ----------------------------

-- ----------------------------
-- Table structure for t_relationships
-- ----------------------------
DROP TABLE IF EXISTS `t_relationships`;
CREATE TABLE `t_relationships` (
  `cid` int(10) unsigned NOT NULL,
  `mid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`cid`,`mid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of t_relationships
-- ----------------------------
INSERT INTO `t_relationships` VALUES ('1', '52');
INSERT INTO `t_relationships` VALUES ('1', '54');
INSERT INTO `t_relationships` VALUES ('2', '50');
INSERT INTO `t_relationships` VALUES ('2', '65');
INSERT INTO `t_relationships` VALUES ('3', '50');
INSERT INTO `t_relationships` VALUES ('3', '63');
INSERT INTO `t_relationships` VALUES ('4', '50');
INSERT INTO `t_relationships` VALUES ('4', '66');
INSERT INTO `t_relationships` VALUES ('4', '67');
INSERT INTO `t_relationships` VALUES ('5', '52');
INSERT INTO `t_relationships` VALUES ('5', '68');
INSERT INTO `t_relationships` VALUES ('6', '50');
INSERT INTO `t_relationships` VALUES ('6', '69');
INSERT INTO `t_relationships` VALUES ('7', '52');
INSERT INTO `t_relationships` VALUES ('7', '70');
INSERT INTO `t_relationships` VALUES ('8', '53');
INSERT INTO `t_relationships` VALUES ('8', '71');
INSERT INTO `t_relationships` VALUES ('9', '50');
INSERT INTO `t_relationships` VALUES ('9', '72');
INSERT INTO `t_relationships` VALUES ('10', '50');
INSERT INTO `t_relationships` VALUES ('10', '73');
INSERT INTO `t_relationships` VALUES ('11', '52');
INSERT INTO `t_relationships` VALUES ('11', '74');
INSERT INTO `t_relationships` VALUES ('27', '41');
INSERT INTO `t_relationships` VALUES ('27', '42');
INSERT INTO `t_relationships` VALUES ('27', '43');
INSERT INTO `t_relationships` VALUES ('27', '46');
INSERT INTO `t_relationships` VALUES ('28', '41');
INSERT INTO `t_relationships` VALUES ('28', '43');
INSERT INTO `t_relationships` VALUES ('29', '41');
INSERT INTO `t_relationships` VALUES ('29', '42');
INSERT INTO `t_relationships` VALUES ('29', '43');
INSERT INTO `t_relationships` VALUES ('30', '48');
INSERT INTO `t_relationships` VALUES ('31', '48');
INSERT INTO `t_relationships` VALUES ('32', '41');
INSERT INTO `t_relationships` VALUES ('32', '43');
INSERT INTO `t_relationships` VALUES ('33', '48');
INSERT INTO `t_relationships` VALUES ('34', '50');
INSERT INTO `t_relationships` VALUES ('34', '51');
INSERT INTO `t_relationships` VALUES ('35', '52');
INSERT INTO `t_relationships` VALUES ('35', '54');
INSERT INTO `t_relationships` VALUES ('36', '52');
INSERT INTO `t_relationships` VALUES ('36', '54');
INSERT INTO `t_relationships` VALUES ('37', '52');
INSERT INTO `t_relationships` VALUES ('37', '55');
INSERT INTO `t_relationships` VALUES ('38', '52');
INSERT INTO `t_relationships` VALUES ('38', '56');
INSERT INTO `t_relationships` VALUES ('39', '52');
INSERT INTO `t_relationships` VALUES ('39', '57');
INSERT INTO `t_relationships` VALUES ('40', '52');
INSERT INTO `t_relationships` VALUES ('40', '58');
INSERT INTO `t_relationships` VALUES ('41', '53');
INSERT INTO `t_relationships` VALUES ('41', '59');
INSERT INTO `t_relationships` VALUES ('42', '52');
INSERT INTO `t_relationships` VALUES ('42', '60');
INSERT INTO `t_relationships` VALUES ('43', '50');
INSERT INTO `t_relationships` VALUES ('43', '61');
INSERT INTO `t_relationships` VALUES ('44', '53');
INSERT INTO `t_relationships` VALUES ('44', '62');
INSERT INTO `t_relationships` VALUES ('45', '50');
INSERT INTO `t_relationships` VALUES ('45', '63');
INSERT INTO `t_relationships` VALUES ('46', '52');
INSERT INTO `t_relationships` VALUES ('46', '64');
INSERT INTO `t_relationships` VALUES ('47', '52');
INSERT INTO `t_relationships` VALUES ('47', '58');

-- ----------------------------
-- Table structure for t_users
-- ----------------------------
DROP TABLE IF EXISTS `t_users`;
CREATE TABLE `t_users` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(32) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `homeUrl` varchar(200) DEFAULT NULL,
  `screenName` varchar(32) DEFAULT NULL,
  `created` int(10) unsigned DEFAULT '0',
  `activated` int(10) unsigned DEFAULT '0',
  `logged` int(10) unsigned DEFAULT '0',
  `groupName` varchar(16) DEFAULT 'visitor',
  PRIMARY KEY (`uid`) USING BTREE,
  UNIQUE KEY `name` (`username`) USING BTREE,
  UNIQUE KEY `mail` (`email`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of t_users
-- ----------------------------
INSERT INTO `t_users` VALUES ('1', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '864655735@qq.com', null, 'admin', '1490756162', '0', '0', 'visitor');
