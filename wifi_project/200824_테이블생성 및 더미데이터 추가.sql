CREATE TABLE `wifi.member` (
  `midx` int NOT NULL AUTO_INCREMENT,
  `id` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `addr` varchar(255) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `type` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`midx`)
);

CREATE TABLE `item` (
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
  `state` int(11) NOT NULL DEFAULT '0',
  `view_count` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `midx` int(11) NOT NULL,
  PRIMARY KEY (`iidx`),
  KEY `midx` (`midx`),
  CONSTRAINT `item_ibfk_1` FOREIGN KEY (`midx`) REFERENCES `member` (`midx`) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE `item_rvs` (
  `irsidx` int(11) NOT NULL AUTO_INCREMENT,
  `score_s` int(11) NOT NULL,
  `midx` int(11) NOT NULL,
  `iidx` int(11) NOT NULL,
  PRIMARY KEY (`irsidx`),
  KEY `midx` (`midx`),
  KEY `iidx` (`iidx`),
  CONSTRAINT `item_rvs_ibfk_1` FOREIGN KEY (`midx`) REFERENCES `member` (`midx`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `item_rvs_ibfk_2` FOREIGN KEY (`iidx`) REFERENCES `item` (`iidx`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;


CREATE TABLE `item_rvb` (
  `irbidx` int(11) NOT NULL AUTO_INCREMENT,
  `score_b` int(11) NOT NULL,
  `midx` int(11) NOT NULL,
  `iidx` int(11) NOT NULL,
  PRIMARY KEY (`irbidx`),
  KEY `midx` (`midx`),
  KEY `iidx` (`iidx`),
  CONSTRAINT `item_rvb_ibfk_1` FOREIGN KEY (`midx`) REFERENCES `member` (`midx`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `item_rvb_ibfk_2` FOREIGN KEY (`iidx`) REFERENCES `item` (`iidx`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `order` (
  `oidx` int(11) NOT NULL AUTO_INCREMENT,
  `state` int(11) NOT NULL DEFAULT '0',
  `midx` int(11) NOT NULL,
  `iidx` int(11) NOT NULL,
  `orderdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`oidx`),
  KEY `midx` (`midx`),
  KEY `iidx` (`iidx`),
  CONSTRAINT `order_ibfk_1` FOREIGN KEY (`midx`) REFERENCES `member` (`midx`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `order_ibfk_2` FOREIGN KEY (`iidx`) REFERENCES `item` (`iidx`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

CREATE TABLE `purchase` (
  `pidx` int(11) NOT NULL AUTO_INCREMENT,
  `qr` varchar(50) NOT NULL,
  `state` int(11) NOT NULL DEFAULT '0',
  `oidx` int(11) NOT NULL,
  `orderdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`pidx`),
  KEY `oidx` (`oidx`),
  CONSTRAINT `purchase_ibfk_1` FOREIGN KEY (`oidx`) REFERENCES `order` (`oidx`) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE wifi.alarm_b (
  `midx` int NOT NULL,
  `iidx` int NOT NULL,
  `state` int NOT NULL DEFAULT '0',
  FOREIGN KEY (`midx`) REFERENCES `order` (`midx`) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (`iidx`) REFERENCES `order` (`iidx`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `alarm_s` (
  `midx` int(11) NOT NULL,
  `iidx` int(11) NOT NULL,
  `state` int(11) NOT NULL DEFAULT '0',
  KEY `midx` (`midx`),
  KEY `iidx` (`iidx`),
  CONSTRAINT `alarm_s_ibfk_1` FOREIGN KEY (`midx`) REFERENCES `item` (`midx`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `alarm_s_ibfk_2` FOREIGN KEY (`iidx`) REFERENCES `item` (`iidx`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `comment` (
  `cidx` int(11) NOT NULL AUTO_INCREMENT,
  `regdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `content` varchar(50) NOT NULL,
  `state` int(11) NOT NULL DEFAULT '0',
  `midx` int(11) NOT NULL,
  `iidx` int(11) NOT NULL,
  PRIMARY KEY (`cidx`),
  KEY `midx` (`midx`),
  KEY `iidx` (`iidx`),
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`midx`) REFERENCES `member` (`midx`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`iidx`) REFERENCES `item` (`iidx`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;