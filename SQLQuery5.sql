Create table tbInsertMobile
(
MobileID Bigint not null primary key IDENTITY(1,1),
MobileName Nvarchar(100),
MobileIMEno Nvarchar(50),
mobileprice numeric(19,2),
mobileManufacured Nvarchar(100),
CreatedDate datetime default Getdate()
)
select * from tbInsertMobile

create table stu_record(id int primary key identity(1,1) ,
 fname varchar(100),
  lname varchar(100),
   course varchar(100), 
   fees int, doj datetime
   )
select * from stu_record
DROP table  Table_2