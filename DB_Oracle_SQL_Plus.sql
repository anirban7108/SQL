SQL> SET LINES 100 PAGES 100
SQL> SELECT * FROM TAB;

TNAME                          TABTYPE  CLUSTERID                                                   
------------------------------ ------- ----------                                                   
DEPT                           TABLE                                                                
EMP                            TABLE                                                                
BONUS                          TABLE                                                                
SALGRADE                       TABLE                                                                

SQL> SELECT *
  2  FROM DEPT;

    DEPTNO DNAME          LOC                                                                       
---------- -------------- -------------                                                             
        10 ACCOUNTING     NEW YORK                                                                  
        20 RESEARCH       DALLAS                                                                    
        30 SALES          CHICAGO                                                                   
        40 OPERATIONS     BOSTON       


SQL> DESC DEPT;
 Name                                                  Null?    Type
 ----------------------------------------------------- -------- ------------------------------------
 DEPTNO                                                NOT NULL NUMBER(2)
 DNAME                                                          VARCHAR2(14)
 LOC                                                            VARCHAR2(13)


SQL> SELECT *
  2  FROM EMP;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO               
---------- ---------- --------- ---------- --------- ---------- ---------- ----------               
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20               
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30               
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30               
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20               
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30               
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30               
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10               
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20               
      7839 KING       PRESIDENT            17-NOV-81       5000                    10               
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30               
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20               
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30               
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20               
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10               

14 rows selected.

SQL> DESC EMP;
 Name                                                  Null?    Type
 ----------------------------------------------------- -------- ------------------------------------
 EMPNO                                                 NOT NULL NUMBER(4)
 ENAME                                                          VARCHAR2(10)
 JOB                                                            VARCHAR2(9)
 MGR                                                            NUMBER(4)
 HIREDATE                                                       DATE
 SAL                                                            NUMBER(7,2)
 COMM                                                           NUMBER(7,2)
 DEPTNO                                                         NUMBER(2)

SQL> SELECT *
  2  FROM BONUS;

no rows selected

SQL> DESC BONUS
 Name                                                  Null?    Type
 ----------------------------------------------------- -------- ------------------------------------
 ENAME                                                          VARCHAR2(10)
 JOB                                                            VARCHAR2(9)
 SAL                                                            NUMBER
 COMM                                                           NUMBER

SQL> SELECT *
  2  FROM SALGRADE;

     GRADE      LOSAL      HISAL                                                                    
---------- ---------- ----------                                                                    
         1        700       1200                                                                    
         2       1201       1400                                                                    
         3       1401       2000                                                                    
         4       2001       3000                                                                    
         5       3001       9999     

SQL> DESC SALGRADE
 Name                                                  Null?    Type
 ----------------------------------------------------- -------- ------------------------------------
 GRADE                                                          NUMBER
 LOSAL                                                          NUMBER
 HISAL                                                          NUMBER                                                               

SQL> CL SCR
SQL> SPOOL OFF