create database exerciseDb
on primary(name='Customer_Db',FIlename='F:\SQL\Day1\Exersise.mdf',
size=24MB,Maxsize=48MB,filegrowh=8MB)
log on (name='Customer_Db_log',filename='F:\SQL\Day1\Exersise.ldf')
COLLATE SQL_Latin1_General_CP1_CI_AS
use OurExerciseDb

Create table product
(PID int primary key,
Pname nvarchar(50) not null,
PPrice float check(PPrice>50 and PPrice<=100000),
PCompany nvarchar(50) check(PCompany in ('Samsung','apple','redmi','Htc')),
PQty int DEFAULT 1 check (PQty>-1)
)
insert into product values(11,'zoro',50000,'apple',2);
insert into product values(13,'luffy',7000,'samsung',4);
insert into product values(15,'shanks',30000,'redmi',2);
select * from Product


