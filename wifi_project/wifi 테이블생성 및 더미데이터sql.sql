CREATE TABLE `wifi`.`member` (
  `midx` int NOT NULL AUTO_INCREMENT,
  `id` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `addr` varchar(255) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `type` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`midx`)
); 


CREATE TABLE `wifi`.`item` (
  `iidx` int NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `price` int NOT NULL,
  `count_m` int NOT NULL,
  `count_w` int NOT NULL,
  `regdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `receive` timestamp NOT NULL,
  `addr` varchar(50) NOT NULL,
  `location` varchar(200) NOT NULL,
  `content` varchar(400) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `state` int NOT NULL DEFAULT '0',
  `view_count` int NOT NULL DEFAULT '0',
  `category` int NOT NULL DEFAULT '0',
  `midx` int NOT NULL,
  PRIMARY KEY (`iidx`),
  FOREIGN KEY (`midx`) REFERENCES `member` (`midx`) ON DELETE CASCADE ON UPDATE CASCADE
); 

CREATE TABLE `wifi`.`order` (
  `oidx` int NOT NULL AUTO_INCREMENT,
  `state` int NOT NULL DEFAULT '0',
  `midx` int NOT NULL,
  `iidx` int NOT NULL,
  `orderdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`oidx`),
  FOREIGN KEY (`midx`) REFERENCES `member` (`midx`) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (`iidx`) REFERENCES `item` (`iidx`) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE `wifi`.`purchase` (
  `pidx` int NOT NULL AUTO_INCREMENT,
  `qr` varchar(50) NOT NULL,
  `state` int NOT NULL DEFAULT '0',
  `oidx` int NOT NULL,
  `orderdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`pidx`),
  FOREIGN KEY (`oidx`) REFERENCES `order` (`oidx`) ON DELETE CASCADE ON UPDATE CASCADE
); 

CREATE TABLE `wifi`.`item_rvb` (
  `irbidx` int NOT NULL AUTO_INCREMENT,
  `score_b` int NOT NULL,
  `midx` int NOT NULL,
  `iidx` int NOT NULL,
  PRIMARY KEY (`irbidx`),
  FOREIGN KEY (`midx`) REFERENCES `member` (`midx`) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (`iidx`) REFERENCES `item` (`iidx`) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE `wifi`.`item_rvs` (
  `irsidx` int NOT NULL AUTO_INCREMENT,
  `score_s` int NOT NULL,
  `midx` int NOT NULL,
  `iidx` int NOT NULL,
  PRIMARY KEY (`irsidx`),
  FOREIGN KEY (`midx`) REFERENCES `member` (`midx`) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (`iidx`) REFERENCES `item` (`iidx`) ON DELETE CASCADE ON UPDATE CASCADE
); 


CREATE TABLE `wifi`.`comment` (
  `cidx` int NOT NULL AUTO_INCREMENT,
  `regdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `content` varchar(50) NOT NULL,
  `state` int NOT NULL DEFAULT '0',
  `midx` int NOT NULL,
  `iidx` int NOT NULL,
  PRIMARY KEY (`cidx`),
  FOREIGN KEY (`midx`) REFERENCES `member` (`midx`) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (`iidx`) REFERENCES `item` (`iidx`) ON DELETE CASCADE ON UPDATE CASCADE
); 

