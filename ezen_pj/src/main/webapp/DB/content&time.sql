select * from CONTENT;
--category==>콘서트=1, 뮤지컬=2, 스포츠=3, 페스티벌=4, 전시/행사=5
--콘서트 데이터 추가

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


--뮤지컬 데이터 추가


insert into content (CSEQ, TITLE, locationNum,ARTIST,content,CATEGORY, AGE)
values(CONTENT_CSEQ.nextVal, '뮤지컬 <백작>', 14, '이승현 외','무패의 군신으로 불리는 백작. 
인간들을 상대로 밤에만 전투를 하고, 새벽이 되면 적장이 가장 사랑하는 사람을 인질로 잡아 포에나리성으로 퇴각한다. 
백작에게 인질로 잡힌 적장의 아들 V. 태양을 가린 커튼 아래 빛의 세계와 밤의 세계가 교차한다. 기록되지 않은 포에나리 성주의 전설',2, '만 12세 이상');

insert into content (CSEQ, TITLE, locationNum,ARTIST,content,CATEGORY, AGE)
values(CONTENT_CSEQ.nextVal, '뮤지컬 <더 테일 에이프릴 풀스>', 15, '최석진 외',
'2022년 초연 흥행 돌풍, 예매처 관람 평점 9.7로 매진 신화 기록!
아름다운 무대, 감각적 미장센으로 관객이 가장 기다려온 뮤지컬
완벽한 호흡을 선보인 배우들과 함께 다시 돌아왔다!',2, '만 14세 이상');

insert into content (CSEQ, TITLE, locationNum,ARTIST,content,CATEGORY, AGE)
values(CONTENT_CSEQ.nextVal, '뮤지컬 <빠리빵집>', 9, '고훈정 외',
'그리움이 만든 기적, 지금 여기 우리',2, '만 7세 이상');


--스포츠
insert into content (CSEQ, TITLE, locationNum,ARTIST,content,CATEGORY)
values(CONTENT_CSEQ.nextVal, '두산 베어스', 10, '두산 베어스','두산 베어스 잠실야구장 홈경기입니다.',3);
insert into content (CSEQ, TITLE, locationNum,ARTIST,content,CATEGORY)
values(CONTENT_CSEQ.nextVal, '키움 히어로즈', 12, '키움 히어로즈','키움 히어로즈 고척스카이돔 홈경기입니다.',3);
insert into content (CSEQ, TITLE, locationNum,ARTIST,content,CATEGORY)
values(CONTENT_CSEQ.nextVal, '삼성 라이온즈', 10, '삼성 라이온즈','삼성 라이온즈 삼성 라이온즈파크 홈경기입니다.',3);
insert into content (CSEQ, TITLE, locationNum,ARTIST,content,CATEGORY)
values(CONTENT_CSEQ.nextVal, '수원삼성블루윙즈', 11, '수원삼성블루윙즈','수원삼성블루윙즈 수원월드컵경기장 홈경기입니다.',3);

--페스티벌
insert into content (CSEQ, TITLE, locationNum,ARTIST,content,CATEGORY)
values(content_cseq.nextVal, '제 15회  서울재즈페스티벌 2023', 3, 'Sergio Mendes 외',
'15th Seoul Jazz Festival 2023', 4);
insert into content (CSEQ, TITLE, locationNum,ARTIST,content,CATEGORY, AGE)
values(content_cseq.nextVal, '톤앤뮤직 페스티벌 2023', 16, '다이나믹 듀오 외',
'Tone&Music Festival 2023', 4,'만 12세 이상');

--전시/행사
insert into content (CSEQ, TITLE, locationNum,ARTIST,content,CATEGORY)
values(content_cseq.nextVal, '더현대서울 프랑스국립현대미술관전 : 라울 뒤피', 17, '라울 뒤피(Raoul Dufy)',
'화려한 빛과 색으로 기쁨과 환희를 노래하는 "뒤피"의 원화 130여점 공개', 5);
insert into content (CSEQ, TITLE, locationNum,ARTIST,content,CATEGORY)
values(content_cseq.nextVal, '하리보 골드베렌 100주년 생일 기념전', 18, '(주)피플리',
'100년 역사의 글로벌 1위 젤리 하리보의 세계 최초 미디어 전시', 5);


------contentTime

insert into contentTime 
values(1,to_date('20230709','yyyy-mm-dd'),'17:00');

insert into contentTime 
values(2,to_date('20230623','yyyy-mm-dd'),'19:30');
insert into contentTime 
values(2,to_date('20230624','yyyy-mm-dd'),'14:00');
insert into contentTime 
values(2,to_date('20230624','yyyy-mm-dd'),'18:00');
insert into contentTime 
values(2,to_date('20230625','yyyy-mm-dd'),'17:00');
insert into contentTime 
values(2,to_date('20230630','yyyy-mm-dd'),'19:30');
insert into contentTime 
values(2,to_date('20230701','yyyy-mm-dd'),'14:00');
insert into contentTime 
values(2,to_date('20230701','yyyy-mm-dd'),'18:00');
insert into contentTime 
values(2,to_date('20230702','yyyy-mm-dd'),'17:00');

insert into contentTime 
values(3,to_date('20230610','yyyy-mm-dd'),'17:00');

insert into contentTime 
values(4,to_date('20230609','yyyy-mm-dd'),'20:00');

insert into contentTime 
values(5,to_date('20230617','yyyy-mm-dd'),'20:00');
insert into contentTime 
values(5,to_date('20230618','yyyy-mm-dd'),'20:00');

insert into contentTime 
values(6,to_date('20230611','yyyy-mm-dd'),'19:00');
insert into contentTime 
values(6,to_date('20230612','yyyy-mm-dd'),'19:00');



insert into contentTime 
values(7,to_date('20230701','yyyy-mm-dd'),'19:00');
insert into contentTime 
values(7,to_date('20230702','yyyy-mm-dd'),'19:00');

insert into contentTime 
values(8,to_date('20230605','yyyy-mm-dd'),'20:00');
insert into contentTime 
values(8,to_date('20230606','yyyy-mm-dd'),'20:00');
insert into contentTime 
values(8,to_date('20230607','yyyy-mm-dd'),'20:00');
insert into contentTime 
values(8,to_date('20230608','yyyy-mm-dd'),'20:00');
insert into contentTime 
values(8,to_date('20230609','yyyy-mm-dd'),'20:00');
insert into contentTime 
values(8,to_date('20230610','yyyy-mm-dd'),'15:00');
insert into contentTime 
values(8,to_date('20230610','yyyy-mm-dd'),'19:00');
insert into contentTime 
values(8,to_date('20230611','yyyy-mm-dd'),'14:00');
insert into contentTime 
values(8,to_date('20230611','yyyy-mm-dd'),'18:00');

insert into contentTime 
values(9,to_date('20230611','yyyy-mm-dd'),'14:00');
insert into contentTime 
values(9,to_date('20230611','yyyy-mm-dd'),'18:00');
insert into contentTime 
values(9,to_date('20230613','yyyy-mm-dd'),'20:00');
insert into contentTime 
values(9,to_date('20230614','yyyy-mm-dd'),'20:00');
insert into contentTime 
values(9,to_date('20230615','yyyy-mm-dd'),'20:00');
insert into contentTime 
values(9,to_date('20230616','yyyy-mm-dd'),'20:00');
insert into contentTime 
values(9,to_date('20230617','yyyy-mm-dd'),'14:00');
insert into contentTime 
values(9,to_date('20230617','yyyy-mm-dd'),'18:00');
insert into contentTime 
values(9,to_date('20230618','yyyy-mm-dd'),'14:00');
insert into contentTime 
values(9,to_date('20230618','yyyy-mm-dd'),'18:00');

insert into contentTime 
values(10,to_date('20230523','yyyy-mm-dd'),'20:00');
insert into contentTime 
values(10,to_date('20230524','yyyy-mm-dd'),'20:00');
insert into contentTime 
values(10,to_date('20230525','yyyy-mm-dd'),'20:00');
insert into contentTime 
values(10,to_date('20230526','yyyy-mm-dd'),'20:00');
insert into contentTime 
values(10,to_date('20230527','yyyy-mm-dd'),'15:00');
insert into contentTime 
values(10,to_date('20230527','yyyy-mm-dd'),'19:00');
insert into contentTime 
values(10,to_date('20230528','yyyy-mm-dd'),'14:00');
insert into contentTime 
values(10,to_date('20230528','yyyy-mm-dd'),'18:00');
insert into contentTime 
values(10,to_date('20230530','yyyy-mm-dd'),'20:00');
insert into contentTime 
values(10,to_date('20230531','yyyy-mm-dd'),'20:00');

insert into contentTime 
values(11,to_date('20230527','yyyy-mm-dd'),'14:00');
insert into contentTime 
values(11,to_date('20230528','yyyy-mm-dd'),'14:00');
insert into contentTime 
values(11,to_date('20230606','yyyy-mm-dd'),'17:00');
insert into contentTime 
values(11,to_date('20230607','yyyy-mm-dd'),'18:30');
insert into contentTime 
values(11,to_date('20230608','yyyy-mm-dd'),'18:30');
insert into contentTime 
values(11,to_date('20230609','yyyy-mm-dd'),'18:30');
insert into contentTime 
values(11,to_date('20230610','yyyy-mm-dd'),'17:00');
insert into contentTime 
values(11,to_date('20230611','yyyy-mm-dd'),'17:00');

insert into contentTime 
values(12,to_date('20230527','yyyy-mm-dd'),'14:00');
insert into contentTime 
values(12,to_date('20230528','yyyy-mm-dd'),'14:00');
insert into contentTime 
values(12,to_date('20230606','yyyy-mm-dd'),'17:00');
insert into contentTime 
values(12,to_date('20230607','yyyy-mm-dd'),'18:30');
insert into contentTime 
values(12,to_date('20230608','yyyy-mm-dd'),'18:30');
insert into contentTime 
values(12,to_date('20230609','yyyy-mm-dd'),'18:30');

insert into contentTime 
values(13,to_date('20230527','yyyy-mm-dd'),'14:00');
insert into contentTime 
values(13,to_date('20230528','yyyy-mm-dd'),'14:00');
insert into contentTime 
values(13,to_date('20230606','yyyy-mm-dd'),'17:00');
insert into contentTime 
values(13,to_date('20230607','yyyy-mm-dd'),'18:30');
insert into contentTime 
values(13,to_date('20230608','yyyy-mm-dd'),'18:30');
insert into contentTime 
values(13,to_date('20230609','yyyy-mm-dd'),'18:30');
insert into contentTime 
values(13,to_date('20230610','yyyy-mm-dd'),'17:00');
insert into contentTime 
values(13,to_date('20230611','yyyy-mm-dd'),'17:00');

insert into contentTime 
values(14,to_date('20230521','yyyy-mm-dd'),'18:00');
insert into contentTime 
values(14,to_date('20230524','yyyy-mm-dd'),'19:00');
insert into contentTime 
values(14,to_date('20230603','yyyy-mm-dd'),'18:00');
insert into contentTime 
values(14,to_date('20230611','yyyy-mm-dd'),'19:00');
insert into contentTime 
values(14,to_date('20230624','yyyy-mm-dd'),'16:30');

insert into contentTime 
values(15,to_date('20230526','yyyy-mm-dd'),'11:30');
insert into contentTime 
values(15,to_date('20230527','yyyy-mm-dd'),'11:30');
insert into contentTime 
values(15,to_date('20230528','yyyy-mm-dd'),'11:30');

insert into contentTime 
values(16,to_date('20230603','yyyy-mm-dd'),'13:00');
insert into contentTime 
values(16,to_date('20230604','yyyy-mm-dd'),'13:00');

insert into contentTime 
values(17,to_date('20230906','yyyy-mm-dd'),'상시상품');
insert into contentTime 
values(18,to_date('20230815','yyyy-mm-dd'),'상시상품');
	