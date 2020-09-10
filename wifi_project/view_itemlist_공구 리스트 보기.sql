-- [공구 리스트 ]
select * from `wifi`.`itemlist`;

-- 공구리스트 : 출력시, 숨김처리 안되있고, 오늘기준 마감일 안지난 글만 리스트 출력
select * from `wifi`.`itemlist` where istate != -1 and receive_check >= 0 ;

-- view 생성 : itemlist
create view `wifi`.`itemlist` as
select i.iidx, i.title, i.price, i.count_m, i.count_w, i.regdate, i.receive, DATEDIFF(receive, now()) as receive_check, 
	i.addr, i.location, i.content, i.photo, i.state as istate, i.view_count, i.category, 
	i.midx, ifnull(r.rvs_avg, 0) as rvs_avg, ifnull(r.rvs_totalRow, 0) as rvs_totalRow
from (wifi.item i) 
	left join (select midx, avg(score_s) as rvs_avg, count(*) as rvs_totalRow from wifi.item_rvs group by midx) r
		on i.midx=r.midx order
		by regdate desc;
        
-- view 생성 : itemlist 수정해서 다시 생성 20.09.10 (member추가조인 후 name속성추가)
CREATE VIEW `wifi`.`itemlist` AS
    SELECT 
        `i`.`iidx` AS `iidx`,
        `i`.`title` AS `title`,
        `i`.`price` AS `price`,
        `i`.`count_m` AS `count_m`,
        `i`.`count_w` AS `count_w`,
        `i`.`regdate` AS `regdate`,
        `i`.`receive` AS `receive`,
        (TO_DAYS(`i`.`receive`) - TO_DAYS(NOW())) AS `receive_check`,
        `i`.`addr` AS `addr`,
        `i`.`location` AS `location`,
        `i`.`content` AS `content`,
        `i`.`photo` AS `photo`,
        `i`.`state` AS `istate`,
        `i`.`view_count` AS `view_count`,
        `i`.`category` AS `category`,
        `i`.`midx` AS `midx`,
        `m`.`name` AS `name`,
        IFNULL(ROUND(`r`.`rvs_avg`, 1), 0) AS `rvs_avg`,
        IFNULL(`r`.`rvs_totalRow`, 0) AS `rvs_totalRow`
    FROM
        (`wifi`.`item` `i`
        LEFT JOIN (SELECT `wifi`.`item_rvs`.`midx` AS `midx`, AVG(`wifi`.`item_rvs`.`score_s`) AS `rvs_avg`, COUNT(0) AS `rvs_totalRow`
					FROM `wifi`.`item_rvs` GROUP BY `wifi`.`item_rvs`.`midx`) `r` ON `i`.`midx` = `r`.`midx`
        LEFT JOIN wifi.member m on i.midx = m.midx   
        )
    ORDER BY `i`.`regdate` DESC;