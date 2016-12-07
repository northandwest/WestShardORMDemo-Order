CREATE TABLE `sequence_value` (
	`name` VARCHAR(50) NOT NULL COMMENT '序列名',
	`id` INT(11) NOT NULL COMMENT '当前id值',
	PRIMARY KEY (`name`)
)
COMMENT='序列表'
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;
