create table t32_1(
    c1   VARCHAR2(20),
    c2   NUMBER(10)
);

create table t32_2(
    c1   VARCHAR2(20),
    c2   NUMBER(10)
);


insert into t32_1 values('A',1);
insert into t32_1 values('B',1);
insert into t32_1 values('B',2);
insert into t32_1 values('C',2);
insert into t32_1 values('Z',null);

insert into t32_2 values('A',1);
insert into t32_2 values('B',1);
insert into t32_2 values('B',1);
insert into t32_2 values('B',1);
insert into t32_2 values('C',1);
insert into t32_2 values('Z',null);


select *	from	t32_1 minus
select *	from	t32_2 union all
select *	from	t32_2 minus
select *	from	t32_1 