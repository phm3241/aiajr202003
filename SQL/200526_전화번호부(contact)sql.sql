
--2020. 05. 26S

-----------------------------------------------------------------------------------

-- << 전화번호 관리 프로그램 >>

-----------------------------------------------------------------------------------
-- 이름, 전화번호, 생일, 이메일
-- 전공, 학년
-- 부서이름, 직급
-- 모임이름, 닉네임
-- 대리키 : 일련번호 ㅡ> pIdx  (p_idx  or  member_idx  or  memberIDX   이것도 가능)

--> 이 데이터들을 저장할 수 있는 공간을 만들면 된다. --> 하나의 테이블 생성 
----> 전화번호 부 (Contact)
-- pk(기본키) 찾기 : 전화번호,,도 없을수도? .... ㅡ> 기본키 할 것이 없다 ㅡ> 대리키 사용! : 보통 일련번호 적용



-----------------------------------------------------------------------------------
--<< 실습 : 전화번호 후 테이블 생성하기>>

-- 대리키 : 일련번호 -> pIdx
-- 이름, 전화번호, 주소, 이메일 <- 기본정보
-- 주소값과 이메일은 입력이 없을 때 기본값 입력
-- 친구의 타입 (카테고리) : univ, com, cafe 세가지 값만 저장 가능 ㅡ> 체크조건 

------ 선택 정보
-- 전공, 학년
-- 회사이름, 부서이름, 직급
-- 모임이름, 닉네임


-- 실습1 : 컬럼레벨에서 제약조건 정의하기
-- not null 제약조건은 컬럼레벨에서만 가능
-- default는 테이블레벨에서 정의해도 되지만, 컬럼레벨에서 해주는 것이 보기 좋음. 
-- dsfault 값은 not null 앞에 와야한다. 

create table contact1(
    -- 기본정보
    pIdx number(4) constraint contact_pIdx_pk primary key,                  --기본키, 대리키
    name varchar2(10) not null,                                             --이름
    phonenumber varchar2(13) constraint contact_phonenumber_uk not null,    --전화번호
    addess varchar2(50) default '정보없음' not null,                          --주소
    email varchar2(20) default '정보없음' not null,                           --이메일
    
    -- 친구타입
    friendType varchar2(20) constraint contact_friendType_ck 
        check(friendType='univ' or friendType='com' or friendType='cafe'),
    
    -- 선택정보
    major varchar2(20),         --전공
    year number(1),             --학년
    company varchar2(20),       --회사이름
    dept varchar2(20),          --부서이름  
    job varchar2(20),           --직급
    cafeName varchar2(20),      --동호회이름
    nickName varchar2(20)       --닉네임
);



-- 실습2 : 테이블레벨에서 제약조건 정의하기
-- not null 제약조건은 컬럼레벨에서만 가능
-- default는 테이블레벨에서 정의해도 되지만, 컬럼레벨에서 해주는 것이 보기 좋음. 
-- dsfault 값은 not null 앞에 와야한다. 

create table contact2(
    -- 기본정보
    pIdx number(4),                                     --기본키, 대리키
    name varchar2(10) not null,                         --이름
    phonenumber varchar2(13) not null,                  --전화번호
    addess varchar2(50) default '정보없음' not null,      --주소
    email varchar2(20) default '정보없음' not null,       --이메일
    
    -- 친구타입
    friendType varchar2(20), 
    
    -- 선택정보
    major varchar2(20),         --전공
    year number(1),             --학년
    company varchar2(20),       --회사이름
    dept varchar2(20),          --부서이름  
    job varchar2(20),           --직급
    cafeName varchar2(20),      --동호회이름
    nickName varchar2(20),      --닉네임
    
    --제약조건
    constraint ct_pIdx_pk primary key(pIdx),
    constraint ct_phonenumber_uk unique(phonenumber),
    constraint ct_friendType_ck 
        check (friendType='univ' or friendType='com' or friendType='cafe')
        -- check (friendType in('univ', 'com', 'cafe'))
);


-----------------------------------------------------------------

