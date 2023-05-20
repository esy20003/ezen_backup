--주문 내역 간략하게 나오는거

insert into orders(oseq,mseq) values(orders_oseq.nextVal,1);
insert into orders(oseq,mseq) values(orders_oseq.nextVal,2);
insert into orders(oseq,mseq) values(orders_oseq.nextVal,3);
insert into orders(oseq,mseq) values(orders_oseq.nextVal,4);
insert into orders(oseq,mseq) values(orders_oseq.nextVal,5);

select * from orders;
select * from member;
select * from content;
select * from locationNum;
select * from contentTime;
select * from seat;
select * from order_detail;


--주문 상세 내역
insert into order_detail(odseq,oseq,mseq,cseq,locationNum,contentDate,contentTime,area,mseq2,quantity) 
values(order_detail_odseq.nextVal,1,1,5,4,to_date('20230617','yyyy-mm-dd'),'20:00','G1석',3,2);

insert into order_detail(odseq,oseq,mseq,cseq,locationNum,contentDate,contentTime,area,mseq2) 
values(order_detail_odseq.nextVal,2,2,6,4,to_date('20230611','yyyy-mm-dd'),'19:00','G1석',3);
insert into order_detail(odseq,oseq,mseq,cseq,locationNum,contentDate,contentTime,area,mseq2) 
values(order_detail_odseq.nextVal,3,3,10,1,to_date('20230608','yyyy-mm-dd'),'18:30','R석',4);
insert into order_detail(odseq,oseq,mseq,cseq,locationNum,contentDate,contentTime,area,mseq2) 
values(order_detail_odseq.nextVal,3,3,10,1,to_date('20230609','yyyy-mm-dd'),'18:30','S석',3);

insert into order_detail(odseq,oseq,mseq,cseq,locationNum,contentDate,contentTime,area,mseq2,quantity) 
values(order_detail_odseq.nextVal,3,3,7,14,to_date('20230605','yyyy-mm-dd'),'20:00','vip석',4,4);
insert into order_detail(odseq,oseq,mseq,cseq,locationNum,contentDate,contentTime,area,mseq2) 
values(order_detail_odseq.nextVal,4,4,16,12,to_date('20230701','yyyy-mm-dd'),'19:00','내야',9);
insert into order_detail(odseq,oseq,mseq,cseq,locationNum,contentDate,contentTime,area,mseq2,quantity) 
values(order_detail_odseq.nextVal,4,4,1,8,to_date('20230709','yyyy-mm-dd'),'17:00','vip석',10,3);
insert into order_detail(odseq,oseq,mseq,cseq,locationNum,contentDate,contentTime,area,mseq2) 
values(order_detail_odseq.nextVal,5,5,2,5,to_date('20230624','yyyy-mm-dd'),'14:00','전석',11);