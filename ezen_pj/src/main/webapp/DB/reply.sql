select * from review_reply;
select * from tabs;

select * from review_board;
select * from member;

insert into review_reply(repseq, mseq, rseq, replycontent) values(review_reply_repseq.nextVal ,2 , 3, '테스트1' );
insert into review_reply(repseq, mseq, rseq, replycontent) values(review_reply_repseq.nextVal ,3 , 4, '테스트2' );
insert into review_reply(repseq, mseq, rseq, replycontent) values(review_reply_repseq.nextVal ,4 , 5, '테스트3' );
insert into review_reply(repseq, mseq, rseq, replycontent) values(review_reply_repseq.nextVal ,5 , 6, '테스트4' );
insert into review_reply(repseq, mseq, rseq, replycontent) values(review_reply_repseq.nextVal ,6 , 7, '테스트5' );
insert into review_reply(repseq, mseq, rseq, replycontent) values(review_reply_repseq.nextVal ,7 , 8, '테스트6' );
insert into review_reply(repseq, mseq, rseq, replycontent) values(review_reply_repseq.nextVal ,8 , 9, '테스트7' );
insert into review_reply(repseq, mseq, rseq, replycontent) values(review_reply_repseq.nextVal ,9 , 1, '테스트8' );

select * from review_reply_member;
































