select * from address;
select * from admin;
select * from cart;
select * from order_detail;
select * from content;
select * from grade;
select * from orders;
select * from qna_board;
select * from review_board;
select * from success_board;
select * from member;

insert into MEMBER(mseq,id,pwd, name,nickname,email,phone,zip_num, address1, address2,grade, success) 
values (member_mseq.nextVal,'dsan','1234','최강두산','dsan82@gmail.com','010-8282-8282',
'133-110', '서울시 성동구 성수동1가' , '1번지21호','1',1);
insert into MEMBER(mseq,id,pwd, name,nickname,email,phone,zip_num, address1, address2,grade, success) 
values (member_mseq.nextVal,'bts2','1234','뷔이이','vtan@gmail.com','010-1111-1111',
'133-110', '서울시 성동구 성수동1가' , '1번지21호','1',0);
insert into MEMBER(mseq,id,pwd, name,nickname,email,phone,zip_num, address1, address2,grade, success) 
values (member_mseq.nextVal,'dsan','1234','최강두산','dsan82@gmail.com','010-2222-2222',
'133-110', '서울시 성동구 성수동1가' , '1번지21호','1',10);
insert into MEMBER(mseq,id,pwd, name,nickname,email,phone,zip_num, address1, address2,grade, success) 
values (member_mseq.nextVal,'dsan','1234','최강두산','dsan82@gmail.com','010-3333-3333',
'133-110', '서울시 성동구 성수동1가' , '1번지21호','1',18);
insert into MEMBER(mseq,id,pwd, name,nickname,email,phone,zip_num, address1, address2,grade, success) 
values (member_mseq.nextVal,'dsan','1234','최강두산','dsan82@gmail.com','010-4444-4444',
'133-110', '서울시 성동구 성수동1가' , '1번지21호','1',0);
insert into MEMBER(mseq,id,pwd, name,nickname,email,phone,zip_num, address1, address2,grade, success) 
values (member_mseq.nextVal,'dsan','1234','최강두산','dsan82@gmail.com','010-5555-5555',
'133-110', '서울시 성동구 성수동1가' , '1번지21호','1',3);
insert into MEMBER(mseq,id,pwd, name,nickname,email,phone,zip_num, address1, address2,grade, success) 
values (member_mseq.nextVal,'dsan','1234','최강두산','dsan82@gmail.com','010-6666-6666',
'133-110', '서울시 성동구 성수동1가' , '1번지21호','1',0);
insert into MEMBER(mseq,id,pwd, name,nickname,email,phone,zip_num, address1, address2,grade, success) 
values (member_mseq.nextVal,'dsan','1234','최강두산','dsan82@gmail.com','010-7777-7777',
'133-110', '서울시 성동구 성수동1가' , '1번지21호','1',2);