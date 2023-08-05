create database onlineExam
use onlineExam;

-- table for student details
create table userinfo(userid int primary key identity(101,1),uname varchar(50) not null,
pwd varchar(50) not null,email varchar(50) not null, class varchar(20),address varchar(50), phone varchar(50),
bloodgrp varchar(10),fname varchar(50));

-- insert in student table
insert into userinfo values('Ankit','ankit101','Ankit101@gmail.com','12','Delhi','9899242702','A+','Mahesh');
alter table userinfo drop column marks;
select * from userinfo;

--table for mcqdetails
create table mcqdetails(qno int primary key identity(1,1),ques varchar(100) not null,op1 varchar(50)not null,
op2 varchar(50)not null,op3 varchar(50)not null,op4 varchar(50)not null,ans varchar(100)not null,
qtag varchar(50) not null);

select * from mcqdetails;



