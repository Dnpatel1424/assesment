create database bank_db;
use bank_db;

create table bank
(
branch_id int auto_increment primary key,
branch_name varchar(20),
branch_city varchar(20)
);

create table account_holder
(
acc_holder_id int auto_increment primary key,
account_no int ,
acc_holder_name varchar(40),
city varchar(20),
contact varchar(10),
date_created timestamp,
account_status boolean,
account_type varchar(20),
balance bigint
);

truncate table bank;

create table loan
(
loan_no int auto_increment primary key,
branch_id int,
acc_holder_id int,
loan_amount int,
loan_type varchar(20),
foreign key(branch_id) references bank(branch_id),
foreign key(acc_holder_id) references account_holder(acc_holder_id)
);
topsst301
insert into bank(branch_name,branch_city) values ('Sarthana Branch HDFC','surat'),
('yogichowk branch HDFC','surat'),
('nikol branch kotak','ahemdabad'),
('kargam branch ICICI','surat');

insert into account_holder(account_no,acc_holder_name,city,contact,account_status,account_type,balance) 
 values (85698547,'nikunj','surat',9925875396,True,"Saving",10000),
  (85698547,'Satish','vapi',9925875396,True,"Saving",10000),
 (85698547,'Karan','Valsad',9925875396,True,"Saving",10000),
 (85698547,'Sachin','Navsari',9925875396,True,"Saving",10000);
 
 
insert into loan(branch_id,acc_holder_id,loan_amount,loan_type) 
values(1,2,54000,"Personal");


call intra_transfer1(85698547,85698548,1200);
