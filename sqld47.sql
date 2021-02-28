create table t47_1(
    c1   NUMBER(10),
    c2   NUMBER(10),
    c3   NUMBER(10)
);
create table t47_2(
    c1   NUMBER(10),
    c2   NUMBER(10),
    c3   NUMBER(10)
);

insert into t47_1 values(1 ,2 , 3);
insert into t47_1 values(1 ,2 , 3);
insert into t47_1 values(1 ,2 , 3);
insert into t47_2 values(1 ,2 , 3);
insert into t47_2 values(1 ,22, 3);
insert into t47_2 values(1 ,2 , 3);


select *
from	t47_1	a
,		t47_2	b
where	a.c1=b.c1
and		a.c2=b.c2
and		a.c3=b.c3

