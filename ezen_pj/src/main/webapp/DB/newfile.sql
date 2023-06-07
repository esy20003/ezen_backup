select * from ADDRESS;
select * from admin;
select * from cart;
select * from contentTime;
select * from ORDER_DETAIL;
select * from CONTENT;
select * from GRADE;
select * from ORDERS;
select * from QNA_BOARD;
select * from REVIEW_BOARD;
select * from success_board;
select * from SEAT;
select * from MEMBER;
select*from registerTime;
select*from locationNum;

select* from content_loc_seat_view order by locationNum;
select*from content_time_view order by cseq;
select * from member_grade_view;
select * from cart_total_view;
select*from order_view order by oseq;

/* Drop Tables */

DROP TABLE address CASCADE CONSTRAINTS;
DROP TABLE admin CASCADE CONSTRAINTS;
DROP TABLE cart CASCADE CONSTRAINTS;
DROP TABLE order_detail CASCADE CONSTRAINTS;
DROP TABLE contentTime CASCADE CONSTRAINTS;
DROP TABLE content CASCADE CONSTRAINTS;
DROP TABLE grade CASCADE CONSTRAINTS;
DROP TABLE seat CASCADE CONSTRAINTS;
DROP TABLE locationNum CASCADE CONSTRAINTS;
DROP TABLE orders CASCADE CONSTRAINTS;
DROP TABLE qna_board CASCADE CONSTRAINTS;
DROP TABLE review_board CASCADE CONSTRAINTS;
DROP TABLE success_board CASCADE CONSTRAINTS;
DROP TABLE member CASCADE CONSTRAINTS;
DROP TABLE registerTime CASCADE CONSTRAINTS;



/* Drop Sequences */

DROP SEQUENCE content_cseq;
DROP SEQUENCE locationNum_locationNum;
DROP SEQUENCE member_mseq;
DROP SEQUENCE orders_oseq;
DROP SEQUENCE order_detail_odseq;
DROP SEQUENCE qna_board_qseq;
DROP SEQUENCE qna_board_sucseq;
DROP SEQUENCE review_board_rseq;
DROP SEQUENCE seat_seatseq;
DROP SEQUENCE success_board_sucseq;
drop SEQUENCE registerTime_rtseq;

----------------새로추가
drop SEQUENCE review_reply_repseq;
drop SEQUENCE success_reply_srseq;
drop SEQUENCE adminQna_reply_qrseq;
drop SEQUENCE cart_cartseq;
----------------------


/* Create Sequences */

CREATE SEQUENCE content_cseq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE member_mseq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE orders_oseq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE order_detail_odseq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE qna_board_qseq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE review_board_rseq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE success_board_sucseq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE locationNum_seq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE registerTime_rtseq INCREMENT BY 1 START WITH 1;

--------------------새로추가
CREATE SEQUENCE review_reply_repseq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE success_reply_srseq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE adminQna_reply_qrseq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE cart_cartseq INCREMENT BY 1 START WITH 1;
-------------------------------


/* Create Tables */


-----------------------------------새로추가

CREATE TABLE review_reply
(
--리뷰 댓글
	repseq number(5,0) not null,
	mseq number(5,0) NOT NULL,
	rseq number(5,0) not null,
	replyContent varchar2(3000) NOT NULL,
	writeDate date default sysdate,
	primary key(repseq)
);

CREATE TABLE success_reply
(
--성공내역 댓글
	srseq number(5,0) not null,
	mseq number(5,0) NOT NULL,
	sucseq number(5,0) not null,
	successContent varchar2(3000) NOT NULL,
	writeDate date default sysdate,
	primary key(srseq)
);

CREATE TABLE adminQna_reply
(
--어드민 qna 댓글
	qrseq number(5,0) not null,
	id varchar2(50) NOT NULL,
	qseq number(5,0) not null,
	qnaContent varchar2(3000) NOT NULL,
	writeDate date default sysdate,
	primary key(qrseq)
);


--------------------------------------------------------------------------


CREATE TABLE registerTime
(
	-- 대리인 일정 등록 정보
	rtseq number(5) not null,
	mseq number(5,0) NOT NULL,
	registerDate varchar2(100) default '00000000',
	startTime varchar2(100) NOT NULL,
	endTime varchar2(100) NOT NULL,
	primary key(rtseq,mseq,registerDate,startTime,endTime)
);
--전체를 pk로 줘서 한 사람이 시간 중복 등록 못하게 막음

CREATE TABLE address
(
	-- 우편번호
	zip_num varchar2(10) NOT NULL,
	sido varchar2(100) NOT NULL,
	gugun varchar2(100) NOT NULL,
	dong varchar2(100),
	bunji varchar2(100),
	zip_code varchar2(100)
);


