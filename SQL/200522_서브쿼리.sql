
-- 2020.05.22 
----------------------------------------------------------------------
-- 서브쿼리 sub query

select * from emp;
select * from dept;


----------------------------------------------------------------------
-- <<단일행 서브쿼리 예제>>
-- 평균 급여를 구하는 쿼리문을 서브 쿼리로 사용하여 
-- 평균 급여보다 더많은 급여를 받는 사원을 검색

select avg(sal) from emp;

select *
from emp
where sal > 2073.214285714285714285714285714285714286;

-- 서브쿼리 사용. 서브쿼리는 단일행, 단일 결과가 나와야 한다. 
select *
from emp
where sal > (select avg(sal) from emp);


----------------------------------------------------------------------
-- <<다중행 서브쿼리 예제>>
-- SCOTT과 같은 부서의 사원들 출력
-- 서브쿼리를 먼저 따로 써서 검증해는 작업이 필요. 
select deptno from emp where ename='SCOTT';   

select *
from emp
where deptno =(select deptno from emp where ename='SCOTT');

-- 3000 이상 받는 사원이 소속된 부서(10번, 20번)와 동일한 부서에서 근무하는 사원이기에 
-- 서브 쿼리의 결과 중에서 하나라도 일치하면 참인 결과를 구하는 IN 연산자와 함께 사용
-- 서브쿼리를 먼저 작성하여 검증을 한 후 메인쿼리에 적용한다. 
select distinct deptno from emp where sal >= 3000;

select *
from emp
where deptno in(select distinct deptno from emp where sal >= 3000);



-- ALL 연산자 
-- 30번 소속 사원들 중에서 
-- 급여를 가장 많이 받는 사원보다 더 많은 급여를 받는 사람의 
-- 이름, 급여를 출력하는 쿼리문

select sal
from emp
where deptno=30;

select ename, sal
from emp
where sal > all(select sal from emp where deptno=30);

-- max 값으로 비교해도 가능하다. 
select ename, sal
from emp
where sal > (select max(sal) from emp where deptno=30);



-- 부서번호가 30번인 사원들의 급여 중 가장 작은 값(950)보다 
-- 많은 급여를 받는 사원의 이름, 급여를 출력

-- 30번 부서의 최소값 월급 
select min(sal) from emp where deptno =30;

-- 최소값 비교 사용
select ename, sal
from emp
where sal > (select min(sal) from emp where deptno =30);

-- 최소값 쓰지 않고 any 를 사용
select ename, sal
from emp
where sal > any(select sal from emp where deptno =30);



----------------------------------------------------------------------
-- <<rownum>>
-- 오라클에서만 있는 기능. 
-- 입력순서의 번호.  
select rownum, ename
from emp;




----------------------------------------------------------------------
-- <<스칼라 부속질의>>
-- 컬럼을 표현 


-- 마당서점의 고객별 판매액
-- (결과는 고객이름과 고객별 판매액을 출력)

-- join으로 풀이
select o.custid, name,  sum(saleprice)
from orders o, customer c
where o.custid=c.custid
group by o.custid, name;

--스칼라 부속질의로 풀이 
select custid,
(select name from customer c where o.custid=c.custid) as custom_name, sum(saleprice)
from orders o
group by custid;



----------------------------------------------------------------------
-- <<인라인 뷰 부속질의>>
-- FROM 절에서 사용되는 부속질의
-- 서브쿼리가 논리적인 형태의 가상테이블이 된다. 

-- 고객번호가 2 이하인 고객의 판매액을 보이시오
-- (결과는 고객이름과 고객별 판매액 출력)

select *from customer where custid<=2;

select cs.name, sum(od.saleprice)
from (select *from customer where custid<=2) cs, orders od
where cs.custid=od.custid
group by cs.name;

-- SMITH는 1번
select rownum, ename from emp;

-- SMITH는 12번이된다. 재정렬이 되어 rownum이 변경된다. 
-- 인라인 뷰는 재정렬을 통해 rownum을 새로 생성하고 top3를 구할 수 있다.
select rownum, ename, empno, sal
from (select ename, empno, job, deptno, sal from emp order by sal desc)
where rownum <= 3 ;



----------------------------------------------------------------------
-- <<중첩질의>>
-- WHERE 절에서 사용되는 부속질의.
-- 술어 부속질의(predicate subquery)라고도 함


-- 평균 주문금액 이하의 주문에 대해서 주문번호와 금액을 출력
select avg(saleprice) from orders;

select orderid, saleprice 
from orders 
where saleprice <= (select avg(saleprice) from orders);



-- 비교연산
-- 각 고객의 평균 주문금액보다 큰 금액의 주문 내역에 대해서 주문번호, 고객번호, 금액을 출력
select avg(saleprice) from orders where custid=1;

select orderid, custid, o.saleprice
from orders o
where saleprice > (select avg(saleprice) from orders a where a.custid=o.custid);



-- in
-- 대한민국에 거주하는 고객에게 판매한 도서의 총판매액을 구하시오.
select * from customer where address like '%대한민국%';
select sum(saleprice)
from orders 
where custid in(select custid  from customer where address like '%대한민국%');



-- all
-- 3번 고객이 주문한 도서의 최고 금액보다 
-- 더 비싼 도서를 구입한 주문의 주문번호와 금액을 보이시오.
select * from orders where custid=3 order by saleprice desc;
select max(saleprice) from orders where custid=3;

select orderid, saleprice 
from orders
where saleprice > all(select saleprice from orders where custid=3);



-- EXISTS, NOT EXISTS (존재여부만 확인)
-- EXISTS 연산자로 대한민국에 거주하는 고객에게 판매한 도서의 총 판매액을 구하시오.
select * from customer where address like '%대한민국%';

-- exists  사용해서 풀이 
select sum(saleprice) 
from orders o 
where EXISTS(select * from customer c where address like '%대한민국%' and o.custid=c.custid); 

-- in 사용해서 풀이
select sum(saleprice)
from orders o 
where o.custid in (select c.custid from customer c where address like '%대한민국%' and o.custid=c.custid); 











