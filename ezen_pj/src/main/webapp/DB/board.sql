--qna
insert into qna_board(qseq, mseq, title, content, id, pwd)
values (qna_board_qseq.nextval, 1, '종료된 티켓팅', '종료된 티켓팅도 취켓팅으로 가능한가요?','dsan','1234');

insert into qna_board(qseq, mseq, title, content, id, pwd)
values(qna_board_qseq.nextval, 2, '문의합니다', '수고비는 자리에 따라 조정되나요?', 'bts2','1234');

insert into qna_board(qseq, mseq, title, content, id, pwd)
values(qna_board_qseq.nextval, 3, '문의드립니다~', '사이트에 없는 티켓팅도 가능한가요?', 'gangji','1234');

insert into qna_board(qseq, mseq, title, content, id, pwd)
values(qna_board_qseq.nextval, 4, '수고비 문의', '취소하면 전액 환불 해주시나요?', 'jrong','1234');

insert into qna_board(qseq, mseq, title, content, id, pwd)
values(qna_board_qseq.nextval, 5, '환불문의', '아직 환불이 안 들어왔는데 언제쯤 들어올까요?', 'kinder','1234');

insert into qna_board(qseq, mseq, title, content, id, pwd)
values(qna_board_qseq.nextval, 6, '문의합니다!', '원하는 열과 구역을 정확히 지정할 수 있을까요?', 'babo','1234');

insert into qna_board(qseq, mseq, title, content, id, pwd)
values(qna_board_qseq.nextval, 7, '취소 문의', '취소하고 싶어요 ㅠㅠ 취소 가능할까요?', 'gildong','1234');

insert into qna_board(qseq, mseq, title, content, id, pwd)
values(qna_board_qseq.nextval, 8, '문의드려용!!', '꼭 성공 부탁드리겠습니당!!?', 'work','1234');

insert into qna_board(qseq, mseq, title, content, id, pwd)
values(qna_board_qseq.nextval, 9, '아이디 변경 문의', '아이디와 비번을 변경할 수 있을까요?', 'sleep','1234');

insert into qna_board(qseq, mseq, title, content, id, pwd)
values(qna_board_qseq.nextval, 10, '문희드립니당', '수고비도 조정이 가능한가요?', 'java','1234');


--review
select * from review_board; 
insert into review_board(rseq, mseq, title, content, id,pwd)
values(review_board_rseq.nextval, 1, '아이유 콘서트 성공후기', '1열로 성공해주셨어요! 감사합니다 믿고 맡기세요','dsan','1234');

insert into review_board(rseq, mseq, title, content, id,pwd)
values(review_board_rseq.nextval, 2, '콘서트 성공 후기!!', '솔직히 금액이 커서 고민 많이했는데 좋은 자리 잡아주셨어용 ㅜㅜ 너무 감사해요','bts2','1234');

insert into review_board(rseq, mseq, title, content, id,pwd)
values(review_board_rseq.nextval, 3, '아이브 팬미팅 성공', '이번에 꼭 가고 싶었는데 좋은 자리로 잡아주셨어요 너무 감사합니다 다음번에 또 맡기러 오겠습니다','gangji','1234');

insert into review_board(rseq, mseq, title, content, id,pwd)
values(review_board_rseq.nextval, 4, '뮤지컬 데스노트', '막공 꼭 가고 싶었는데 잡아주셨어요 원하는 자리라 너무 좋아요 복 받으세요!','jrong','1234');

insert into review_board(rseq, mseq, title, content, id,pwd)
values(review_board_rseq.nextval, 5, '샤이니 팬미팅 성공 후기', '긴가민가했는데 다행히도 원하는 자리네요 확실히 믿고 맡기셔도 좋을 것 같아요','kinder','1234');

insert into review_board(rseq, mseq, title, content, id,pwd)
values(review_board_rseq.nextval, 6, '꺅 성공후기!!', '제가 너무너무 보고 싶었던 연극이었는데 완전 꿀자리 잡아주셨엉숑 ㅠㅠ!! 너무너무 감사하고 다음에 또 올게용!! 부디 건강하세용!!','babo','1234');

insert into review_board(rseq, mseq, title, content, id,pwd)
values(review_board_rseq.nextval, 7, '선생님 감사합니다', '선생님 진짜 이 은혜를 어찌 갚아야할지... 너무너무 행복합니다 ㅠㅠ 똥손도 좋은 자리를 가보는군요 허허','gildong','1234');

insert into review_board(rseq, mseq, title, content, id,pwd)
values(review_board_rseq.nextval, 8, 'lol 성공후기', '빡센 티켓팅이라 걱정 많이했는데 딱 잡아주셨네요 밑고 맡기셔도 될 것 같습니다!','work','1234');

insert into review_board(rseq, mseq, title, content, id,pwd)
values(review_board_rseq.nextval, 9, '힙합페스티벌 1열 후기', '와 진짜 1열로 성공해주시다니 정말 감사합니다 여러분도 다들 이분께 맡기세요 굿굿','sleep','1234');

insert into review_board(rseq, mseq, title, content, id,pwd)
values(review_board_rseq.nextval, 10, '뮤지컬 성공후기', '뮤덕이라 항상 가는데 여기만큼 좋은 자리 잡아주는 곳 없었어요 항상 맡기러 오겠습니다','java','1234');

insert into review_board(rseq, mseq, title, content, id,pwd)
values(review_board_rseq.nextval, 11, '연극 환상동화 후기', '진짜 너무너무 기뻐요 ㅠㅠ 제가 이런 자리 가도 되는 걸까요 ㅠㅠ 진짜 너무너무 행복합니다 다음에 또 오겠습니다 ㅠㅠ','nomoney','1234');

