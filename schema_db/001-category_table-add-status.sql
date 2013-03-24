insert into schema_version(`key`, `extra`) values ('001', 'category table add status field');
alter table category add status tinyint(4) DEFAULT '1' COMMENT '类别状态;0禁用,1启用';
