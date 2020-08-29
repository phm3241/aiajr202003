-- [내 판매글 참여자 리스트 ]

-- view 생성 : myitem_buyer 내 판매글의 참여자 리스트 보기  
create view wifi.myitem_buyer as
select mi.iidx, mi.buyer, m.name, ifnull(r.rvb_avg, 0) as rvb_avg, ifnull(r.rvb_totalRow, 0) as rvb_totalRow, ifnull(mi.ostate, 3) as ostate , ifnull(mi.pstate, 3) as pstate
from wifi.myitem mi 
   join wifi.member m on mi.buyer = m.midx
   left join (select midx, avg(score_b) as rvb_avg, count(*) as rvb_totalRow from wifi.item_rvb group by midx) r on m.midx=r.midx;


-- view : myitem_buyer 내 판매글 참여자 리스트 
SELECT * FROM wifi.myitem_buyer;


-- 내 판매글 참여자 리스트 보기 : iidx 받아서 ㅡ> 구매자 목록(구매자 이름, 평균평점, 총평점개수 + pstate선택) 화면출력
select * from wifi.myitem_buyer
where iidx=2; 