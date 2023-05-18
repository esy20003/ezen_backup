select * from admin;

insert into admin values('admin', 'admin', '김현우', '010-1564-7894', 'woo1@naver.com')
insert into admin values('hana', '1234', '김하나', '010-1564-7894', 'hana@naver.com')
insert into admin values('sung', '1111', '박성훈', '010-1564-7894', 'sung97@naver.com')
insert into admin values('like', '4567', '김사랑', '010-1564-7894', 'love12@naver.com')

select * from CONTENT;
--콘서트
insert into content (CSEQ, TITLE, LOCATION, CDATE, TDATE, ARTIST, CATEGORY, AGE)
values(content_cseq.nextVal, '2023 김기태 전국투어 콘서트 [위로] - 대구', '아양아트센터 아양홀', '2023-07-09', 
	'2023-05-19', '김기태', '콘서트', 7);
insert into content (CSEQ, TITLE, LOCATION, CDATE, TDATE, SEAT, ARTIST, CATEGORY, AGE)
values(content_seq.nextVal, '2023 이민우 M 20th Anniversary Live "STORY"', '신한pLay 스퀘어 라이브홀', '2023.06.23(금) 19:30', 
	'2023년 5월 23일(화) 오후 8시', '전석', '이민우', '콘서트', '8세 이상')
insert into content (CSEQ, TITLE, LOCATION, CDATE, TDATE, SEAT, ARTIST, CATEGORY, AGE)
values(content_seq.nextVal, '나윤선 Waking World 아산', '아산 경찰인재개발원 차일혁 홀', '2023.06.10(토) 17:00', 
	'2023년 5월 17일(수) 오후 2시', '전석', '나윤선 외', '콘서트', '만 7세 이상')
insert into content (CSEQ, TITLE, LOCATION, CDATE, TDATE, SEAT, ARTIST, CATEGORY, AGE)
values(content_seq.nextVal, '2023 "장구의 신" 박서진 Show - 대구', '대구 엑스코 5층 컨벤션홀', '2023.06.17(토) 18:00', 
	'2023년 5월 23일(화) 오후 8시', '전석', '박서진', '콘서트', '만 7세 이상')
insert into content (CSEQ, TITLE, LOCATION, CDATE, TDATE, SEAT, ARTIST, CATEGORY, AGE)
values(content_seq.nextVal, '짙은 콘서트 < 짙은 6월 >', '문화정원아트홀', '2023.06.03(토) 17:00', 
	'2023년 5월 18일(목) 오후 8시', '전석', '짙은', '콘서트', '만 7세 이상')
insert into content (CSEQ, TITLE, LOCATION, CDATE, TDATE, SEAT, ARTIST, CATEGORY, AGE)
values(content_seq.nextVal, '크랙샷 단독 콘서트 〈SPEAK OUT〉', ' 홍대 롤링홀', ' 2023.06.09(금) 20:00', 
	'2023년 5월 18일(목) 오후 5시', '스탠딩', '크랙샷', '콘서트', '8세 이상')
insert into content (CSEQ, TITLE, LOCATION, CDATE, TDATE, SEAT, ARTIST, CATEGORY, AGE)
values(content_seq.nextVal, '현대카드 슈퍼콘서트 27 브루노 마스(Bruno Mars) 시야제한석 및 취소 티켓', '서울 잠실종합운동장 올림픽주경기장', '2023.06.17(토) 20:00', 
	'2023년 5월 18일(목) 낮 12시', 'G1석 외', '브루노 마스(Bruno Mars)', '콘서트', '만 7세 이상')
insert into content (CSEQ, TITLE, LOCATION, CDATE, TDATE, SEAT, ARTIST, CATEGORY, AGE)
values(content_seq.nextVal, '2023 이민우 M 20th Anniversary Live "STORY"', '신한pLay 스퀘어 라이브홀', '2023년 06월 23일 (금) 19:30', 
	'2023년 5월 23일(화) 오후 8시', '전석', '이민우', '콘서트', '8세 이상')
insert into content (CSEQ, TITLE, LOCATION, CDATE, TDATE, SEAT, ARTIST, CATEGORY, AGE)
values(content_seq.nextVal, '2023 미스터빅(MR.BIG) 내한공연', '예스24 라이브홀', '2023.07.29(토) 18:00', 
	'2023년 5월 23일(화) 오후 8시', '전석', '이민우', '콘서트', '8세 이상')
