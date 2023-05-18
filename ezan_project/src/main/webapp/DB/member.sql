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

alter table CONTENT add age number(5) not null default '0'; --ORA-30649: missing DIRECTORY keyword 오류

insert into MEMBER(mseq,id,pwd, name,nickname,email,phone,zip_num, address1, address2,grade, success) 
values (member_mseq.nextVal,'dsan','1234','김두산','최강두산','dsan82@gmail.com','010-8282-8282',
'133-110', '서울시 성동구 성수동1가' , '1번지21호','1',1);
insert into MEMBER(mseq,id,pwd, name,nickname,email,phone,zip_num, address1, address2,grade, success) 
values (member_mseq.nextVal,'bts2','1234','김민정','뷔이이','vtan@gmail.com','010-1111-1111',
'135-927', '서울', '강남구', '역삼2동','1',0);
insert into MEMBER(mseq,id,pwd, name,nickname,email,phone,zip_num, address1, address2,grade, success) 
values (member_mseq.nextVal,'gangji','1234','박창완','강쥐','doggie@gmail.com','010-2222-2222',
'135-928', '서울', '강남구', '역삼2동','1',10);
insert into MEMBER(mseq,id,pwd, name,nickname,email,phone,zip_num, address1, address2,grade, success) 
values (member_mseq.nextVal,'jrong','1234','이재롱','재롱이','jrong@gmail.com','010-3333-3333',
'135-949', '서울', '강남구', '청담2동','1',18);
insert into MEMBER(mseq,id,pwd, name,nickname,email,phone,zip_num, address1, address2,grade, success) 
values (member_mseq.nextVal,'kinder','1234','정해솔','킨더','kinder@gmail.com','010-4444-4444',
'402-831', '인천', '남구', '용현3동','1',0);
insert into MEMBER(mseq,id,pwd, name,nickname,email,phone,zip_num, address1, address2,grade, success) 
values (member_mseq.nextVal,'babo','1234','김두기','밥','babo@gmail.com','010-5555-5555',
'402-807', '인천', '남구', '도화3동','1',3);
insert into MEMBER(mseq,id,pwd, name,nickname,email,phone,zip_num, address1, address2,grade, success) 
values (member_mseq.nextVal,'gildong','1234','홍길동','길도이','gildong@gmail.com','010-6666-6666',
'614-852', '부산', '부산진구', '양정2동','1',0);
insert into MEMBER(mseq,id,pwd, name,nickname,email,phone,zip_num, address1, address2,grade, success) 
values (member_mseq.nextVal,'work','1234','박휘민','직장인','worker@gmail.com','010-7777-7777',
'431-710', '경기', '안양시 동안구', '귀인동 꿈마을한신아파트','1',2);
insert into MEMBER(mseq,id,pwd, name,nickname,email,phone,zip_num, address1, address2,grade, success) 
values (member_mseq.nextVal,'sleep','1234','김진원','졸림','sleeeepy@gmail.com','010-7777-7777',
'431-802', '경기', '안양시 동안구', '귀인동','1',2);
insert into MEMBER(mseq,id,pwd, name,nickname,email,phone,zip_num, address1, address2,grade, success) 
values (member_mseq.nextVal,'java','1234','정철원','javababo','javababo@gmail.com','010-7777-7777',
'472-865', '경기', '남양주시', '진접읍 장현3리','1',2);
insert into MEMBER(mseq,id,pwd, name,nickname,email,phone,zip_num, address1, address2,grade, success) 
values (member_mseq.nextVal,'nomoney','1234','정수빈','gimmemoney','money@gmail.com','010-7777-7777',
'269-823', '강원', '철원군', '철원읍 화지8리','1',2);