-- 사용자 정의 제약조건을 저장하는 딕셔너리 테이블
desc user_constraints;
select CONSTRAINT_NAME from user_constraints;
select * from user_constraints where table_name='PHONEBOOK';

-----------------------------------------------------------------


drop table contact2;
drop table phoneInfo_basic;
-----------------------------------------------------------------------------------
--<< 실습 : 테이블 명세서를 확인하고 전화번호부 DDL 을 작성 >>
-- 테이블 명세서가 나오는 시점 : 설계 끝나고, 물리모델링이 끝나고 타입 등이 정해진 후 문서형식으로 나온다.
-- 테이블 명세서에 나와있는 것과 똑같이 작성해줘야함. 


CREATE TABLE phoneInfo_basic(
    idx number(6),                         --기본키
    fr_name varchar2(20) not null,         --이름
    fr_phonenumber varchar2(20) not null,  --전화번호
    fr_addess varchar2(20),                --주소
    fr_email varchar2(20),                 --이메일
    fr_redate date default sysdate,        --등록시간
    constraint pb_idx_pk primary key(idx),
    constraint pb_phonenumber_uk unique(fr_phonenumber) 
);



CREATE TABLE phoneInfo_univ(
    idx number(6),                                     --기본키
    fr_u_major varchar2(20) default 'N' not null,      --전공
    fr_u_year number(1) default 1 not null,            --학년
    fr_ref number(6) not null,                         --기본정보 외래키
    constraint pu_idx_pk primary key(idx),
    constraint pu_fr_u_year_ck check(fr_u_year between 1 and 5),
    constraint pu_fr_ref_fk foreign key(fr_ref) references phoneInfo_basic(idx)
);

--drop TABLE phoneInfo_univ;

CREATE TABLE phoneInfo_com(
    idx number(6),                                     --기본키
    fr_c_company varchar2(20) default 'N' not null,    --회사이름
    fr_ref number(6) not null,                         --기본정보 외래키
    constraint pc_idx_pk primary key(idx),
    constraint pc_fr_ref_fk foreign key(fr_ref) references phoneInfo_basic(idx)
);

--drop TABLE phoneInfo_com;




-----------------------------------------------------------------------------------
-----------------------------------------------------------------------------------
--선생님 phonebook 작성코드

drop table phonebook;
-- 테이블 생성 : 테이블 레벨 제약 정의
create table phonebook(
    pbidx number(4),                -- 기본키, 대리키
    pbname varchar2(10) not null,   -- 이름
    pbnumber varchar(13) not null,  -- 전화번호
    pbaddr varchar(50) default '입력 없음'  not null,    -- 주소
    pbmail varchar2(50) default '입력 없음' not null,   -- 이메일
    pbtype varchar2(10) not null,   -- 친구 타입
    pbmajor varchar2(20),           -- 전공
    pbgrade number(1),              -- 학년
    pbcomName varchar2(50),         -- 회사이름    
    pbcomDept varchar2(50),         -- 부서이름
    pbcomJob varchar2(20),          -- 직급
    pbcafeName varchar2(50),        -- 동호회이름
    pbcafeNickname varchar2(50),    -- 닉네임
    
    constraint pb_pbidx_pk PRIMARY KEY (pbidx),
    CONSTRAINT pb_type_ck check (pbtype in ('univ', 'com', 'cafe') ),
    constraint pb_grade_ck check (pbgrade between 1 and 4)
);

-----------------------------------------------------------------------------------

-- 테이블구조 확인
desc phonebook;

-- 테이블 내용 확인
select * from phonebook;

--모든 로우 삭제
truncate table phonebook;

-----------------------------------------------------------------------------------
-- << 입력 SQL 작성 >>
-- 기본 정보입력 / 학교친구 정보입력 / 회사친구 정보입력 / 모임친구 정보입력


-- 기본 정보입력
insert into phonebook (pbIdx, pbName, pbNumber, pbAddr, pbMail, pbType)
values(1,'SCOTT','010-1111-1234','SEOUL','SCOTT@gmail.com','univ');

