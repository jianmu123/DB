DROP DATABASE IF EXISTS douban1;

CREATE DATABASE douban1 CHARSET=UTF8;

USE douban1;

#movie表
CREATE TABLE douban_movie_main(
	mmid INT PRIMARY KEY AUTO_INCREMENT,
	src VARCHAR(128),
	words VARCHAR(32),
	numbers DECIMAL(2,1)
);

INSERT INTO douban_movie_main VALUES
(NULL,'img/m1.webp','除暴',6.5),
(NULL,'img/m2.webp','气球',7.9),
(NULL,'img/m3.webp','末日逃生',5.7),
(NULL,'img/m4.webp','海兽之子',6.6),
(NULL,'img/m5.webp','热气球飞行家',7.1),
(NULL,'img/m6.webp','姜子牙',6.9),
(NULL,'img/m7.webp','风平浪静',6.4),
(NULL,'img/m8.webp','野性的',6.4);

CREATE TABLE douban_movie_leftM(
	mlid INT PRIMARY KEY AUTO_INCREMENT,
	leftM VARCHAR(32)
);

INSERT INTO douban_movie_leftM VALUES
(NULL,'影讯&购票'),
(NULL,'选电影'),
(NULL,'选电影'),
(NULL,'电视剧'),
(NULL,'排行榜'),
(NULL,'分类'),
(NULL,'影评'),
(NULL,'预告片'),
(NULL,'问答');

CREATE TABLE douban_movie_rightM(
	mrid INT PRIMARY KEY AUTO_INCREMENT,
	rightM VARCHAR(32)
);

INSERT INTO douban_movie_rightM VALUES
(NULL,'爱情'),
(NULL,'剧情'),
(NULL,'喜剧'),
(NULL,'经典'),
(NULL,'悬疑'),
(NULL,'动画'),
(NULL,'科幻'),
(NULL,'动作'),
(NULL,'犯罪'),
(NULL,'青春'),
(NULL,'搞笑'),
(NULL,'文艺'),
(NULL,'惊悚'),
(NULL,'励志'),
(NULL,'纪录片'),
(NULL,'黑色幽默'),
(NULL,'战争'),
(NULL,'恐怖'),
(NULL,'美国'),
(NULL,'日本'),
(NULL,'香港'),
(NULL,'中国大陆'),
(NULL,'韩国'),
(NULL,'中国'),
(NULL,'英国'),
(NULL,'法国'),
(NULL,'台湾'),
(NULL,'印度');

CREATE TABLE douban_movie_movie(
	moid INT PRIMARY KEY AUTO_INCREMENT,
	movie VARCHAR(32)
);

INSERT INTO douban_movie_movie VALUES
(NULL,'无声'),
(NULL,'新变种人'),
(NULL,'芝加哥七君子审判'),
(NULL,'女巫'),
(NULL,'金都'),
(NULL,'波拉特2'),
(NULL,'爱与怪物'),
(NULL,'担保母亲'),
(NULL,'奇奇怪怪：整容液');


#创建时间列表
CREATE TABLE douban_time(
	cid INT PRIMARY KEY AUTO_INCREMENT,
	picUrl VARCHAR(128),
	special VARCHAR(32),
	message VARCHAR(64)
);

INSERT INTO douban_time VALUES
(NULL,'img/time1.jpg','音频专栏','可复制的语言学习密码———— 一套方法搞定所有外语'),
(NULL,'img/time2.jpg','音频专栏','复旦沈奕斐的社会爱情思维课'),
(NULL,'img/time3.jpg','音频专栏','苗炜·文学体验30讲——陪你度过这时代的晚上'),
(NULL,'img/time4.jpg','音频专栏','我们为什么爱宋朝——宋朝美学十讲'),
(NULL,'img/time5.jpg','音频专栏','了不起的文明现场——一线考古队长带你探秘历史'),
(NULL,'img/time6.jpg','音频专栏','美国故事的背面——黑帮电影中的社会、文化与历史'),
(NULL,'img/time7.png','音频专栏','用金钱丈量人生可能——32堂简七极简理财课'),
(NULL,'img/time8.jpg','视频专栏','程何的极简音乐剧必修课'),
(NULL,'img/time9.jpg','音频专栏','一步到位的收纳法——20堂课打造不凌乱的家'),
(NULL,'img/time10.jpg','音频专栏','如何读透一本书——12堂阅读写作训练课');

#热点内容
CREATE TABLE douban_hotspot_img(
	hid INT PRIMARY KEY AUTO_INCREMENT,
	imgUrl VARCHAR(128),
	message VARCHAR(32),
	num  VARCHAR(64)
);

INSERT INTO douban_hotspot_img VALUES
(NULL,'img/hot1.webp','菜市场','10张照片'),
(NULL,'img/hot2.webp','加德满都的微笑','42张照片'),
(NULL,'img/hot3.webp','cosmica展馆','20张照片'),
(NULL,'img/hot4.webp','《今天菜很新鲜哦》','19张照片');

CREATE TABLE douban_hotspot_centerWord(
	centerid INT PRIMARY KEY AUTO_INCREMENT,
	centerword VARCHAR(64)
);

INSERT INTO douban_hotspot_centerWord VALUES
(NULL,'建水小城（二）城外风光'),
(NULL,'《人间告白》'),
(NULL,'犯傻，和朋友一起犯傻：《动物森友会》到底在玩什么？'),
(NULL,'呼市早茶套餐（羊肉烧麦，酥皮焙子，羊杂汤）'),
(NULL,'翻转的时光'),
(NULL,'“花间隐榭，水际安亭” ——华南植物园水榭和桂林芦笛岩水榭分析'),
(NULL,'一个云南爱好者的书单'),
(NULL,'与父母相处的四十天'),
(NULL,'日常的物件——常熟灶间之家营造记');

CREATE TABLE douban_hotspot_rightWord(
	rightid INT PRIMARY KEY AUTO_INCREMENT,
	topical VARCHAR(32),
	visits  VARCHAR(32)
);
INSERT INTO douban_hotspot_rightWord VALUES
(NULL,'豆瓣拼贴艺术大赛','787.2万次浏览'),
(NULL,'还没有实践的罗曼蒂克脑洞','112.5万次浏览'),
(NULL,'让我珍视自己“缺点”的时刻','12.9万次浏览'),
(NULL,'你所遭受的年龄歧视','87.4万次浏览'),
(NULL,'续写你的断裂梦境','128.4万次浏览'),
(NULL,'那件把你逼疯过的职场小事','52.6万次浏览');

#用户表
CREATE TABLE douban_user(
	uid INT PRIMARY KEY AUTO_INCREMENT,
	email VARCHAR(64),
	phone VARCHAR(32),
	pwd VARCHAR(64)
);
INSERT INTO douban_user VALUES
(null,'dang@qq.com','12452345678',password("123456")),
(null,'dou@qq.com','45235678',password("123456")),
(null,'tata@qq.com','3451225235345678',password("888888"));

