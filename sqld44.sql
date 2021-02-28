create table t44_1(
    c1   NUMBER(10),
    c2   NUMBER(10)
);

insert into t44_1 values(1 ,null);
insert into t44_1 values(2 ,null);
insert into t44_1 values(3 ,1);
insert into t44_1 values(4 ,1);
insert into t44_1 values(5 ,2);
insert into t44_1 values(6 ,2);
insert into t44_1 values(7 ,3);
insert into t44_1 values(8 ,4);
insert into t44_1 values(9 ,5);
insert into t44_1 values(10,6);
insert into t44_1 values(11,7);


select 	level
, 	lpad('**',(level-1)*2,' ')||c1 as 트리
,	c1
,	c2
from	t44_1
start with c2 is null
connect by c1=prior c2


select 	level
, 	lpad('_',(level-1)*2,' ')||c1 as 트리
,	c1
,	c2
from	t44_1
start with c2 =7
connect by c1=prior c2


select 	level
,	c1
,	c2
from	t44_1
start with c2 is null
start with c1 = 7
start with c2 = 7
connect by c1 = prior c2
connect by prior c1 = c2

select 	level
,	c1
,	c2
from	t44_1
start with c2 is null
connect by prior c1 =  c2
and	c2 = 7
--order siblings by c1


select 	level
, 	lpad('**',(level-1)*2,' ')||c1 as 트리
,	c1
,	c2
from	t44_1
start with c1  =7
connect by PRIOR c1=  c2

select 	level  as 트리
,	(level-1)*2
,	lpad('**',(level-1)*2,' ')
,	c1
,	c2
from	t44_1
--start with c2 is null
start with c2 =7
connect by c1=prior c2




--------------------------------------

CREATE TABLE DEP (
     DEP_CD NUMBER NOT NULL, -- 부서코드
     PARENT_CD NUMBER, -- 상위부서 코드
     DEPT_NAME VARCHAR2(100) NOT NULL, -- 부서이름
     PRIMARY KEY (DEP_CD)
);

INSERT INTO DEP VALUES ( 101, NULL, '총괄개발부');
INSERT INTO DEP VALUES ( 102, 101, '모바일개발센터');
INSERT INTO DEP VALUES ( 103, 101, '웹개발센터');
INSERT INTO DEP VALUES ( 104, 101, '시스템개발센터');

INSERT INTO DEP VALUES ( 105, 102, '쇼핑몰(모바일)');
INSERT INTO DEP VALUES ( 106, 103, '외주SI');
INSERT INTO DEP VALUES ( 107, 103, '쇼핑몰');
INSERT INTO DEP VALUES ( 108, 105, '전산지원팀');
INSERT INTO DEP VALUES ( 109, 106, '구축1팀');
INSERT INTO DEP VALUES ( 100, 106, '구축2팀');
INSERT INTO DEP VALUES ( 111, 104, 'ERP시스템');


SELECT [컬럼]...
FROM [테이블]
WHERE [조건]
START WITH [최상위 조건]
CONNECT BY [NOCYCLE][PRIOR 계층형 구조 조건];


SELECT 
DEPT_NAME,
DEP_CD,
PARENT_CD,
LEVEL
FROM DEP 
START WITH PARENT_CD IS NULL --최상위노드 설정,
CONNECT BY PRIOR DEP_CD = PARENT_CD;--부모노드와 자식노드 연결


SELECT 
LPAD(' ', 2*(LEVEL-1)) || DEPT_NAME AS DEPT_NAME, --레벨별 들여쓰기
DEP_CD,
PARENT_CD ,
LEVEL
FROM DEP 
START WITH PARENT_CD IS NULL --최 상위노드 설정,
CONNECT BY PRIOR DEP_CD = PARENT_CD;--부모노드와 자식노드 연결


SELECT 
LPAD(' ', 2*(LEVEL-1)) || DEPT_NAME AS DEPT_NAME, --레벨별 들여쓰기
DEP_CD,
PARENT_CD ,
LEVEL
FROM DEP 
START WITH PARENT_CD =106 --최 상위노드 설정,
CONNECT BY  DEP_CD = PRIOR PARENT_CD;--부모노드와 자식노드 연결

