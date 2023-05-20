select * from CONTENT;
--전시/행사만 데이터 추가하는 페이지
--category==>콘서트=1, 뮤지컬=2, 스포츠=3, 페스티벌=4, 전시/행사=5

insert into content (CSEQ, TITLE, locationNum,ARTIST,content,CATEGORY)
values(content_cseq.nextVal, '더현대서울 프랑스국립현대미술관전 : 라울 뒤피', 17, '라울 뒤피(Raoul Dufy)',
'화려한 빛과 색으로 기쁨과 환희를 노래하는 "뒤피"의 원화 130여점 공개', 4);
insert into content (CSEQ, TITLE, locationNum,ARTIST,content,CATEGORY)
values(content_cseq.nextVal, '하리보 골드베렌 100주년 생일 기념전', 18, '(주)피플리',
'100년 역사의 글로벌 1위 젤리 하리보의 세계 최초 미디어 전시', 4);