
--2020. 05. 26

-----------------------------------------------------------------------------------

-- << phonebook 테이블명세서 DDL : 2020.05.26 >>

-----------------------------------------------------------------------------------

-- 테이블 삭제
drop table phoneInfo_basic;
drop table phoneInfo_univ;
drop table phoneInfo_com;


-- 테이블 생성 

create table phoneInfo_basic (
    idx number(6),
    fr_name varchar2(20) not null,
    fr_phonenumber varchar2(20) not null,
    fr_email varchar2(20),
    fr_address VARCHAR2(20),
    fr_regdate date default sysdate,    
    constraint pb_idx_pk primary key(idx)    
);
 
 
create table phoneInfo_univ (
    idx number(6),
    fr_u_major varchar2(20) default 'N' not null,
    fr_u_year number(1) default 1 not null,
    fr_ref number(6),
    constraint pu_idx_pk primary key(idx),
    constraint pu_fr_u_year_ck check (fr_u_year between 1 and 4),
    constraint pu_fr_ref_fk foreign key(fr_ref) REFERENCES phoneInfo_basic(idx)    
);
 
create table phoneInfo_com(
    idx number(6),
    fr_c_company varchar2(20) default 'N' not null,
    fr_ref number(6),
    constraint pc_idx_pk primary key(idx),
    constraint pc_fr_ref_fk foreign key(fr_ref) REFERENCES phoneInfo_basic(idx)  
);



------------------
-- 테이블 구조 확인
desc phoneinfo_basic;
desc phoneInfo_univ;
desc phoneInfo_com;

-- 테이블 내용 확인
select * from phoneinfo_basic;
select * from phoneInfo_univ;
select * from phoneInfo_com;



---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
-- << 입력 DML >>

-- "트랜잭션" : 기본친구 정보 --> 학교친구 정보 ==> 두 정보를 모두 입력해야 하나의 정보가 완성된다. 

---------------------------------------------------------------------------------

-- 학교 친구 정보 입력 순서
-- 1. 기본 친구 정보 테이블 데이터 입력
insert into phoneinfo_basic (idx, fr_name, fr_phonenumber, fr_address) values(1, '박지성', '010-1111-1111','런던');
insert into phoneinfo_basic (idx, fr_name, fr_phonenumber, fr_address) values(2, '손흥민', '010-2222-2222','서울');
insert into phoneinfo_basic values(3, '김연아', '010-3333-3333','kim@gmail.com','판교', sysdate);

-- 2. 학교 친구 정보 테이블 데이터 입력
insert into phoneinfo_univ (idx, fr_u_major, fr_u_year, fr_ref)values(1, '축구', '4', '1'); 
insert into phoneinfo_univ values(2, '축구', '3', '2'); 
insert into phoneinfo_univ (idx,fr_ref) values(3, '3');    --fr_u_major와 fr_u_year를 default값으로 입력



-- 회사 친구 정보 입력 순서
-- 1. 기본 친구 정보 테이블 데이터 입력
insert into phoneinfo_basic (idx, fr_name, fr_phonenumber, fr_address) values(4, '추신수', '010-4444-4444',''); --명시적 null
insert into phoneinfo_basic (idx, fr_name, fr_phonenumber) values(5, '박세리', '010-5555-5555');  --암시적 null
insert into phoneinfo_basic values(6, 'scott', '010-6666-6666', null, null, null);  --명시적 null

-- 2. 회사 친구 정보 테이블 데이터 입력
insert into phoneinfo_com (idx, fr_ref) values(4, '4');  --fr_c_company를 default값으로 입력
insert into phoneinfo_com (idx, fr_c_company, fr_ref) values(5,'KoreaGolf', '5'); 
insert into phoneinfo_com values(6,'sk', '6'); 








---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
-- << 친구 정보 출력 질의 : 입력을 위한 sql  >>
---------------------------------------------------------------------------------

-- 1. 전체 친구 목록 출력
--    테이블 3개 JOIN
select *
from phoneinfo_basic b, phoneinfo_univ u, phoneinfo_com c
where b.idx=u.fr_ref(+) and b.idx=c.fr_ref(+);
--where b.idx=u.fr_ref and b.idx=c.fr_ref;     --이렇게 하면 아무 정보도 나오지 않는다..null값 때문에
--where b.idx=u.fr_ref and b.idx=c.fr_ref(+);  -- 이렇게 하면 회사친구 정보는 나오지 않는다..
--where b.idx=u.fr_ref(+) and b.idx=c.fr_ref;  -- 이렇게 하면 학교친구 정보는 나오지 않는다..

