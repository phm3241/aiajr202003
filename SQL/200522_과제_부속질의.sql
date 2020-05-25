
--2020.05.22. [실습] 부속질의 문제

-- 43. 사원 번호가 7788인 사원과 담당 업무가 같은 사원을 표시(사원 이름과 담당업무)하시오.
--부속질의 : 사원번호 7788의 담당업무
select job 
from emp 
where empno=7788;   

--풀이 : 중첩질의 사용
select ename, job 
from emp 
where job=(select job 
           from emp 
           where empno=7788);




-- 44. 사원번호가 7499인 사원보다 급여가 많은 사원을 표시하시오. 사원이름과 담당 업무
--부속질의 : 사원번호 7499의 급여
select sal 
from emp 
where empno=7499;   

--풀이 : 중첩질의 사용
select ename, job 
from emp 
where sal > (select sal 
             from emp 
             where empno=7499);




-- 45. 최소급여를 받는 사원의 이름, 담당업무 및 급여를 표시하시오. (그룹함수 사용) 
--부속질의 : 최소급여
select min(sal) 
from emp;            

--풀이1 : 중첩질의 사용
select ename, job, sal
from emp e
where e.sal = (select min(sal) 
               from emp);

--풀이2 : 인라인 뷰. rownum 사용
select ename, job, sal
from (select * 
      from emp 
      order by sal) 
where rownum=1;

--◆ 참고풀이 : 중첩질의 사용. all연산자 사용. 
-- 모든데이터와 비교해야하므로 좋은방법은..아닌 것 같음.
select ename, job, sal
from emp e
where e.sal <= all(select sal 
               from emp);




-- 46. 평균급여가 가장 적은 직급의 직급 이름과 직급의 평균을 구하시오.
--부속질의 : 직급별 평균급여
select job, avg(sal) 
from emp 
group by job  
order by avg(sal); 

--풀이 : 인라인 뷰. rownum 사용
select job, "평균급여"
from (select job, avg(sal) as "평균급여" 
      from emp 
      group by job 
      order by avg(sal))
where rownum=1;

--◆ 참고풀이 : 중첩질의
select job, avg(sal) 
from emp 
group by job  
having avg(sal) <= all(select avg(sal) 
                       from emp 
                       group by job); 

--◆ 참고풀이 : 중첩질의, 인라인 뷰 사용
select job, avg(sal) 
from emp 
group by job  
having avg(sal) = (select min(avg)
                  from (select avg(sal) as avg 
                        from emp 
                        group by job));




--47. 각 부서의 최소 급여를 받는 사원의 이름, 급여, 부서번호를 표시하시오.
--부속질의 : 부서별 최소급여
select deptno, min(sal) 
from emp 
group by deptno;  

--풀이 : 중첩질의 사용
select ename, sal, deptno
from emp e
where (e.deptno, e.sal) in(select deptno, min(sal) 
                           from emp p 
                           group by deptno
                           having e.deptno=p.deptno 
                           and e.sal=min(sal))
order by e.deptno;

--◆ 참고풀이 : 
select ename, sal, deptno
from emp e
where e.sal in(select min(sal) 
                           from emp p
                           where e.deptno=p.deptno
                           group by deptno)
order by e.deptno;




-- 48. 담당업무가 ANALYST 인 사원보다 급여가 적으면서 
-- 업무가 ANALYST가 아닌 사원들을 표시(사원번호, 이름, 담당 업무, 급여)하시오.
--부속질의 : 담당업무가 ANALYST인 사원의 급여
select ename, sal, job 
from emp 
where job='ANALYST';   

--풀이 : 중첩질의 사용
select e.empno, e.ename, e.job, e.sal
from emp e
where e.sal <= (select min(sal) 
                from emp 
                where job='ANALYST') 
and e.job!='ANALYST'
order by sal;

--◆ 참고풀이 : 사원의 늘어나거나 할 수 있으므로 all연산자 사용
select e.empno, e.ename, e.job, e.sal
from emp e
where e.sal < all(select distinct sal 
                  from emp 
                  where job='ANALYST') 
and e.job!='ANALYST'
order by sal;



-- 49. 부하직원이 없는 사원의 이름을 표시하시오.
--확인용 : 사수번호, 사수이름, 부사수 이름
--select m.mgr, m.ename, e.ename  
--from emp e, emp m
--where e.mgr=m.empno;

--부속질의 : 부사수가 있는 사수의 이름. 
select distinct m.ename 
from emp e, emp m 
where e.mgr=m.empno; 

--풀이 : 중첩질의 사용
select p.ename
from emp p
where p.ename not in(select distinct m.ename 
                     from emp e, emp m 
                     where e.mgr=m.empno);

--◆ 참고풀이 : 부속질의
select distinct mgr 
from emp 
where mgr is not null;

--◆ 참고풀이 :
select ename, mgr
from emp
where empno not in (select distinct mgr 
                    from emp 
                    where mgr is not null);





-- 50. 부하직원이 있는 사원의 이름을 표시하시오. 
--확인용 : 사수번호, 사수이름, 부사수 이름
--select m.mgr, m.ename, e.ename  
--from emp e, emp m
--where e.mgr=m.empno;

--풀이 :  
select distinct m.ename
from emp e, emp m
where e.mgr=m.empno;

--◆ 참고풀이 : 부속질의
select distinct mgr
               from emp
               where mgr is not null;
               
--◆참고풀이 :              
select ename, mgr
from emp 
where empno in(select distinct mgr
               from emp
               where mgr is not null);




