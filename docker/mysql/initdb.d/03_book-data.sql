CREATE DATABASE book;
USE book;

DROP TABLE IF EXISTS product;

CREATE TABLE product (
	id INT AUTO_INCREMENT PRIMARY KEY, 
	name VARCHAR(100) NOT NULL, 
	price INT NOT NULL
);

INSERT INTO product VALUES (NULL, 'まぐろ', 100);
INSERT INTO product VALUES (NULL, 'サーモン', 100);
INSERT INTO product VALUES (NULL, 'えび', 100);
INSERT INTO product VALUES (NULL, 'いか', 100);
INSERT INTO product VALUES (NULL, 'えんがわ', 100);
INSERT INTO product VALUES (NULL, 'あなご', 100);
INSERT INTO product VALUES (NULL, 'たまご', 100);
INSERT INTO product VALUES (NULL, 'ほたて', 100);
INSERT INTO product VALUES (NULL, '赤貝', 100);
INSERT INTO product VALUES (NULL, 'つぶ貝', 100);
INSERT INTO product VALUES (NULL, 'サラダ軍艦', 150);
INSERT INTO product VALUES (NULL, 'ねぎとろ軍艦', 150);
INSERT INTO product VALUES (NULL, 'ねぎとろ巻', 150);
INSERT INTO product VALUES (NULL, 'アボガド巻', 150);
INSERT INTO product VALUES (NULL, 'トロ', 200);
INSERT INTO product VALUES (NULL, 'いくら', 200);
INSERT INTO product VALUES (NULL, 'うに', 200);

drop TABLE IF EXISTS customer;

CREATE TABLE customer (
	id INT AUTO_INCREMENT PRIMARY KEY, 
	login VARCHAR(100) NOT NULL UNIQUE, 
	password VARCHAR(100) NOT NULL
);

INSERT INTO customer VALUES (NULL, 'ayukawa', 'SweetfishRiver1');
INSERT INTO customer VALUES (NULL, 'samejima', 'SharkIsland2');
INSERT INTO customer VALUES (NULL, 'wanibuchi', 'CrocodileChasm3');
INSERT INTO customer VALUES (NULL, 'ebihara', 'ShrimpField4');
INSERT INTO customer VALUES (NULL, 'kanie', 'CrubBay5');

drop TABLE IF EXISTS purchase;

CREATE TABLE purchase (
	id INT auto_increment primary key, 
	product_id INT NOT NULL, 
	product_name VARCHAR(100) NOT NULL, 
	product_price INT NOT NULL, 
	product_count INT NOT NULL, 
	customer_name VARCHAR(100) NOT NULL, 
	customer_address VARCHAR(100) NOT NULL
);
