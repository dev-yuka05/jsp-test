create table reservation_tbl(
lentno varchar2(3) NOT NULL Primary Key,
custname varchar2(20),
bookno varchar2(3),
outdate date,
indate date,
status char(1)
);

insert into reservation_tbl values('1','���ѱ�','101','20221201','','1');
insert into reservation_tbl values('2','������','102','20221204','20221206','2');
insert into reservation_tbl values('3','��ҹ�','201','20221001','','1');
insert into reservation_tbl values('4','�ּҸ�','103','20221109','','1');
insert into reservation_tbl values('5','�̵���','301','20221224','20221225','2');
insert into reservation_tbl values('6','�̼Ҷ�','105','20221208','20221211','2');

create table bookinfo_tbl (
bookno varchar2(3) NOT NULL Primary Key,
author char(20),
bookname char(20) );

insert into bookinfo_tbl values('101','���۰�','�ý��ۺм�');
insert into bookinfo_tbl values('102','���۰�','���갳��');
insert into bookinfo_tbl values('103','���۰�','�����ð���');
insert into bookinfo_tbl values('105','Ȳ�۰�','��ȸ��');
insert into bookinfo_tbl values('201','���۰�','������');
insert into bookinfo_tbl values('301','���۰�','���꿵��');


---

SELECT * from reservation_tbl A, bookinfo_tbl B WHERE A.bookno = B.bookno;







