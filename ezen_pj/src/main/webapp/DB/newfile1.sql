
/* Drop Tables */

DROP TABLE address CASCADE CONSTRAINTS;
DROP TABLE admin CASCADE CONSTRAINTS;
DROP TABLE cart CASCADE CONSTRAINTS;
DROP TABLE contentDate CASCADE CONSTRAINTS;
DROP TABLE contentTime CASCADE CONSTRAINTS;
DROP TABLE order_detail CASCADE CONSTRAINTS;
DROP TABLE content CASCADE CONSTRAINTS;
DROP TABLE grade CASCADE CONSTRAINTS;
DROP TABLE orders CASCADE CONSTRAINTS;
DROP TABLE qna_board CASCADE CONSTRAINTS;
DROP TABLE review_board CASCADE CONSTRAINTS;
DROP TABLE success_board CASCADE CONSTRAINTS;
DROP TABLE member CASCADE CONSTRAINTS;
DROP TABLE seat CASCADE CONSTRAINTS;



/* Drop Sequences */

DROP SEQUENCE admin_aseq;
DROP SEQUENCE cart_cartseq;
DROP SEQUENCE content_cseq;
DROP SEQUENCE member_mseq;
DROP SEQUENCE orders_oseq;
DROP SEQUENCE order_detail_odseq;
DROP SEQUENCE qna_board_qseq;
DROP SEQUENCE qna_board_sucseq;
DROP SEQUENCE review_board_rseq;
DROP SEQUENCE seat_seatseq;
DROP SEQUENCE success_board_sucseq;




/* Create Sequences */

CREATE SEQUENCE admin_aseq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE cart_cartseq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE content_cseq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE member_mseq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE orders_oseq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE order_detail_odseq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE qna_board_qseq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE qna_board_sucseq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE review_board_rseq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE seat_seatseq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE success_board_sucseq INCREMENT BY 1 START WITH 1;



/* Create Tables */

CREATE TABLE address
(
	-- 우편번호
	zip_num varchar2(10) NOT NULL,
	sido varchar2(100) NOT NULL,
	gugun varchar2(100) NOT NULL,
	zip_code varchar2(100),
	dong varchar2(100),
	bunji varchar2(100)
);


CREATE TABLE admin
(
	aseq number(3,0) NOT NULL,
	id varchar2(50) NOT NULL,
	pwd varchar2(30) NOT NULL,
	name varchar2(50) NOT NULL,
	phone varchar2(20) NOT NULL,
	email varchar2(50),
	adminyn char DEFAULT 'Y',
	PRIMARY KEY (aseq)
);


CREATE TABLE cart
(
	cartseq number(5,0) NOT NULL,
	mseq number(5,0) NOT NULL,
	cseq number(10,0) NOT NULL,
	quantity number(5,0),
	indate date DEFAULT sysdate,
	PRIMARY KEY (cartseq)
);


CREATE TABLE content
(
	cseq number(10,0) NOT NULL,
	title varchar2(100) NOT NULL,
	location varchar2(100) NOT NULL,
	locationNum number(5,0) NOT NULL,
	artist varchar2(100) NOT NULL,
	image varchar2(1000) DEFAULT 'images/content/blankIMG.jpg',
	content varchar2(3000) NOT NULL,
	category number(2,0) NOT NULL,
	age varchar2(20) DEFAULT '전체관람가',
	bestyn char(1) DEFAULT 'N',
	PRIMARY KEY (cseq)
);


CREATE TABLE contentDate
(
	cseq number(10,0) NOT NULL,
	contentDate date NOT NULL
);


CREATE TABLE contentTime
(
	cseq number(10,0) NOT NULL,
	contentDate date NOT NULL,
	contentTime varchar2(10) NOT NULL
);


CREATE TABLE grade
(
	gseq number(1) NOT NULL,
	gname varchar2(10) DEFAULT '일반',
	gprice number(10) DEFAULT 0,
	PRIMARY KEY (gseq)
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
	useyn char(1) DEFAULT 'N',
	PRIMARY KEY (mseq)
);


CREATE TABLE orders
(
	oseq number(5,0) NOT NULL,
	indate date DEFAULT sysdate,
	mseq number(5,0) NOT NULL,
	PRIMARY KEY (oseq)
);


CREATE TABLE order_detail
(
	odseq number(5,0) NOT NULL,
	oseq number(5,0) NOT NULL,
	mseq number(5,0) NOT NULL,
	cseq number(10,0) NOT NULL,
	-- 매칭된 대리인 회원번호
	mseq2 number(5),
	quantity number(5,0),
	-- 티켓팅 결과-티켓팅 했으면(성공했으면) Y
	-- 티켓팅 날짜 전이면 N
	-- 티켓팅을 했지만 대리인이 성공하지 못했다면 F(이건 사용자에게 환불해줘야하는 결과)
	result char DEFAULT 'N',
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
	locationNum number(5,0) NOT NULL,
	hallname varchar2(100),
	area varchar2(10),
	price number(10,0),
	PRIMARY KEY (locationNum)
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

ALTER TABLE cart
	ADD FOREIGN KEY (cseq)
	REFERENCES content (cseq) on delete cascade
;


ALTER TABLE contentDate
	ADD FOREIGN KEY (cseq)
	REFERENCES content (cseq) on delete cascade
;


ALTER TABLE contentTime
	ADD FOREIGN KEY (cseq)
	REFERENCES content (cseq) on delete cascade
;


ALTER TABLE order_detail
	ADD FOREIGN KEY (cseq)
	REFERENCES content (cseq) on delete cascade
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


ALTER TABLE content
	ADD FOREIGN KEY (locationNum)
	REFERENCES seat (locationNum) on delete cascade
;

