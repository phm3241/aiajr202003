
--2020. 05. 27

-----------------------------------------------------------------------------------

-- DML 
-- 수정삭제 : update문 delete문 -->> 조건문이 중요

-----------------------------------------------------------------------------------
-- << update 문 >>
-- 컬럼의 데이터 변경, 수정
-- update 테이블이름 set 컬럼이름1 = 값, 컬럼이름2=값... where 행을 찾는 조건식
-- where로 수정할 행을 지정해주지 않는 경우 모든행에 수정사항이 적용되므로 주의필요!


-- 테스트 테이블 복사해서 생성
-- 제약조건, 기본키는 복사되지 않는다. 
drop table emp01;
create table emp01
as
select * from emp;

-->> 생성된 테스트 테이블 확인
select * from emp01;



-- 예제 1. 모든 사원의 부서번호를 30번으로 수정합시다.
-- 모든 사원이기 때문에 where절이 필요없다.
update emp01
set deptno=30;
-- 14개 행 이(가) 업데이트되었습니다.

-->> 수정사항 확인
select * from emp01;



-- 예제 2. 이번엔 모든 사원의 급여를 10% 인상시키는 UPDATE 문을 보겠습니다.
-- 모든 사원이기 때문에 where절이 필요없다.
update emp01
set sal=sal*1.1;
-- 14개 행 이(가) 업데이트되었습니다.

-->> 수정사항 확인
select * from emp01;



-- 예제 3. 모든 사원의 입사일을 오늘로 수정하려면 다음과 같이 합니다.
-- 모든 사원이기 때문에 where절이 필요없다.
update emp01
set hiredate = sysdate;
-- 14개 행 이(가) 업데이트되었습니다.

-->> 수정사항 확인
select * from emp01;


commit;
-- 커밋 완료. (물리적인 저장이 된다.)

rollback;
-- 마지막으로 물리적인 저장이 된 작업시점으로 돌아간다. 
-- create table 은 물리적인 저장
-- insert나 update 등의 작업은 물리적인 저장이 아니다. 
--   --> 따라서 commit을 별도로 해주지 않으면 
--       rollback 했을 때 마지막 물리적 저장 작업시점으로 가게 되면서 작업내용이 초기화 된다. 





-----------------------------------------------------------------------------------
-- << update 문 - 특정 행만 변경 >>
-- 컬럼의 특정행만 데이터 변경, 수정
-- update 테이블이름 set 컬럼이름1 = 값, 컬럼이름2=값... where 특정 행을 찾는 조건식


-- 테스트 테이블 복사해서 생성
-- 제약조건, 기본키는 복사되지 않는다. 
drop table emp01;
create table emp01
as
select * from emp;

-->> 생성된 테스트 테이블 확인
select * from emp01;



-- 예제1. 부서번호가 10번인 사원의 부서번호를 30번으로 수정
update emp01
set deptno=30
where deptno=10;
--3개 행 이(가) 업데이트되었습니다.

-->> 수정사항 확인
select * from emp01;



-- 예제 2. 급여가 3000 이상인 사원만 급여를 10% 인상
update emp01
set sal = sal*1.1
where sal >= 3000;
-- 3개 행 이(가) 업데이트되었습니다.

-->> 수정사항 확인
select * from emp01;




-- 예제 3. 1987년에 입사한 사원의 입사일이 오늘로 수정.

-- select로 조건식 먼저 검증 : 87년 입사 사원 찾기 (2가지 방법) 
select * from emp 
where hiredate between '1987/01/01' and '1987/12/31';

select * from emp 
where substr(hiredate, 1, 2) = '87'; 


-- update 적용
update emp01
set hiredate = sysdate
where substr(hiredate, 1, 2) = '87';
--where hiredate between '1987/01/01' and '1987/12/31';
-- 2개 행 이(가) 업데이트되었습니다.


-->> 수정사항 확인
select * from emp01;





-----------------------------------------------------------------------------------
-- << update 문 - 2개 이상의 컬럼 데이터 변경 >>
-- 2개 이상의 컬럼 데이터 변경, 수정
-- update 테이블이름 set 컬럼이름1 = 값, 컬럼이름2=값... where 특정 행을 찾는 조건식


