
--2020.05.21. [실습] 부속질의 문제


-- 43. 사원 번호가 7788인 사원과 담당 업무가 같은 사원을 표시(사원 이름과 담당업무)하시오.
--부속질의 : 사원번호 7788의 담당업무
select job 
from emp 
where empno=7788;   

--결과확인용 출력
select ename, job  
from emp  
where job='ANALYST';  

--풀이
select ename, job 
from emp 
where job=(select job from emp where empno=7788);




-- 44. 사원번호가 7499인 사원보다 급여가 많은 사원을 표시하시오. 사원이름과 담당 업무
select sal from emp where empno=7499;   --부속질의 : 사원번호 7499의 급여
select * from emp where sal > 1600  order by sal desc;    --결과확인용 출력

select ename, job from emp where sal > (select sal from emp where empno=7499);




-- 45. 최소급여를 받는 사원의 이름, 담당업무 및 급여를 표시하시오. (그룹함수 사용) 
select min(sal) from emp;            --부속질의 : 최소급여
select ename, job, sal from emp where sal = 800;   --결과확인용 출력

select ename, job, sal
from emp e
where e.sal = (select min(sal) from emp);

-- 인라인 뷰. rownum 사용
select ename, job, sal
from (select * from emp order by sal) 
where rownum=1;




-- 46. 평균급여가 가장 적은 직급의 직급 이름과 직급의 평균을 구하시오.
select job, avg(sal) from emp group by job  order by avg(sal); --부속질의 : 직급별 평균급여

-- 인라인 뷰. rownum 사용
select job, "평균급여"
from (select job, avg(sal) as "평균급여" from emp group by job order by avg(sal))
where rownum=1;




-- ★ 47. 각 부서의 최소 급여를 받는 사원의 이름, 급여, 부서번호를 표시하시오.--pass
--부속질의 : 부서별 최소급여
select deptno, min(sal) 
from emp 
group by deptno;  

select ename, e.sal, p.deptno
from emp e,(select deptno, min(sal) from emp p group by deptno)
where e.deptno=p.deptno and e.sal=p.min(sal);

select ename, e.sal, m.deptno
from emp e
where e.deptno in(select deptno, min(sal) from emp m group by deptno and e.deptno=m.deptno);





-- 48. 담당업무가 ANALYST 인 사원보다 급여가 적으면서 
-- 업무가 ANALYST가 아닌 사원들을 표시(사원번호, 이름, 담당 업무, 급여)하시오.
select ename, sal, job from emp where job='ANALYST';   --부속질의 : 담당업무가 ANALYST인 사원의 급여

select e.empno, e.ename, e.job, e.sal  
from emp e  
where e.sal < 3000 and e.job!='ANALYST' 
order by sal;  --결과확인용 출력

select e.empno, e.ename, e.job, e.sal
from emp e
where e.sal <= (select min(sal) from emp where job='ANALYST') 
and e.job!='ANALYST'
order by sal;




-- 49. 부하직원이 없는 사원의 이름을 표시하시오.
-- 사수와 부사수
select m.mgr, m.ename, e.ename  --부속질의 : 사수번호, 사수이름, 부사수 이름
from emp e, emp m
where e.mgr=m.empno;

-- 부사수가 있는 사수의 이름. 
select distinct m.ename from emp e, emp m where e.mgr=m.empno; --부속질의 : 사수이름

select p.ename
from emp p
where p.ename not in(select distinct m.ename from emp e, emp m where e.mgr=m.empno);





-- 50. 부하직원이 있는 사원의 이름을 표시하시오. 
-- 사수와 부사수
select m.mgr, m.ename, e.ename  
from emp e, emp m
where e.mgr=m.empno;    --부속질의 : 사수번호, 사수이름, 부사수 이름

-- 부사수가 있는 사수의 이름. 
select distinct m.ename
from emp e, emp m
where e.mgr=m.empno;




