create database marketco

use marketco;

create table company(
companyId int primary key not  null,
companyname varchar(45),
street varchar(45),
city varchar(45),
state varchar(45),
zip varchar(10));

insert into company(companyId,companyname,street,city,state,zip) values
(1,"amazon","abc","surat","gujrat",123);

insert into company(companyId,companyname,street,city,state,zip) values
(2,"Mango","xyz","ny","us",138),
(3,"H&M","ery","bangloru","india",567),
(4,"Zara","oxford","london","UK",098),
(5,"Urban Outfitters, Inc.","regent","awe","Aus",113);


create table contact(
contactId int primary key not null,
companyId int,
Firstname varchar(45),
lastname varchar(45),
street varchar(45),
city varchar(45),
state varchar(2),
zip varchar(10),
IsMain boolean,
Email varchar(45),
Phone varchar(12));

insert into contact (contactId,companyId,Firstname,Lastname,street,city,state,zip,ISmain,Email,Phone) values
(101,1,"vidhya","Ambaliya","war","Surat","ga",123,True,"vi@gmail.com","912345568766");
insert into contact (contactId,companyId,Firstname,Lastname,street,city,state,zip,ISmain,Email,Phone) values
(102,2,"mark","Zakarburk","gun","los angeles","US",345,True,"mz@gmail.com","098765432"),
(103,3,"lesley","Bland","car","london","UK",318,True,"lb@gmail.com","44546775 77"),
(104,4,"jack","lee","vun","sedny","au",342,True,"jl@gmail.com","0987654321"),
(105,5,"tory","buch","adf","aucklend","nz",999,True,"tb@gmail.com","4123876655");


create table contactEmployee(
contactemployeeId int primary key not null,
contactId int,
employeId int,
contactDate date,
description varchar(100));

insert into contactEmployee(contactemployeeId,contactId,employeId,contactDate,description) values
(1001,101,10001,"2014-05-09","mark my word");


insert into contactEmployee(contactemployeeId,contactId,employeId,contactDate,description) values
(1002,102,10002,"2014-06-30","make a good project"),
(1003,103,10003,"2014-07-20","work like master"),
(1004,104,10004,"2014-08-23","no one can steel our skill"),
(1005,105,10005,"2014-09-12","work with paticense");


create table employee(
employeId int primary key not null,
Firstname varchar(45),
lastname varchar(45),
salary decimal(10,2),
hireDate date,
jobTitle varchar(25),
Email varchar(45),
Phone varchar(12));

insert into employee(employeId,Firstname,lastname,salary,hiredate,jobTitle,Email,Phone) values
(10001,"florentina","laser",10000,"2014-09-15","team member","fl@gmail.com",443216788),
(10002,"sedanur","haki",300000,"2014-08-30","worker","sh@gmail.com",787655677),
(10003,"pratik","thesiya",400000,"2014-08-31","employee","pt@gmail.com",73831860),
(10004,"dianne","connor",10000,"2014-09-23","team member","dc@gmail.com",987654345),
(10005,"hafsa","shahdat",20000,"2014-10-15","senior manager","hs@gmail.com",97889563);


select * from contact;

update contact
set phone="215-555-8800"
where contactId = 103;

select * from company;

update company
set companyname = "Urban Outfitters"
where companyId = 5;

