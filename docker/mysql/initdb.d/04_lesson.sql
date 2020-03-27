CREATE DATABASE `lesson` DEFAULT CHARACTER SET utf8mb4;
USE `lesson`;

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
	id							BIGINT NOT NULL
	, gender					INTEGER
	, birthday					DATE			
	, state_code				CHAR(8)
	, last_login				DATE
	, create_date				TIMESTAMP	DEFAULT CURRENT_TIMESTAMP
);

DROP TABLE IF EXISTS receipt;
CREATE TABLE receipt (
	id							BIGINT NOT NULL
	, user_id					BIGINT
	, shop_name					VARCHAR(200)
	, paid_at					TIMESTAMP	DEFAULT CURRENT_TIMESTAMP
	, read_at					TIMESTAMP	DEFAULT CURRENT_TIMESTAMP
	, update_at					TIMESTAMP	DEFAULT CURRENT_TIMESTAMP
);

DROP TABLE IF EXISTS receipt_item;
CREATE TABLE receipt_item (
	id							BIGINT NOT NULL
	, user_id					BIGINT
	, receipt_id				BIGINT
	, name						VARCHAR(200)
	, price						FLOAT8
);

LOAD DATA LOCAL INFILE '/docker-entrypoint-initdb.d/user.csv' INTO TABLE lesson.`user` FIELDS TERMINATED BY ',';
LOAD DATA LOCAL INFILE '/docker-entrypoint-initdb.d/receipt.csv' INTO TABLE lesson.`receipt` FIELDS TERMINATED BY ',';
LOAD DATA LOCAL INFILE '/docker-entrypoint-initdb.d/receipt_item.csv' INTO TABLE lesson.`receipt_item` FIELDS TERMINATED BY ',';
