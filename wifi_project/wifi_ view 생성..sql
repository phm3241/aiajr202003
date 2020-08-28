SELECT * FROM wifi.myitem;

-- view 생성 : myitem
create view `wifi`.`myitem` as
SELECT i.midx as seller, i.iidx, i.title, i.count_m, i.count_w, i.receive, i.category,
	   o.oidx, o.midx as buyer, o.state as ostate, 
       p.pidx, p.state as pstate
from wifi.item i 
left join wifi.order o on i.iidx=o.iidx
left join wifi.purchase p on o.oidx=p.oidx;

-- 나의 공구판매현황 보기 : midx(seller) 받아서 리스트 반환 (제목. 구매정원. 대기정원. 수령일) ㅡ> 상태라벨분류
select seller, iidx, title, count_m, count_w, receive,
		ifnull(oidx,-1) as oidx, ifnull(buyer,-1) as buyer, ifnull(ostate,-1) as ostate, 
        ifnull(pidx,-1) as pidx, ifnull(pstate, -1) as pstate
from wifi.myitem
where iidx=5 ;

select count(ifnull(pidx,-1)) from wifi.myitem where iidx=5;


-- -------------------------------------------------------------
-- 판매자 평점
select * from wifi.item_rvs; 
-- 판매자 평균평점 및 총평점개수
select midx, avg(score_s) as rvs_avg, count(*) as rvs_totalRow from wifi.item_rvs group by midx;

-- -------------------------------------------------------------
-- 구매자 평점 
select * from wifi.item_rvb;
-- 구매자 평균평점 및 총평점개수
select midx, avg(score_b) as rvb_avg, count(*) as rvb_totalRow from wifi.item_rvb group by midx;

-- -------------------------------------------------------------
-- view 생성 : myitem_buyer 내 판매글의 참여자 리스트 보기  
-- create view wifi.myitem_buyer as
select mi.iidx, mi.buyer, mi.ostate, m.name, ifnull(r.rvb_avg, 0) as rvb_avg, ifnull(r.rvb_totalRow, 0) as rvb_totalRow
from wifi.myitem mi 
	join wifi.member m on mi.buyer = m.midx
	left join (select midx, avg(score_b) as rvb_avg, count(*) as rvb_totalRow from wifi.item_rvb group by midx) r on m.midx=r.midx; 

select * from wifi.order;

-- 내 판매글의 참여자 리스트 보기 : iidx 받아서 리스트 반환 (참여자 이름. 평균평점. 총평점개수)
-- create view wifi.myitem_buyer as
select mi.iidx, mi.buyer, mi.ostate, m.name, ifnull(r.rvb_avg, 0) as rvb_avg, ifnull(r.rvb_totalRow, 0) as rvb_totalRow
from wifi.myitem mi 
	join wifi.member m on mi.buyer = m.midx
	left join (select midx, avg(score_b) as rvb_avg, count(*) as rvb_totalRow from wifi.item_rvb group by midx) r on m.midx=r.midx; 