CREATE TABLE admin
(
	id varchar2(50) NOT NULL,
	pwd varchar2(30) NOT NULL,
	name varchar2(50) NOT NULL,
	phone varchar2(20) NOT NULL,
	email varchar2(50),
	adminyn char DEFAULT 'Y',
	PRIMARY KEY (id)
);


CREATE TABLE cart
(
	cartseq number(5,0) NOT NULL,
	mseq number(5,0) NOT NULL,
	cseq number(10,0) NOT NULL,
	contentDate date NOT NULL,
	contentTime varchar2(10) NOT NULL,
	locationNum number(5) NOT NULL,
	area varchar2(50) NOT NULL,
	mseq2 number(5,0) default 0,
	quantity number(5,0) default 1,
	indate date DEFAULT sysdate,
	buyyn char DEFAULT 'N',
	PRIMARY KEY (cartseq, mseq, cseq, contentDate, contentTime, locationNum, area, mseq2)
);


CREATE TABLE content
(
	cseq number(10,0) NOT NULL,
	title varchar2(100) NOT NULL,
	locationNum number(5) NOT NULL,
	artist varchar2(100) NOT NULL,
	image varchar2(1000) DEFAULT 'images/content/blankIMG.jpg',
	content varchar2(3000) NOT NULL,
	category number(2,0) NOT NULL,
	age varchar2(20) DEFAULT '전체관람가',
	tDateTime varchar2(100) default '0',
	bestyn char(1) DEFAULT 'N',
	PRIMARY KEY (cseq)
);


CREATE TABLE contentTime
(
	cseq number(10,0) NOT NULL,
	contentDate date NOT NULL,
	contentTime varchar2(50) NOT NULL,
	PRIMARY KEY (cseq, contentDate, contentTime)
);


CREATE TABLE grade
(
	gseq number(1) NOT NULL,
	gname varchar2(10) DEFAULT '일반',
	gprice number(10) DEFAULT 0,
	PRIMARY KEY (gseq)
);


CREATE TABLE locationNum
(
	locationNum number(5) NOT NULL,
	locationName varchar2(50) NOT NULL UNIQUE,
	areaImage varchar2(1000) default 'images/content/blankIMG.jpg',
	PRIMARY KEY (locationNum)
);


CREATE TABLE member
(
	mseq number(5,0) NOT NULL,
	id varchar2(50) NOT NULL,
	pwd varchar2(20) NOT NULL,
	name varchar2(50) NOT NULL,
	nickname varchar2(50) NOT NULL,
	gender number(1) DEFAULT 0,
	email varchar2(50) NOT NULL,
	phone varchar2(20) NOT NULL,
	birth date NOT NULL,
	zip_num varchar2(10) NOT NULL,
	address1 varchar2(100) NOT NULL,
	address2 varchar2(100) NOT NULL,
	grade number(1) DEFAULT 0,
	success number(5,0) DEFAULT 0,
	indate date DEFAULT sysdate,
	useyn char(1) DEFAULT 'Y',
	PRIMARY KEY (mseq)
);


CREATE TABLE orders
(
	oseq number(5,0) NOT NULL,
	indate date DEFAULT sysdate,
	mseq number(5,0) NOT NULL,
	cseq number(5,0) not null,
	PRIMARY KEY (oseq)
);


CREATE TABLE order_detail
(
	odseq number(5,0) NOT NULL,
	oseq number(5,0) NOT NULL,
	mseq number(5,0) NOT NULL,
	cseq number(10,0) NOT NULL,
	locationNum number(5) NOT NULL,
	contentDate date NOT NULL,
	contentTime varchar2(10) NOT NULL,
	area varchar2(100) NOT NULL,
	-- 매칭된 대리인 회원번호
	mseq2 number(5) NOT NULL,
	quantity number(5,0) DEFAULT 1,
	-- 티켓팅 결과-티켓팅 했으면(성공했으면) Y
	-- 티켓팅 날짜 전이면 N
	-- 티켓팅을 했지만 대리인이 성공하지 못했다면 F(이건 사용자에게 환불해줘야하는 결과)
	result char DEFAULT 'N',
	indate date DEFAULT sysdate NOT NULL,
	PRIMARY KEY (odseq)
);


CREATE TABLE qna_board
(
	qseq number(5,0) NOT NULL,
	mseq number(5,0) NOT NULL,
	id varchar2(50) NOT NULL,
	pwd varchar2(30) NOT NULL,
	title varchar2(200) NOT NULL,
	indate date DEFAULT sysdate,
	content varchar2(3000) NOT NULL,
	reply varchar2(1000),
	repyn char(1) DEFAULT 'N',
	image varchar2(1000),
	readCount number(5) default 0,
	PRIMARY KEY (qseq)
);


