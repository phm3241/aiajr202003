
-- 2020.05.21
----------------------------------------------------------------------
-- join
-- 스키마의 결합
-- 결합하는 테이블의 행 * 결합하는 테이블의 행 = 총 행의 개수
select * from emp;
select * from dept;


----------------------------------------------------------------------
--<< Cross JOIN >> 
-- emp 행개수 14 * dept 행개수 4 = 총 56개 행을 가진다. 
-- 가장 일반적인 조인의 형태, from에 테이블을 ,로 기재.
select *
from emp, dept;



----------------------------------------------------------------------
--<< Equi JOIN >>
-- 공통적으로 존재하는 컬럼의 값이 일치되는 행을 연결하여 결과를 생성
-- 일치되는 공통 컬럼인 DEPTNO의 값이 일치(=)되는 조건을 WHERE 절에 기술하여 사용
-- 컬럼 이름 앞에 테이블 이름을 기술
select ename, dname
from emp, dept
where emp.deptno = dept.deptno
order by emp.deptno;


select e.deptno, ename, dname    -- 겹치는 컬럼이 없어 문제가 없는데, 겹친다면, e.ename. 이런식으로 앞에 테이블명(또는 테이블별칭) 기술.
from emp e, dept d               -- 테이블명 별칭사용가능
where e.deptno = d.deptno;


----------------------------------------------------------------------
----------------------------------------------------------------------
-- << book, customer, orders 에 JOIN 적용 >>
select * from orders;       -- 행 10
select * from book;         -- 행 10
select * from customer;     -- 행 5

-- cross JOIN  : 총 행개수 500
select *
from orders o, book b, customer c;

-- Equi JOIN  
select *
from orders o, book b, customer c
where o.bookid=b.bookid and  o.custid=c.custid;



-- 과제예제_Equi join 사용하여 수정
--(3) 박지성의 총 구매액(박지성의 고객번호는 1번으로 놓고작성) 
select to_char(sum(saleprice),'999,999') as "박지성의 총 구매액"
from orders
where custid=1;

-- ▼ JOIN으로 결합된 테이블에서 확인가능 : where절에 조건추가. ▼
select *
from orders o, book b, customer c
where o.bookid=b.bookid and  o.custid=c.custid
and name='박지성';





----------------------------------------------------------------------
--<< Non-Equi JOIN >>
select * from emp;
select * from salgrade;

-- Cross JOIN 
select *
from emp, salgrade;

-- Non-Equi JOIN
-- ex. 이벤트 테이블 만드는데 활용가능. 회원. 포인트. 포인트별 상품
select ename, sal, grade
from emp e, salgrade s
-- where e.sal >= s.losal and e.sal <= s.hisal;
where sal between losal and hisal;



----------------------------------------------------------------------
--<< Self JOIN >>
select * from emp;

-- 사원이름, 관리자번호, 관리자이름 
select e.ename, e.mgr, m.ename
from emp e, emp m
where e.mgr=m.empno;

-- 출력형태 바꾸기
select e.ename || '의 상사는 ' || m.ename ||'입니다.'
from emp e, emp m
where e.mgr=m.empno(+); --null값을 가진 항목도 출력해주기위해 (+) 붙여주기.

-- 전체 출력해보면 king의 정보는 모두 null이 된다.
select *
from emp e, emp m
where e.mgr=m.empno(+);

-- 사원의 정보 출력시, 사원의 관리자 없을 떄, null값을 대체하여 출력
select e.ename, e.empno, e.sal, e.comm, nvl(m.ename, '관리자없음')
from emp e, emp m
where e.mgr=m.empno(+);



----------------------------------------------------------------------
--<< Ansi Cross JOIN, Ansi Inner JOIN >>
-- 표준 SQL 문 Ansi

select *
from emp cross join dept;

select ename, dname
from emp e inner join dept d
on emp.deptno=dept.deptno;

-- 공통칼럼을 using 사용하여 기재가능. 
select ename, dname
from emp inner join dept
using(deptno);

-- NATURAL Join
-- 두 테이블에 각각 조인을 정의한 컬럼의 이름이 동일하다면 
-- USING 절에서 조인할 컬럼을 지정하여 구문을 더 간단하게 표현
select ename, dname
from emp natural join dept;














