
--2020. 05. 27

-----------------------------------------------------------------------------------

-- view 

-----------------------------------------------------------------------------------

-- << view 생성 >>
-- 논리적인 가상 테이블 : 테이블과 같이 사용 가능, 제약은 존재
-- 물리적인 테이블 기반으로 만든다 : select 서브쿼리를 이용해서 만든다. 

-- create [or replace]  view  view이름  [컬럼 별칭] as  서브쿼리
-- create view로 하면, 이후에 수정이 불가, 
-- 따라서 create or replace view로 생성하고 수정 후 생성하면 기존 뷰에 덮어써진다. 

-- 뷰 사용목적 1 : 복잡하고 긴 쿼리문을 뷰로 정의하면 접근을 단순화시킬 수 있다.
-- 뷰 사용목적 2 : 정보보안에 유리하다.


-- 예제 : 자주 사용되는 30번 부서에 소속된 
--       사원들의 사번과 이름과 부서번호를 출력하기 위한 SELECT문을 하나의 뷰로 정의
create view emp_view_deptno30
as
select empno, ename, deptno from emp where deptno=30;
-- 오류 보고 -
-- ORA-01031: 권한이 불충분합니다
-- 01031. 00000 -  "insufficient privileges"
-- *Cause:    An attempt was made to perform a database operation without
--            the necessary privileges.
-- *Action:   Ask your database administrator or designated security
--            administrator to grant you the necessary privileges
-- -->> scott은 가상테이블 view를 생성할 수 있는 권한이 없다..
-- ---->> sys에서 scott에게 권한 부여설정하기! 
-- View EMP_VIEW_DEPTNO30이(가) 생성되었습니다.


-------------------------------------
-- 생성된 뷰 확인가능
-- 이제 실제로는 이 가상테이블 뷰를 사용하면 된다. 
-- (뷰 사용목적 1 : 쿼리문 단축)
-- (뷰 사용목적 2 : 정보보완 : 급여정보가 없다.) 
select * from emp_view_deptno30;

-- 만들어둔 view들을 확인가능
desc user_views;

-- view에 대한 정보 확인가능
select view_name, text from user_views;




-----------------------------------------------------------------------------------
--<< view 삭제 >>
drop view emp_view_deptno30;
-->> View EMP_VIEW_DEPTNO30이(가) 삭제되었습니다.

-- view에 대한 정보 삭제된 것을 확인가능
select view_name, text from user_views;


-----------------------------------------------------------------------------------
-- << 인라인 뷰의 rownum 컬럼>>
-- 정렬된 순서대로 ROWNUM 칼럼 값이 매겨지도록 하려면 
-- 새로운 테이블이나 뷰로 새롭게 데이터를 저장해야만 한다.


-- 예제. 인라인 뷰를 사용해서 입사일이 빠른 사람 5명(TOP-5)만을 얻어 오는 질의문

--뷰 생성하기 
--목적에 맞는 ROWNUM 칼럼 값을 출력하기 위해 order by로 정렬.
create or replace view emp_hir_view
as
select empno, ename, hiredate 
from emp 
order by hiredate asc; 
-->> View EMP_HIR_VIEW이(가) 생성되었습니다.

-- 생성된 view 확인
select * from emp_hir_view;

--두 테이블 비교해서 확인 : rownum 이 다른 것을 확인가능
select rownum, empno, ename, hiredate from emp_hir_view;
select rownum, empno, ename, hiredate from emp order by hiredate;

-- 예제 풀이 : 입사일이 빠른 사람 5명(TOP-5) 출력 
select * from emp_hir_view
where rownum < 6;