----> phoneinfo_basic b, phoneinfo_univ u, phoneinfo_com c 3개의 테이블이 join될때, 
----  null값과 and 연산 하게 되므로, 결과가 null 값이 나오기 때문에, 출력되는 것이 없다. 
----  phoneinfo_basic와 phoneinfo_univ를 join할 때, phoneinfo_com이 전부 null값이고,
----  phoneinfo_basic와 phoneinfo_com를 join할 때, phoneinfo_univ이 전부 null값이기 때문에 
----  각각 outer join을 사용해서 정보를 출력해야한다. 

-- 외래키 설정의 형태
-- TABLE phonbook  ==>        univ <-- basic --> com     : 외래키가 univ와 com에 설정되어 있는 경우
-- TABLE 마당서점    ==>   customer --> orders <-- book    : 외래키가 orders에 설정되어 있는 경우 





-- 2. 학교 친구 목록 출력
select *
from phoneinfo_basic b join phoneinfo_univ u
on b.idx=u.fr_ref;


-- 3. 회사 친구 목록 출력
select *
from phoneinfo_basic b join phoneinfo_com c
on b.idx=c.fr_ref;




---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
--<< 부모테이블의 삭제 >>
-- 외래키 설정해두었기 때문에 phoneInfo_basic부터 지우는 것이 안된다. 
-- --> 따라서 아래테이블(phoneInfo_univ, phoneInfo_com) 부터 삭제 후, phoneInfo_basic 삭제 된다. 

drop table phoneInfo_basic;
-- 오류 보고 -
-- ORA-02449: 외래 키에 의해 참조되는 고유/기본 키가 테이블에 있습니다
-- 02449. 00000 -  "unique/primary keys in table referenced by foreign keys"
-- *Cause:    An attempt was made to drop a table with unique or
--            primary keys referenced by foreign keys in another table.
-- *Action:   Before performing the above operations the table, drop the
--            foreign key constraints in other tables. You can see what
--            constraints are referencing a table by issuing the following
--            command:
--            SELECT * FROM USER_CONSTRAINTS WHERE TABLE_NAME = "tabnam";
           
drop table phoneInfo_univ;
drop table phoneInfo_com;






---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
-- << 친구 정보 변경 : 수정을 위한 sql >>
---------------------------------------------------------------------------------
-- 1. 회사친구 정보를 변경
-- 회사 친구 목록 확인
select * from phoneinfo_basic b join phoneinfo_com c  on b.idx=c.fr_ref ;


-- 수정 1 : 박세리의 회사이름을 KoreaGolf 를 LondonGolf로 변경
update (select * from phoneinfo_basic b join phoneinfo_com c  on b.idx=c.fr_ref)
set fr_c_company = 'LondonGolf' 
where fr_name = '박세리';

-- 수정 2 : scott의 회사이름을 박세리와 같은 회사이름으로 변경
update (select * from phoneinfo_basic b join phoneinfo_com c  on b.idx=c.fr_ref)
set fr_c_company = 
        (select fr_c_company 
         from(select * from phoneinfo_basic b join phoneinfo_com c  on b.idx=c.fr_ref) 
         where fr_name = '박세리') 
where fr_name = 'scott';

--수정 3 : 추신수의 전화번호, 주소 변경
--update (select * from phoneinfo_basic b join phoneinfo_com c  on b.idx=c.fr_ref)
--set ; 
--b.= '010-4000-4000', b.fr_address = '서울'
--where fr_name = '추신수';
    






-- 2. 학교친구 정보를 변경
-- 학교 친구 목록 확인
select * from phoneinfo_basic b join phoneinfo_univ u  on b.idx=u.fr_ref;


-- 수정 1 : 김연아 학년을 1 올리기
update (select * from phoneinfo_basic b join phoneinfo_univ u  on b.idx=u.fr_ref)
set fr_u_year = fr_u_year + 1
where fr_name = '김연아'; 

-- 수정 2 : 전공이 축구인 사람의 전공을 스포츠로 수정
update (select * from phoneinfo_basic b join phoneinfo_univ u  on b.idx=u.fr_ref)
set fr_u_major = '스포츠' 
where fr_u_major = '축구'; 








---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
-- << 친구 정보 삭제 : 삭제를 위한 sql  >>
---------------------------------------------------------------------------------

-- 1. 회사친구 정보를 삭제
select * from phoneinfo_basic b join phoneinfo_com c  on b.idx=c.fr_ref ;




-- 2. 학교친구 정보를 삭제
-- 학교 친구 목록 확인
select * from phoneinfo_basic b join phoneinfo_univ u  on b.idx=u.fr_ref;









