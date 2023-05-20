select * from CONTENT;
--페스티벌만 데이터 추가하는 페이지
--category==>콘서트=1, 뮤지컬=2, 스포츠=3, 페스티벌=4, 전시/행사=5

insert into content (CSEQ, TITLE, locationNum,ARTIST,content,CATEGORY)
values(content_cseq.nextVal, '제 15회  서울재즈페스티벌 2023', 3, 'Sergio Mendes 외',
'15th Seoul Jazz Festival 2023', 4);
insert into content (CSEQ, TITLE, locationNum,ARTIST,content,CATEGORY, AGE)
values(content_cseq.nextVal, '톤앤뮤직 페스티벌 2023', 16, '다이나믹 듀오 외',
'Tone&Music Festival 2023', 4,'만 12세 이상');
