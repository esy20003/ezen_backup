select * from seat
select * from content;
--seatseq는 필요없어서 버리겠습니다
DROP SEQUENCE seat_seatseq;
ALTER TABLE seat DROP PRIMARY KEY;
select * from user_sequences;

insert into seat (locationNum, hallname, area, price)
values(1, 'KBS부산홀', 'R석', 143000);
insert into seat (locationNum, hallname, area, price)
values(1, 'KBS부산홀','S석', 132000);

insert into seat (locationNum, hallname, area, price)
values(2, '잠실 실내체육관', 'vip standing', 220000);
insert into seat (locationNum, hallname, area, price)
values(2, '잠실 실내체육관','vip seated', 220000);
insert into seat (locationNum, hallname, area, price)
values(2, '잠실 실내체육관','seated', 165000);

insert into seat (locationNum, hallname, area, price)
values(3, '올림픽공원 올림픽홀', 'R석', 143000);
insert into seat (locationNum, hallname, area, price)
values(3, '올림픽공원 올림픽홀', 'S석', 121000);

insert into seat (locationNum, hallname, area, price)
values(4, '서울 잠실종합운동장 올림픽주경기장', 'G1석', 250000);
insert into seat (locationNum, hallname, area, price)
values(4, '서울 잠실종합운동장 올림픽주경기장','G2석', 210000);
insert into seat (locationNum, hallname, area, price)
values(4, '서울 잠실종합운동장 올림픽주경기장','G3석', 165000);
insert into seat (locationNum, hallname, area, price)
values(4, '서울 잠실종합운동장 올림픽주경기장','P석', 176000);
insert into seat (locationNum, hallname, area, price)
values(4, '서울 잠실종합운동장 올림픽주경기장', 'R석', 132000);
insert into seat (locationNum, hallname, area, price)
values(4, '서울 잠실종합운동장 올림픽주경기장', 'S석', 99000);

insert into seat (locationNum, hallname, area, price)
values(5, '블루스퀘어 마스터카드홀', '전석', 110000);

insert into seat (locationNum, hallname, area, price)
values(6, '수원종합운동장 실내체육관', 'SR석', 154000);
insert into seat (locationNum, hallname, area, price)
values(6, '수원종합운동장 실내체육관','R석', 132000);
insert into seat (locationNum, hallname, area, price)
values(6, '수원종합운동장 실내체육관', 'S석', 110000);
insert into seat (locationNum, hallname, area, price)
values(6, '수원종합운동장 실내체육관','A석', 99000);

insert into seat (locationNum, hallname, area, price)
values(7, '백암아트홀', '전석', 99000);

insert into seat (locationNum, hallname, area, price)
values(8, '대구 엑스코 오디토리움', 'vip석', 143000);
insert into seat (locationNum, hallname, area, price)
values(8, '대구 엑스코 오디토리움','R석', 132000);

insert into seat (locationNum, hallname, area, price)
values(9, '예술의전당 오페라극장', 'R석', 160000);
insert into seat (locationNum, hallname, area, price)
values(9, '예술의전당 오페라극장', 'S석', 130000);
insert into seat (locationNum, hallname, area, price)
values(9, '예술의전당 오페라극장', 'A석', 100000);
insert into seat (locationNum, hallname, area, price)
values(9, '예술의전당 오페라극장','B석', 70000);
insert into seat (locationNum, hallname, area, price)
values(9, '예술의전당 오페라극장','C석', 50000);

insert into seat (locationNum, hallname, area, price)
values(10, '잠실야구장', '블루석', 20000);
insert into seat (locationNum, hallname, area, price)
values(10, '잠실야구장','오렌지석', 18000);
insert into seat (locationNum, hallname, area, price)
values(10, '잠실야구장','레드석', 16000);
insert into seat (locationNum, hallname, area, price)
values(10, '잠실야구장', '네이비석', 13000);
insert into seat (locationNum, hallname, area, price)
values(10, '잠실야구장','외야석', 8000);

insert into seat (locationNum, hallname, area, price)
values(11, '수원월드컵경기장', '프리미엄석', 41000);
insert into seat (locationNum, hallname, area, price)
values(11, '수원월드컵경기장','벤치석', 31000);
insert into seat (locationNum, hallname, area, price)
values(11, '수원월드컵경기장', 'W석', 26000);
insert into seat (locationNum, hallname, area, price)
values(11, '수원월드컵경기장', 'E석', 15000);
insert into seat (locationNum, hallname, area, price)
values(11, '수원월드컵경기장', 'N석', 15000);
insert into seat (locationNum, hallname, area, price)
values(11, '수원월드컵경기장', '원정석', 15000);

insert into seat (locationNum, hallname, area, price)
values(12, '고척스카이돔', '테이블석', 55000);
insert into seat (locationNum, hallname, area, price)
values(12, '고척스카이돔', '내야', 15000);
insert into seat (locationNum, hallname, area, price)
values(12, '고척스카이돔','외야', 12000);

insert into seat (locationNum, hallname, area, price)
values(13, '삼성라이온즈파크', 'VIP석', 50000);
insert into seat (locationNum, hallname, area, price)
values(13, '삼성라이온즈파크','익사이팅석', 25000);
insert into seat (locationNum, hallname, area, price)
values(13, '삼성라이온즈파크', '블루존', 15000);
insert into seat (locationNum, hallname, area, price)
values(13, '삼성라이온즈파크', '3루내야지정석', 13000);
insert into seat (locationNum, hallname, area, price)
values(13, '삼성라이온즈파크','1루내야지정석',10000);
insert into seat (locationNum, hallname, area, price)
values(13, '삼성라이온즈파크','잔디석',10000);

insert into seat (locationNum, hallname, area, price)
values(14, '샤롯데씨어터', 'vip석', 160000);
insert into seat (locationNum, hallname, area, price)
values(14, '샤롯데씨어터' 'R석', 140000);
insert into seat (locationNum, hallname, area, price)
values(14, '샤롯데씨어터','S석', 110000);
insert into seat (locationNum, hallname, area, price)
values(14, '샤롯데씨어터','A석', 80000);

insert into seat (locationNum, hallname, area, price)
values(15, '블루스퀘어 신한카드홀', 'vip석', 170000);
insert into seat (locationNum, hallname, area, price)
values(15, '블루스퀘어 신한카드홀','op석', 160000);
insert into seat (locationNum, hallname, area, price)
values(15, '블루스퀘어 신한카드홀', 'R석', 140000);
insert into seat (locationNum, hallname, area, price)
values(15, '블루스퀘어 신한카드홀', 'S석', 110000);
insert into seat (locationNum, hallname, area, price)
values(15, '블루스퀘어 신한카드홀', 'A석', 80000);