--success
insert into success_board(sucseq, mseq, id,pwd, title, content) 
values(success_board_sucseq.nextVal, 3, 'gangji', '1234',
'임영웅 전국투어-서울 성공내역1',
'임영웅 전국투어 - 서울 대리티켓팅 이용 감사 드립니다. 다음에 또 이용 시 보다 좋은 좌석과 서비스로 보답 드리겠습니다. 감사합니다.');
insert into success_board(sucseq, mseq, id,pwd, title, content) 
values(success_board_sucseq.nextVal, 3, 'gangji', '1234',
'임영웅 전국투어-서울 성공내역2',
'임영웅 전국투어 - 서울 대리티켓팅 이용 감사 드립니다. 다음에 또 이용 시 보다 좋은 좌석과 서비스로 보답 드리겠습니다. 감사합니다.');
insert into success_board(sucseq, mseq, id,pwd, title, content) 
values(success_board_sucseq.nextVal, 3, 'gangji', '1234',
'임영웅 전국투어-서울 성공내역3',
'임영웅 전국투어 - 서울 대리티켓팅 이용 감사 드립니다. 다음에 또 이용 시 보다 좋은 좌석과 서비스로 보답 드리겠습니다. 감사합니다.');
insert into success_board(sucseq, mseq, id,pwd, title, content) 
values(success_board_sucseq.nextVal, 3, 'gangji', '1234',
'임영웅 전국투어-서울 성공내역4',
'임영웅 전국투어 - 서울 대리티켓팅 이용 감사 드립니다. 다음에 또 이용 시 보다 좋은 좌석과 서비스로 보답 드리겠습니다. 감사합니다.');
insert into success_board(sucseq, mseq, id,pwd, title, content) 
values(success_board_sucseq.nextVal, 3, 'gangji', '1234',
'임영웅 전국투어-서울 성공내역5',
'임영웅 전국투어 - 서울 대리티켓팅 이용 감사 드립니다. 다음에 또 이용 시 보다 좋은 좌석과 서비스로 보답 드리겠습니다. 감사합니다.');
insert into success_board(sucseq, mseq, id,pwd, title, content) 
values(success_board_sucseq.nextVal, 3, 'gangji', '1234',
'임영웅 전국투어-서울 성공내역6',
'임영웅 전국투어 - 서울 대리티켓팅 이용 감사 드립니다. 다음에 또 이용 시 보다 좋은 좌석과 서비스로 보답 드리겠습니다. 감사합니다.');


insert into success_board(sucseq, mseq, id,pwd, title, content) 
values(success_board_sucseq.nextVal, 4, 'jrong', '1234',
'티켓온 팬텀싱어(광주) 대리티켓팅 성공내역1',
'티켓온 팬텀싱어(광주) 대리티켓팅 성공내역입니다! 감사합니다.');
insert into success_board(sucseq, mseq, id,pwd, title, content) 
values(success_board_sucseq.nextVal, 4, 'jrong', '1234',
'티켓온 팬텀싱어(광주) 대리티켓팅 성공내역2',
'티켓온 팬텀싱어(광주) 대리티켓팅 성공내역입니다! 감사합니다.');
insert into success_board(sucseq, mseq, id,pwd, title, content) 
values(success_board_sucseq.nextVal, 4, 'jrong', '1234',
'티켓온 팬텀싱어(광주) 대리티켓팅 성공내역3',
'티켓온 팬텀싱어(광주) 대리티켓팅 성공내역입니다! 감사합니다.');
insert into success_board(sucseq, mseq, id,pwd, title, content) 
values(success_board_sucseq.nextVal, 4, 'jrong', '1234',
'티켓온 팬텀싱어(광주) 대리티켓팅 성공내역4',
'티켓온 팬텀싱어(광주) 대리티켓팅 성공내역입니다! 감사합니다.');
insert into success_board(sucseq, mseq, id,pwd, title, content) 
values(success_board_sucseq.nextVal, 4, 'jrong', '1234',
'티켓온 팬텀싱어(광주) 대리티켓팅 성공내역5',
'티켓온 팬텀싱어(광주) 대리티켓팅 성공내역입니다! 감사합니다.');

select * from REVIEW_BOARD
select * from MEMBER
select * from qna_board
select * from seat
select * from QNA_BOARD

create table reply(
	replynum	number(7)primary key, --댓글 순번
	qnanum number(5),	--댓글의 해당 게시물 번호
	id varchar2(20),		--댓글 쓰니
	indate date default sysdate,	--작성일
	content varchar2(1000)		--작성내용
);
select*from reply;
--댓글은 board 테이블에 저장되지 않음.
--한 두개의 댓글만 달리고 말것이라면 board 테이블에 댓글 필드를 두 세개 생성하고 저장해도 되지만, 
--게시판에 있는 각 게시물들에 대한 댓글은 작성될 수 있는 갯수가 제한이 없기 때문에, 모든 댓글을 하나의 테이블에 저장함
--이 대 반드시 저장되는 댓글에는 어느 게시물의 댓글인지 게시물 번호를 같이 저장해야함
--그래야 해당 게시물이 화면에 표시될 때 그 게시물의 댓글만 조회(검색)해서 따로 화면에 표시할 수 있음

create sequence reply_seq start with 1 increment by 1;

insert into reply values(reply_seq.nextVal,1,'somi',sysdate,'게시판 개설을 축하드립니다.');
insert into reply values(reply_seq.nextVal,2,'light',sysdate,'첫 글 축하드립니다.');
insert into reply values(reply_seq.nextVal,3,'scott',sysdate,'저도 궁금합니다.');


select*from member;
--시험문제 출제 ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
select *from(
	select *from(
		select rownum as rn , b.* from(
			(select *from qna_board order by qseq desc) b
		)
	) where rn>=1
)where rn<=10;