CREATE TABLE review_board
(
	rseq number(5) NOT NULL,
	mseq number(5,0) NOT NULL,
	id varchar2(50) NOT NULL,
	pwd varchar2(30) NOT NULL,
	title varchar2(200) NOT NULL,
	indate date DEFAULT sysdate,
	content varchar2(3000) NOT NULL,
	reply varchar2(1000),
	repyn char(1) DEFAULT 'N',
	image varchar2(1000),
	PRIMARY KEY (rseq)
);


CREATE TABLE seat
(
	locationNum number(5) NOT NULL,
	area varchar2(50) NOT NULL,
	price number(10,0),
	PRIMARY KEY (locationNum, area)
);


CREATE TABLE success_board
(
	sucseq number(5) NOT NULL,
	mseq number(5,0) NOT NULL,
	id varchar2(50) NOT NULL,
	pwd varchar2(30) NOT NULL,
	title varchar2(200) NOT NULL,
	indate date DEFAULT sysdate,
	content varchar2(3000) NOT NULL,
	reply varchar2(1000),
	repyn char(1) DEFAULT 'N',
	image varchar2(1000),
	PRIMARY KEY (sucseq)
);



/* Create Foreign Keys */

-------새로 추가
ALTER TABLE review_reply
	ADD FOREIGN KEY (rseq)
	REFERENCES review_board (rseq) on delete cascade;
	
ALTER TABLE review_reply
	ADD FOREIGN KEY (mseq)
	REFERENCES member (mseq) on delete cascade;
	
ALTER TABLE success_reply
	ADD FOREIGN KEY (sucseq)
	REFERENCES success_board (sucseq) on delete cascade;
	
ALTER TABLE success_reply
	ADD FOREIGN KEY (mseq)
	REFERENCES member (mseq) on delete cascade;
	
ALTER TABLE adminQna_reply
	ADD FOREIGN KEY (id)
	REFERENCES admin (id) on delete cascade;
	
ALTER TABLE adminQna_reply
	ADD FOREIGN KEY (qseq)
	REFERENCES qna_board (qseq) on delete cascade;
	
ALTER TABLE orders
	ADD FOREIGN KEY (cseq)
	REFERENCES content (cseq) on delete cascade;
	
	-----------
	
	
	
ALTER TABLE registerTime
	ADD FOREIGN KEY (mseq)
	REFERENCES member (mseq) on delete cascade
;

ALTER TABLE contentTime
	ADD FOREIGN KEY (cseq)
	REFERENCES content (cseq) on delete cascade
;


ALTER TABLE cart
	ADD FOREIGN KEY (cseq, contentDate, contentTime)
	REFERENCES contentTime (cseq, contentDate, contentTime) on delete cascade
;


ALTER TABLE order_detail
	ADD FOREIGN KEY (cseq, contentDate, contentTime)
	REFERENCES contentTime (cseq, contentDate, contentTime) on delete cascade
;


ALTER TABLE content
	ADD FOREIGN KEY (locationNum)
	REFERENCES locationNum (locationNum) on delete cascade
;


ALTER TABLE seat
	ADD FOREIGN KEY (locationNum)
	REFERENCES locationNum (locationNum) on delete cascade
;


ALTER TABLE cart
	ADD FOREIGN KEY (mseq)
	REFERENCES member (mseq) on delete cascade
;


ALTER TABLE orders
	ADD FOREIGN KEY (mseq)
	REFERENCES member (mseq) on delete cascade
;


ALTER TABLE order_detail
	ADD FOREIGN KEY (mseq)
	REFERENCES member (mseq) on delete cascade
;


ALTER TABLE qna_board
	ADD FOREIGN KEY (mseq)
	REFERENCES member (mseq) on delete cascade
;


ALTER TABLE review_board
	ADD FOREIGN KEY (mseq)
	REFERENCES member (mseq) on delete cascade
;


ALTER TABLE success_board
	ADD FOREIGN KEY (mseq)
	REFERENCES member (mseq) on delete cascade
;


ALTER TABLE order_detail
	ADD FOREIGN KEY (oseq)
	REFERENCES orders (oseq) on delete cascade
;


ALTER TABLE cart
	ADD FOREIGN KEY (locationNum, area)
	REFERENCES seat (locationNum, area) on delete cascade
;


ALTER TABLE order_detail
	ADD FOREIGN KEY (locationNum, area)
	REFERENCES seat (locationNum, area) on delete cascade
;





