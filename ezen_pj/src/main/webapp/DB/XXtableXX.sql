
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
DROP TABLE seat CASCADE CONSTRAINTS;




/* Drop Sequences */

<<<<<<< HEAD
DROP SEQUENCE SEQ_address_addrseq;
DROP SEQUENCE SEQ_admin_aseq;
DROP SEQUENCE SEQ_cart_cartseq;
DROP SEQUENCE SEQ_content_cseq;
DROP SEQUENCE SEQ_grade_gseq;
DROP SEQUENCE SEQ_member_mseq;
DROP SEQUENCE SEQ_orders_oseq;
DROP SEQUENCE SEQ_order_detail_odseq;
DROP SEQUENCE SEQ_orders_oseq;
DROP SEQUENCE SEQ_qna_board_qseq;
DROP SEQUENCE SEQ_review_board_rseq;
DROP SEQUENCE SEQ_success_board_sseq;
DROP SEQUENCE SEQ_seat_seatseq;

DROP SEQUENCE address_addrseq;
DROP SEQUENCE admin_aseq;
DROP SEQUENCE cart_cartseq;
DROP SEQUENCE content_cseq;
DROP SEQUENCE member_mseq;
DROP SEQUENCE orders_oseq;
DROP SEQUENCE order_detail_odseq;
DROP SEQUENCE orders_oseq;
DROP SEQUENCE success_board_sseq;
DROP SEQUENCE grade_gseq;
DROP SEQUENCE qna_board_qseq;
DROP SEQUENCE review_board_rseq;


DROP SEQUENCE grade_seq;
DROP SEQUENCE qna_board_seq;
DROP SEQUENCE review_board_seq;


/* Create Sequences */

<<<<<<< HEAD
CREATE SEQUENCE address_addrseq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE admin_aseq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE cart_cartseq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE content_cseq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE grade_gseq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE member_mseq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE orders_oseq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE order_detail_odseq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE qna_board_qseq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE review_board_rseq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE success_board_sseq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE seat_seatseq INCREMENT BY 1 START WITH 1;




/* Create Tables */

CREATE TABLE seat
(
	seatseq number(5) NOT NULL,
	hallname varchar2(100),
	name1 varchar2(10),
	price1 number(15),
	name2 varchar2(10),
	price2 number(15),
	name3 varchar2(10),
	price3 number(15),
	name4 varchar2(30),
	price4 number(15),
	name5 varchar2(10),
	price5 number(15),
	name6 varchar2(10),
	price6 number(15),
	PRIMARY KEY (seatseq)
);

CREATE TABLE grade
(
	gseq number(5,0) NOT NULL,
	gname varchar2(10) DEFAULT '일반',
	gprice number(10),
	PRIMARY KEY (gseq)
);

CREATE TABLE content
(
	cseq number(5,0) NOT NULL,
	title varchar2(50) NOT NULL,
	location varchar2(50) NOT NULL,
	cdate date NOT NULL,
	tdate date NOT NULL,
	artist varchar2(30) NOT NULL,
	price_s number(10,0) NOT NULL,
	price_g number(10,0) NOT NULL,
	price_tot number(10,0) NOT NULL,
	image varchar2(100) NOT NULL,
	content varchar2(1000) NOT NULL,
	category varchar2(10) NOT NULL,
	age number(5) default 0 not null,
	bestyn char(1) DEFAULT 'N',
	PRIMARY KEY (cseq)
);

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
   phone varchar2(20) NOT NULL,
   email varchar2(50) NOT NULL,
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




CREATE TABLE member
(
   mseq number(5,0) NOT NULL,
   id varchar2(20) NOT NULL,
   pwd varchar2(20) NOT NULL,
   name varchar2(50) NOT NULL,
   gender number(1,0) default 0,
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
	reply varchar2(500),
	repyn char DEFAULT 'N',
	image varchar2(0),
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
   reply varchar2(500),
   repyn char DEFAULT 'N',
   image varchar2(100),
   PRIMARY KEY (rseq)
);


CREATE TABLE success_board
(
   sseq number(5) NOT NULL,
   mseq number(5,0) NOT NULL,
   id varchar2(20) NOT NULL,
   title varchar2(200) NOT NULL,
   indate date DEFAULT sysdate,
   content varchar2(1000) NOT NULL,
   reply  varchar2(500),
   repyn char DEFAULT 'N',
   image varchar2(10),
   PRIMARY KEY (sseq)
>>>>>>> branch 'main' of https://github.com/chojeajun/ezen_project.git
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

<<<<<<< HEAD


<<<<<<< HEAD
/* Create Triggers */

CREATE OR REPLACE TRIGGER TRI_address_addrseq BEFORE INSERT ON address
FOR EACH ROW
BEGIN
	SELECT SEQ_address_addrseq.nextval
	INTO :new.addrseq
	FROM dual;
END;

/

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

CREATE OR REPLACE TRIGGER TRI_grade_gseq BEFORE INSERT ON grade
FOR EACH ROW
BEGIN
	SELECT SEQ_grade_gseq.nextval
	INTO :new.gseq
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

CREATE OR REPLACE TRIGGER TRI_NEW_TABLE_cartseq BEFORE INSERT ON NEW_TABLE
FOR EACH ROW
BEGIN
	SELECT SEQ_NEW_TABLE_cartseq.nextval
	INTO :new.cartseq
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

CREATE OR REPLACE TRIGGER TRI_order_oseq BEFORE INSERT ON order
FOR EACH ROW
BEGIN
	SELECT SEQ_order_oseq.nextval
	INTO :new.oseq
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

CREATE OR REPLACE TRIGGER TRI_review_board_rseq BEFORE INSERT ON review_board
FOR EACH ROW
BEGIN
	SELECT SEQ_review_board_rseq.nextval
	INTO :new.rseq
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_success_board_sseq BEFORE INSERT ON success_board
FOR EACH ROW
BEGIN
	SELECT SEQ_success_board_sseq.nextval
	INTO :new.sseq
	FROM dual;
END;

/


=======
>>>>>>> branch 'main' of https://github.com/chojeajun/ezen_project.git


=======
--어드민 필드 닉네임, zip_num, address1,2  
>>>>>>> branch 'main' of https://github.com/chojeajun/ezen_project.git
