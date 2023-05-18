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

select * from SUCCESS_BOARD;
ALTER TABLE success_board MODIFY title VARCHAR2(200);


insert into success_board(sseq, mseq, id, title, content) 
values(success_board_sseq.nextVal, 3, 'gangji', 
'임영웅 전국투어-서울 성공내역1',
'임영웅 전국투어 - 서울 대리티켓팅 이용 감사 드립니다. 다음에 또 이용 시 보다 좋은 좌석과 서비스로 보답 드리겠습니다. 감사합니다.');
insert into success_board(sseq, mseq, id, title, content) 
values(success_board_sseq.nextVal, 3, 'gangji', 
'임영웅 전국투어-서울 성공내역2',
'임영웅 전국투어 - 서울 대리티켓팅 이용 감사 드립니다. 다음에 또 이용 시 보다 좋은 좌석과 서비스로 보답 드리겠습니다. 감사합니다.');
insert into success_board(sseq, mseq, id, title, content) 
values(success_board_sseq.nextVal, 3, 'gangji', 
'임영웅 전국투어-서울 성공내역3',
'임영웅 전국투어 - 서울 대리티켓팅 이용 감사 드립니다. 다음에 또 이용 시 보다 좋은 좌석과 서비스로 보답 드리겠습니다. 감사합니다.');
insert into success_board(sseq, mseq, id, title, content) 
values(success_board_sseq.nextVal, 3, 'gangji', 
'임영웅 전국투어-서울 성공내역4',
'임영웅 전국투어 - 서울 대리티켓팅 이용 감사 드립니다. 다음에 또 이용 시 보다 좋은 좌석과 서비스로 보답 드리겠습니다. 감사합니다.');
insert into success_board(sseq, mseq, id, title, content) 
values(success_board_sseq.nextVal, 3, 'gangji', 
'임영웅 전국투어-서울 성공내역5',
'임영웅 전국투어 - 서울 대리티켓팅 이용 감사 드립니다. 다음에 또 이용 시 보다 좋은 좌석과 서비스로 보답 드리겠습니다. 감사합니다.');
insert into success_board(sseq, mseq, id, title, content) 
values(success_board_sseq.nextVal, 3, 'gangji', 
'임영웅 전국투어-서울 성공내역6',
'임영웅 전국투어 - 서울 대리티켓팅 이용 감사 드립니다. 다음에 또 이용 시 보다 좋은 좌석과 서비스로 보답 드리겠습니다. 감사합니다.');

insert into success_board(sseq, mseq, id, title, content) 
values(success_board_sseq.nextVal, 4, 'jrong', 
'티켓온 팬텀싱어(광주) 대리티켓팅 성공내역1',
'티켓온 팬텀싱어(광주) 대리티켓팅 성공내역입니다! 감사합니다.');
insert into success_board(sseq, mseq, id, title, content) 
values(success_board_sseq.nextVal, 4, 'jrong', 
'티켓온 팬텀싱어(광주) 대리티켓팅 성공내역2',
'티켓온 팬텀싱어(광주) 대리티켓팅 성공내역입니다! 감사합니다.');
insert into success_board(sseq, mseq, id, title, content) 
values(success_board_sseq.nextVal, 4, 'jrong', 
'티켓온 팬텀싱어(광주) 대리티켓팅 성공내역3',
'티켓온 팬텀싱어(광주) 대리티켓팅 성공내역입니다! 감사합니다.');
insert into success_board(sseq, mseq, id, title, content) 
values(success_board_sseq.nextVal, 4, 'jrong', 
'티켓온 팬텀싱어(광주) 대리티켓팅 성공내역4',
'티켓온 팬텀싱어(광주) 대리티켓팅 성공내역입니다! 감사합니다.');
insert into success_board(sseq, mseq, id, title, content) 
values(success_board_sseq.nextVal, 4, 'jrong', 
'티켓온 팬텀싱어(광주) 대리티켓팅 성공내역5',
'티켓온 팬텀싱어(광주) 대리티켓팅 성공내역입니다! 감사합니다.');













