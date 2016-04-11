创建用户表
create table user(
id int not null primary key auto_increment,
username varchar(50) not null,
password varchar(50) not null,
role varchar(50) not null

);
insert into user values(null,'admin','admin','A');
CREATE TABLE IF NOT EXISTS `aqi` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `aqi` int(11) DEFAULT NULL,
  `so2` float DEFAULT NULL,
  `no2` float DEFAULT NULL,
  `pm10` int(11) DEFAULT NULL,
  `co` float DEFAULT NULL,
  `o3` int(11) DEFAULT NULL,
  `o3_8h` int(11) DEFAULT NULL,
  `pm2_5` int(11) DEFAULT NULL,
  `primary_pollutant` varchar(50) DEFAULT NULL,
  `quality` varchar(50) DEFAULT NULL,
  `station_code` varchar(50) DEFAULT NULL,
  time_point varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `station_code` (`station_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1137 ;


CREATE TABLE IF NOT EXISTS `city` (
  `area` varchar(50) NOT NULL,
  PRIMARY KEY (`area`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


