select * from CONTENT;
--콘서트만 데이터 추가하는 페이지
--category==>콘서트=1, 뮤지컬=2, 스포츠=3, 페스티벌=4, 전시/행사=5

insert into content (CSEQ, TITLE, locationNum,ARTIST,content,CATEGORY, AGE)
values(content_cseq.nextVal, '2023 김기태 전국투어 콘서트 [위로] - 대구', 8, '김기태',
'김기태만의 짙고 울림있는 감성으로 여러분의 마음을 위로하며 가슴 깊은 곳 위로의 메세지를 전할 2023 김기태 전국투어 콘서트 [위로]', 1,'만 7세 이상');

insert into content (CSEQ, TITLE, locationNum,ARTIST,content,CATEGORY, AGE)
values(content_cseq.nextVal, '2023 이민우 M 20th Anniversary Live "STORY"', 5, '이민우', 
'꿈으로 가득한 소년에서 최고의 무대를 보여주는 뮤지션으로 성장한 20년
뜨거운 열정과 에너지, 응원과 위로, 사랑, 이별까지....수많은 이야기를 노래에 담아온 M
끝없이 이어지는 플레이리스트처럼 20년 동안 이어온 M과 팬들의 시간을 축하하는 자리에 여러분을 초대합니다',
1, '8세 이상');

insert into content (CSEQ, TITLE, locationNum,ARTIST,content,CATEGORY, AGE)
values(content_cseq.nextVal, '나윤선 Waking World', 1, '나윤선','나윤선 음악에 내재되어 있는 깊은 감동과 치유의 시간을 만나다',1, '8세 이상');


insert into content (CSEQ, TITLE, locationNum,ARTIST,content,CATEGORY, AGE)
values(content_cseq.nextVal, '크랙샷 단독 콘서트 〈SPEAK OUT〉', 7, '크랙샷',
'INFP 발매 기념 콘서트 개최! 크랙샷의 SPEAK OUT 많은 기대 부탁드립니다!',1, '8세 이상');
	
insert into content (CSEQ, TITLE, locationNum,ARTIST,content,CATEGORY, AGE)
values(content_cseq.nextVal, '현대카드 슈퍼콘서트 27 브루노 마스(Bruno Mars)', 4, '브루노 마스(Bruno Mars)',
'21세기를 대표하는 싱어송라이터이자 글로벌 팝스타 "브루노 마스(Bruno Mars)"가 오는 6월 한국을 찾는다. 이번 "현대카드 슈퍼콘서트" 내한 공연으로서는 역대 최대 규모다.',1, '만 7세 이상');

insert into content (CSEQ, TITLE, locationNum,ARTIST,content,CATEGORY, AGE)
values(content_cseq.nextVal, '2023 폴 아웃 보이(Fall Out Boy) 내한공연',4,'폴 아웃 보이(Fall Out Boy)',
'세계적인 락밴드 폴 아웃 보이(Fall Out Boy)의 최초 내한 콘서트!',1, '8세 이상');

insert into content (CSEQ, TITLE, locationNum,ARTIST,content,CATEGORY, AGE)
values(content_cseq.nextVal, '2023 테일러 스위프트(Taylor Swift) 내한공연',12,'테일러 스위프트(Taylor Swift)',
'테일러 스위프트, 13년만의 내한공연! 
21세기의 음악 산업 그 자체, 싱어송라이터 테일러 스위프트가 오는 8월 서울을 찾는다',1, '8세 이상');

	
