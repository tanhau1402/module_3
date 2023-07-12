CREATE DATABASE student_management;
use student_management;
CREATE TABLE class(
id int primary key auto_increment,
`name` varchar(50));
INSERT INTO Class(`name`)
VALUES ("HAU"),
       ("HAU"),
       ("HAU")
       ;
SELECT *
FROM class;
CREATE TABLE teacher (
id int primary key auto_increment,
`name` varchar(50),
age date,
country varchar(50)
);
INSERT INTO Teacher(`name`,age,country)
VALUE ("Hau","2001-02-14","Viet Nam"),
      ("Hau","2001-02-14","Viet Nam"),
      ("Hau","2001-02-14","Viet Nam");
SELECT *
FROM teacher;