CREATE TABLE `wifi`.`alarm_s` (
  `midx` int NOT NULL,
  `iidx` int NOT NULL,
  `state` int NOT NULL DEFAULT '0',
  FOREIGN KEY (`midx`) REFERENCES `item` (`midx`) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (`iidx`) REFERENCES `item` (`iidx`) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE `wifi`.`alarm_b` (
  `midx` int NOT NULL,
  `iidx` int NOT NULL,
  `state` int NOT NULL DEFAULT '0',
  FOREIGN KEY (`midx`) REFERENCES `order` (`midx`) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (`iidx`) REFERENCES `order` (`iidx`) ON DELETE CASCADE ON UPDATE CASCADE
);


INSERT INTO `wifi`.`member` VALUES (1,'푸룻@gmail.com','장윤원','서울시 중구 땡떙로 12-12','010-1234-1234',1),(3,'123@gmail.com','김멤버','서울시 구 땡떙로 12-12','010-1313-1133',1),(4,'1421@gmail.com','박멤버','서울시 종로구 종로 11','010-2222-1223',1),(6,'1421@gmail.com','남멤버','서울시 종로구 종로 11','010-2332-1223',1),(7,'3333@gmail.com','정멤버','서울시 종로구 종로 11','010-3333-3333',1),(8,'1334@gmail.com','송멤버','서울시 종구 종로 31','010-1334-1334',1),(9,'jangsa@gmail.com','장사꾼','경기도 고양시 일산동구 정발산동 123','010-1567-1333',1);
INSERT INTO `wifi`.`item` VALUES (2,'수박 가치사요 선착순 3명 8282 모이세',5000,3,6,'2020-08-13 10:02:03','2020-08-21 11:30:00','서울시 종로구 종로1가 53','로케이션','8282 오세요','default.jpg',1,4,0,1),(5,'복숭아 가치사요 선착순 3명 8282 모이세',5000,3,7,'2020-08-13 10:29:41','2020-08-21 13:00:00','서울시 종로구 종로1가 53','로케이션','8282 오세요','default.jpg',1,0,0,1),(7,'포도 가치사요 선착순 6명 8282 모이세여',3000,6,12,'2020-08-13 10:54:08','2020-08-31 17:30:00','서울시 종로구 종로1가 53','좌아표','8282 오세요','default.jpg',0,1,0,1),(10,'★★고등어 사실 분 선착순 3명!!',5000,3,6,'2020-08-20 07:02:30','2020-08-27 10:30:00','서울 종로구 종로3가 42','14534524','제철맞이한 고등어 사실 분 3명 모집이요!!','24109500730241_고등어이미지.jpg',1,1,2,1),(11,'맛있는 참외 나눠먹어요',5000,5,10,'2020-08-20 08:30:56','2020-08-22 11:30:00','인천 남동구 문화로133번길 47','우리집','우리집 다롱이도 환장하는 꿀참외 나눠드실분!','617029916295500_kakao_login_medium_narrow.png',0,0,0,1),(13,'휴지 나눠사실분 모이세요',5000,4,8,'2020-08-21 02:07:11','2020-08-22 06:00:00','서울 종로구 종로3가 42','14534524','휴지 나눠사요 다 사면 너무 많잖아요','6474983387909_휴지이미지.jpg',1,0,4,4),(14,'콜라 나눠용★',5000,4,8,'2020-08-21 03:07:03','2020-08-28 06:00:00','서울 종로구 종로3가 42','1313','없음','10066561114350_콜라이미지.jpg',0,0,5,4),(15,'배추사서 김치담그세요',10000,4,8,'2020-08-21 03:08:13','2020-08-29 08:10:00','서울 종로구 종로3가 42','14534524','없음','10136190018264_배추이미지.jpg',1,0,3,3),(16,'자두철이에요 자두사실분',6000,5,10,'2020-08-21 03:09:11','2020-08-26 07:00:00','서울 종로구 어딘가','14534524','자두자두자두','10194586777147_자두.jpg',1,0,0,6),(17,'기도합시다',5000,5,10,'2020-08-21 03:34:11','2020-08-24 03:36:00','사랑제일교회','HELL','하나님부처님예수님알라신님','defalult.png',0,0,6,1),(18,'코로나 바이러스 나눔합니다',8000,5,10,'2020-08-21 03:40:11','2020-08-24 08:40:00','WHO','그레이트 차이나 어게인','제철 코로나 바이러스 나눔쓰 (달달해요)','defalult.png',0,0,6,1),(19,'플로피 디스크 10mb  나눠사용합니다',50000,5,10,'2020-08-21 03:44:34','2020-08-24 07:50:00','AIA 아카데미','AIA Class 4','디스크 용량이 너무 많이 남아서 나눠 사용하실 분 구합니다!','defalult.png',0,0,6,1),(20,'코로나 바이러스 나눔합니다',50000,50,100,'2020-08-21 03:47:04','2020-08-24 09:50:00','사랑제일교회','HELL','만나서 더러웠고 지옥에서 마주치면 진짜 뒤진다','defalult.png',1,0,6,1),(21,'식빵 사자',2000,2,4,'2020-08-21 03:53:25','2020-08-26 06:00:00','서울 종로구 종로3가 42','14534524','없음','defalult.png',0,0,6,4),(24,'모닝빵 사자',2000,2,4,'2020-08-21 03:58:54','2020-08-21 07:00:00','서울 종로구 어딘가','1','없음','defalult.png',0,0,6,3),(25,'앙버터 사자',2000,2,4,'2020-08-21 04:00:03','2020-08-27 07:00:00','종로구 어딘가','1','1','defalult.png',1,0,6,6),(26,'오늘 점심 뭐먹지?',8000,5,10,'2020-08-21 04:03:09','2020-08-24 09:30:00','종로구','종각역','인생 최대 고민인 오점뭐 해결해주실 분 급구!','defalult.png',0,2,6,1),(27,'사과 10개 나눠사기! 님만오면 ㄱ',2000,5,10,'2020-08-21 04:07:42','2020-08-22 08:10:00','하나로마트','평택역','사과 10개 5명이서 2개씩 나눠요!! 안오면 지상렬','defalult.png',0,0,0,1),(28,'맛있는 간고등어 사세요',12000,3,6,'2020-08-21 05:17:52','2020-08-28 09:30:00','서울 종로구 어딘가','1','간이 적절','17915216601634_고등어이미지.jpg',0,0,2,9),(29,'달달한 복숭아 사실 분~',5000,3,6,'2020-08-21 05:25:56','2020-08-25 09:30:00','종로구 어딘가','1','없음','18398935358835_복숭아.jpg',0,0,0,9),(30,'달달한 복숭아 사실 분~2',5000,3,6,'2020-08-21 05:26:48','2020-08-25 09:30:00','종로구 어딘가','1','없음','18450995553664_복숭아.jpg',0,0,0,9),(31,'휴지 나눠사실분 모이세요',5000,3,6,'2020-08-21 06:43:18','2020-08-26 10:00:00','서울 종로구 종로3가 42','1','1','23041208815815_휴지이미지.jpg',1,1,4,9),(32,'기도합시다',5000,10,20,'2020-08-21 08:07:46','2020-08-26 22:11:00','이마트 지하주차장','E번 기둥','모여서 기도해여','3127234733223116_같이_가치.png',0,0,6,1),(33,'하이',2222,22,44,'2020-08-21 08:11:42','2020-08-19 22:16:00','가까움','어딘가','제곧내','3127470737501293_같이_가치.png',0,0,6,1),(34,'기도합시다',2222,22,44,'2020-08-21 08:13:24','2020-08-21 20:17:00','인천 남동구 문화로133번길 47','ㅇㅋ','하나님부처님예수님알라신님','3127572821126709_같이_가치.png',0,0,6,1),(35,'오늘 저녁 뭐먹지?',50000,6,12,'2020-08-21 08:17:33','2020-08-22 21:21:00','사랑제일교회','HELL','하나님부처님예수님알라신님','3127822287843328_같이_가치.png',1,0,6,1),(36,'오늘 저녁 뭐먹지?',50000,6,12,'2020-08-21 08:17:41','2020-08-22 21:21:00','사랑제일교회','HELL','하나님부처님예수님알라신님','3127830338745417_같이_가치.png',0,0,6,1),(37,'기도합시다',1111,111,222,'2020-08-21 08:19:31','2020-08-20 21:23:00','사랑제일교회','HELL','하나님부처님예수님알라신님','defalult.png',0,0,6,1),(38,'코로나 바이러스 주거',500000000,20,40,'2020-08-21 08:25:13','2020-08-27 22:29:00','사랑제일교회','지옥','제곧내','defalult.png',0,0,6,1),(39,'코로나 바이러스 나눔합니다',1111,10,20,'2020-08-21 08:29:43','2020-08-27 22:34:00','사랑제일교회','ㅇㅋ','하나님부처님예수님알라신님','defalult.png',0,2,6,1),(40,'커피콩 나눠요',5000,3,6,'2020-08-23 10:13:04','2020-08-27 09:00:00','서울시 중구 어딘가','11','얼른모여랏','511192424817400_커피콩이미지.jpg',1,0,6,9),(41,'휴지살지안살지',3000,3,6,'2020-08-23 10:30:37','2020-08-26 22:30:00','서울시 중구 어딘가','11','엄서용','512245553131100_휴지이미지.jpg',1,0,4,1);
INSERT INTO `wifi`.`order` VALUES (5,0,7,5,'2020-08-18 11:37:53'),(6,0,8,5,'2020-08-18 11:37:53'),(10,0,7,2,'2020-08-19 03:34:47'),(18,0,1,11,'2020-08-21 01:28:30'),(19,0,1,5,'2020-08-21 02:51:33');

