-- 2020.05.20 
----------------------------------------------------------------------
-- 그룹함수(집합함수)
-- sum, avg, count, max, min
-- null값의 데이터는 제외하고 연산
-- 그룹함수와 일반 칼럼을 같이 쓸수없다.
select ename, max(sal)
from emp;

----------------------------------------------------------------------
-- sum(컬럼이름) : 해당 컬럼의 데이터들의 합 반환
-- 매월 지급되는 급여의 총합
select sum(sal) as totalSal
from emp;

-- 매월 지급되는 급여의 총합(숫자를 문자열로 변환)
select to_char(sum(sal)*1000, 'L999,999,999') as totalSal
from emp;

select sum(comm)
from emp;



----------------------------------------------------------------------
-- avg(컬럼명) : 해당 컬럼의 데이터들의 평균값을 반환
-- null값의 데이터는 제외하고 연산하기 때문에 comm 총합이 2200이고,avg이 550이 된다.  
select trunc(avg(sal))
from emp;

select 29025/14
from dual;

select avg(comm)
from emp;

select sum(comm) 
from emp;

select *
from emp
order by comm;



----------------------------------------------------------------------
-- MAX, MIN : 해당 컬럼의 데이터 중에서 최대값, 최소값을 반환
-- java 쪽으로 데이터가져와서 최대값, 최소값찾는 반복문 돌릴 필요없이 데이터베이스에서 함수로 처리가능.
select max(sal), min(sal), max(comm), min(comm)
from emp;



----------------------------------------------------------------------
-- count(컬럼명 or *) : 행 (row)의 갯수를 반환
select count(*)
from emp;

select count(comm)  --null을 포함하는 행(row)은 개수로 포함하지 않는다.
from emp;

select count(distinct job)  --distinct 중복을 빼주는 함수
from emp
order by job;



----------------------------------------------------------------------
-- groub by 절 : 특정 컬럼으로 그룹핑을 해준다. 
select deptno
from emp
group by deptno;

select job
from emp
group by job;


-- 소속 부서별 평균 급여
select deptno, round(avg(sal), 0)
from emp
group by deptno;


-- 소속 부서별
-- 최대 급여와 최소 급여
select deptno, max(sal), min(sal)
from emp
group by deptno;


-- 소속 부서별
-- 사원 수와 커미션을 받는 사원들의 수를 계산
select deptno, count(*), count(comm)
from emp
where comm <> 0     -- 실행순서 1. emp에서 comm이 0이 아닌 행을 먼저 찾고, 
group by deptno;    -- 실행순서 2. 그룹핑


-- 부서별 
-- 평균 급여가 2000 이상인(HAVING) 
-- 부서번호와 부서별 평균 급여를 출력
-- where는 로우(행)를 찾는 것이고, having은 그룹(집합)의 조건을 부여해줄때
select deptno, avg(sal), count(*), count(comm), sum(comm)
from emp
group by deptno
having avg(sal) >= 2000;  



-- 직급별, 지표 출력 (having.. 그룹의 조건이 될 수 있다.)
select job, count(*) as "직급별 인원"
          , sum(sal) as "직급별 월 총 급여"
          , trunc(avg(sal)) as "직급별 월 평균급여"
          , nvl(sum(comm), 0) as "직급별 수령 커미션의 총 합"
          , max(sal) as "직급별 최고 급여 금액"    
from emp
group by job
-- having count(*) > 1; --직급의 인원이 2명 이상인 직급
having avg(sal) >= 2000 and count(*) > 1;


-- 그룹의 기준을 여러 컬럼으로 잡을 수 있다.
select deptno, job
from emp
group by deptno, job
order by deptno;













