
--2020.05.21. [실습] 부속질의 문제

select *
from customer;

select *
from orders;

select *
from book;



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

--풀이1 : 박지성이 구매한 도서의 출판사 수 
select count(distinct publisher)
from book b
where b.bookid in
        (select bookid from orders o 
         where custid=(select custid from customer where name='박지성') 
         and b.bookid=o.bookid);

--풀이2 :  박지성이 구매한 도서의 출판사 수 
select count(distinct publisher)
from book b natural join orders o
where custid=(select custid from customer where name='박지성');




-- (6) 박지성이 구매한 도서의 이름, 가격, 정가와 판매가격의 차이
--부속질의 : 박지성의 custid
select custid 
from customer
where name='박지성';

---풀이 : 박지성이 구매한 도서의 이름, 가격, 정가와 판매가격의 차이
select bookname, saleprice, price-saleprice 
from book b natural join orders o
where custid=(select custid from customer where name='박지성');
        



-- (7) 박지성이 구매하지 않은 도서의 이름
--부속질의 : 박지성의 custid
select custid 
from customer
where name='박지성';

--부속질의 : 박지성이 구매한 bookid
select bookid
from orders
where custid=1;

--확인용 출력
select *
from book;

--풀이 : 박지성이 구매하지 않은 도서의 이름 
select bookname
from book b 
where b.bookid not in
        (select bookid from orders o 
         where custid=(select custid from customer where name='박지성') 
         and b.bookid=o.bookid);





-- 2 마당서점의 운영자와 경영자가 요구하는 다음질문에 대해 SQL 문을 작성하시오.

-- (8) 주문하지 않은 고객의 이름 (부속질의사용)
--부속질의 : 주문한 고객의 아이디
select distinct custid from orders o order by custid;

--확인용 : 고객리스트
select *
from customer;

--풀이 : 주문하지 않은 고객의 이름 (부속질의사용)
select c.name
from customer c
where c.custid not in(select custid from orders o);




-- (9) 주문금액의 총액과 주문의 평균금액
select sum(saleprice), avg(saleprice)
from orders;




-- (10) 고객의 이름과 고객별 구매액
select *
from orders;

-- 고객별(custid) 구매액
select custid, sum(saleprice)
from orders o 
group by o.custid;

--풀이 : 스칼라 부속질의
select (select name from customer c where o.custid=c.custid) as "고객이름"
        , sum(saleprice) as "구매액"  
        --, o.custid
from orders o 
group by o.custid;




-- (11) 고객의 이름과 고객이 구매한 도서목록
-- 주문목록을 고객아이디 기준으로 정렬(custid)
select *
from orders
order by custid;

--풀이 : 고객의 이름과 고객이 구매한 도서목록
select c.name, b.bookname 
from orders o, customer c, book b
where o.custid=c.custid and o.bookid=b.bookid
order by c.custid;




-- (12) 도서의 가격 (Book 테이블)과 판매가격(Orders 테이블)의 차이가 가장 많은 주문
select *
from book;

select *
from orders;

--도서가격과 판매가격의 차이 
select o.orderid, b.price-o.saleprice as "판매가격차", o.custid, o.bookid
from orders o, book b
where o.bookid = b.bookid
order by b.price-o.saleprice desc;

--풀이 : 도서의 가격 (Book 테이블)과 판매가격(Orders 테이블)의 차이가 가장 많은 주문
--인라인 뷰 사용
select *
from (select o.orderid, b.price-o.saleprice as "판매가격차", o.custid, o.bookid
      from orders o, book b
      where o.bookid = b.bookid
      order by b.price-o.saleprice desc)
where rownum=1;




-- (13) 도서의 판매액 평균보다 자신의 구매액평균이 더 높은 고객의 이름





-- 3. 마당서점에서 다음의 심화된 질문에 대해 SQL 문을 작성하시오.
-- (1) 박지성이 구매한 도서의 출판사와 같은 출판사에서 도서를 구매한 고객의 이름




-- (2) 두 개 이상의 서로 다른 출판사에서 도서를 구매한 고객의 이름