-- 51. BLAKE와 동일한 부서에 속한 사원의 이름과 입사일을 표시하는 질의를 작성하시오. ( 단 BLAKE는 제외 )
select deptno from emp where ename='BLAKE'; --부속질의 : BLAKE의 부서
select ename, hiredate from emp where deptno = 30 and ename!='BLAKE';   --결과확인용 출력

select ename, hiredate
from emp
where deptno=(select deptno from emp where ename='BLAKE') and ename!='BLAKE' ;




-- 52. 급여가 평균 급여보다 많은 사원들의 
-- 사원 번호와 이름을 표시하되 결과를 급여에 대해서 오름차순으로 정렬하시오.
select avg(sal) from emp; --부속질의 : 평균급여 2073.214285714285714285714285714285714286
select empno, ename, sal from emp order by sal; --결과확인용 출력

select empno, ename, sal
from emp
where sal > (select avg(sal) from emp)
order by sal;




-- 53. 이름에 K가 포함된 사원과 같은 부서에서 일하는 
-- 사원의 사원 번호와 이름을 표시하시오.
select distinct deptno from emp where ename like '%K%'; --부속질의 : 이름에 K가 포함된 사원의 부서번호 10, 30
select empno, ename from emp where deptno=10 or deptno=30 order by ename; -- 확인용 출력

select e.empno, e.ename
from emp e
where e.deptno in(select distinct deptno from emp k where ename like '%K%' and e.deptno=k.deptno);




-- 54. 부서위치가 DALLAS인 사원의 이름과 부서번호 및 담당업무를 표시하시오.
select deptno from dept where loc='DALLAS';--부속질의 : 부서위치가 DALLAS인 부서번호
select ename from emp where deptno=20; --확인용 출력

select ename, deptno, job
from emp
where deptno=(select deptno from dept where loc='DALLAS');




-- 55. KING에게 보고하는 사원의 이름과 급여를 표시하시오.
select empno from emp k where ename='KING'; --부속질의 : king의 사원번호 
select ename, mgr from emp where mgr=7839; --확인용 출력
select * from emp order by mgr; --확인용 출력

select ename, sal
from emp e
where e.mgr=(select empno from emp k where ename='KING');




-- 56. RESEARCH 부서의 사원에 대한 부서번호, 사원이름 및 담당 업무를 표시하시오.
select deptno from dept where dname='RESEARCH';     --부속질의 : RESEARCH 부서의 부서번호
select deptno, ename, job from emp where deptno=20; --확인용 출력

select deptno, ename, job
from emp
where deptno=(select deptno from dept where dname='RESEARCH');




-- 57. 평균 월급보다 많은 급여를 받고 
-- 이름에 M이 포함된 사원과 같은 부서에서 근무하는 
-- 사원의 사원 번호, 이름, 급여를 표시하시오.
select avg(sal) from emp;   --부속질의  : 평균월급 
select distinct deptno  from emp m  where ename like '%M%';  --부속질의 : 이름에 'M'이 포함된 사원의 부서번호

select e.empno, e.ename, e.sal
from emp e
where e.sal > (select avg(sal) from emp a) 
      and e.deptno in(select distinct deptno from emp m where ename like '%M%' and e.deptno=m.deptno);




-- 58. 평균급여가 가장 적은 업무를 찾으시오.
select job, min(sal) from emp  group by job;   --부속질의 : 직업별 평균급여

select *
from (select job, min(sal) from emp  group by job order by min(sal))
where rownum=1;




-- 59. 담당업무가 MANAGER 인 사원이 소속된 부서와 동일한 부서의 사원을 표시하시오.
select deptno from emp where job='MANAGER';    --부속질의 : 담당업무가 MANAGER인 사원이 소속된 부서 
select * from emp order by job; -- 확인용

select *
from emp e
where e.deptno in(select deptno from emp m where job='MANAGER' and e.deptno=m.deptno)
order by deptno, job;