-- 예제 1. SCOTT 사원의 부서번호는 10번으로, 직급은 MANAGER로 한꺼번에 수정
update emp01
set deptno=10, job='MANAGER'
where ename='SCOTT';
-- 1 행 이(가) 업데이트되었습니다.

-->> 수정사항 확인
select * from emp01 where ename='SCOTT';



-- 예제 2. SCOTT 사원의 입사일자는 오늘로, 급여를 50 으로 커미션을 4000 으로 수정
update emp01
set hiredate = sysdate, sal = 50, comm = 4000
where ename='SCOTT';
-- 1 행 이(가) 업데이트되었습니다.

-->> 수정사항 확인
select * from emp01 where ename='SCOTT';







-----------------------------------------------------------------------------------
-- << update 문 - 서브 쿼리를 이용한 데이터 수정 >>
-- 서브 쿼리를 이용한 컬럼 데이터 변경, 수정 
-- update 테이블이름 set 컬럼이름1 = 서브쿼리  where 특정 행을 찾는 조건식
-- -->> 단일행, 단일열 나오도록 서브쿼리를 작성해야한다. 


-- 테스트 테이블 복사해서 생성
-- 제약조건, 기본키는 복사되지 않는다. 
drop table dept01;
create table dept01
as 
select * from dept;

-->> 생성된 테스트 테이블 확인
select * from dept01;


-- 예제 1 : 20번 부서의 지역명을 40번 부서의 지역명으로 변경하기 위해서 서브 쿼리문을 사용
update dept01
set loc = (select loc from dept01 where deptno=40)
where deptno=20;
-- 1 행 이(가) 업데이트되었습니다.

-->> 수정사항 확인
select * from dept01;



-- 예제 2 : 서브 쿼리를 이용해서 부서번호가 20인 부서의 부서명과 지역명을 
-- 부서 번호가 40번인 부서와 동일하게 변경

-- 방법 1 : 각 컬럼마다 서브쿼리 작성하여 컬럼 수정. 
update dept01
set dname = (select dname from dept01 where deptno = 40),
loc = (select loc from dept01 where deptno = 40)
where deptno = 20;
1 행 이(가) 업데이트되었습니다.

-- 방법 2 : 부속질의를 한번에 작성하여 컬럼을 한꺼번에 수정. 
-- 서브쿼리의 구조적인 조건이 같으면 한번에 작성하고 한꺼번에 수정해주는 것이 좋다. 
update dept01
set (dname, loc) = (select dname, loc from dept01 where deptno = 40)
where deptno = 20;
-- 1 행 이(가) 업데이트되었습니다.

-->> 수정사항 확인
select * from dept01;





-----------------------------------------------------------------------------------
-----------------------------------------------------------------------------------
-- << delete : 데이터 삭제 >>
-- delete from 테이블이름 where 행을 찾을 조건식
-- where 절이 없으면 모든행이 삭제되므로 주의!
-- 기본키(pk)를 기반으로 삭제하는 것이 좋다.  (게시물이 가지고 있는 고유번호, 회원들의 회원번호 등 )

-- 예제 1 : 부서테이블의 모든 행을 삭제
delete from dept01;
-- 4개 행 이(가) 삭제되었습니다.
-- --> 아직 물리적으로 적용되지 않은 상태, 외부에서는 그대로 보인다. 
--   -->> commit을 해야 물리적으로 적용된다. commit 전에는 복원가능? 


rollback;
-- 롤백 완료.

-->> 테이블 복원 확인. 
select * from dept01;



-- 예제 2 : 부서 테이블에서 30번 부서만 삭제
delete from dept01 
where deptno=30;

-->> 수정사항 확인
select * from dept01;



-- 예제 3 : 사원 테이블에서 부서명이 SALES인 사원을 모두 삭제
-- select로 부속질의 먼저확인
select deptno from dept where dname='SALES';

-- 삭제 전 사원테이블 확인
select * from emp01;

-- 부속질의 적용하여 사원 테이블에서 부서명이 SALES인 사원을 모두 삭제
delete from emp01
where deptno = (select deptno from dept where dname='SALES');
-- 9개 행 이(가) 삭제되었습니다.

-->> 수정사항 확인
select * from emp01;