-- 51. BLAKE와 동일한 부서에 속한 사원의 이름과 입사일을 표시하는 질의를 작성하시오. ( 단 BLAKE는 제외 )
--부속질의 : BLAKE의 부서
select deptno 
from emp 
where ename='BLAKE'; 

--풀이 : 중첩질의 사용
select ename, hiredate
from emp
where deptno=(select deptno 
              from emp 
              where ename='BLAKE') 
and ename!='BLAKE' ;




-- 52. 급여가 평균 급여보다 많은 사원들의 
-- 사원 번호와 이름을 표시하되 결과를 급여에 대해서 오름차순으로 정렬하시오.
--부속질의 : 평균급여 2073.214285714285714285714285714285714286
select avg(sal) 
from emp; 

--풀이 : 중첩질의 사용
select empno, ename --, sal
from emp
where sal > (select avg(sal) from emp)
order by sal;

--결과확인용 
select empno, ename, sal from emp order by sal; 



-- 53. 이름에 K가 포함된 사원과 같은 부서에서 일하는 
-- 사원의 사원 번호와 이름을 표시하시오.
--부속질의 : 이름에 K가 포함된 사원의 부서번호 10, 30
select distinct deptno 
from emp 
where ename like '%K%'; 

--풀이 : 중첩질의 사용
select e.empno, e.ename
from emp e
where e.deptno in(select distinct deptno 
                  from emp k 
                  where ename like '%K%' 
                  and e.deptno=k.deptno);


-- 확인용 출력
select deptno, empno, ename 
from emp 
where deptno=10 or deptno=30 
order by deptno; 




-- 54. 부서위치가 DALLAS인 사원의 이름과 부서번호 및 담당업무를 표시하시오.
--부속질의 : 부서위치가 DALLAS인 부서번호
select deptno 
from dept 
where loc='DALLAS';

--풀이 : 중첩질의 사용
select ename, deptno, job
from emp
where deptno=(select deptno 
              from dept 
              where loc='DALLAS');

--◆ 참고풀이 : =이 아니라 in 연산자를 써주는 것이 맞다..
--dallas가 이전하여 부서번호가 달라질 수도 있기 때문에, 여러행이 나올 수도 있기 때문에. 
select ename, deptno, job
from emp
where deptno in(select deptno 
              from dept 
              where loc='DALLAS');



-- 55. KING에게 보고하는 사원의 이름과 급여를 표시하시오.
--부속질의 : king의 사원번호 
select empno 
from emp k 
where ename='KING'; 

--풀이 : 중첩질의 사용
select ename, sal
from emp e
where e.mgr=(select empno from emp k where ename='KING');

--확인용 출력
--select ename, mgr from emp where mgr=7839; 
--select * from emp order by mgr; 




-- 56. RESEARCH 부서의 사원에 대한 부서번호, 사원이름 및 담당 업무를 표시하시오.
--부속질의 : RESEARCH 부서의 부서번호
select deptno 
from dept 
where dname='RESEARCH';

--풀이 : 중첩질의 사용
select deptno, ename, job
from emp
where deptno=(select deptno 
              from dept 
              where dname='RESEARCH');

--◆ 참고풀이 : 조인 사용한 방법 
-- 조인이 가능하면 조인을 사용한 방법으로 select를 한번만 사용하는 것이 좋다. 
select e.deptno, empno, job
from emp e, dept d
where e.deptno=d.deptno
and dname='RESEARCH';





-- 57. 평균 월급보다 많은 급여를 받고 
-- 이름에 M이 포함된 사원과 같은 부서에서 근무하는 
-- 사원의 사원 번호, 이름, 급여를 표시하시오.
--부속질의  : 평균월급 
select avg(sal) from emp;   
--부속질의 : 이름에 'M'이 포함된 사원의 부서번호
select distinct deptno  from emp m  where ename like '%M%';  

--풀이 : 중첩질의 사용 
select e.empno, e.ename, e.sal
from emp e
where e.sal > (select avg(sal) 
               from emp a) 
      and e.deptno in(select distinct deptno 
                      from emp m 
                      where ename 
                      like '%M%' 
                      and e.deptno=m.deptno);




-- 58. 평균급여가 가장 적은 업무를 찾으시오.
--부속질의 : 직업별 평균급여
select job, avg(sal) 
from emp  
group by job;   

--풀이 : 인라인 뷰, rownum 사용
select *
from (select job, avg(sal) from emp  group by job order by min(sal))
where rownum=1;

--◆ 참고풀이 : all연산자 사용하여 풀이
select job, avg(sal) 
from emp  
group by job
having avg(sal) <= all(select avg(sal) 
                       from emp  
                       group by job); 




-- 59. 담당업무가 MANAGER 인 사원이 소속된 부서와 동일한 부서의 사원을 표시하시오.
--부속질의 : 담당업무가 MANAGER인 사원이 소속된 부서 
select deptno 
from emp 
where job='MANAGER';

--풀이 : 중첩질의 사용
select ename
from emp e
where e.deptno in(select deptno 
                  from emp m 
                  where job='MANAGER'
                  and e.deptno=m.deptno)
order by deptno, job;

-- 확인용
select * from emp order by job; 

--◆ 참고풀이 : MANAGER가 여럿일 수 있으므로, distinct 붙여주기.
select *
from emp e
where e.deptno in(select distinct deptno 
                  from emp m 
                  where job='MANAGER') 
order by deptno, job;


