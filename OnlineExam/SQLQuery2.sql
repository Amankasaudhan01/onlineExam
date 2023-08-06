create database onlineExam

select *from sys.tables

-- table for student details
create table userinfo(userid int primary key identity(101,1),uname varchar(20) not null,
pwd varchar(20) not null,email varchar(20) not null, class varchar(20),address varchar(20), phone varchar(10),
bloodgrp varchar(3),fname varchar(20));

-- insert in student table
insert into userinfo values('Aman','aman007','aman@gmail.com','11','Gurugram','8853687878','O+','Aman');
select * from userinfo;

--table for mcqdetails
create table mcqdetails(qno int primary key identity(1,1),ques varchar(100) not null,op1 varchar(50)not null,
op2 varchar(50)not null,op3 varchar(50)not null,op4 varchar(50)not null,ans varchar(100)not null,
qtag varchar(50) not null);

select * from mcqdetails;
select *from mcqdetails
delete from mcqdetails where qno=1
select *from userinfo
delete from mcqdetails where qno=2
sp_help 'onlineExam.mcqdetails'

select *from userinfo
select *from mcqdetails

exec sp_help 'userinfo'

delete from mcqdetails where qno=8


