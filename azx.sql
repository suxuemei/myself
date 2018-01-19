SET NAMES UTF8;
DROP DATABASE  IF EXISTS azx;
CREATE DATABASE azx CHARSET=UTF8;
USE azx;
CREATE TABLE azx_user(
uid INT PRIMARY KEY AUTO_INCREMENT,
uname VARCHAR(32) NOT NULL DEFAULT '',
upwd VARCHAR(28) NOT NULL
);
INSERT INTO azx_user VALUES(null,"kaka","123456");
INSERT INTO azx_user VALUES(null,"wanwan","123456");
INSERT INTO azx_user VALUES(null,"sansan","123456");
INSERT INTO azx_user VALUES(null,"fangfang","123456");
INSERT INTO azx_user VALUES(null,"lanlan","123456");
INSERT INTO azx_user VALUES(null,"meimei","123456");
INSERT INTO azx_user VALUES(null,"yingying","123456");
INSERT INTO azx_user VALUES(null,"xixi","123456");
INSERT INTO azx_user VALUES(null,"chenchen","123456");
INSERT INTO azx_user VALUES(null,"ranran","123456");
CREATE TABLE azx_index_carousel(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128) NOT NULL DEFAULT '',
  title VARCHAR(64) NOT NULL DEFAULT '',
  subtitle VARCHAR(100) NOT NULL DEFAULT ''
);
INSERT INTO azx_index_carousel VALUES
(NULL, 'img/index/banner1.png','轮播广告商品1','这是一个浪漫的标识'),
(NULL, 'img/index/banner2.png','轮播广告商品2','这是一个浪漫的标识'),
(NULL, 'img/index/banner3.png','轮播广告商品3','这是一个浪漫的标识'),
(NULL, 'img/index/banner4.png','轮播广告商品4','这是一个浪漫的标识');
CREATE TABLE azx_index_product(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  `title` VARCHAR(64) NOT NULL DEFAULT '',
  `subtitle` VARCHAR(128) NOT NULL DEFAULT '',
  pic VARCHAR(128) NOT NULL DEFAULT 0,
  price DECIMAL(10,2) NOT NULL DEFAULT 0,
  seq_recommended TINYINT NOT NULL DEFAULT 0,
  seq_new_arrival TINYINT NOT NULL DEFAULT 0,
  seq_top_sale TINYINT NOT NULL DEFAULT 0
);
INSERT INTO azx_index_product VALUES
(NULL, '一生一世','相互依簇的钻石光芒，流光浮动宛如一生中的璀璨之旅','img/diamonRings/1477450804.jpg', 6988,1, 6, 0),
(NULL, '一生一世','相互依簇的钻石光芒，流光浮动宛如一生中的璀璨之旅','img/diamonRings/1477450804.jpg', 3488,2, 0, 5),
(NULL, '一生一世','相互依簇的钻石光芒，流光浮动宛如一生中的璀璨之旅','img/diamonRings/1477450804.jpg', 5399,3, 5, 4),
(NULL, '一生一世','相互依簇的钻石光芒，流光浮动宛如一生中的璀璨之旅','img/diamonRings/1477450804.jpg', 4966,4, 4, 3),
(NULL, '一生一世','相互依簇的钻石光芒，流光浮动宛如一生中的璀璨之旅存','img/diamonRings/1477450804.jpg', 6299,5, 2, 5),
(NULL, '一生一世','相互依簇的钻石光芒，流光浮动宛如一生中的璀璨之旅','img/diamonRings/1477450804.jpg', 5199,6, 3, 2),
(NULL, '一生一世','相互依簇的钻石光芒，流光浮动宛如一生中的璀璨之旅卡','img/diamonRings/1477450804.jpg', 5799,0, 1, 6);
CREATE TABLE azx_laptop(
  lid INT PRIMARY KEY AUTO_INCREMENT,
  pid INT NOT NULL,
  `img` VARCHAR(128) NOT NULL DEFAULT '',
  price DECIMAL(10,2) NOT NULL DEFAULT 0
);
INSERT INTO azx_laptop VALUES
(NULL,1,'img/diamonRings/group1/lg/1.jpg',12222),(NULL,1,'img/diamonRings/group2/lg/1.jpg',16222),
(NULL,1,'img/diamonRings/group3/lg/1.jpg',12292),(NULL,1,'img/diamonRings/group4/lg/1.jpg',12922),
(NULL,1,'img/diamonRings/group5/lg/1.jpg',12242),(NULL,1,'img/diamonRings/group6/lg/1.jpg',15232),
(NULL,2,'img/diamonRings/group7/lg/1.jpg',12622),(NULL,2,'img/diamonRings/group8/lg/1.jpg',12622),
(NULL,2,'img/diamonRings/group9/lg/1.jpg',12822),(NULL,2,'img/diamonRings/group10/lg/1.jpg',17262),
(NULL,2,'img/diamonRings/group11/lg/1.jpg',19222),(NULL,2,'img/diamonRings/group12/lg/1.jpg',19222),
(NULL,3,'img/coupleRings/couple9/lg/1.jpg',12822),(NULL,3,'img/coupleRings/couple3/lg/1.jpg',32222),
(NULL,3,'img/coupleRings/couple10/lg/1.jpg',12463),(NULL,3,'img/coupleRings/couple4/lg/1.jpg',18261),
(NULL,3,'img/coupleRings/couple1/lg/3-3-3.jpg',12000),(NULL,3,'img/coupleRings/couple5/lg/1.jpg',19260),
(NULL,4,'img/ACC/erding/group1/lg/3.jpg',42812),(NULL,4,'img/ACC/erding/group2/lg/3.jpg',13262),
(NULL,4,'img/ACC/huangguan/group1/lg/3.jpg',32822),(NULL,4,'img/ACC/xianglian/group3/lg/1.jpg',13262),
(NULL,4,'img/ACC/xianglian/group4/lg/1.jpg',16822),(NULL,4,'img/ACC/xianglian/group5/lg/1.jpg',13262);
CREATE TABLE azx_laptop_pic(
aid INT PRIMARY KEY AUTO_INCREMENT,
did  INT NOT NULL DEFAULT 0,
sm  VARCHAR(130) NOT NULL DEFAULT '',
md  VARCHAR(130) NOT NULL DEFAULT '',
lg  VARCHAR(130) NOT NULL DEFAULT ''
);
INSERT INTO azx_laptop_pic VALUES(null,1,"img/diamonRings/group1/sm/1.jpg","img/diamonRings/group1/md/1.jpg","img/diamonRings/group1/lg/1.jpg");
INSERT INTO azx_laptop_pic VALUES(null,1,"img/diamonRings/group1/sm/2.jpg","img/diamonRings/group1/md/2.jpg","img/diamonRings/group1/lg/2.jpg");
INSERT INTO azx_laptop_pic VALUES(null,1,"img/diamonRings/group1/sm/3.jpg","img/diamonRings/group1/md/3.jpg","img/diamonRings/group1/lg/3.jpg");
INSERT INTO azx_laptop_pic VALUES(null,1,"img/diamonRings/group1/sm/4.jpg","img/diamonRings/group1/md/4.jpg","img/diamonRings/group1/lg/4.jpg");
INSERT INTO azx_laptop_pic VALUES(null,2,"img/diamonRings/group2/sm/1.jpg","img/diamonRings/group2/md/1.jpg","img/diamonRings/group2/lg/1.jpg");
INSERT INTO azx_laptop_pic VALUES(null,2,"img/diamonRings/group2/sm/2.jpg","img/diamonRings/group2/md/2.jpg","img/diamonRings/group2/lg/2.jpg");
INSERT INTO azx_laptop_pic VALUES(null,2,"img/diamonRings/group2/sm/3.jpg","img/diamonRings/group2/md/3.jpg","img/diamonRings/group2/lg/3.jpg");
INSERT INTO azx_laptop_pic VALUES(null,2,"img/diamonRings/group2/sm/4.jpg","img/diamonRings/group2/md/4.jpg","img/diamonRings/group2/lg/4.jpg");
INSERT INTO azx_laptop_pic VALUES(null,2,"img/diamonRings/group2/sm/5.jpg","img/diamonRings/group2/md/5.jpg","img/diamonRings/group2/lg/5.jpg");
INSERT INTO azx_laptop_pic VALUES(null,2,"img/diamonRings/group2/sm/6.jpg","img/diamonRings/group2/md/6.jpg","img/diamonRings/group2/lg/6.jpg");
INSERT INTO azx_laptop_pic VALUES(null,3,"img/diamonRings/group3/sm/1.jpg","img/diamonRings/group3/md/1.jpg","img/diamonRings/group3/lg/1.jpg");
INSERT INTO azx_laptop_pic VALUES(null,3,"img/diamonRings/group3/sm/2.jpg","img/diamonRings/group3/md/2.jpg","img/diamonRings/group3/lg/2.jpg");
INSERT INTO azx_laptop_pic VALUES(null,3,"img/diamonRings/group3/sm/3.jpg","img/diamonRings/group3/md/3.jpg","img/diamonRings/group3/lg/3.jpg");
INSERT INTO azx_laptop_pic VALUES(null,3,"img/diamonRings/group3/sm/4.jpg","img/diamonRings/group3/md/4.jpg","img/diamonRings/group3/lg/4.jpg");
INSERT INTO azx_laptop_pic VALUES(null,3,"img/diamonRings/group3/sm/5.jpg","img/diamonRings/group3/md/5.jpg","img/diamonRings/group3/lg/5.jpg");
INSERT INTO azx_laptop_pic VALUES(null,4,"img/diamonRings/group4/sm/1.jpg","img/diamonRings/group4/md/1.jpg","img/diamonRings/group4/lg/1.jpg");
INSERT INTO azx_laptop_pic VALUES(null,4,"img/diamonRings/group4/sm/2.jpg","img/diamonRings/group4/md/2.jpg","img/diamonRings/group4/lg/2.jpg");
INSERT INTO azx_laptop_pic VALUES(null,5,"img/diamonRings/group5/sm/1.jpg","img/diamonRings/group5/md/1.jpg","img/diamonRings/group5/lg/1.jpg");
INSERT INTO azx_laptop_pic VALUES(null,5,"img/diamonRings/group5/sm/2.jpg","img/diamonRings/group5/md/2.jpg","img/diamonRings/group5/lg/2.jpg");
INSERT INTO azx_laptop_pic VALUES(null,5,"img/diamonRings/group5/sm/3.jpg","img/diamonRings/group5/md/3.jpg","img/diamonRings/group5/lg/3.jpg");
INSERT INTO azx_laptop_pic VALUES(null,5,"img/diamonRings/group5/sm/4.jpg","img/diamonRings/group5/md/4.jpg","img/diamonRings/group5/lg/4.jpg");
INSERT INTO azx_laptop_pic VALUES(null,5,"img/diamonRings/group5/sm/5.jpg","img/diamonRings/group5/md/5.jpg","img/diamonRings/group5/lg/5.jpg");
INSERT INTO azx_laptop_pic VALUES(null,6,"img/diamonRings/group6/sm/1.jpg","img/diamonRings/group6/md/1.jpg","img/diamonRings/group6/lg/1.jpg");
INSERT INTO azx_laptop_pic VALUES(null,6,"img/diamonRings/group6/sm/2.jpg","img/diamonRings/group6/md/2.jpg","img/diamonRings/group6/lg/2.jpg");
INSERT INTO azx_laptop_pic VALUES(null,6,"img/diamonRings/group6/sm/3.jpg","img/diamonRings/group6/md/3.jpg","img/diamonRings/group6/lg/3.jpg");
INSERT INTO azx_laptop_pic VALUES(null,6,"img/diamonRings/group6/sm/4.jpg","img/diamonRings/group6/md/4.jpg","img/diamonRings/group6/lg/4.jpg");
INSERT INTO azx_laptop_pic VALUES(null,7,"img/diamonRings/group7/sm/1.jpg","img/diamonRings/group7/md/1.jpg","img/diamonRings/group7/lg/1.jpg");
INSERT INTO azx_laptop_pic VALUES(null,7,"img/diamonRings/group7/sm/2.jpg","img/diamonRings/group7/md/2.jpg","img/diamonRings/group7/lg/2.jpg");
INSERT INTO azx_laptop_pic VALUES(null,7,"img/diamonRings/group7/sm/3.jpg","img/diamonRings/group7/md/3.jpg","img/diamonRings/group7/lg/3.jpg");
INSERT INTO azx_laptop_pic VALUES(null,7,"img/diamonRings/group7/sm/4.jpg","img/diamonRings/group7/md/4.jpg","img/diamonRings/group7/lg/4.jpg");
INSERT INTO azx_laptop_pic VALUES(null,8,"img/diamonRings/group8/sm/1.jpg","img/diamonRings/group8/md/1.jpg","img/diamonRings/group8/lg/1.jpg");
INSERT INTO azx_laptop_pic VALUES(null,8,"img/diamonRings/group8/sm/2.jpg","img/diamonRings/group8/md/2.jpg","img/diamonRings/group8/lg/2.jpg");
INSERT INTO azx_laptop_pic VALUES(null,8,"img/diamonRings/group8/sm/3.jpg","img/diamonRings/group8/md/3.jpg","img/diamonRings/group8/lg/3.jpg");
INSERT INTO azx_laptop_pic VALUES(null,8,"img/diamonRings/group8/sm/4.jpg","img/diamonRings/group8/md/4.jpg","img/diamonRings/group8/lg/4.jpg");
INSERT INTO azx_laptop_pic VALUES(null,9,"img/diamonRings/group9/sm/1.jpg","img/diamonRings/group9/md/1.jpg","img/diamonRings/group9/lg/1.jpg");
INSERT INTO azx_laptop_pic VALUES(null,9,"img/diamonRings/group9/sm/2.jpg","img/diamonRings/group9/md/2.jpg","img/diamonRings/group9/lg/2.jpg");
INSERT INTO azx_laptop_pic VALUES(null,9,"img/diamonRings/group9/sm/3.jpg","img/diamonRings/group9/md/3.jpg","img/diamonRings/group9/lg/3.jpg");
INSERT INTO azx_laptop_pic VALUES(null,9,"img/diamonRings/group9/sm/4.jpg","img/diamonRings/group9/md/4.jpg","img/diamonRings/group9/lg/4.jpg");
INSERT INTO azx_laptop_pic VALUES(null,10,"img/diamonRings/group10/sm/1.jpg","img/diamonRings/group10/md/1.jpg","img/diamonRings/group10/lg/1.jpg");
INSERT INTO azx_laptop_pic VALUES(null,10,"img/diamonRings/group10/sm/2.jpg","img/diamonRings/group10/md/2.jpg","img/diamonRings/group10/lg/2.jpg");
INSERT INTO azx_laptop_pic VALUES(null,10,"img/diamonRings/group10/sm/3.jpg","img/diamonRings/group10/md/3.jpg","img/diamonRings/group10/lg/3.jpg");
INSERT INTO azx_laptop_pic VALUES(null,10,"img/diamonRings/group10/sm/4.jpg","img/diamonRings/group10/md/4.jpg","img/diamonRings/group10/lg/4.jpg");
INSERT INTO azx_laptop_pic VALUES(null,11,"img/diamonRings/group11/sm/1.jpg","img/diamonRings/group11/md/1.jpg","img/diamonRings/group11/lg/1.jpg");
INSERT INTO azx_laptop_pic VALUES(null,11,"img/diamonRings/group11/sm/2.jpg","img/diamonRings/group11/md/2.jpg","img/diamonRings/group11/lg/2.jpg");
INSERT INTO azx_laptop_pic VALUES(null,11,"img/diamonRings/group11/sm/3.jpg","img/diamonRings/group11/md/3.jpg","img/diamonRings/group11/lg/3.jpg");
INSERT INTO azx_laptop_pic VALUES(null,11,"img/diamonRings/group11/sm/4.jpg","img/diamonRings/group11/md/4.jpg","img/diamonRings/group11/lg/4.jpg");
INSERT INTO azx_laptop_pic VALUES(null,12,"img/diamonRings/group12/sm/1.jpg","img/diamonRings/group12/md/1.jpg","img/diamonRings/group12/lg/1.jpg");
INSERT INTO azx_laptop_pic VALUES(null,12,"img/diamonRings/group12/sm/2.jpg","img/diamonRings/group12/md/2.jpg","img/diamonRings/group12/lg/2.jpg");
INSERT INTO azx_laptop_pic VALUES(null,12,"img/diamonRings/group12/sm/3.jpg","img/diamonRings/group12/md/3.jpg","img/diamonRings/group12/lg/3.jpg");
INSERT INTO azx_laptop_pic VALUES(null,12,"img/diamonRings/group12/sm/4.jpg","img/diamonRings/group12/md/4.jpg","img/diamonRings/group12/lg/4.jpg");
INSERT INTO azx_laptop_pic VALUES(null,13,"img/coupleRings/couple9/sm/1.jpg","img/coupleRings/couple9/md/1.jpg","img/coupleRings/couple9/lg/1.jpg");
INSERT INTO azx_laptop_pic VALUES(null,13,"img/coupleRings/couple9/sm/2.jpg","img/coupleRings/couple9/md/2.jpg","img/coupleRings/couple9/lg/2.jpg");
INSERT INTO azx_laptop_pic VALUES(null,13,"img/coupleRings/couple9/sm/3.jpg","img/coupleRings/couple9/md/3.jpg","img/coupleRings/couple9/lg/3.jpg");
INSERT INTO azx_laptop_pic VALUES(null,14,"img/coupleRings/couple3/sm/1.jpg","img/coupleRings/couple3/md/1.jpg","img/coupleRings/couple3/lg/1.jpg");
INSERT INTO azx_laptop_pic VALUES(null,14,"img/coupleRings/couple3/sm/2.jpg","img/coupleRings/couple3/md/2.jpg","img/coupleRings/couple3/lg/2.jpg");
INSERT INTO azx_laptop_pic VALUES(null,14,"img/coupleRings/couple3/sm/3.jpg","img/coupleRings/couple3/md/3.jpg","img/coupleRings/couple3/lg/3.jpg");
INSERT INTO azx_laptop_pic VALUES(null,14,"img/coupleRings/couple3/sm/4.jpg","img/coupleRings/couple3/md/4.jpg","img/coupleRings/couple3/lg/4.jpg");
INSERT INTO azx_laptop_pic VALUES(null,14,"img/coupleRings/couple3/sm/5.jpg","img/coupleRings/couple3/md/5.jpg","img/coupleRings/couple3/lg/5.jpg");
INSERT INTO azx_laptop_pic VALUES(null,14,"img/coupleRings/couple3/sm/6.jpg","img/coupleRings/couple3/md/6.jpg","img/coupleRings/couple3/lg/6.jpg");
INSERT INTO azx_laptop_pic VALUES(null,14,"img/coupleRings/couple3/sm/7.jpg","img/coupleRings/couple3/md/7.jpg","img/coupleRings/couple3/lg/7.jpg");
INSERT INTO azx_laptop_pic VALUES(null,15,"img/coupleRings/couple10/sm/1.jpg","img/coupleRings/couple10/md/1.jpg","img/coupleRings/couple10/lg/1.jpg");
INSERT INTO azx_laptop_pic VALUES(null,15,"img/coupleRings/couple10/sm/2.jpg","img/coupleRings/couple10/md/2.jpg","img/coupleRings/couple10/lg/2.jpg");
INSERT INTO azx_laptop_pic VALUES(null,15,"img/coupleRings/couple10/sm/3.jpg","img/coupleRings/couple10/md/3.jpg","img/coupleRings/couple10/lg/3.jpg");
INSERT INTO azx_laptop_pic VALUES(null,15,"img/coupleRings/couple10/sm/4.jpg","img/coupleRings/couple10/md/4.jpg","img/coupleRings/couple10/lg/4.jpg");
INSERT INTO azx_laptop_pic VALUES(null,15,"img/coupleRings/couple10/sm/5.jpg","img/coupleRings/couple10/md/5.jpg","img/coupleRings/couple10/lg/5.jpg");
INSERT INTO azx_laptop_pic VALUES(null,15,"img/coupleRings/couple10/sm/6.jpg","img/coupleRings/couple10/md/6.jpg","img/coupleRings/couple10/lg/6.jpg");
INSERT INTO azx_laptop_pic VALUES(null,16,"img/coupleRings/couple4/sm/1.jpg","img/coupleRings/couple4/md/1.jpg","img/coupleRings/couple4/lg/1.jpg");
INSERT INTO azx_laptop_pic VALUES(null,16,"img/coupleRings/couple4/sm/2.jpg","img/coupleRings/couple4/md/2.jpg","img/coupleRings/couple4/lg/2.jpg");
INSERT INTO azx_laptop_pic VALUES(null,16,"img/coupleRings/couple4/sm/3.jpg","img/coupleRings/couple4/md/3.jpg","img/coupleRings/couple4/lg/3.jpg");
INSERT INTO azx_laptop_pic VALUES(null,16,"img/coupleRings/couple4/sm/4.jpg","img/coupleRings/couple4/md/4.jpg","img/coupleRings/couple4/lg/4.jpg");
INSERT INTO azx_laptop_pic VALUES(null,17,"img/coupleRings/couple1/sm/1.jpg","img/coupleRings/couple1/md/1-1.jpg","img/coupleRings/couple1/lg/1-1-1.jpg");
INSERT INTO azx_laptop_pic VALUES(null,17,"img/coupleRings/couple1/sm/2.jpg","img/coupleRings/couple1/md/2-2.jpg","img/coupleRings/couple1/lg/2-2-2.jpg");
INSERT INTO azx_laptop_pic VALUES(null,17,"img/coupleRings/couple1/sm/3.jpg","img/coupleRings/couple1/md/3-3.jpg","img/coupleRings/couple1/lg/3-3-3.jpg");
INSERT INTO azx_laptop_pic VALUES(null,17,"img/coupleRings/couple1/sm/4.jpg","img/coupleRings/couple1/md/4-4.jpg","img/coupleRings/couple1/lg/4-4-4.jpg");
INSERT INTO azx_laptop_pic VALUES(null,17,"img/coupleRings/couple1/sm/5.jpg","img/coupleRings/couple1/md/5-5.jpg","img/coupleRings/couple1/lg/5-5-5.jpg");
INSERT INTO azx_laptop_pic VALUES(null,17,"img/coupleRings/couple1/sm/6.jpg","img/coupleRings/couple1/md/6-6.jpg","img/coupleRings/couple1/lg/6-6-6.jpg");
INSERT INTO azx_laptop_pic VALUES(null,18,"img/coupleRings/couple5/sm/1.jpg","img/coupleRings/couple5/md/1.jpg","img/coupleRings/couple5/lg/1.jpg");
INSERT INTO azx_laptop_pic VALUES(null,18,"img/coupleRings/couple5/sm/2.jpg","img/coupleRings/couple5/md/2.jpg","img/coupleRings/couple5/lg/2.jpg");
INSERT INTO azx_laptop_pic VALUES(null,18,"img/coupleRings/couple5/sm/3.jpg","img/coupleRings/couple5/md/3.jpg","img/coupleRings/couple5/lg/3.jpg");
INSERT INTO azx_laptop_pic VALUES(null,19,"img/ACC/erding/group1/sm/1.jpg","img/ACC/erding/group1/md/1.jpg","img/ACC/erding/group1/lg/1.jpg");
INSERT INTO azx_laptop_pic VALUES(null,19,"img/ACC/erding/group1/sm/2.jpg","img/ACC/erding/group1/md/2.jpg","img/ACC/erding/group1/lg/2.jpg");
INSERT INTO azx_laptop_pic VALUES(null,19,"img/ACC/erding/group1/sm/3.jpg","img/ACC/erding/group1/md/3.jpg","img/ACC/erding/group1/lg/3.jpg");
INSERT INTO azx_laptop_pic VALUES(null,20,"img/ACC/erding/group2/sm/1.jpg","img/ACC/erding/group2/md/1.jpg","img/ACC/erding/group2/lg/1.jpg");
INSERT INTO azx_laptop_pic VALUES(null,20,"img/ACC/erding/group2/sm/2.jpg","img/ACC/erding/group2/md/2.jpg","img/ACC/erding/group2/lg/2.jpg");
INSERT INTO azx_laptop_pic VALUES(null,20,"img/ACC/erding/group2/sm/3.jpg","img/ACC/erding/group2/md/3.jpg","img/ACC/erding/group2/lg/3.jpg");
INSERT INTO azx_laptop_pic VALUES(null,21,"img/ACC/huangguan/group1/sm/1.jpg","img/ACC/huangguan/group1/sm/1.jpg","img/ACC/huangguan/group1/lg/1.jpg");
INSERT INTO azx_laptop_pic VALUES(null,21,"img/ACC/huangguan/group1/sm/2.jpg","img/ACC/huangguan/group1/md/2.jpg","img/ACC/huangguan/group1/lg/2.jpg");
INSERT INTO azx_laptop_pic VALUES(null,21,"img/ACC/huangguan/group1/sm/3.jpg","img/ACC/huangguan/group1/md/3.jpg","img/ACC/huangguan/group1/lg/3.jpg");
INSERT INTO azx_laptop_pic VALUES(null,22,"img/ACC/xianglian/group3/sm/1.jpg","img/ACC/xianglian/group3/md/1.jpg","img/ACC/xianglian/group3/lg/1.jpg");
INSERT INTO azx_laptop_pic VALUES(null,22,"img/ACC/xianglian/group3/sm/2.jpg","img/ACC/xianglian/group3/md/2.jpg","img/ACC/xianglian/group3/lg/2.jpg");
INSERT INTO azx_laptop_pic VALUES(null,22,"img/ACC/xianglian/group3/sm/3.jpg","img/ACC/xianglian/group3/md/3.jpg","img/ACC/xianglian/group3/lg/3.jpg");
INSERT INTO azx_laptop_pic VALUES(null,22,"img/ACC/xianglian/group3/sm/4.jpg","img/ACC/xianglian/group3/md/4.jpg","img/ACC/xianglian/group3/lg/4.jpg");
INSERT INTO azx_laptop_pic VALUES(null,23,"img/ACC/xianglian/group4/sm/1.jpg","img/ACC/xianglian/group4/md/1.jpg","img/ACC/xianglian/group4/lg/1.jpg");
INSERT INTO azx_laptop_pic VALUES(null,23,"img/ACC/xianglian/group4/sm/2.jpg","img/ACC/xianglian/group4/md/2.jpg","img/ACC/xianglian/group4/lg/2.jpg");
INSERT INTO azx_laptop_pic VALUES(null,24,"img/ACC/xianglian/group5/sm/1.jpg","img/ACC/xianglian/group5/md/1.jpg","img/ACC/xianglian/group5/lg/1.jpg");
INSERT INTO azx_laptop_pic VALUES(null,24,"img/ACC/xianglian/group5/sm/2.jpg","img/ACC/xianglian/group5/md/2.jpg","img/ACC/xianglian/group5/lg/2.jpg");
CREATE TABLE azx_laptop_all(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  pid INT NOT NULL DEFAULT 3,
  `img` VARCHAR(200) NOT NULL DEFAULT '',
  title VARCHAR(200) NOT NULL DEFAULT '',
  address VARCHAR(200) NOT NULL DEFAULT '',
  material  VARCHAR(200) NOT NULL DEFAULT '',
  introduce  VARCHAR(200) NOT NULL DEFAULT '',
  cprice DECIMAL(10,2) NOT NULL DEFAULT 0,
  evaluate INT NOT NULL DEFAULT 0
);
INSERT INTO azx_laptop_all VALUES(null,2,"img/diamonRings/group1/lg/1.jpg","forever系列【奢华明星款-婚戒】","郑州","铂900","为践行曾经誓言的你们，戒指倒立的侧面即是巴黎铁塔的造型，曾在多部影视作品中出现。众多明星钟爱的选择，浪漫、奢华、大气，耀眼的主石被璀璨的配饰环绕，相互辉映出心中至上光芒。",3099,200);
INSERT INTO azx_laptop_all VALUES(null,2,"img/diamonRings/group2/lg/1.jpg","forever系列【奢华明星款-婚戒】","深圳","白18K金","为践行曾经誓言的你们，戒指倒立的侧面即是巴黎铁塔的造型，曾在多部影视作品中出现。众多明星钟爱的选择，浪漫、奢华、大气，耀眼的主石被璀璨的配饰环绕，相互辉映出心中至上光芒。",3099,180);
INSERT INTO azx_laptop_all VALUES(null,2,"img/diamonRings/group3/lg/1.jpg","forever系列【奢华明星款-婚戒】","上海","铂900","为践行曾经誓言的你们，戒指倒立的侧面即是巴黎铁塔的造型，曾在多部影视作品中出现。众多明星钟爱的选择，浪漫、奢华、大气，耀眼的主石被璀璨的配饰环绕，相互辉映出心中至上光芒。",3099,200);
INSERT INTO azx_laptop_all VALUES(null,2,"img/diamonRings/group4/lg/1.jpg","forever系列【奢华明星款-婚戒】","郑州","铂900","为践行曾经誓言的你们，戒指倒立的侧面即是巴黎铁塔的造型，曾在多部影视作品中出现。众多明星钟爱的选择，浪漫、奢华、大气，耀眼的主石被璀璨的配饰环绕，相互辉映出心中至上光芒。",3099,320);
INSERT INTO azx_laptop_all VALUES(null,2,"img/diamonRings/group5/lg/1.jpg","forever系列【奢华明星款-婚戒】","北京","铂900","为践行曾经誓言的你们，戒指倒立的侧面即是巴黎铁塔的造型，曾在多部影视作品中出现。众多明星钟爱的选择，浪漫、奢华、大气，耀眼的主石被璀璨的配饰环绕，相互辉映出心中至上光芒。",3099,123);
INSERT INTO azx_laptop_all VALUES(null,2,"img/diamonRings/group6/lg/1.jpg","forever系列【奢华明星款-婚戒】","上海","铂900","为践行曾经誓言的你们，戒指倒立的侧面即是巴黎铁塔的造型，曾在多部影视作品中出现。众多明星钟爱的选择，浪漫、奢华、大气，耀眼的主石被璀璨的配饰环绕，相互辉映出心中至上光芒。",3099,235);
INSERT INTO azx_laptop_all VALUES(null,2,"img/diamonRings/group7/lg/1.jpg","forever系列【奢华明星款-婚戒】","北京","铂900","为践行曾经誓言的你们，戒指倒立的侧面即是巴黎铁塔的造型，曾在多部影视作品中出现。众多明星钟爱的选择，浪漫、奢华、大气，耀眼的主石被璀璨的配饰环绕，相互辉映出心中至上光芒。",3099,562);
INSERT INTO azx_laptop_all VALUES(null,2,"img/diamonRings/group8/lg/1.jpg","forever系列【奢华明星款-婚戒】","上海","铂900","为践行曾经誓言的你们，戒指倒立的侧面即是巴黎铁塔的造型，曾在多部影视作品中出现。众多明星钟爱的选择，浪漫、奢华、大气，耀眼的主石被璀璨的配饰环绕，相互辉映出心中至上光芒。",3099,146);
INSERT INTO azx_laptop_all VALUES(null,2,"img/diamonRings/group9/lg/1.jpg","forever系列【奢华明星款-婚戒】","北京","铂900","为践行曾经誓言的你们，戒指倒立的侧面即是巴黎铁塔的造型，曾在多部影视作品中出现。众多明星钟爱的选择，浪漫、奢华、大气，耀眼的主石被璀璨的配饰环绕，相互辉映出心中至上光芒。",3099,362);
INSERT INTO azx_laptop_all VALUES(null,2,"img/diamonRings/group10/lg/1.jpg","forever系列【奢华明星款-婚戒】","上海","铂900","为践行曾经誓言的你们，戒指倒立的侧面即是巴黎铁塔的造型，曾在多部影视作品中出现。众多明星钟爱的选择，浪漫、奢华、大气，耀眼的主石被璀璨的配饰环绕，相互辉映出心中至上光芒。",3099,523);
INSERT INTO azx_laptop_all VALUES(null,2,"img/diamonRings/group11/lg/1.jpg","forever系列【奢华明星款-婚戒】","深圳","铂900","为践行曾经誓言的你们，戒指倒立的侧面即是巴黎铁塔的造型，曾在多部影视作品中出现。众多明星钟爱的选择，浪漫、奢华、大气，耀眼的主石被璀璨的配饰环绕，相互辉映出心中至上光芒。",3099,325);
INSERT INTO azx_laptop_all VALUES(null,2,"img/diamonRings/group12/lg/1.jpg","forever系列【奢华明星款-婚戒】","杭州","铂900","为践行曾经誓言的你们，戒指倒立的侧面即是巴黎铁塔的造型，曾在多部影视作品中出现。众多明星钟爱的选择，浪漫、奢华、大气，耀眼的主石被璀璨的配饰环绕，相互辉映出心中至上光芒。",3099,200);
INSERT INTO azx_laptop_all VALUES(null,2,"img/diamonRings/group13/lg/1.jpg","forever系列【奢华明星款-对戒】","郑州","杭州","为践行曾经誓言的你们，戒指倒立的侧面即是巴黎铁塔的造型，曾在多部影视作品中出现。众多明星钟爱的选择，浪漫、奢华、大气，耀眼的主石被璀璨的配饰环绕，相互辉映出心中至上光芒。",3099,123);
INSERT INTO azx_laptop_all VALUES(null,2,"img/diamonRings/group14/lg/1.jpg","forever系列【奢华明星款-对戒】","杭州","铂900","为践行曾经誓言的你们，戒指倒立的侧面即是巴黎铁塔的造型，曾在多部影视作品中出现。众多明星钟爱的选择，浪漫、奢华、大气，耀眼的主石被璀璨的配饰环绕，相互辉映出心中至上光芒。",3099,145);
INSERT INTO azx_laptop_all VALUES(null,2,"img/diamonRings/group15/lg/1.jpg","forever系列【奢华明星款-对戒】","上海","铂900","为践行曾经誓言的你们，戒指倒立的侧面即是巴黎铁塔的造型，曾在多部影视作品中出现。众多明星钟爱的选择，浪漫、奢华、大气，耀眼的主石被璀璨的配饰环绕，相互辉映出心中至上光芒。",3099,126);
INSERT INTO azx_laptop_all VALUES(null,2,"img/diamonRings/group16/lg/1.jpg","forever系列【奢华明星款-对戒】","北京","铂900","为践行曾经誓言的你们，戒指倒立的侧面即是巴黎铁塔的造型，曾在多部影视作品中出现。众多明星钟爱的选择，浪漫、奢华、大气，耀眼的主石被璀璨的配饰环绕，相互辉映出心中至上光芒。",3099,156);
INSERT INTO azx_laptop_all VALUES(null,2,"img/diamonRings/group17/lg/1.jpg","forever系列【奢华明星款-对戒】","上海","铂900","为践行曾经誓言的你们，戒指倒立的侧面即是巴黎铁塔的造型，曾在多部影视作品中出现。众多明星钟爱的选择，浪漫、奢华、大气，耀眼的主石被璀璨的配饰环绕，相互辉映出心中至上光芒。",3099,142);
INSERT INTO azx_laptop_all VALUES(null,2,"img/diamonRings/group18/lg/1.jpg","forever系列【奢华明星款-对戒】","郑州","铂900","为践行曾经誓言的你们，戒指倒立的侧面即是巴黎铁塔的造型，曾在多部影视作品中出现。众多明星钟爱的选择，浪漫、奢华、大气，耀眼的主石被璀璨的配饰环绕，相互辉映出心中至上光芒。",3099,175);
INSERT INTO azx_laptop_all VALUES(null,2,"img/diamonRings/group19/lg/1.jpg","forever系列【奢华明星款-对戒】","广州","铂900","为践行曾经誓言的你们，戒指倒立的侧面即是巴黎铁塔的造型，曾在多部影视作品中出现。众多明星钟爱的选择，浪漫、奢华、大气，耀眼的主石被璀璨的配饰环绕，相互辉映出心中至上光芒。",3099,136);
INSERT INTO azx_laptop_all VALUES(null,2,"img/diamonRings/group20/lg/1.jpg","forever系列【奢华明星款-配饰】","上海","铂900","为践行曾经誓言的你们，戒指倒立的侧面即是巴黎铁塔的造型，曾在多部影视作品中出现。众多明星钟爱的选择，浪漫、奢华、大气，耀眼的主石被璀璨的配饰环绕，相互辉映出心中至上光芒。",3099,159);
INSERT INTO azx_laptop_all VALUES(null,2,"img/diamonRings/group21/lg/1.jpg","forever系列【奢华明星款-配饰】","北京","铂900","为践行曾经誓言的你们，戒指倒立的侧面即是巴黎铁塔的造型，曾在多部影视作品中出现。众多明星钟爱的选择，浪漫、奢华、大气，耀眼的主石被璀璨的配饰环绕，相互辉映出心中至上光芒。",3099,423);
INSERT INTO azx_laptop_all VALUES(null,2,"img/diamonRings/group22/lg/1.jpg","forever系列【奢华明星款-配饰】","杭州","铂900","为践行曾经誓言的你们，戒指倒立的侧面即是巴黎铁塔的造型，曾在多部影视作品中出现。众多明星钟爱的选择，浪漫、奢华、大气，耀眼的主石被璀璨的配饰环绕，相互辉映出心中至上光芒。",3099,652);
INSERT INTO azx_laptop_all VALUES(null,2,"img/diamonRings/group23/lg/1.jpg","forever系列【奢华明星款-配饰】","上海","铂900","为践行曾经誓言的你们，戒指倒立的侧面即是巴黎铁塔的造型，曾在多部影视作品中出现。众多明星钟爱的选择，浪漫、奢华、大气，耀眼的主石被璀璨的配饰环绕，相互辉映出心中至上光芒。",3099,365);
INSERT INTO azx_laptop_all VALUES(null,2,"img/diamonRings/group24/lg/1.jpg","forever系列【奢华明星款-配饰】","北京","铂900","为践行曾经誓言的你们，戒指倒立的侧面即是巴黎铁塔的造型，曾在多部影视作品中出现。众多明星钟爱的选择，浪漫、奢华、大气，耀眼的主石被璀璨的配饰环绕，相互辉映出心中至上光芒。",3099,623);
INSERT INTO azx_laptop_all VALUES(null,2,"img/diamonRings/group25/lg/1.jpg","forever系列【奢华明星款-配饰】","北京","铂900","为践行曾经誓言的你们，戒指倒立的侧面即是巴黎铁塔的造型，曾在多部影视作品中出现。众多明星钟爱的选择，浪漫、奢华、大气，耀眼的主石被璀璨的配饰环绕，相互辉映出心中至上光芒。",3099,426);
INSERT INTO azx_laptop_all VALUES(null,2,"img/diamonRings/group26/lg/1.jpg","forever系列【奢华明星款-配饰】","北京","铂900","为践行曾经誓言的你们，戒指倒立的侧面即是巴黎铁塔的造型，曾在多部影视作品中出现。众多明星钟爱的选择，浪漫、奢华、大气，耀眼的主石被璀璨的配饰环绕，相互辉映出心中至上光芒。",9099,529);

