
drop table student;
update member set pass = '1';
create sequence seq start with 1000;
create table board(
   seq number(4) primary key,	
   title varchar2(20),
   content varchar2(100),
   regdate date,
   id varchar2(20)
);



alter table member
rename column m_reg_date
to regdate;
select * from board;


