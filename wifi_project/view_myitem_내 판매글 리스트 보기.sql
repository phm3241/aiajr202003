-- [내 판매글 리스트 ]

-- view 생성 : myitem
create view `wifi`.`myitem` as
SELECT i.midx as seller, i.iidx, i.title, i.count_m, i.count_w, i.receive, DATEDIFF(receive, now()) as receive_check, i.category, i.state as istate, 
      ifnull(o.midx, -1) as buyer, ifnull(o.oidx, -1) as oidx, ifnull(o.state, -1) as ostate, 
	  ifnull(p.pidx, -1) as pidx, ifnull(p.state, -1) as pstate, ifnull(p.qr, -1) as qr
from wifi.item i 
   left join wifi.order o on i.iidx=o.iidx
   left join wifi.purchase p on o.oidx=p.oidx;

-- myitem보기
SELECT * FROM wifi.myitem;


-- 내 판매글 리스트 보기 : midx 받아서 ㅡ> 판매글 목록 (상태라벨, 제목) 화면출력
SELECT seller, iidx, title, count_m, count_w, receive, category, DATEDIFF(receive, now()) as receive_check 
FROM wifi.myitem where seller=1 group by iidx; 




-- 나의 공구판매현황 : 상태분류 -------------------------------------------------------------------------------------------------
-- pidx체크 ㅡ> 0이면 상태라벨 : 모집중 (purchase에 데이터가 없으므로..)
select count(pidx) from wifi.myitem where iidx=2;  -- 결과 0 : 모집중 상태 
    -- 모집중인데, 수령일이 오늘이후이면 ㅡ> 판매실패 상태
    SELECT iidx, now(), receive, DATEDIFF(receive, now()) from wifi.myitem;
      -- 모집중 상태일 떄, 현재 참여자수
      select count(oidx) from wifi.myitem where iidx=2 and ostate=0; 
         -- 현재 참여자의 이름. 평균평점. 총평점개수
       


-- pidx체크 ㅡ> 0이 아니면 상태라벨 : 모집완료 (purchase에 데이터가 있으므로..참여자는 구매정원만큼 한번에 선택하므로 데이터가 있으면 우선 모집완료상태가 된다. )
select count(pidx) from wifi.myitem where iidx=5;  -- 결과 3 : 모집완료 상태
   -- 모집완료인데, 수령일이 오늘이후이면 ㅡ> 판매완료 상태
    SELECT iidx, now(), receive, DATEDIFF(receive, now()) as receive_check from wifi.myitem;
   -- 모집완료 상태일 떄, 결제상태 확인
   select mi.buyer, m.name, mi.pstate from wifi.myitem mi join wifi.member m on mi.buyer=m.midx where iidx=5; 
    -- 수령일이 오늘이면, 판매완료


   



-- 나의 공구판매현황 보기 : midx(seller) 받아서 리스트 반환 (제목. 구매정원. 대기정원. 수령일) ㅡ> 상태라벨분류
select seller, iidx, title, count_m, count_w, receive,
      ifnull(oidx,-1) as oidx, ifnull(buyer,-1) as buyer, ifnull(ostate,-1) as ostate, 
        ifnull(pidx,-1) as pidx, ifnull(pstate, -1) as pstate
from wifi.myitem
where seller=1;

-- 나의 공구판매현황 보기 : midx(seller) 받아서 리스트 반환 ㅡ> 화면표시 (제목. 구매정원. 대기정원. 수령일) 
select seller, iidx, title, count_m, count_w, receive,
      ifnull(oidx,-1) as oidx, ifnull(buyer,-1) as buyer, ifnull(ostate,-1) as ostate, 
        ifnull(pidx,-1) as pidx, ifnull(pstate, -1) as pstate
from wifi.myitem
where seller=1 and iidx=5;






