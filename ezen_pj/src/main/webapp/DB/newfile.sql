
/* Drop Triggers */

DROP TRIGGER TRI_admin_aseq;
DROP TRIGGER TRI_cart_cartseq;
DROP TRIGGER TRI_content_cseq;
DROP TRIGGER TRI_member_mseq;
DROP TRIGGER TRI_orders_oseq;
DROP TRIGGER TRI_order_detail_odseq;
DROP TRIGGER TRI_qna_board_qseq;
DROP TRIGGER TRI_qna_board_sucseq;
DROP TRIGGER TRI_review_board_rseq;
DROP TRIGGER TRI_seat_seatseq;



/* Drop Tables */

DROP TABLE address CASCADE CONSTRAINTS;
DROP TABLE admin CASCADE CONSTRAINTS;
DROP TABLE cart CASCADE CONSTRAINTS;
DROP TABLE date CASCADE CONSTRAINTS;
DROP TABLE order_detail CASCADE CONSTRAINTS;
DROP TABLE time CASCADE CONSTRAINTS;
DROP TABLE content CASCADE CONSTRAINTS;
DROP TABLE grade CASCADE CONSTRAINTS;
DROP TABLE orders CASCADE CONSTRAINTS;
DROP TABLE qna_board CASCADE CONSTRAINTS;
DROP TABLE qna_board CASCADE CONSTRAINTS;
DROP TABLE review_board CASCADE CONSTRAINTS;
DROP TABLE member CASCADE CONSTRAINTS;
DROP TABLE seat CASCADE CONSTRAINTS;



/* Drop Sequences */

DROP SEQUENCE SEQ_admin_aseq;
DROP SEQUENCE SEQ_cart_cartseq;
DROP SEQUENCE SEQ_content_cseq;
DROP SEQUENCE SEQ_member_mseq;
DROP SEQUENCE SEQ_orders_oseq;
DROP SEQUENCE SEQ_order_detail_odseq;
DROP SEQUENCE SEQ_qna_board_qseq;
DROP SEQUENCE SEQ_qna_board_sucseq;
DROP SEQUENCE SEQ_review_board_rseq;
DROP SEQUENCE SEQ_seat_seatseq;




/* Create Sequences */

CREATE SEQUENCE SEQ_admin_aseq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_cart_cartseq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_content_cseq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_member_mseq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_orders_oseq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_order_detail_odseq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_qna_board_qseq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_qna_board_sucseq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_review_board_rseq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_seat_seatseq INCREMENT BY 1 START WITH 1;



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
	adminyn char DEFAULT '''Y''',
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
	image varchar2(1000) DEFAULT '''images/content/blankIMG.jpg''',
	content varchar2(3000) NOT NULL,
	category number(2,0) NOT NULL,
	age varchar2(20) DEFAULT '''전체관람가''',
	bestyn char(1) DEFAULT '''N''',
	PRIMARY KEY (cseq)
);


CREATE TABLE date
(
	cseq number(10,0) NOT NULL,
	date1 date NOT NULL,
	date2 date,
	date3 date,
	date4 date,
	date5 date,
	date6 date,
	date7 date,
	date8 date,
	date9 date,
	date10 date,
	date11 date,
	date12 date,
	date13 date
);


CREATE TABLE grade
(
	gseq number(1) NOT NULL,
	gname varchar2(10) DEFAULT '''일반''',
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
	useyn char(1) DEFAULT '''N''',
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
	result char DEFAULT '''N''',
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
	repyn char(1) DEFAULT '''N''',
	image varchar2(0),
	PRIMARY KEY (qseq)
);


CREATE TABLE qna_board
(
	sucseq number(5) NOT NULL,
	mseq number(5,0) NOT NULL,
	id varchar2(50) NOT NULL,
	pwd varchar2(30) NOT NULL,
	title varchar2(200) NOT NULL,
	indate date DEFAULT sysdate,
	content varchar2(3000) NOT NULL,
	reply varchar2(1000),
	repyn char(1) DEFAULT '''N''',
	image varchar2(0),
	PRIMARY KEY (sucseq)
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
	repyn char(1) DEFAULT '''N''',
	image varchar2(0),
	PRIMARY KEY (rseq)
);