insert into phonebook (pbIdx, pbName, pbNumber, pbAddr, pbMail, pbType)
values(8,'ALLEN','010-8888-1234','PUSAN','ALLEN@gmail.com','univ');

-- 학교친구 정보입력
insert into phonebook (pbIdx, pbName, pbNumber, pbAddr, pbMail, pbType, pbMajor, pbGrade)
values(2,'JONES','010-2222-1234','PUSAN','JONES@gmail.com','univ', 'computer','3');

insert into phonebook (pbIdx, pbName, pbNumber, pbAddr, pbMail, pbType, pbGrade )
values(3,'MARTIN','010-3333-1234','SEOUL','JONES@gmail.com','univ', '1');

--default 입력처리 pbAddr, pbMail (default로 '입력 없음' 값을 지정해 두었기 때문에)
insert into phonebook (pbIdx, pbName, pbNumber, pbType, pbGrade )
values(11,'lee','010-1111-1111','univ', '4');

-- 회사친구 정보입력
insert into phonebook (pbIdx, pbName, pbNumber, pbAddr, pbMail, pbType, pbComName, pbComDept, pbComJob)
values(4,'WARD','010-4444-1234','ILSAN','WARD@gmail.com','com','samsung',null,'');

insert into phonebook (pbIdx, pbName, pbNumber, pbAddr, pbMail, pbType, pbComJob)
values(5,'CLARK','010-5555-1234','PUSAN','CLARK@gmail.com','com','MANAGER');


-- 모임친구 정보입력
insert into phonebook (pbIdx, pbName, pbNumber, pbAddr, pbMail, pbType, pbCafeName, pbCafeNickname)
values(6,'FORD','010-6666-1234','NEW YORK','FORD@gmail.com','cafe', null,'');

insert into phonebook (pbIdx, pbName, pbNumber, pbAddr, pbMail, pbType, pbCafeName)
values(7,'FORD','010-6666-1234','NEW YORK','FORD@gmail.com','cafe','forCafe');

insert into phonebook (pbIdx, pbName, pbNumber, pbAddr, pbMail, pbType, pbCafeName, pbCafeNickname)
values(9,'son','010-9999-1234','LONDON','son@gmail.com','cafe','fanCafe','son');

insert into phonebook (pbIdx, pbName, pbNumber, pbAddr, pbMail, pbType, pbCafeName, pbCafeNickname)
values(10,'park','010-1010-1234','park','son@gmail.com','cafe','fanCafe','park');






-----------------------------------------------------------------------------------
-----------------------------------------------------------------------------------
--<< 정보 출력 질의 >>
-----------------------------------------------------------------------------------
-- 1. 기본정보 출력 질의
select pbidx, pbname, pbnumber from phonebook;

-- 2. 대학친구 정보 출력 질의
select pbname, pbnumber, pbmajor, pbgrade from phonebook where pbtype='univ';

-- 3. 회사친구 정보 출력 질의
select pbname, pbnumber, pbcomname, pbcomdept, pbcomjob from phonebook where pbtype='com';

-- 4. 모임친구 정보 출력 질의
select pbname, pbnumber, pbcafename, pbcafenickname from phonebook where pbtype='cafe';






-----------------------------------------------------------------------------------
-----------------------------------------------------------------------------------
---------------------------------------------------------------------------------
-- 입력 DML
---------------------------------------------------------------------------------

-- 학교 친구 정보 입력 순서
-- 1. 기본 친구 정보 테이블 데이터 입력
-- 2. 학교 친구 정보 테이블 데이터 입력




-- 회사 친구 정보 입력 순서
-- 1. 기본 친구 정보 테이블 데이터 입력
-- 2. 학교 친구 정보 테이블 데이터 입력


---------------------------------------------------------------------------------
-- 친구 정보 출력 질의
---------------------------------------------------------------------------------

-- 1. 전체 친구 목록 출력
--    테이블 3개 JOIN


-- 2. 학교 친구 목록 출력


-- 3. 회사 친구 목록 출력


