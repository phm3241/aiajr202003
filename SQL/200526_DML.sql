
--2020. 05. 26

-----------------------------------------------------------------------------------

-- DML (1)
-- 테이블 구조, 제약조건 파악이 중요. 
-- 정상적인 insert가 이루어질 수 있도록 확인. 

-----------------------------------------------------------------------------------
-- << insert문 >>
-- 새로운 부서 정보를 입력 : ★ 행단위 입력 ★
-- insert into 테이블이름 (입력하고자하는 컬럼들) values (데이터들)
-- (입력하고자하는 컬럼들)을 정해주는 데 반드시 포함시켜야하는 경우! :  not null제약이 있는경우, 기본키 제약이 있는 경우
-- (입력하고자하는 컬럼들)을 생략가능한 경우 : 모든컬럼 입력시 컬럼명기재 생략가능
-- 입력 컬럼의 순서와 입력데이터의 순서는 같아야한다. 갯수도 같아야한다.  ㅡ> 순서, 갯수 안맞으면 오류발생!

-- insert 하기전에 desc tablename 으로 테이블 구조 파악하고 추가.

-------------------------------
-- 테이블 dept01로 insert확인 
-- 데이터 가져오지 않고 구조만 가져오는 것. 
-- where절이 무조건 false가 나오기 때문에
drop table dept01;
create table dept01
as
select * from dept where 1<0;

--> insert 확인
insert into dept01 (deptno, dname, loc) values (10, 'MARKETING','SEOUL');
-- 1 행 이(가) 삽입되었습니다.

insert into dept01 (loc, deptno, dname) values ('LONDON', 30, 'SALES');
-- 1 행 이(가) 삽입되었습니다
-- 컬럼명의 순서들을 바꿔서 입력순서가 바뀌어도 삽입된다. 

insert into dept01 values (20,'DESIGN','PUSAN');
-- 1 행 이(가) 삽입되었습니다.
-- 모든컬럼을 입력한다면, 컬럼명을 생략가능하다.


-- 테이블 확인
desc dept01;
select * from dept01;



-------------------------------
-- 테이블 dept02로 default 값 지정하고, 명시적 null값 추가 확인

create table dept02(
    deptno number(2) not null,
    dname varchar(20) not null,
    loc varchar(20) default 'SEOUL'
);

--> insert 확인
insert into dept02 (deptno, dname, loc) values (10, 'MARKETING','SEOUL');
-- 1 행 이(가) 삽입되었습니다
-- 컬럼명 순서와 values 값 순서만 맞춰준다면, 컬럼명의 순서들을 바꿔서 입력순서가 바뀌어도 삽입된다.  

insert into dept02 (deptno, dname) values (40, 'DEV');
-- 1 행 이(가) 삽입되었습니다
-- 일부 컬럼만 추가가능, 추가하지 않은 컬럼값에는 default 값으로 지정한 'SEOUL'이 들어간다. 
-- default 제약을 따로 주지 않았을 때는 null값이 들어가게 된다. 



--> 테이블 확인
desc dept02;
select * from dept02;



-------------------------------
-- -- NULL 값 삽입하는 다양한 방법 : 암시적 방법
insert into dept01 (deptno, dname) values (40, 'DEV');
-- 1 행 이(가) 삽입되었습니다
-- 일부 컬럼만 추가가능, 추가하지 않은 컬럼값에는 디폴트 값 또는 null값으로 들어간다. 

-- NULL 값 삽입하는 다양한 방법 : 명시적 방법
insert into dept02 (deptno, dname, loc) values (20, 'MARKETING', null);
insert into dept02 (deptno, dname, loc) values (30, 'MARKETING', '');
-- 1 행 이(가) 삽입되었습니다
-- 명시적으로 null값을 넣었기 때문에(null 또는 '') 디폴트값인 'SEOUL'이 아니라 (null)이 들어간다. 


-------------------------------
-- 오류발생 : 컬럼명 목록과 values값 개수가 다를 때!, 데이터 타입이 맞지 않을 때!

