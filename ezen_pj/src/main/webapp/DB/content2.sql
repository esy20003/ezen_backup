--뮤지컬만 데이터 추가하는 페이지
--category==>콘서트=1, 뮤지컬=2, 스포츠=3, 페스티벌=4, 전시/행사=5

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
