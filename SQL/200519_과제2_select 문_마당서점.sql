
--2020.05.19. [과제] sql select 추가 문제
--◆◆◆
desc book;
desc Customer;
desc Orders;
--select * from book;
--select * from Customer;
--select * from Orders;


--1 마당서점의 고객이 요구하는 다음 질문에 대해 SQL 문을 작성하시오.

--(1) 도서번호가 1인 도서의 이름
select bookname
from book
where bookid=1;


--(2) 가격이 20,000원 이상인 도서의 이름
select bookname
from book
where price>20000;


--(3) 박지성의 총 구매액(박지성의 고객번호는 1번으로 놓고작성) --pass
select sum(saleprice)
from orders
where custid=1;


--(4) 박지성이 구매한 도서의 수(박지성의 고객번호는 1번으로 놓고 작성) --pass
select count(custid)
from orders
where custid=1;





--2 마당서점의 운영자와 경영자가 요구하는 다음 질문에 대해 SQL 문을 작성하시오.

--(1) 마당서점 도서의 총 개수 -- pass
select count(bookid)
from book;


--(2) 마당서점에 도서를 출고하는 출판사의 총개수 --pass
select count(distinct publisher)
from book;


--(3) 모든 고객의 이름, 주소
select name, address
from customer;


--(4) 2014년 7월4일~7월7일 사이에 주문받은 도서의 주문번호
select orderid --orderdate
from orders
where orderdate between '2014-07-04' and '2014-07-07';


--(5) 2014년 7월4일~7월7일 사이에 주문받은 도서를 제외한 도서의 주문번호
select orderid --orderdate
from orders
where orderdate not between '2014-07-04' and '2014-07-07';


--(6) 성이 ‘김’씨인 고객의 이름과 주소
select name, address
from customer
where name like '김%';


--(7) 성이 ‘김’씨이고 이름이 ‘아’로 끝나는 고객의 이름과 주소
select name, address
from customer
where name like '김%아';






















