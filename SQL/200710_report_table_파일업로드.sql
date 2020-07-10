-- report table

create table report(
    idx number(4) PRIMARY key,
    sname varchar2(20) not null,
    sno varchar2(10) not null,
    reportfile varchar2(100) not null
);

create SEQUENCE report_seq;

insert into report values(REPORT_SEQ.nextval, '길동', '1234', '/file/123456_report.ppt');