CREATE DATABASE quan_ly_ban_hang;
USE quan_ly_ban_hang;
CREATE TABLE customer(
c_id INT PRIMARY KEY AUTO_INCREMENT,
c_name VARCHAR(50),
c_age TINYINT
);
CREATE TABLE orderof(
o_id INT PRIMARY KEY AUTO_INCREMENT,
c_id INT,
o_date DATETIME,
o_total_price FLOAT,
 FOREIGN KEY (c_id) REFERENCES customer(c_id)
);
CREATE TABLE product(
p_id INT PRIMARY KEY AUTO_INCREMENT,
p_name VARCHAR(255),
p_price INT);
CREATE TABLE order_detail(
o_id INT DEFAULT 0 ,
p_id INT DEFAULT 0 ,
od_qty INT,
PRIMARY KEY(o_id,p_id),
FOREIGN KEY (o_id) REFERENCES orderof(o_id),
FOREIGN KEY (p_id) REFERENCES product(p_id)
);
INSERT INTO customer (c_name,c_age)
VALUES ("Minh Quan",10),
       ("Ngoc Oanh",20),
       ("Hong Ha",50);
INSERT INTO orderof(o_date,o_total_price)
VALUES ('2006-3-21',Null),
       ('2006-3-23',Null),
       ('2006-3-16',Null);
INSERT INTO product(p_name,p_price)
VALUES ("May Giat",3),
       ("Tu Lanh",5),
       ("Dieu Hoa",7),
       ("Quat",1),
       ("Bep Dien",2);
INSERT INTO order_detail(od_qty)
VALUES (3),
       (7),
	   (2),
	   (1),
	   (8),
	   (4),
	   (3);
       
       
       
       