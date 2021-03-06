CREATE TABLE `stockinfo` (
  `id` varchar(24) NOT NULL COMMENT '主键',
  `name` varchar(32) NOT NULL COMMENT '股票名称',
  `code` varchar(32) NOT NULL COMMENT '股票代码，sz：深证、sh：上证、sz3开头创业板',
  `date` varchar(32) NOT NULL COMMENT '股票信息日期',
  `time` varchar(32) DEFAULT NULL COMMENT '具体时间',
  `openningPrice` double(32,2) DEFAULT NULL COMMENT '今日开盘价',
  `closingPrice` double(32,2) DEFAULT NULL COMMENT '昨日收盘价',
  `currentPrice` double(32,2) DEFAULT NULL COMMENT '当前价格',
  `hPrice` double(32,2) DEFAULT NULL COMMENT '今日最高价',
  `lPrice` double(32,2) DEFAULT NULL COMMENT '今日最低价',
  `competitivePrice` double(32,2) DEFAULT NULL COMMENT '买一报价',
  `auctionPrice` double(32,2) DEFAULT NULL COMMENT '卖一报价',
  `totalNumber` int(32) DEFAULT NULL COMMENT '成交的股票数',
  `turnover` double(32,2) DEFAULT NULL COMMENT '成交额，以元为单位',
  `buyOne` int(32) DEFAULT NULL COMMENT '买一 ',
  `buyOnePrice` double(32,2) DEFAULT NULL COMMENT '买一价格',
  `buyTwo` int(32) DEFAULT NULL COMMENT '买二',
  `buyTwoPrice` double(32,2) DEFAULT NULL COMMENT '买二价格',
  `buyThree` int(32) DEFAULT NULL COMMENT '买三',
  `buyThreePrice` double(32,2) DEFAULT NULL COMMENT '买三价格',
  `buyFour` int(32) DEFAULT NULL COMMENT '买四',
  `buyFourPrice` double(32,2) DEFAULT NULL COMMENT '买四价格',
  `buyFive` int(32) DEFAULT NULL COMMENT '买五',
  `buyFivePrice` double(32,2) DEFAULT NULL COMMENT '买五价格',
  `sellOne` int(32) DEFAULT NULL COMMENT '卖一',
  `sellOnePrice` double(32,2) DEFAULT NULL COMMENT '卖一价格',
  `sellTwo` int(32) DEFAULT NULL COMMENT '卖二',
  `sellTwoPrice` double(32,2) DEFAULT NULL COMMENT '卖二价格',
  `sellThree` int(32) DEFAULT NULL COMMENT '卖三',
  `sellThreePrice` double(32,2) DEFAULT NULL COMMENT '卖三价格',
  `sellFour` int(32) DEFAULT NULL COMMENT '卖四',
  `sellFourPrice` double(32,2) DEFAULT NULL COMMENT '卖四价格',
  `sellFive` int(32) DEFAULT NULL COMMENT '卖五',
  `sellFivePrice` double(32,2) DEFAULT NULL COMMENT '卖五价格',
  `rate` decimal(10,4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `联合查询索引` (`date`,`openningPrice`,`closingPrice`,`currentPrice`,`hPrice`,`lPrice`,`totalNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


	
CREATE TABLE IF NOT EXISTS `stockindex`(
	id VARCHAR(24) NOT NULL PRIMARY KEY COMMENT '主键，date#name',
	date VARCHAR(12) NOT NULL COMMENT '日期',
	name VARCHAR(32) NOT NULL COMMENT '指数名称',
	curdot DOUBLE(10,4) NOT NULL COMMENT '当前指数',
	curprice DOUBLE(10,4) NOT NULL COMMENT '当前涨幅指数',
	rate DOUBLE(10,4) NOT NULL COMMENT '当前涨幅比例',
	dealnumber int(64) NOT NULL COMMENT '交易数量，单位：手（100股）',
	turnover int(64) NOT NULL COMMENT '交易金额，单位：万'
	) ENGINE=InnoDB DEFAULT CHARSET=utf8;