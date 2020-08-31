-- [공구 리스트 ]
select * from `wifi`.`itemlist`;

-- view 생성 : itemlist
create view `wifi`.`itemlist` as
select i.iidx, i.title, i.price, i.count_m, i.count_w, i.regdate, i.receive, DATEDIFF(receive, now()) as receive_check, 
	i.addr, i.location, i.content, i.photo, i.state as istate, i.view_count, i.category, 
	i.midx, ifnull(r.rvs_avg, 0) as rvs_avg, ifnull(r.rvs_totalRow, 0) as rvs_totalRow
from (wifi.item i) 
	left join (select midx, avg(score_s) as rvs_avg, count(*) as rvs_totalRow from wifi.item_rvs group by midx) r
		on i.midx=r.midx order
		by regdate desc;