


/* Drop Tables */

DROP TABLE address CASCADE CONSTRAINTS;
DROP TABLE admin CASCADE CONSTRAINTS;
DROP TABLE cart CASCADE CONSTRAINTS;
DROP TABLE order_detail CASCADE CONSTRAINTS;
DROP TABLE content CASCADE CONSTRAINTS;
DROP TABLE grade CASCADE CONSTRAINTS;
DROP TABLE orders CASCADE CONSTRAINTS;
DROP TABLE qna_board CASCADE CONSTRAINTS;
DROP TABLE review_board CASCADE CONSTRAINTS;
DROP TABLE success_board CASCADE CONSTRAINTS;
DROP TABLE member CASCADE CONSTRAINTS;



/* Drop Sequences */

DROP SEQUENCE SEQ_address_addrseq;
DROP SEQUENCE SEQ_admin_aseq;
DROP SEQUENCE SEQ_cart_cartseq;
DROP SEQUENCE SEQ_content_cseq;
DROP SEQUENCE SEQ_grade_gseq;
DROP SEQUENCE SEQ_member_mseq;
DROP SEQUENCE SEQ_NEW_TABLE_cartseq;
DROP SEQUENCE SEQ_orders_oseq;
DROP SEQUENCE SEQ_order_detail_odseq;
DROP SEQUENCE SEQ_order_oseq;
DROP SEQUENCE SEQ_qna_board_qseq;
DROP SEQUENCE SEQ_review_board_rseq;
DROP SEQUENCE SEQ_success_board_sseq;




/* Create Sequences */

CREATE SEQUENCE SEQ_address_addrseq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_admin_aseq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_cart_cartseq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_content_cseq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_grade_gseq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_member_mseq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_NEW_TABLE_cartseq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_orders_oseq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_order_detail_odseq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_qna_board_qseq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_review_board_rseq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_success_board_sseq INCREMENT BY 1 START WITH 1;



/* Create Tables */

CREATE TABLE address
(
	addrseq number(5,0) NOT NULL,
	post_code varchar2(30) NOT NULL,
	sido varchar2(30) NOT NULL,
	gugun varchar2(30) NOT NULL,
	dong varchar2(100) NOT NULL,
	zip_code varchar2(30) NOT NULL,
	detail varchar2(30),
	PRIMARY KEY (addrseq)
);


CREATE TABLE admin
(
	aseq number(3,0) NOT NULL,
	id varchar2(20) NOT NULL,
	pwd varchar2(20) NOT NULL,
	name varchar2(50) NOT NULL,
	nickname varchar2(20) NOT NULL,
	phone varchar2(20) NOT NULL,
	email varchar2(50) NOT NULL,
	zip_num varchar2(20) NOT NULL,
	address1 varchar2(50) NOT NULL,
	address2 varchar2(50) NOT NULL,
	adminyn char(1) NOT NULL,
	PRIMARY KEY (aseq)
);


CREATE TABLE cart
(
	cartseq number(5,0) NOT NULL,
	mseq number(5,0) NOT NULL,
	cseq number(5,0) NOT NULL,
	quantity number(5,0) DEFAULT 1,
	indate date DEFAULT sysdate,
	PRIMARY KEY (cartseq)
);


CREATE TABLE content
(
	cseq number(5,0) NOT NULL,
	title varchar2(50) NOT NULL,
	location varchar2(50) NOT NULL,
	cdate date NOT NULL,
	tdate date NOT NULL,
	seat varchar2(20) NOT NULL,
	artist varchar2(30) NOT NULL,
	price_w number(10,0) NOT NULL,
	price_s number(10,0) NOT NULL,
	price_m number(10,0) NOT NULL,
	image varchar2(100) NOT NULL,
	content varchar2(1000) NOT NULL,
	category varchar2(10) NOT NULL,
	bestyn char(1) DEFAULT 'N',
	PRIMARY KEY (cseq)
);


CREATE TABLE grade
(
	gseq number(5,0) NOT NULL,
	gname varchar2(10) DEFAULT '일반',
	PRIMARY KEY (gseq)
);


CREATE TABLE member
(
	mseq number(5,0) NOT NULL,
	id varchar2(20) NOT NULL,
	pwd varchar2(20) NOT NULL,
	name varchar2(50) NOT NULL,
	nickname varchar2(50) NOT NULL,
	email varchar2(50) NOT NULL,
	phone varchar2(20) NOT NULL,
	zip_num varchar2(20) NOT NULL,
	address1 varchar2(50) NOT NULL,
	address2 varchar2(50) NOT NULL,
	grade varchar2(20) DEFAULT '0',
	success number(5,0) DEFAULT 0,
	indate date DEFAULT sysdate,
	useyn char(1) DEFAULT '1',
	PRIMARY KEY (mseq)
);


CREATE TABLE orders
(
	oseq number(10,0) NOT NULL,
	mseq number(5,0) NOT NULL,
	id varchar2(20) NOT NULL,
	indate date,
	PRIMARY KEY (oseq)
);


CREATE TABLE order_detail
(
	odseq number(5,0) NOT NULL,
	oseq number(10,0) NOT NULL,
	cseq number(5,0) NOT NULL,
	quantity number(5,0) DEFAULT 1,
	result char(1) DEFAULT 'N',
	PRIMARY KEY (odseq)
);


CREATE TABLE qna_board
(
	qseq number(5) NOT NULL,
	mseq number(5,0) NOT NULL,
	id varchar2(20) NOT NULL,
	title varchar2(50) NOT NULL,
	indate date DEFAULT sysdate,
	content varchar2(1000) NOT NULL,
	reply  varchar2(500),
	repyn char DEFAULT 'N',
	image varchar2(100),
	PRIMARY KEY (qseq)
);


CREATE TABLE review_board
(
	rseq number(5) NOT NULL,
	mseq number(5,0) NOT NULL,
	id varchar2(20) NOT NULL,
	title varchar2(50) NOT NULL,
	indate date DEFAULT sysdate,
	content varchar2(1000) NOT NULL,
	reply  varchar2(500),
	repyn char DEFAULT 'N',
	image varchar2(100),
	PRIMARY KEY (rseq)
);


CREATE TABLE success_board
(
	sseq number(5) NOT NULL,
	mseq number(5,0) NOT NULL,
	id varchar2(20) NOT NULL,
	title varchar2(50) NOT NULL,
	indate date DEFAULT sysdate,
	content varchar2(1000) NOT NULL,
	reply  varchar2(500),
	repyn char DEFAULT 'N',
	image varchar2(10),
	PRIMARY KEY (sseq)
);



/* Create Foreign Keys */

ALTER TABLE cart
	ADD FOREIGN KEY (cseq)
	REFERENCES content (cseq)
;


ALTER TABLE order_detail
	ADD FOREIGN KEY (cseq)
	REFERENCES content (cseq)
;


ALTER TABLE cart
	ADD FOREIGN KEY (mseq)
	REFERENCES member (mseq)
;


ALTER TABLE orders
	ADD FOREIGN KEY (mseq)
	REFERENCES member (mseq)
;


ALTER TABLE qna_board
	ADD FOREIGN KEY (mseq)
	REFERENCES member (mseq)
;


ALTER TABLE review_board
	ADD FOREIGN KEY (mseq)
	REFERENCES member (mseq)
;


ALTER TABLE success_board
	ADD FOREIGN KEY (mseq)
	REFERENCES member (mseq)
;


ALTER TABLE order_detail
	ADD FOREIGN KEY (oseq)
	REFERENCES orders (oseq)
;





