--장바구니


select * from cart;

insert into cart(mseq, cseq, CONTENTDATE,contentTime, locationNum, area) 
values(7,11, to_date('20230528','yyyy-mm-dd'),'14:00',12,'테이블석');
insert into cart(mseq, cseq, CONTENTDATE,contentTime, locationNum, area) 
values(10,6, to_date('20230612','yyyy-mm-dd'),'19:00',4,'G1석');
insert into cart(mseq, cseq, CONTENTDATE,contentTime, locationNum, area) 
values(2,3, to_date('20230610','yyyy-mm-dd'),'17:00',1,'R석');