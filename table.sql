create table emp(
    empno   NUMBER(10),
    ename   VARCHAR2(20),
    sal NUMBER(10,2) DEFAULT 0,
    deptno  VARCHAR2(4) not null,
    createdate date DEFAULT SYSDATE,
    constraint emp_pk PRIMARY key(empno)
);