INSERT INTO azx_laptop_all VALUES(null,3,"img/coupleRings/couple1/sm/1.jpg","My HEART系列【奢华明星款-对戒】","广州","铂900","为践行曾经誓言的你们，戒指倒立的侧面即是巴黎铁塔的造型，曾在多部影视作品中出现。众多明星钟爱的选择，浪漫、奢华、大气，耀眼的主石被璀璨的配饰环绕，相互辉映出心中至上光芒。",10000,8562);
INSERT INTO azx_laptop_all VALUES(null,3,"img/coupleRings/couple2/sm/1.jpg","My HEART系列【奢华明星款-对戒】","广州","铂900","为践行曾经誓言的你们，戒指倒立的侧面即是巴黎铁塔的造型，曾在多部影视作品中出现。众多明星钟爱的选择，浪漫、奢华、大气，耀眼的主石被璀璨的配饰环绕，相互辉映出心中至上光芒。",452300,1235);
INSERT INTO azx_laptop_all VALUES(null,3,"img/coupleRings/couple3/sm/1.jpg","My HEART系列【奢华明星款-对戒】","广州","铂900","为践行曾经誓言的你们，戒指倒立的侧面即是巴黎铁塔的造型，曾在多部影视作品中出现。众多明星钟爱的选择，浪漫、奢华、大气，耀眼的主石被璀璨的配饰环绕，相互辉映出心中至上光芒。",30000,1562);
INSERT INTO azx_laptop_all VALUES(null,3,"img/coupleRings/couple4/sm/1.jpg","My HEART系列【奢华明星款-对戒】","广州","铂900","为践行曾经誓言的你们，戒指倒立的侧面即是巴黎铁塔的造型，曾在多部影视作品中出现。众多明星钟爱的选择，浪漫、奢华、大气，耀眼的主石被璀璨的配饰环绕，相互辉映出心中至上光芒。",40000,1235);
INSERT INTO azx_laptop_all VALUES(null,3,"img/coupleRings/couple5/sm/1.jpg","My HEART系列【奢华明星款-对戒】","广州","铂900","为践行曾经誓言的你们，戒指倒立的侧面即是巴黎铁塔的造型，曾在多部影视作品中出现。众多明星钟爱的选择，浪漫、奢华、大气，耀眼的主石被璀璨的配饰环绕，相互辉映出心中至上光芒。",23300,1245);
INSERT INTO azx_laptop_all VALUES(null,3,"img/coupleRings/couple6/sm/1.jpg","My HEART系列【奢华明星款-对戒】","广州","铂900","为践行曾经誓言的你们，戒指倒立的侧面即是巴黎铁塔的造型，曾在多部影视作品中出现。众多明星钟爱的选择，浪漫、奢华、大气，耀眼的主石被璀璨的配饰环绕，相互辉映出心中至上光芒。",151523,1247);
INSERT INTO azx_laptop_all VALUES(null,3,"img/coupleRings/couple7/sm/1.jpg","My HEART系列【奢华明星款-对戒】","广州","铂900","为践行曾经誓言的你们，戒指倒立的侧面即是巴黎铁塔的造型，曾在多部影视作品中出现。众多明星钟爱的选择，浪漫、奢华、大气，耀眼的主石被璀璨的配饰环绕，相互辉映出心中至上光芒。",13660,1256);
INSERT INTO azx_laptop_all VALUES(null,3,"img/coupleRings/couple8/sm/6.jpg","My HEART系列【奢华明星款-对戒】","广州","铂900","为践行曾经誓言的你们，戒指倒立的侧面即是巴黎铁塔的造型，曾在多部影视作品中出现。众多明星钟爱的选择，浪漫、奢华、大气，耀眼的主石被璀璨的配饰环绕，相互辉映出心中至上光芒。",10520,1235);
INSERT INTO azx_laptop_all VALUES(null,3,"img/coupleRings/couple9/sm/1.jpg","My HEART系列【奢华明星款-对戒】","广州","铂900","为践行曾经誓言的你们，戒指倒立的侧面即是巴黎铁塔的造型，曾在多部影视作品中出现。众多明星钟爱的选择，浪漫、奢华、大气，耀眼的主石被璀璨的配饰环绕，相互辉映出心中至上光芒。",10000,200);
INSERT INTO azx_laptop_all VALUES(null,3,"img/coupleRings/couple10/sm/1.jpg","My HEART系列【奢华明星款-对戒】","广州","铂900","为践行曾经誓言的你们，戒指倒立的侧面即是巴黎铁塔的造型，曾在多部影视作品中出现。众多明星钟爱的选择，浪漫、奢华、大气，耀眼的主石被璀璨的配饰环绕，相互辉映出心中至上光芒。",101263,1258);
INSERT INTO azx_laptop_all VALUES(null,3,"img/coupleRings/couple11/sm/1.jpg","My HEART系列【奢华明星款-对戒】","广州","铂900","为践行曾经誓言的你们，戒指倒立的侧面即是巴黎铁塔的造型，曾在多部影视作品中出现。众多明星钟爱的选择，浪漫、奢华、大气，耀眼的主石被璀璨的配饰环绕，相互辉映出心中至上光芒。",8000,956);
INSERT INTO azx_laptop_all VALUES(null,3,"img/coupleRings/couple12/sm/1.jpg","My HEART系列【奢华明星款-对戒】","广州","铂900","为践行曾经誓言的你们，戒指倒立的侧面即是巴黎铁塔的造型，曾在多部影视作品中出现。众多明星钟爱的选择，浪漫、奢华、大气，耀眼的主石被璀璨的配饰环绕，相互辉映出心中至上光芒。",3000,869);
INSERT INTO azx_laptop_all VALUES(null,3,"img/coupleRings/couple13/sm/1.jpg","My HEART系列【奢华明星款-对戒】","广州","铂900","为践行曾经誓言的你们，戒指倒立的侧面即是巴黎铁塔的造型，曾在多部影视作品中出现。众多明星钟爱的选择，浪漫、奢华、大气，耀眼的主石被璀璨的配饰环绕，相互辉映出心中至上光芒。",10000,1256);
INSERT INTO azx_laptop_all VALUES(null,3,"img/coupleRings/couple14/sm/1.jpg","My HEART系列【奢华明星款-对戒】","广州","铂900","为践行曾经誓言的你们，戒指倒立的侧面即是巴黎铁塔的造型，曾在多部影视作品中出现。众多明星钟爱的选择，浪漫、奢华、大气，耀眼的主石被璀璨的配饰环绕，相互辉映出心中至上光芒。",10100,1568);
INSERT INTO azx_laptop_all VALUES(null,3,"img/coupleRings/couple15/sm/1.jpg","My HEART系列【奢华明星款-对戒】","广州","铂900","为践行曾经誓言的你们，戒指倒立的侧面即是巴黎铁塔的造型，曾在多部影视作品中出现。众多明星钟爱的选择，浪漫、奢华、大气，耀眼的主石被璀璨的配饰环绕，相互辉映出心中至上光芒。",10000,2536);
INSERT INTO azx_laptop_all VALUES(null,3,"img/coupleRings/couple16/sm/1.jpg","My HEART系列【奢华明星款-对戒】","广州","铂900","为践行曾经誓言的你们，戒指倒立的侧面即是巴黎铁塔的造型，曾在多部影视作品中出现。众多明星钟爱的选择，浪漫、奢华、大气，耀眼的主石被璀璨的配饰环绕，相互辉映出心中至上光芒。",10300,5623);
INSERT INTO azx_laptop_all VALUES(null,3,"img/coupleRings/couple17/sm/1.jpg","forever系列【奢华明星款-对戒】","广州","铂900","为践行曾经誓言的你们，戒指倒立的侧面即是巴黎铁塔的造型，曾在多部影视作品中出现。众多明星钟爱的选择，浪漫、奢华、大气，耀眼的主石被璀璨的配饰环绕，相互辉映出心中至上光芒。",10100,4523);
INSERT INTO azx_laptop_all VALUES(null,3,"img/coupleRings/couple187/sm/1.jpg","forever系列【奢华明星款-对戒】","广州","铂900","为践行曾经誓言的你们，戒指倒立的侧面即是巴黎铁塔的造型，曾在多部影视作品中出现。众多明星钟爱的选择，浪漫、奢华、大气，耀眼的主石被璀璨的配饰环绕，相互辉映出心中至上光芒。",101456,4523);
INSERT INTO azx_laptop_all VALUES(null,3,"img/coupleRings/couple1/sm/1.jpg","forever系列【奢华明星款-对戒】","广州","铂900","为践行曾经誓言的你们，戒指倒立的侧面即是巴黎铁塔的造型，曾在多部影视作品中出现。众多明星钟爱的选择，浪漫、奢华、大气，耀眼的主石被璀璨的配饰环绕，相互辉映出心中至上光芒。",10300,4723);
INSERT INTO azx_laptop_all VALUES(null,3,"img/coupleRings/couple2/sm/1.jpg","forever系列【奢华明星款-对戒】","广州","铂900","为践行曾经誓言的你们，戒指倒立的侧面即是巴黎铁塔的造型，曾在多部影视作品中出现。众多明星钟爱的选择，浪漫、奢华、大气，耀眼的主石被璀璨的配饰环绕，相互辉映出心中至上光芒。",10420,1259);
INSERT INTO azx_laptop_all VALUES(null,3,"img/coupleRings/couple3/sm/1.jpg","forever系列【奢华明星款-对戒】","广州","铂900","为践行曾经誓言的你们，戒指倒立的侧面即是巴黎铁塔的造型，曾在多部影视作品中出现。众多明星钟爱的选择，浪漫、奢华、大气，耀眼的主石被璀璨的配饰环绕，相互辉映出心中至上光芒。",10300,1256);
INSERT INTO azx_laptop_all VALUES(null,3,"img/coupleRings/couple4/sm/1.jpg","forever系列【奢华明星款-对戒】","广州","铂900","为践行曾经誓言的你们，戒指倒立的侧面即是巴黎铁塔的造型，曾在多部影视作品中出现。众多明星钟爱的选择，浪漫、奢华、大气，耀眼的主石被璀璨的配饰环绕，相互辉映出心中至上光芒。",10050,1236);
INSERT INTO azx_laptop_all VALUES(null,3,"img/coupleRings/couple5/sm/1.jpg","forever系列【奢华明星款-对戒】","广州","铂900","为践行曾经誓言的你们，戒指倒立的侧面即是巴黎铁塔的造型，曾在多部影视作品中出现。众多明星钟爱的选择，浪漫、奢华、大气，耀眼的主石被璀璨的配饰环绕，相互辉映出心中至上光芒。",10006,1563);
INSERT INTO azx_laptop_all VALUES(null,3,"img/coupleRings/couple6/sm/1.jpg","forever系列【奢华明星款-对戒】","广州","铂900","为践行曾经誓言的你们，戒指倒立的侧面即是巴黎铁塔的造型，曾在多部影视作品中出现。众多明星钟爱的选择，浪漫、奢华、大气，耀眼的主石被璀璨的配饰环绕，相互辉映出心中至上光芒。",10002,1453);
INSERT INTO azx_laptop_all VALUES(null,3,"img/coupleRings/couple7/sm/1.jpg","forever系列【奢华明星款-对戒】","广州","铂900","为践行曾经誓言的你们，戒指倒立的侧面即是巴黎铁塔的造型，曾在多部影视作品中出现。众多明星钟爱的选择，浪漫、奢华、大气，耀眼的主石被璀璨的配饰环绕，相互辉映出心中至上光芒。",10003,1458);
INSERT INTO azx_laptop_all VALUES(null,3,"img/coupleRings/couple8/sm/1.jpg","forever系列【奢华明星款-对戒】","广州","铂900","为践行曾经誓言的你们，戒指倒立的侧面即是巴黎铁塔的造型，曾在多部影视作品中出现。众多明星钟爱的选择，浪漫、奢华、大气，耀眼的主石被璀璨的配饰环绕，相互辉映出心中至上光芒。",10000,1426);
INSERT INTO azx_laptop_all VALUES(null,3,"img/coupleRings/couple9/sm/1.jpg","forever系列【奢华明星款-对戒】","广州","铂900","为践行曾经誓言的你们，戒指倒立的侧面即是巴黎铁塔的造型，曾在多部影视作品中出现。众多明星钟爱的选择，浪漫、奢华、大气，耀眼的主石被璀璨的配饰环绕，相互辉映出心中至上光芒。",10050,1458);
INSERT INTO azx_laptop_all VALUES(null,3,"img/coupleRings/couple10/sm/1.jpg","forever系列【奢华明星款-对戒】","广州","铂900","为践行曾经誓言的你们，戒指倒立的侧面即是巴黎铁塔的造型，曾在多部影视作品中出现。众多明星钟爱的选择，浪漫、奢华、大气，耀眼的主石被璀璨的配饰环绕，相互辉映出心中至上光芒。",10070,4100);
INSERT INTO azx_laptop_all VALUES(null,3,"img/coupleRings/couple11/sm/1.jpg","forever系列【奢华明星款-对戒】","广州","铂900","为践行曾经誓言的你们，戒指倒立的侧面即是巴黎铁塔的造型，曾在多部影视作品中出现。众多明星钟爱的选择，浪漫、奢华、大气，耀眼的主石被璀璨的配饰环绕，相互辉映出心中至上光芒。",10052,1002);
INSERT INTO azx_laptop_all VALUES(null,3,"img/coupleRings/couple12/sm/1.jpg","forever系列【奢华明星款-对戒】","广州","铂900","为践行曾经誓言的你们，戒指倒立的侧面即是巴黎铁塔的造型，曾在多部影视作品中出现。众多明星钟爱的选择，浪漫、奢华、大气，耀眼的主石被璀璨的配饰环绕，相互辉映出心中至上光芒。",10012,1003);
INSERT INTO azx_laptop_all VALUES(null,3,"img/coupleRings/couple13/sm/1.jpg","forever系列【奢华明星款-对戒】","广州","铂900","为践行曾经誓言的你们，戒指倒立的侧面即是巴黎铁塔的造型，曾在多部影视作品中出现。众多明星钟爱的选择，浪漫、奢华、大气，耀眼的主石被璀璨的配饰环绕，相互辉映出心中至上光芒。",8020,1212);
INSERT INTO azx_laptop_all VALUES(null,3,"img/coupleRings/couple14/sm/1.jpg","forever系列【奢华明星款-对戒】","广州","铂900","为践行曾经誓言的你们，戒指倒立的侧面即是巴黎铁塔的造型，曾在多部影视作品中出现。众多明星钟爱的选择，浪漫、奢华、大气，耀眼的主石被璀璨的配饰环绕，相互辉映出心中至上光芒。",3099,1235);

