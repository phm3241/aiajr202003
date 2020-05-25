
--2020.05.22. [실습] join & sub query

-- 1 마당서점의 고객이 요구하는 다음 질문에 대해 SQL 문을 작성하시오.
-- (5) 박지성이 구매한 도서의 출판사 수
--부속질의 : 박지성의 custid
select custid 
from customer
where name='박지성';

--부속질의 : 박지성이 구매한 bookid
select bookid
from orders
where custid=1;

--풀이1 : 중첩질의 2번사용
select count(distinct publisher)
from book b
where b.bookid in(select distinct bookid 
                  from orders o 
                  where custid=(select custid 
                                from customer 
                                where name='박지성') 
                  and b.bookid=o.bookid);

--풀이2 :  중첩질의 사용
select count(distinct publisher)
from book b natural join orders o
where custid=(select custid 
              from customer 
              where name='박지성');


--◆ 참고풀이 : 조인 사용해서 풀이
select count(distinct publisher)
from customer c, orders o, book b
where c.custid=o.custid and o.bookid=b.bookid
and c.name='박지성';





-- (6) 박지성이 구매한 도서의 이름, 가격, 정가와 판매가격의 차이
--부속질의 : 박지성의 custid
select custid 
from customer
where name='박지성';

---풀이 : 중첩질의 사용
select bookname, saleprice, price-saleprice as pricegap 
from book b natural join orders o
where custid=(select custid 
              from customer 
              where name='박지성');

--◆ 참고풀이 : 조인 사용해서 풀이
select bookname, saleprice, price-saleprice as pricegap 
from customer c, orders o, book b
where c.custid=o.custid and o.bookid=b.bookid
and c.name='박지성';
        




-- (7) 박지성이 구매하지 않은 도서의 이름
--부속질의 : 박지성의 custid
select custid 
from customer
where name='박지성';

--부속질의 : 박지성이 구매한 bookid
select bookid
from orders
where custid=1;

--풀이 : 중첩질의 사용
select bookname, bookid
from book b 
where b.bookid not in(select bookid 
                      from orders o 
                      where custid=(select custid 
                                    from customer 
                                    where name='박지성') 
                      and b.bookid=o.bookid);
                      
--◆ 참고풀이 : 조인 사용해서 풀이
select bookname, bookid
from book b 
where b.bookid not in(select bookid 
                      from orders o, customer c 
                      where o.custid=c.custid
                      and name='박지성'); 



-- 2 마당서점의 운영자와 경영자가 요구하는 다음질문에 대해 SQL 문을 작성하시오.

-- (8) 주문하지 않은 고객의 이름 (부속질의사용)
--부속질의 : 주문한 고객의 아이디
select distinct custid 
from orders o 
order by custid;

--풀이 : 주문하지 않은 고객의 이름 (부속질의사용)
select c.name
from customer c
where c.custid not in(select distinct custid from orders o);

--◆ 참고풀이 : outer join으로 풀이 
select c.name
from orders o, customer c
where o.custid(+)=c.custid
and o.orderid is null;





-- (9) 주문금액의 총액과 주문의 평균금액
select sum(saleprice), avg(saleprice)
from orders;




-- (10) 고객의 이름과 고객별 구매액
-- 고객별(custid) 구매액
select custid, sum(saleprice)
from orders o 
group by o.custid;

--풀이 : 스칼라 부속질의
select (select name 
        from customer c 
        where o.custid=c.custid) as "고객이름",
        sum(saleprice) as "구매액"  
from orders o 
group by o.custid;

--◆ 참고풀이 : join으로 풀이 
select c.name, sum(saleprice)
from orders o, customer c
where o.custid=c.custid
group by c.name;





-- (11) 고객의 이름과 고객이 구매한 도서목록
-- 주문목록을 고객아이디 기준으로 정렬(custid)
select custid, bookid
from orders
order by custid;

--풀이 : 스칼라 부속질의 사용
select (select name from customer c 
        where o.custid=c.custid) as "고객이름", 
       (select bookname from book b 
        where o.bookid=b.bookid) as "구매도서"
from orders o;

--풀이 : 조인 사용
select c.name, b.bookname 
from orders o, customer c, book b
where o.custid=c.custid and o.bookid=b.bookid
order by c.custid;




-- (12) 도서의 가격 (Book 테이블)과 판매가격(Orders 테이블)의 차이가 가장 많은 주문
--풀이 : join, rownum 사용
select o.*, b.*, b.price-o.saleprice as "판매가격차"
from orders o, book b
where o.bookid = b.bookid 
and rownum=1
order by b.price-o.saleprice desc;

--◆ 참고풀이 : join, max로 풀이 
select b.bookname, b.price-o.saleprice
from orders o, book b
where o.bookid = b.bookid
and price-saleprice =(select max(b.price-o.saleprice)
                      from orders o, book b
                      where o.bookid = b.bookid);





-- (13) 도서의 판매액 평균보다 자신의 구매액 평균이 더 높은 고객의 이름
--부속질의 : 도서의 판매액 평균
select avg(saleprice)
from orders;

--풀이 : 중첩질의 사용
select c.name   --, o.custid, avg(saleprice)
from orders o, customer c
where o.custid = c.custid
group by c.name
having avg(saleprice) > (select avg(saleprice) 
                         from orders);




-- 3. 마당서점에서 다음의 심화된 질문에 대해 SQL 문을 작성하시오.
-- (1) 박지성이 구매한 도서의 출판사와 같은 출판사에서 도서를 구매한 고객의 이름
--부속질의 : 박지성이 구매한 도서의 출판사
select distinct b.publisher
from orders o, book b, customer c
where o.bookid=b.bookid 
    and o.custid=c.custid
    and o.custid=1;

--풀이 : 중첩질의 사용
select c.name
from orders o, book b, customer c
where o.bookid=b.bookid and o.custid=c.custid
    and c.name != '박지성'
    and b.publisher in(select distinct b.publisher
                       from orders o, book b, customer c
                       where o.bookid=b.bookid and o.custid=c.custid
                       and c.name='박지성');



-- (2) 두 개 이상의 서로 다른 출판사에서 도서를 구매한 고객의 이름
--부속질의 : 고객별 구매도서의 출판사수
select c.name, o.custid, b.publisher, count(*) 
from orders o, book b, customer c
where o.bookid=b.bookid 
    and o.custid=c.custid
group by c.name, o.custid, b.publisher
order by o.custid;

--풀이 : 인라인 뷰 사용
select name
from (select c.name, o.custid, b.publisher, count(*) 
      from orders o, book b, customer c
      where o.bookid=b.bookid and o.custid=c.custid
      group by c.name, o.custid, b.publisher
      order by o.custid)
group by name
having count(*) >=2;

--◆ 참고풀이 : 풀이 
select name
from orders o, book b, customer c
where o.bookid=b.bookid and o.custid=c.custid
group by name
having count(distinct publisher) >=2;

