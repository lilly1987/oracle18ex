create table t31_1(
    c1   NUMBER(10),
    c2   NUMBER(10)
);

insert into t31_1 values(1,1);
insert into t31_1 values(2,2);
insert into t31_1 values(3,2);
insert into t31_1 values(4,3);
insert into t31_1 values(5,3);
insert into t31_1 values(6,3);

-- 오라클은 반드시 테이블 별칭을 넣어줘야함
select a.*, count(*) over(order by c2 range current row)	from	t31_1 a