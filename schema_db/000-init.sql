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
 	 `status` tinyint(4) DEFAULT 1 COMMENT '用户状态;0禁用,1启用',
 	 PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `pictures` (
	`id` mediumint(9) NOT NULL AUTO_INCREMENT,
	`img_url` varchar(128) DEFAULT NULL,
	`topic_id` mediumint(9) NOT NULL COMMENT '所属专辑id',
	`status` tinyint(4) DEFAULT 1 COMMENT '图片是否可见',
	PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `topics` (
	`topic_id` mediumint(9) NOT NULL AUTO_INCREMENT,
	`category_id` mediumint(9) NOT NULL COMMENT '图片类别的id',
	`cover` mediumint(9) NOT NULL COMMENT '封面,对应pictures的ID',
	`name` varchar(128) DEFAULT NULL,
	`intro` text,
	`status` tinyint(4) DEFAULT 1 COMMENT '是否显示此专题',
	`created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (`topic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `category` (
	`category_id` mediumint(9) NOT NULL AUTO_INCREMENT,
	`category_name` varchar(128) DEFAULT NULL COMMENT '类别名称',
	PRIMARY KEY (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