insert into dept02 (deptno, dname) values (40, 'DEV', 'SEOUL');
-- 오류 보고 -
-- SQL 오류: ORA-00913: 값의 수가 너무 많습니다

insert into dept02 (deptno, dname, loc) values (10, 'MARKETING');
-- 오류 보고 -
-- SQL 오류: ORA-00947: 값의 수가 충분하지 않습니다

insert into dept02 values (40, 'DEV');
-- 오류 보고 -
-- SQL 오류: ORA-00947: 값의 수가 충분하지 않습니다



select * from dept02;

-- deptno와 dname이 not null 제약조건이 있음을 확인가능.
-- 따라서 insert into 할때 반드시 생략하지 않고 값을 입력해준다.
desc dept02;

insert into dept02 (dname, loc) values ('test', 'locTest');
--오류 보고 -
--ORA-01400: NULL을 ("SCOTT"."DEPT02"."DEPTNO") 안에 삽입할 수 없습니다

insert into dept02 (deptno, dname, loc) values (60, 'test', 'locTest');
-- 1 행 이(가) 삽입되었습니다.








-- 2020.05.27
-----------------------------------------------------------------------------------
-----------------------------------------------------------------------------------
-- << insert문 - 서브쿼리를 이용해서 여러 테이블에 한번에 데이터 삽입 >>
-- 필요한 데이터만 가져와서 지표처리하거나 데이터를 조작할 때 사용. 
-- 실제로 실무에서 쓰는 경우는 많지 않음. 

-- 1.
-- 테스트 테이블 생성1  emp_hir : empno, ename, hiredate
-- 테스트 테이블 생성2  emp_mgr : empno, ename, mgr

-- 테이블 구조만 가져와서 생성하는 방법 : where 조건절에 false 조건 작성. 
create table emp_hir
as 
select empno, ename, hiredate from emp where 1<0;

create table emp_mgr
as 
select empno, ename, mgr from emp where 1<0;


-->> 복사된 테이블 구조 확인
desc emp_hir;
desc emp_mgr;


-- 2.
-- 두개 테이블에 emp 테이블의 데이터를 기반으로 삽입
-- 우리가 다뤄야하는 데이터가(values에 기재된 컬럼들) 모두 서브쿼리 안에 있으면 된다. 
insert all
into emp_hir values (empno, ename, hiredate)
into emp_mgr values (empno, ename, mgr)
select empno, ename, hiredate, mgr
from emp;
--28개 행 이(가) 삽입되었습니다.


-->> 행 삽입되었는지 테이블 내용 확인 
select * from emp_hir;
select * from emp_mgr;








-----------------------------------------------------------------------------------
-- << insert into ~~  when 조건문 then into >>
-- INSERT ALL 명령문에 
-- WHEN 절을 추가해서 조건을 제시하여 조건에 맞는 행만 추출하여 테이블에 추가


-- 1. 
-- EMP_HIR02 테이블에는 
-- 1982 년 01 월01 일 이후에 입사한 사원들의 번호, 사원 명, 입사일을 추가
-- EMP_SAL 테이블에는 
-- 급여가 2000 이상인 사원들의 번호, 사원 명, 급여를 추가
create table emp_hir02
as
select empno, ename, hiredate from emp where 1<0;

create table emp_sal
as
select empno, ename, sal from emp where 1<0;

-->> 복사된 테이블 구조 확인
desc emp_hir02;
desc emp_sal;




-- 2.
-- INSERT ALL 명령문에 WHEN 절을 추가해서 조건을 제시하여 조건에 맞는 행만 추출하여 테이블에 추가
insert all
when hiredate > '82/01/01' then 
    into emp_hir02 values (empno, ename, hiredate)
when sal > 2000 then
    into emp_sal values (empno, ename, sal)
select empno, ename, hiredate, sal
from emp;
-- 9개 행 이(가) 삽입되었습니다.


-->> 행 삽입되었는지 테이블 내용 확인 
select * from emp_hir02;
select * from emp_sal;















