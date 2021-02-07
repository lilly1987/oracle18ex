create table t42_1(
    c1   NUMBER(10),
    c2   VARCHAR2(20)
);

create table t42_2(
    c1   NUMBER(10),
    c2   VARCHAR2(20)
);


insert into t42_1 values(1,'A');
insert into t42_1 values(2,null);
insert into t42_1 values(3,'B');
insert into t42_1 values(4,'C');

insert into t42_2 values(1,'A');
insert into t42_2 values(2,null);
insert into t42_2 values(3,'B');


select *
from	t42_1	a
,		t42_2	b
where 	a.c1<>b.c1

select *
from	t42_1	a
,		t42_2	b
where 	a.c2<>b.c2