select * from review_reply;
select * from tabs;

select * from review_board;
select * from member;

insert into review_reply(repseq, mseq, rseq, replycontent) values(review_reply_repseq.nextVal ,2 , 2, '테스트' );
insert into review_reply(repseq, mseq, rseq, replycontent) values(review_reply_repseq.nextVal ,3 , 3, '테스트' );
insert into review_reply(repseq, mseq, rseq, replycontent) values(review_reply_repseq.nextVal ,4 , 4, '테스트' );
insert into review_reply(repseq, mseq, rseq, replycontent) values(review_reply_repseq.nextVal ,5 , 5, '테스트' );
insert into review_reply(repseq, mseq, rseq, replycontent) values(review_reply_repseq.nextVal ,6 , 6, '테스트' );
insert into review_reply(repseq, mseq, rseq, replycontent) values(review_reply_repseq.nextVal ,7 , 7, '테스트' );
insert into review_reply(repseq, mseq, rseq, replycontent) values(review_reply_repseq.nextVal ,8 , 8, '테스트' );
insert into review_reply(repseq, mseq, rseq, replycontent) values(review_reply_repseq.nextVal ,9 , 9, '테스트' );
insert into review_reply(repseq, mseq, rseq, replycontent) values(review_reply_repseq.nextVal ,1 , 1, '테스트2222' );

alter table review_reply add userid varchar2(20);
































