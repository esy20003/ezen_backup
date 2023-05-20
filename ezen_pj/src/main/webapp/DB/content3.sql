--뮤지컬만 데이터 추가하는 페이지
--category==>콘서트=1, 뮤지컬=2, 스포츠=3, 페스티벌=4, 전시/행사=5

insert into content (CSEQ, TITLE, locationNum,ARTIST,content,CATEGORY)
values(CONTENT_CSEQ.nextVal, '두산 베어스', 10, '두산 베어스','두산 베어스 잠실야구장 홈경기입니다.',3);
insert into content (CSEQ, TITLE, locationNum,ARTIST,content,CATEGORY)
values(CONTENT_CSEQ.nextVal, '키움 히어로즈', 12, '키움 히어로즈','키움 히어로즈 고척스카이돔 홈경기입니다.',3);
insert into content (CSEQ, TITLE, locationNum,ARTIST,content,CATEGORY)
values(CONTENT_CSEQ.nextVal, '삼성 라이온즈', 10, '삼성 라이온즈','삼성 라이온즈 삼성 라이온즈파크 홈경기입니다.',3);
insert into content (CSEQ, TITLE, locationNum,ARTIST,content,CATEGORY)
values(CONTENT_CSEQ.nextVal, '수원삼성블루윙즈', 11, '수원삼성블루윙즈','수원삼성블루윙즈 수원월드컵경기장 홈경기입니다.',3);