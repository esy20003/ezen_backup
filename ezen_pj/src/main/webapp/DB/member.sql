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

ALTER TABLE member ADD gender number(1) default 0 not null;
select * from user_sequences;

DROP SEQUENCE member_mseq;


DROP SEQUENCE cart_seq;
DROP SEQUENCE orders_seq;
DROP SEQUENCE order_detail_seq;
DROP SEQUENCE product_seq;
DROP SEQUENCE qna_seq;
DROP SEQUENCE qna_board_seq;

delete from MEMBER;

insert into MEMBER(mseq,id,pwd, name,gender,nickname,email,phone,zip_num, address1, address2,grade, success) 
values (member_mseq.nextval,'dsan','1234','김두산',2,'최강두산','dsan82@gmail.com','010-8282-8282',
'133-110', '서울시 성동구 성수동1가' , '1번지21호','1',1);
insert into MEMBER(mseq,id,pwd, name,gender,nickname,email,phone,zip_num, address1, address2,grade, success) 
values (member_mseq.nextVal,'bts2','1234','김민정',1,'뷔이이','vtan@gmail.com','010-1111-1111',
'135-927', '서울 강남구 역삼2동','1번지21호','1',0);
insert into MEMBER(mseq,id,pwd, name,gender,nickname,email,phone,zip_num, address1, address2,grade, success) 
values (member_mseq.nextVal,'gangji','1234','박창완',1,'강쥐','doggie@gmail.com','010-2222-2222',
'135-928', '서울 강남구 역삼2동','1번지21호','1',10);
insert into MEMBER(mseq,id,pwd, name,gender,nickname,email,phone,zip_num, address1, address2,grade, success) 
values (member_mseq.nextVal,'jrong','1234','이재롱',2,'재롱이','jrong@gmail.com','010-3333-3333',
'135-949', '서울 강남구 청담2동','1번지21호','1',18);
insert into MEMBER(mseq,id,pwd, name,gender,nickname,email,phone,zip_num, address1, address2,grade, success) 
values (member_mseq.nextVal,'kinder','1234','정해솔',1,'킨더','kinder@gmail.com','010-4444-4444',
'402-831', '인천 남구 용현3동','1번지21호','1',0);
insert into MEMBER(mseq,id,pwd, name,gender,nickname,email,phone,zip_num, address1, address2,grade, success) 
values (member_mseq.nextVal,'babo','1234','김두기',1,'밥','babo@gmail.com','010-5555-5555',
'402-807', '인천 남구 도화3동','1번지21호','1',3);
insert into MEMBER(mseq,id,pwd, name,gender,nickname,email,phone,zip_num, address1, address2,grade, success) 
values (member_mseq.nextVal,'gildong','1234','홍길동',1,'길도이','gildong@gmail.com','010-6666-6666',
'614-852', '부산 진구 양정2동','1번지21호','1',0);
insert into MEMBER(mseq,id,pwd, name,gender,nickname,email,phone,zip_num, address1, address2,grade, success) 
values (member_mseq.nextVal,'work','1234','박휘민',2,'직장인','worker@gmail.com','010-7777-7777',
'431-710', '경기 안양시 동안구 귀인동', '꿈마을한신아파트','1',2);
insert into MEMBER(mseq,id,pwd, name,gender,nickname,email,phone,zip_num, address1, address2,grade, success) 
values (member_mseq.nextVal,'sleep','1234','김진원',1,'졸림','sleeeepy@gmail.com','010-7777-7777',
'431-802', '경기 안양시 동안구 귀인동','1번지21호','1',2);
insert into MEMBER(mseq,id,pwd, name,gender,nickname,email,phone,zip_num, address1, address2,grade, success) 
values (member_mseq.nextVal,'java','1234','정철원',1,'javababo','javababo@gmail.com','010-7777-7777',
'472-865', '경기 남양주시 진접읍 장현3리','1번지21호','1',2);
insert into MEMBER(mseq,id,pwd, name,gender,nickname,email,phone,zip_num, address1, address2,grade, success) 
values (member_mseq.nextVal,'nomoney','1234','정수빈',2,'gimmemoney','money@gmail.com','010-7777-7777',
'269-823', '강원 철원군 철원읍 화지8리','1번지21호','1',2);