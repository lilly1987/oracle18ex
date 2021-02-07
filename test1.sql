
create table test1(
    seq   NUMBER(10) 
);



create table test2(
    seq   NUMBER(10) 
);


insert into test1 values (0) ;
insert into test1 values (0) ;
insert into test1 values (0) ;
insert into test1 values (0) ;
insert into test1 values (1) ;
insert into test1 values (1) ;
insert into test1 values (1) ;
insert into test1 values (2) ;
insert into test1 values (2) ;
insert into test1 values (3) ;


insert into test2 values (1) ;
insert into test2 values (2) ;
insert into test2 values (2) ;
insert into test2 values (3) ;
insert into test2 values (3) ;
insert into test2 values (3) ;
insert into test2 values (4) ;
insert into test2 values (4) ;
insert into test2 values (4) ;
insert into test2 values (4) ;




select * from test1;
select * from test2;

select * from test1
union
select * from test2;

select * from test1
union all
select * from test2;
