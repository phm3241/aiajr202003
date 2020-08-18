CREATE TABLE `member` (
   `midx`   INT   NOT NULL AUTO_INCREMENT primary key,
   `id`   VARCHAR(50)   NOT NULL,
   `name`   VARCHAR(50)   NOT NULL,
   `addr`   VARCHAR(255)   NOT NULL,
   `phone`   VARCHAR(50)   NOT NULL,
   `type`   INT NOT NULL   DEFAULT 1   
);

CREATE TABLE `item` (
  `iidx` int NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `price` int NOT NULL,
  `count_m` int NOT NULL,
  `count_w` int NOT NULL,
  `regdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `receive` datetime NOT NULL,
  `addr` varchar(50) NOT NULL,
  `location` varchar(200) NOT NULL,
  `content` varchar(400) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `state` int NOT NULL,
  `view_count` int NOT NULL DEFAULT '0',
  `group` int NOT NULL,
  `midx` int NOT NULL,
  PRIMARY KEY (iidx),
  foreign key (midx) references wifi.member(midx) on update cascade on delete cascade
);

CREATE TABLE `order` (
  `oidx` int NOT NULL AUTO_INCREMENT primary key,
  `state` int not null,
  `midx` int not null,
  `iidx` int not null,
  foreign key (`midx`) references wifi.member(`midx`) on update cascade on delete cascade,
  foreign key (`iidx`) references wifi.item(`iidx`) on update cascade on delete cascade
);

create table purchase (
   pidx int not null auto_increment primary key,
    qr varchar(50) not null,
    state int not null,
    oidx int not null,
    foreign key(oidx) references wifi.order(oidx) on update cascade on delete cascade
);

create table item_rvb (
   irbidx int not null auto_increment primary key,
    score_b int not null,
    midx int not null,
    iidx int not null,
    foreign key(midx) references wifi.member(midx) on update cascade on delete cascade,
    foreign key(iidx) references wifi.item(iidx) on update cascade on delete cascade
);

create table item_rvs (
   irsidx int not null auto_increment primary key,
    score_s int not null,
    midx int not null,
    iidx int not null,
    foreign key(midx) references wifi.member(midx) on update cascade on delete cascade,
    foreign key(iidx) references wifi.item(iidx) on update cascade on delete cascade
);

create table comment(
   cidx int not null primary key auto_increment,
    regdate timestamp,
    content varchar(50) not null,
    state int not null,
    midx int not null,
    iidx int not null,
	foreign key(midx) references wifi.member(midx) on update cascade on delete cascade,
    foreign key(iidx) references wifi.item(iidx) on update cascade on delete cascade
);

SELECT * FROM wifi.order;
SELECT * FROM wifi.myorder;
SELECT * FROM wifi.member;
SELECT * FROM wifi.item;
SELECT * FROM wifi.purchase;


-- 1. 나의 공구 참여현황 보기
-- order 테이블과 item 테이블를 사용한 view 테이블 생성
-- [myorder]
CREATE VIEW myorder AS
    SELECT o.midx, o.iidx, o.state, i.title
    FROM wifi.order as o, wifi.item as i
    WHERE o.iidx = i.iidx;




INSERT INTO `member` VALUES (1,'푸룻@gmail.com','장윤원','서울시 중구 땡떙로 12-12','010-1234-1234',1),(3,'123@gmail.com','김멤버','서울시 구 땡떙로 12-12','010-1313-1133',1),(4,'1421@gmail.com','박멤버','서울시 종로구 종로 11','010-2222-1223',1),(6,'1421@gmail.com','남멤버','서울시 종로구 종로 11','010-2332-1223',1),(7,'3333@gmail.com','정멤버','서울시 종로구 종로 11','010-3333-3333',1),(8,'1334@gmail.com','송멤버','서울시 종구 종로 31','010-1334-1334',1),(9,'jangsa@gmail.com','장사꾼','경기도 고양시 일산동구 정발산동 123','010-1567-1333',1);

INSERT INTO `item` VALUES (1,'수박 가치사요 선착순 3명 8282 모이세',5000,3,0,'2020-08-13 10:01:38','2020-08-21 13:00:00','서울시 종로구 종로1가 53','로케이션','8282 오세요','default.jpg',0,0,0,1),(2,'수박 가치사요 선착순 3명 8282 모이세',5000,3,0,'2020-08-13 10:02:03','2020-08-21 13:00:00','서울시 종로구 종로1가 53','로케이션','8282 오세요','default.jpg',0,0,0,1),(3,'수박 가치사요 선착순 3명 8282 모이세',5000,3,0,'2020-08-13 10:03:05','2020-08-21 13:00:00','서울시 종로구 종로1가 53','로케이션','8282 오세요','default.jpg',0,0,0,1),(4,'수박 가치사요 선착순 3명 8282 모이세',5000,3,0,'2020-08-13 10:07:48','2020-08-21 13:00:00','서울시 종로구 종로1가 53','로케이션','8282 오세요','default.jpg',0,0,0,1),(5,'복숭아 가치사요 선착순 3명 8282 모이세',5000,3,0,'2020-08-13 10:29:41','2020-08-21 13:00:00','서울시 종로구 종로1가 53','로케이션','8282 오세요','default.jpg',0,0,0,1),(6,'복숭아 가치사요 선착순 3명 8282 모이세',5000,3,6,'2020-08-13 10:29:51','2020-08-21 13:00:00','서울시 종로구 종로1가 53','로케이션','8282 오세요','default.jpg',0,0,0,1),(7,'포도 가치사요 선착순 6명 8282 모이세여',3000,6,12,'2020-08-13 10:54:08','2020-08-31 17:30:00','서울시 종로구 종로1가 53','좌아표','8282 오세요','default.jpg',0,0,0,1),(8,'메론 가치사요 선착순 10명 8282 모이세여',10000,5,10,'2020-08-13 10:55:06','2020-08-19 18:30:00','서울시 종로구 종로1가 53','좌아표','냉무','default.jpg',1,0,0,1),(9,'메론 가치사요 선착순 10명 8282 모이세여',10000,10,20,'2020-08-13 11:25:15','2020-08-19 18:30:00','서울시 종로구 종로1가 53','좌아표','냉무','default.jpg',0,0,0,1);

INSERT INTO `order` (oidx, midx, iidx) VALUES (1,1,4),(2,3,4),(3,4,4),(4,6,4),(5,7,5),(6,8,5),(7,9,8);