insert into content (CSEQ, TITLE, LOCATION, CDATE, TDATE, SEAT, ARTIST, CATEGORY, AGE)
values(content_seq.nextVal, '2023 이민우 M 20th Anniversary Live "STORY"', '신한pLay 스퀘어 라이브홀', '2023년 06월 23일 (금) 19:30', 
	'2023년 5월 23일(화) 오후 8시', '전석', '이민우', '콘서트', '8세 이상')
	
select * from seat
alter table content modify title varchar(100);
alter table CONTENT add age number(5) default '0' not null;
select * from user_sequences;

insert into seat (seatseq, hallname, name1, price1, name2, price2)
values(seat_seatseq.nextVal, 'KBS부산홀', 'R석', 143000, 'S석', 132000)
insert into seat (seatseq, hallname, name1, price1, name2, price2, name3, price3)
values(seat_seatseq.nextVal, '잠실 실내체육관', 'vip standing', 220000, 'vip seated', 220000, 'seated', 165000)
insert into seat (seatseq, hallname, name1, price1, name2, price2)
values(seat_seatseq.nextVal, '올림픽공원 올림픽홀', 'R석', 143000, 'S석', 121000)
insert into seat (seatseq, hallname, name1, price1, name2, price2, name3, price3, name4, price4, name5, price5, name6, price6)
values(seat_seatseq.nextVal, '서울 잠실종합운동장 올림픽주경기장', 'G1석', 250000, 'G2석', 210000, 'G3석', 165000, 'P석', 176000, 'R석', 132000, 'S석', 99000, 'A석', 77000,)
insert into seat (seatseq, hallname, name1, price1)
values(seat_seatseq.nextVal, '블루스퀘어 마스터카드홀', '전석', 110000)
insert into seat (seatseq, hallname, name1, price1, name2, price2, name3, price3, name4, price4)
values(seat_seatseq.nextVal, '수원종합운동장 실내체육관', 'SR석', 154000, 'R석', 132000, 'S석', 110000, 'A석', 99000)
insert into seat (seatseq, hallname, name1, price1)
values(seat_seatseq.nextVal, '백암아트홀', '전석', 99000)
insert into seat (seatseq, hallname, name1, price1, name2, price2)
values(seat_seatseq.nextVal, '대구 엑스코 오디토리움', 'vip석', 143000, 'R석', 132000)
insert into seat (seatseq, hallname, name1, price1, name2, price2, name3, price3, name4, price4, name5, price5)
values(seat_seatseq.nextVal, '예술의전당 오페라극장', 'R석', 160000, 'S석', 130000, 'A석', 100000, 'B석', 70000, 'C석', 50000)
insert into seat (seatseq, hallname, name1, price1, name2, price2, name3, price3, name4, price4, name5, price5)
values(seat_seatseq.nextVal, '잠실야구장', '블루석', 20000, '오렌지석', 18000, '레드석', 16000, '네이비석', 13000, '외야석', 8000)
insert into seat (seatseq, hallname, name1, price1, name2, price2, name3, price3, name4, price4, name5, price5, name6, price6)
values(seat_seatseq.nextVal, '수원월드컵경기장', '프리미엄석', 41000, '벤치석', 31000, 'W석', 26000, 'E석', 15000, 'N석', 15000, '원정석', 15000)
insert into seat (seatseq, hallname, name1, price1, name2, price2, name3, price3)
values(seat_seatseq.nextVal, '고척스카이돔', '테이블석', 55000, '내야', 15000, '외야', 12000)
insert into seat (seatseq, hallname, name1, price1, name2, price2, name3, price3, name4, price4)
values(seat_seatseq.nextVal, '목동종합운동장', 'E석', 10000, 'W석', 12000, '원정석', 12000, '바테이블석', 20000)
insert into seat (seatseq, hallname, name1, price1, name2, price2, name3, price3, name4, price4)
values(seat_seatseq.nextVal, '샤롯데씨어터', 'vip석', 160000, 'R석', 140000, 'S석', 110000, 'A석', 80000)
insert into seat (seatseq, hallname, name1, price1, name2, price2, name3, price3, name4, price4, name5, price5)
values(seat_seatseq.nextVal, '블루스퀘어 신한카드홀', 'vip석', 170000, 'op석', 160000, 'R석', 140000, 'S석', 110000, 'A석', 80000)


