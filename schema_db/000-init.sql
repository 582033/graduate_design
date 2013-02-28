charset utf8;

CREATE TABLE `schema_version` (
	  `when` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	  `key` varchar(128) NOT NULL,
	  `extra` varchar(128) DEFAULT NULL,
	  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `user` (
	 `id` int(11) NOT NULL AUTO_INCREMENT,
	 `username` varchar(12) NOT NULL COMMENT '后台用户名',
  	 `passwd` varchar(60) NOT NULL COMMENT '后台用户密码',
 	 `status` varchar(120) DEFAULT 1 COMMENT '用户状态;0禁用,1启用',
 	 PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
