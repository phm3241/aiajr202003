SELECT * FROM wifi.myitemlist;

-- 내 구매글 
select * from wifi.myitemlist where buyer=1;

-- 참여신청
insert into wifi.order (midx, iidx) values (2, 10);

-- 현재참여자수 
select count_w - count(buyer) 
from wifi.myitemlist
where iidx = 29;

-- 참여자 중복확인
select count(*)
from wifi.myitemlist
where iidx = 5 and buyer=2;

