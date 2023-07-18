create database quan_ly_ban_hang;
use quan_ly_ban_hang;
create table customer(
c_id int primary key auto_increment,
c_name varchar(50),
c_age date);
create table orderof(
o_id int primary key auto_increment,
c_id int NOT NULL auto_increment,
o_date date,
o_total_price float,
 foreign key (c_id) references customer(c_id)
);
create table product(
p_id int primary key auto_increment,
p_name varchar(255),
p_price float);
create table order_detail(
o_id int primary key auto_increment,
p_id int primary key auto_increment,
od_qty varchar(255),
primary key(o_id,p_id),
foreign key (o_id) references orderof(o_id),
foreign key (p_id) references product(p_id)
);