--view들 만드는 파일

--1. content+locationNum+seat 합친 뷰

CREATE OR REPLACE VIEW content_loc_seat_view 
AS 
SELECT c.cseq, c.title, c.locationNum, lo.locationName, c.artist, s.area, s.price
FROM CONTENT c 
INNER JOIN LOCATIONNUM lo 
on c.locationNum=lo.locationNum
INNER JOIN seat s 
on c.locationNum=s.locationNum;

select* from content_loc_seat_view order by cseq;


select*from CONTENT;
select*from locationNum;
select*from seat;
select*from contentTime;


--2. content+contentTime 합친 뷰

CREATE OR REPLACE VIEW content_time_view
AS 
SELECT  c.cseq, c.title, t.contentDate, t.contentTime
FROM content c
INNER JOIN contentTime t
ON c.cseq=t.cseq;

select*from content_time_view order by cseq;



--3. cart+member+content 합친 뷰 만들기

select * from CART;

alter table cart add column mseq2 varchar2(5);

CREATE OR REPLACE VIEW cart_view
AS 
SELECT  c.cseq, c.title, t.contentDate, t.contentTime
FROM content c
INNER JOIN contentTime t
ON c.cseq=t.cseq;















