create table cascade1(
    n   NUMBER(10) not null,
    CONSTRAINT n_pk primary key (n)
);



create table cascade2(
    n   NUMBER(10) not null,
    CONSTRAINT n_fk FOREIGN key (n)
    REFERENCES cascade1(n) on delete cascade
);

insert into cascade1 values(3 );
insert into cascade1 values(5 );
insert into cascade1 values(7 );
insert into cascade1 values(9 );
insert into cascade1 values(11);


insert into cascade2 values(3 );
insert into cascade2 values(5 );
insert into cascade2 values(7 );
insert into cascade2 values(9 );
insert into cascade2 values(11);

DELETE FROM CASCADE1
WHERE N=7;