INSERT INTO azx_laptop_all VALUES(null,4,"img/ACC/erding/group1/sm/1.jpg","forever系列【奢华明星款-配饰】","广州","铂900","为践行曾经誓言的你们，戒指倒立的侧面即是巴黎铁塔的造型，曾在多部影视作品中出现。众多明星钟爱的选择，浪漫、奢华、大气，耀眼的主石被璀璨的配饰环绕，相互辉映出心中至上光芒。",13099,1214);
INSERT INTO azx_laptop_all VALUES(null,4,"img/ACC/erding/group2/sm/1.jpg","forever系列【奢华明星款-配饰】","广州","铂900","为践行曾经誓言的你们，戒指倒立的侧面即是巴黎铁塔的造型，曾在多部影视作品中出现。众多明星钟爱的选择，浪漫、奢华、大气，耀眼的主石被璀璨的配饰环绕，相互辉映出心中至上光芒。",13029,1256);
INSERT INTO azx_laptop_all VALUES(null,4,"img/ACC/erhuan/group1/sm/1.jpg","forever系列【奢华明星款-配饰】","广州","铂900","为践行曾经誓言的你们，戒指倒立的侧面即是巴黎铁塔的造型，曾在多部影视作品中出现。众多明星钟爱的选择，浪漫、奢华、大气，耀眼的主石被璀璨的配饰环绕，相互辉映出心中至上光芒。",10199,1236);
INSERT INTO azx_laptop_all VALUES(null,4,"img/ACC/erhuan/group2/sm/1.jpg","forever系列【奢华明星款-配饰】","广州","铂900","为践行曾经誓言的你们，戒指倒立的侧面即是巴黎铁塔的造型，曾在多部影视作品中出现。众多明星钟爱的选择，浪漫、奢华、大气，耀眼的主石被璀璨的配饰环绕，相互辉映出心中至上光芒。",12990,1573);
INSERT INTO azx_laptop_all VALUES(null,4,"img/ACC/huangguan/group1/sm/1.jpg","forever系列【奢华明星款-配饰】","广州","铂900","为践行曾经誓言的你们，戒指倒立的侧面即是巴黎铁塔的造型，曾在多部影视作品中出现。众多明星钟爱的选择，浪漫、奢华、大气，耀眼的主石被璀璨的配饰环绕，相互辉映出心中至上光芒。",10099,1258);
INSERT INTO azx_laptop_all VALUES(null,4,"img/ACC/ring/group1/sm/1.jpg","forever系列【奢华明星款-配饰】","广州","铂900","为践行曾经誓言的你们，戒指倒立的侧面即是巴黎铁塔的造型，曾在多部影视作品中出现。众多明星钟爱的选择，浪漫、奢华、大气，耀眼的主石被璀璨的配饰环绕，相互辉映出心中至上光芒。",10029,1214);
INSERT INTO azx_laptop_all VALUES(null,4,"img/ACC/ring/group2/sm/1.jpg","forever系列【奢华明星款-配饰】","广州","铂900","为践行曾经誓言的你们，戒指倒立的侧面即是巴黎铁塔的造型，曾在多部影视作品中出现。众多明星钟爱的选择，浪漫、奢华、大气，耀眼的主石被璀璨的配饰环绕，相互辉映出心中至上光芒。",11099,1312);
INSERT INTO azx_laptop_all VALUES(null,4,"img/ACC/xianglian/group1/sm/1.jpg","forever系列【奢华明星款-配饰】","广州","铂900","为践行曾经誓言的你们，戒指倒立的侧面即是巴黎铁塔的造型，曾在多部影视作品中出现。众多明星钟爱的选择，浪漫、奢华、大气，耀眼的主石被璀璨的配饰环绕，相互辉映出心中至上光芒。",13019,1235);
INSERT INTO azx_laptop_all VALUES(null,4,"img/ACC/xianglian/group2/sm/1.jpg","forever系列【奢华明星款-配饰】","广州","铂900","为践行曾经誓言的你们，戒指倒立的侧面即是巴黎铁塔的造型，曾在多部影视作品中出现。众多明星钟爱的选择，浪漫、奢华、大气，耀眼的主石被璀璨的配饰环绕，相互辉映出心中至上光芒。",10119,1215);
INSERT INTO azx_laptop_all VALUES(null,4,"img/ACC/xianglian/group3/sm/1.jpg","forever系列【奢华明星款-配饰】","广州","铂900","为践行曾经誓言的你们，戒指倒立的侧面即是巴黎铁塔的造型，曾在多部影视作品中出现。众多明星钟爱的选择，浪漫、奢华、大气，耀眼的主石被璀璨的配饰环绕，相互辉映出心中至上光芒。",10019,1216);
INSERT INTO azx_laptop_all VALUES(null,4,"img/ACC/xianglian/group4/sm/1.jpg","forever系列【奢华明星款-配饰】","广州","铂900","为践行曾经誓言的你们，戒指倒立的侧面即是巴黎铁塔的造型，曾在多部影视作品中出现。众多明星钟爱的选择，浪漫、奢华、大气，耀眼的主石被璀璨的配饰环绕，相互辉映出心中至上光芒。",10012,1213);
INSERT INTO azx_laptop_all VALUES(null,4,"img/ACC/xianglian/group5/sm/1.jpg","forever系列【奢华明星款-配饰】","广州","铂900","为践行曾经誓言的你们，戒指倒立的侧面即是巴黎铁塔的造型，曾在多部影视作品中出现。众多明星钟爱的选择，浪漫、奢华、大气，耀眼的主石被璀璨的配饰环绕，相互辉映出心中至上光芒。",10910,1219);
INSERT INTO azx_laptop_all VALUES(null,4,"img/ACC/xianglian/group6/sm/1.jpg","forever系列【奢华明星款-配饰】","广州","铂900","为践行曾经誓言的你们，戒指倒立的侧面即是巴黎铁塔的造型，曾在多部影视作品中出现。众多明星钟爱的选择，浪漫、奢华、大气，耀眼的主石被璀璨的配饰环绕，相互辉映出心中至上光芒。",10210,1315);
INSERT INTO azx_laptop_all VALUES(null,4,"img/ACC/xianglian/group7/sm/1.jpg","forever系列【奢华明星款-配饰】","广州","铂900","为践行曾经誓言的你们，戒指倒立的侧面即是巴黎铁塔的造型，曾在多部影视作品中出现。众多明星钟爱的选择，浪漫、奢华、大气，耀眼的主石被璀璨的配饰环绕，相互辉映出心中至上光芒。",10109,1416);
INSERT INTO azx_laptop_all VALUES(null,4,"img/ACC/xianglian/group8/sm/1.jpg","forever系列【奢华明星款-配饰】","广州","铂900","为践行曾经誓言的你们，戒指倒立的侧面即是巴黎铁塔的造型，曾在多部影视作品中出现。众多明星钟爱的选择，浪漫、奢华、大气，耀眼的主石被璀璨的配饰环绕，相互辉映出心中至上光芒。",10019,1415);
INSERT INTO azx_laptop_all VALUES(null,4,"img/ACC/xianglian/group9/sm/1.jpg","forever系列【奢华明星款-配饰】","广州","铂900","为践行曾经誓言的你们，戒指倒立的侧面即是巴黎铁塔的造型，曾在多部影视作品中出现。众多明星钟爱的选择，浪漫、奢华、大气，耀眼的主石被璀璨的配饰环绕，相互辉映出心中至上光芒。",10009,1418);
INSERT INTO azx_laptop_all VALUES(null,4,"img/ACC/xianglian/group10/sm/1.jpg","forever系列【奢华明星款-配饰】","广州","铂900","为践行曾经誓言的你们，戒指倒立的侧面即是巴黎铁塔的造型，曾在多部影视作品中出现。众多明星钟爱的选择，浪漫、奢华、大气，耀眼的主石被璀璨的配饰环绕，相互辉映出心中至上光芒。",10091,1416);
INSERT INTO azx_laptop_all VALUES(null,4,"img/ACC/xianglian/group11/sm/1.jpg","forever系列【奢华明星款-配饰】","广州","铂900","为践行曾经誓言的你们，戒指倒立的侧面即是巴黎铁塔的造型，曾在多部影视作品中出现。众多明星钟爱的选择，浪漫、奢华、大气，耀眼的主石被璀璨的配饰环绕，相互辉映出心中至上光芒。",10019,1418);
INSERT INTO azx_laptop_all VALUES(null,4,"img/ACC/xianglian/group12/sm/1.jpg","forever系列【奢华明星款-配饰】","广州","铂900","为践行曾经誓言的你们，戒指倒立的侧面即是巴黎铁塔的造型，曾在多部影视作品中出现。众多明星钟爱的选择，浪漫、奢华、大气，耀眼的主石被璀璨的配饰环绕，相互辉映出心中至上光芒。",10090,1413);
INSERT INTO azx_laptop_all VALUES(null,4,"img/ACC/xianglian/group13/sm/1.jpg","forever系列【奢华明星款-配饰】","广州","铂900","为践行曾经誓言的你们，戒指倒立的侧面即是巴黎铁塔的造型，曾在多部影视作品中出现。众多明星钟爱的选择，浪漫、奢华、大气，耀眼的主石被璀璨的配饰环绕，相互辉映出心中至上光芒。",10190,1415);
INSERT INTO azx_laptop_all VALUES(null,4,"img/ACC/xianglian/group14/sm/1.jpg","forever系列【奢华明星款-配饰】","广州","铂900","为践行曾经誓言的你们，戒指倒立的侧面即是巴黎铁塔的造型，曾在多部影视作品中出现。众多明星钟爱的选择，浪漫、奢华、大气，耀眼的主石被璀璨的配饰环绕，相互辉映出心中至上光芒。",10990,1417);
INSERT INTO azx_laptop_all VALUES(null,4,"img/ACC/xianglian/group15/sm/1.jpg","forever系列【奢华明星款-配饰】","广州","铂900","为践行曾经誓言的你们，戒指倒立的侧面即是巴黎铁塔的造型，曾在多部影视作品中出现。众多明星钟爱的选择，浪漫、奢华、大气，耀眼的主石被璀璨的配饰环绕，相互辉映出心中至上光芒。",10090,1412);
CREATE TABLE azx_shoppingcart(
  iid INT PRIMARY KEY AUTO_INCREMENT,
  uid INT, 
  lid INT, 
  count INT,      
  is_checked BOOLEAN
);

