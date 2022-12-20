create table userInfo(userid varchar(20),passId varchar(20));
select * from userInfo
insert into userInfo values('ram@1999','ram@123'),('user1999','id.1999');
create table cmsLoginId(userid varchar(20),username varchar(20),passId varchar(20),role varchar(20));
select * from cmsLoginId;
insert into cmsLoginId values('ram@1999','ram','ram@123','user'),
							('narveen@2000','narveen','naveen@123','admin');
create table pages(pageid varchar(20),pagename varchar(20),pagedescs varchar(200));
insert into pages values('#1','firstpage','welcome to the 1st page of this program');
select * from pages;
 select role from cmsLoginId;
 insert into pages values('#2','secondpage','welcome to the 2nd page of this program');