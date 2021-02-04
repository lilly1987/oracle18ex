create user c##holy IDENTIFIED by "0000";
GRANT dba to c##holy;

-- c##을 안붇이고 싶으면
alter session set "_ORACLE_SCRIPT"=true;