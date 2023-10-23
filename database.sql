create table reservation_tbl(
lentno varchar2(3) NOT NULL Primary Key,
custname varchar2(20),
bookno varchar2(3),
outdate date,
indate date,
status char(1)
);

insert into reservation_tbl values('1','김한국','101','20221201','','1');
insert into reservation_tbl values('2','진선미','102','20221204','20221206','2');
insert into reservation_tbl values('3','장소미','201','20221001','','1');
insert into reservation_tbl values('4','최소망','103','20221109','','1');
insert into reservation_tbl values('5','이동국','301','20221224','20221225','2');
insert into reservation_tbl values('6','이소라','105','20221208','20221211','2');

create table bookinfo_tbl (
bookno varchar2(3) NOT NULL Primary Key,
author char(20),
bookname char(20) );

insert into bookinfo_tbl values('101','박작가','시스템분석');
insert into bookinfo_tbl values('102','김작가','전산개론');
insert into bookinfo_tbl values('103','이작가','마케팅개론');
insert into bookinfo_tbl values('105','황작가','사회학');
insert into bookinfo_tbl values('201','최작가','역사학');
insert into bookinfo_tbl values('301','오작가','전산영어');


---

SELECT * from reservation_tbl A, bookinfo_tbl B WHERE A.bookno = B.bookno;







