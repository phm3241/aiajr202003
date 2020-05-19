-- 2020.05.19

-- 특정 데이터를 축출하기 : where절을 이용한다. 
-- 문법 : select 컬럼명 from 테이블 이름 where 조건(true/false)

-- 전체 사원중에 월 급여가 3000 이상인 사원의 이름 리스트
select ename, sal
from emp -- 대상테이블
where sal >= 3000 -- 조건
;


-- 전체 사원중 10번 부서의 소속 사원의 이름과 직급을 출력
select ename, job
from emp
where deptno = 10
;


-- 컬럼의 값과 일치여부 확인 : = 
select *
from emp
where deptno = 10
;

-- 문자열 표현 : ' 작은 따옴표로 묶는다
select *
from emp
where job = 'MANAGER'
;

select *
from emp
where ename = 'SCOTT'
;

-- 날짜로 찾기 : 출력할때는 / 인데, 찾을 때는 - 으로 표시하면된다.
-- 날짜를 비교할 때 ㅡ> ' 작은따옴표 이용
select *
from emp
where hiredate = '80-12-17' 
;


-- 논리 연산자 : and 
-- 10번 부서 소속인 사원들 중에서 ㅡ> and
-- 직급이 MANAGER인 사람을 검색하여 
-- 사원명, 부서번호, 직급을 출력
-- 조건 1 : 10번 부서소속 ㅡ> deptno = 10
-- 조건 2 : job = 'MANAGER'
select * --ename, deptno, job
from emp
where deptno = 10 and job = 'MANAGER'
;


-- 논리 연산자 : or
-- 10번 부서에 소속된 사원이거나 ㅡ> or 
-- 직급이 MANAGER인 사람을 검색하여 
-- 사원명, 부서번호, 직급을 출력
-- 조건 1 : 10번 부서소속 ㅡ> deptno = 10
-- 조건 2 : job = 'MANAGER'
select ename, deptno, job
from emp
where deptno = 10 or job = 'MANAGER'
;


-- 논리 연산자  : not
-- 부서번호가 10번이 아닌 사원의 
-- 사원이름, 부서번호, 직급을 출력
select ename, deptno, job
from emp
where not deptno = 10  -- 논리부정. not 키워드 사용
-- where deptno != 10  이렇게 쓸수도 있다. 같지 않다.
-- where deptno <> 10  이렇게 쓸수도 있다. 크지도 작지도 않다.
;


-- 범위 연산 : 논리연산의 사용 and 
-- 2000에서 3000 사이의 급여를 받는 사원의 정보를 출력
select *
from emp
where sal>=2000 and sal<=3000
;


-- 범위 연산자 : 컬럼명 between A and B ㅡ> A이상 B이하
-- 2000에서 3000 사이의 급여를 받는 사원의 정보를 출력
select *
from emp
where sal between 2000 and 3000
;

-- 2000을 초화하고 3000미만의 급여를 받는 사원
-- sal > 2000 and sal < 3000
-- sal between 2001 and 2999

select *
from emp
-- where sal>2000 and sal<3000
where sal between 2001 and 2999
;


s


-- 1987년 입사자 리스트 출력
select *
from emp
-- where hiredate >= '1982-01-01' -- 1982년 이후
-- where hiredate >='1981-01-01' and hiredate <= '1981-12-31'
where hiredate between '1981-01-01' and '1981-12-31'
-- where hiredate not between '1981-01-01' and '1981-12-31'
;

-- or 연산을 간소화시키는 IN 연산자
-- 컬럼이름 in(데이터1, 데이터2, 데이터3,...)
-- 컬럼=데이터1 or 컬럼=데이터2 or 컬럼=데이터3 or...
-- 커미션이 300 이거나 500 이거나 1400 인 사원을 검색
select *
from emp
-- where comm=300 or comm=500 or comm=1400
where comm in(300, 500, 1400)
-- where not comm in(300, 500, 1400)  
-- ㅡ> not을 붙여줄 수 있으나 null값인 경우, true인지 false인지 모르기 떄문에 결과에서 제외된다.
;


-- 패턴검색 : Like 연산자
-- 컬럼이름 like 패턴
-- 패턴 : %, _ 
-- % ㅡ> 0개이상 문자열이 가능하다.
-- 'S& : S로 시작하는 문자열
-- '%S' : S로 끝나는 문자열
-- '%S%' : S를 포함하는 문자열
-- '%노트북%' 
-- 이름이 s로 시작하는 사원의 리스트
select *
from emp
-- where ename like 'S' -- ename ='S'
-- where ename like 'S%' 
-- where ename like '%N'
where ename like '%AR%' -- 기억해두기!
-- where ename not like '%A%'  not 도 사용가능
;


-- _ ㅡ> 1개의 자리수에 어떠한 문자가 와도 가능하다.
select *
from emp 
-- where ename like '_A%'
-- where ename like '__A%'
where ename like '%L__'
;


-- null 값 확인을 위한 연산자 : is null, is not null
-- 컬럼명 is null : 해당 컬럼의 값이 null인 경우 true
-- 컬럼명 is not null : 해당 컬럼의 값이 null이 아닌경우 true
select ename, comm
from emp
-- where comm is null
where comm is not null
;



-- row의 정렬 
-- order by 컬럼명 정렬기준(오름차순asc 또는 내림차순desc) 
-- 오름차순 : 작은쪽 ㅡ> 큰쪽, asc (기본값이므로 생략가능)
-- 내림차순 : 큰쪽 ㅡ> 작은쪽. dssc (명시적 사용)
-- where절 뒤쪽으로 위치

select ename, sal, hiredate, comm
from emp
-- where empno>0
-- order by ename asc       -- 문자의 오름차순
-- order by ename           -- 문자의 오름차순, asc 생략
-- order by ename desc      -- 문자의 내림차순
-- order by sal asc         -- 숫자의 오름차순
-- order by sal desc        -- 숫자의 내림차순
-- order by hiredate asc    -- 날짜의 오름차순
-- order by hiredate desc   -- 날짜의 내립차순
-- order by comm asc        -- null의 오름차순 (null 값이 아래로)
order by comm desc          -- null의 내림차순 (null 값이 위로)
;

-- 정렬기준을 여러가지로 할 수 있다. 
select ename, sal
from emp
order by sal desc, ename asc
;

select ename, deptno
from emp
order by deptno, ename --asc 오름차순 정렬이 기본값이기 때문에 생략가능
;






