CREATE TABLE seat
(
	locationNum number(5,0) NOT NULL,
	hallname varchar2(100),
	name1 varchar2(10),
	price1 number(10,0),
	name2 varchar2(10),
	price2 number(10,0),
	name3 varchar2(10),
	price3 number(10,0),
	name4 varchar2(10),
	price4 number(10,0),
	name5 varchar2(10),
	price5 number(10,0),
	name6 varchar2(10),
	price6 number(10,0),
	name7 varchar2(10),
	price7 number(10,0),
	name8 varchar2(10),
	price8 number(10,0),
	name9 varchar2(10),
	price9 number(10,0),
	name10 varchar2(10),
	price10 number(10,0),
	name11 varchar2(10),
	price11 number(10,0),
	name12 varchar2(10),
	price12 number(10,0),
	PRIMARY KEY (locationNum)
);


CREATE TABLE time
(
	cseq number(10,0) NOT NULL,
	contentDate date NOT NULL,
	time1 varchar2(10) NOT NULL,
	time2 varchar2(10),
	time3 varchar2(10),
	time4 varchar2(10),
	time5 varchar2(10),
	time6 varchar2(10),
	time7 varchar2(10),
	time8 varchar2(10)
);



/* Create Foreign Keys */

ALTER TABLE cart
	ADD FOREIGN KEY (cseq)
	REFERENCES content (cseq)
;


ALTER TABLE date
	ADD FOREIGN KEY (cseq)
	REFERENCES content (cseq)
;


ALTER TABLE order_detail
	ADD FOREIGN KEY (cseq)
	REFERENCES content (cseq)
;


ALTER TABLE time
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


ALTER TABLE order_detail
	ADD FOREIGN KEY (mseq)
	REFERENCES member (mseq)
;


ALTER TABLE qna_board
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


ALTER TABLE order_detail
	ADD FOREIGN KEY (oseq)
	REFERENCES orders (oseq)
;


ALTER TABLE content
	ADD FOREIGN KEY (locationNum)
	REFERENCES seat (locationNum)
;



/* Create Triggers */

CREATE OR REPLACE TRIGGER TRI_admin_aseq BEFORE INSERT ON admin
FOR EACH ROW
BEGIN
	SELECT SEQ_admin_aseq.nextval
	INTO :new.aseq
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_cart_cartseq BEFORE INSERT ON cart
FOR EACH ROW
BEGIN
	SELECT SEQ_cart_cartseq.nextval
	INTO :new.cartseq
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_content_cseq BEFORE INSERT ON content
FOR EACH ROW
BEGIN
	SELECT SEQ_content_cseq.nextval
	INTO :new.cseq
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_member_mseq BEFORE INSERT ON member
FOR EACH ROW
BEGIN
	SELECT SEQ_member_mseq.nextval
	INTO :new.mseq
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_orders_oseq BEFORE INSERT ON orders
FOR EACH ROW
BEGIN
	SELECT SEQ_orders_oseq.nextval
	INTO :new.oseq
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_order_detail_odseq BEFORE INSERT ON order_detail
FOR EACH ROW
BEGIN
	SELECT SEQ_order_detail_odseq.nextval
	INTO :new.odseq
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_qna_board_qseq BEFORE INSERT ON qna_board
FOR EACH ROW
BEGIN
	SELECT SEQ_qna_board_qseq.nextval
	INTO :new.qseq
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_qna_board_sucseq BEFORE INSERT ON qna_board
FOR EACH ROW
BEGIN
	SELECT SEQ_qna_board_sucseq.nextval
	INTO :new.sucseq
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_review_board_rseq BEFORE INSERT ON review_board
FOR EACH ROW
BEGIN
	SELECT SEQ_review_board_rseq.nextval
	INTO :new.rseq
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_seat_seatseq BEFORE INSERT ON seat
FOR EACH ROW
BEGIN
	SELECT SEQ_seat_seatseq.nextval
	INTO :new.seatseq
	FROM dual;
END;

/




/* Comments */

COMMENT ON COLUMN address.zip_num IS '우편번호';
COMMENT ON COLUMN order_detail.mseq2 IS '매칭된 대리인 회원번호';
COMMENT ON COLUMN order_detail.result IS '티켓팅 결과-티켓팅 했으면(성공했으면) Y
티켓팅 날짜 전이면 N
티켓팅을 했지만 대리인이 성공하지 못했다면 F(이건 사용자에게 환불해줘야하는 결과)';



