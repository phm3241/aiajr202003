-- 2020.05.20 
----------------------------------------------------------------------
-- 단일행함수


----------------------------------------------------------------------
-- << 숫자함수 >>


-- mod : 입력 받은 수를 나눈 나머지 값을 반환한다.
-- select mod(sal,2) from emp;
select mod(10,2)
from dual;

-- abs : 절대값 반환
-- select abs(-10) from dual;
select abs(sal) 
from emp;

-- trunc : 특정 자릿수에서 잘라낸다. (버림)
--두번째 인자는 절삭할 자릿수 표현 (양수는 소숫점 자릿수 표현)
select trunc(sal, -1)
from emp;

select trunc(1282.238273, -2) 
from dual;
--결과 1200

select trunc(1282.238273 , 2) 
from dual;
--결과 1282.23

select trunc(1282.238273 , 0) 
from dual;
--결과 1282


-- round : 특정 자릿수에서 반올림한다.
--두번째 인자는 자릿수 표현
select round(3.141592, 3)
from dual;




----------------------------------------------------------------------
-- << 날짜함수 >>

-- sysdate 시스템 저장된 현재 날짜를 반환한다.
select sysdate
from dual;



----------------------------------------------------------------------
-- << 변환함수 >>
-- TO_CHAR : 날짜형 혹은 숫자형을 문자형으로 변환한다.
-- 날짜 ㅡ> 문자형으로 변환하기
-- date ㅡ> varchar2
select sysdate, to_char(sysdate, 'YYYY-MM-DD') as hiredate
from dual;

select ename, hiredate, to_char(hiredate, 'YYYY.MM.DD')
from emp;

select sysdate, to_char(sysdate, 'HH24:MI:SS')
from dual;

-- 원하는 날짜 형식으로 출력가능 (년.월.일. 시.분)
-- 2020.05.20. 11:26 네이버형식으로 날짜 출력하기
select sysdate, to_char(sysdate, 'YYYY.MM.DD. HH24:MI')
from dual;



----------------------------------------------------------------------
-- << 변환함수 >>
-- TO_number : 문자형을 숫자형으로 변환한다.
-- number ㅡ> varchar2

select to_char(12500, '000,000')  
from dual;
-- 결과 012,500, 자릿수가 남으면, 0으로 채워서 표현한다. 

select to_char(12500, '999,999')  
from dual;
-- 결과 12,500, 자릿수가 남으면, 채우지 않는다.

select to_char(12500, '0,000')  
from dual;
-- 결과 ######, 자릿수가 맞지 않으면 오류발생. (원본데이터가 자릿수가 커서)

select to_char(12500, '9,999')  
from dual;
-- 결과 ######, 자릿수가 맞지 않으면 오류발생. (원본데이터가 자릿수가 커서)

select to_char(12500, 'L999,999')   
from dual;
-- 결과 ￦12,500, L을 붙이면 운영체제가 가지고 있는 기본설정으로 통화표현 가능.

select to_char(3.14, '000,000.000')  
from dual;
-- 결과 000,003.140

select to_char(3.14, '999,999.999')  
from dual;
-- 결과 3.140

select to_char(3.14, '999,999.9')  
from dual;
-- 결과 3.1, 소숫점표현의 경우, 반올림

select to_char(3.14, '999,999')  
from dual;
-- 결과 3.1, 소숫점ㅡ> 정수표현의 경우, 반올림


-- 연봉테이블 숫자 ㅡ> 문자로 변환
select sal, to_char(sal*1000, 'L999,999,999')
, to_char( sal*1000*12+nvl(comm,0), 'L999,999,999') as income
from emp
order by income desc;



----------------------------------------------------------------------
-- << 변환함수 >>
-- TO_Date : 문자형을 날짜형으로 변환한다.
-- TO_Date(원본, 패턴)
-- str ㅡ> date
-- 참고 : Web HTML(2020-05-20) ㅡ> Server(String) ㅡ> 따라서 서버에서 insert할때 to_date로 변환필요

select to_date('19810220','YYYYMMDD')
from dual;

select to_date('1981/02/20','YYYY/MM/DD')
from dual;

select ename, hiredate
from emp
where hiredate = to_date('1981/02/20','YYYY/MM/DD');

select sysdate, to_date('20201225','YYYYMMDD') 
, trunc(to_date('20201225', 'YYYYMMDD')-sysdate)
from dual;

select sysdate, trunc(sysdate-to_date('1989/12/30','YYYY/MM/DD'))
from dual;



----------------------------------------------------------------------
-- << 변환함수 >>
-- TO_number : 문자형을 숫자형으로 변환한다.
-- TO_number(원본(해당컬럼), 패턴)
-- str ㅡ> number : 산술,관계 연산을 목적으로 변환
-- 참고 : 데이터모델링을 할때, 출력용이냐(문자형으로 저장), 연산용도 있느냐(숫자형으로 저장)에 따라 
--       데이터를 구분해서 저장. 선정해서 변환함수를 쓰지 않을 수 있다. 
select to_number('20,000','999,999') - to_number('9,000','999,999')
from dual;



----------------------------------------------------------------------
-- <<DECODE 함수>> 
-- if나 switch구문과 유사

select ename, deptno, 
decode(deptno, 
            10, 'ACCOUNTING',
            20, 'RESEARCH',
            30, 'SALES',
            40, 'OPERATING'
) as deptName
from emp;



-- 직급에 따라 급여를 인상하도록 하자. 
-- 직급이 'ANALYST'인 사원은 5%, 
--       'SALESMAN'인 사원은 10%, 
--       'MANAGER'인 사원은 15%, 
--       'CLERK'인사원은 20%인 인상한다.

select ename, job, sal,
decode(job, 
            'ANALIST', sal*1.05,
            'SALESMAN', sal*1.1,
            'MANAGER', sal*1.15,
            'CLERK', sal*1.2
) as UPSALE
from emp;


----------------------------------------------------------------------
-- <<CASE 함수>> 
-- if else 구문과 유사
select ename, deptno, 
case 
    when deptno=10 then 'ACCOUNTING'
    when deptno=20 then 'RESEARCH'
    when deptno=30 then 'SALES'
    when deptno=40 then 'OPERATING'
    else 'no name'
end as deptName
from emp;
















