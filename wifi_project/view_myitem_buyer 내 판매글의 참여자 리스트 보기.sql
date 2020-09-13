-- [내 판매글 참여자 리스트 ]

-- view 생성 : myitem_buyer 내 판매글의 참여자 리스트 보기  
create view wifi.myitem_buyer as
select mi.iidx, mi.buyer, m.name, ifnull(r.rvb_avg, 0) as rvb_avg, ifnull(r.rvb_totalRow, 0) as rvb_totalRow, 
		mi.ostate, ifnull(mi.pstate, 3) as pstate, ifnull(mi.qr, 3) as qr
from wifi.myitem mi 
   join wifi.member m on mi.buyer = m.midx
   left join (select midx, avg(score_b) as rvb_avg, count(*) as rvb_totalRow from wifi.item_rvb group by midx) r on m.midx=r.midx;
   

-- view 생성 추가(20.09.13) : oidx 추가. 구매자로 상태바꾸려고 purchase의 state 변경할때.. oidx 필요..
CREATE VIEW `wifi`.`mybuyerlist` AS
    SELECT 
        `mi`.`iidx` AS `iidx`,
        `mi`.`buyer` AS `buyer`,
        `m`.`name` AS `name`,
        IFNULL(`r`.`rvb_avg`, 0) AS `rvb_avg`,
        IFNULL(`r`.`rvb_totalRow`, 0) AS `rvb_totalRow`,
        `mi`.`oidx` AS `oidx`,
        `mi`.`ostate` AS `ostate`,
        `mi`.`pstate` AS `pstate`,
        `mi`.`qr` AS `qr`
    FROM
        ((`wifi`.`myitemlist` `mi`
        JOIN `wifi`.`member` `m` ON ((`mi`.`buyer` = `m`.`midx`)))
        LEFT JOIN (SELECT 
            `wifi`.`item_rvb`.`midx` AS `midx`,
                AVG(`wifi`.`item_rvb`.`score_b`) AS `rvb_avg`,
                COUNT(0) AS `rvb_totalRow`
        FROM
            `wifi`.`item_rvb`
        GROUP BY `wifi`.`item_rvb`.`midx`) `r` ON ((`m`.`midx` = `r`.`midx`)));


-- view : mybuyerlist 내 판매글 참여자 리스트 
SELECT * FROM wifi.mybuyerlist;


-- 내 판매글 참여자 리스트 보기 : iidx 받아서 ㅡ> 구매자 목록(구매자 이름, 평균평점, 총평점개수 + pstate선택) 화면출력
select * from wifi.myitem_buyer
where iidx=2; 

-- 내 판매글 현재 참여자 수 
select count(*) from wifi.myitem_buyer
where iidx=5 and ostate != 1; 




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
-- 구매자 이름 평균평점 및 총평점개수
select r.midx, m.name, avg(score_b) as rvb_avg, count(*) as rvb_totalRow 
from wifi.item_rvb r join wifi.member m on r.midx=m.midx
group by midx having midx=1;





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
-- 구매자 이름 평균평점 및 총평점개수
select r.midx, m.name, avg(score_b) as rvb_avg, count(*) as rvb_totalRow 
from wifi.item_rvb r join wifi.member m on r.midx=m.midx
group by midx having midx=1;