SQL> --41.WAQTD NAME OF THE EMPLOYEE EARNING MAXIMUM SALARY
SQL> SELECT ENAME
  2  FROM EMP
  3  WHERE SAL=(SELECT MAX(SAL)
  4             FROM EMP);

ENAME                                                                                               
----------                                                                                          
KING                                                                                                

SQL> --42.WAQTD NAME OF THE EMPLOYEE EARNING MINIMUM SALARY
SQL> SELECT ENAME
  2  FROM EMP
  3  WHERE SAL=(SELECT MIN(SAL)
  4             FROM EMP);

ENAME                                                                                               
----------                                                                                          
SMITH                                                                                               

SQL> --43.WAQTD NAME AND HIREDATE OF THE EMPLOYEE HIRED BEFORE ALL THE EMPLOYEES (FIRST EMP)
SQL> SELECT ENAME, HIREDATE
  2  FROM EMP
  3  WHERE HIREDATE =(SELECT MIN(HIREDATE)
  4                   FROM EMP);

ENAME      HIREDATE                                                                                 
---------- ---------                                                                                
SMITH      17-DEC-80                                                                                

SQL> --44.WAQTD NAME AND HIREDATE OF THE EMPLOYEES HIRED AT THE LAST
SQL> SELECT ENAME, HIREDATE
  2  FROM EMP
  3  WHERE HIREDATE =(SELECT MAX(HIREDATE)
  4                   FROM EMP);

ENAME      HIREDATE                                                                                 
---------- ---------                                                                                
ADAMS      23-MAY-87                                                                                

SQL> --45.WAQTD NAME, COMM OF THE EMPLOYEE WHO EARNS MIN COMISSION 
SQL> SELECT ENAME, COMM
  2  FROM EMP
  3  WHERE COMM IS NOT NULL AND COMM=(SELECT MIN(COMM)
  4                                   FROM EMP);

ENAME            COMM                                                                               
---------- ----------                                                                               
TURNER              0                                                                               

SQL> SELECT ENAME, COMM
  2  FROM EMP
  3  WHERE COMM=(SELECT MIN(COMM)
  4        FROM EMP);

ENAME            COMM                                                                               
---------- ----------                                                                               
TURNER              0                                                                               

SQL> --46.WAQTD NAME, SAL AND COMM OF THE EMPLOYEE EARNING MAXIMUM COMISSION
SQL> SELECT ENAME, SAL, COMM
  2  FROM EMP
  3  WHERE COMM=(SELECT MAX(COMM)
  4              FROM EMP);

ENAME             SAL       COMM                                                                    
---------- ---------- ----------                                                                    
MARTIN           1250       1400                                                                    

SQL> --47.WAQTD DETAILS OF THE EMPLOYEE WHO HAS GREATEST EMPNO
SQL> SELECT *
  2  FROM EMP
  3  WHERE EMPNO=(SELECT MAX(EMPNO)
  4                FROM EMP);

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO               
---------- ---------- --------- ---------- --------- ---------- ---------- ----------               
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10               

SQL> --48.WAQTD DETAILS OF THE EMPLOYEES HAVING THE LEAST HIREDATE
SQL> SELECT *
  2  FROM EMP
  3  WHERE HIREDATE=(SELECT MIN(HIREDATE)
  4                  FROM EMP);

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO               
---------- ---------- --------- ---------- --------- ---------- ---------- ----------               
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20               

SQL> --49.WAQTD DETAILS OF THE EMPLOYEES EARNING LEAST ANNUAL SALARY
SQL> SELECT *
  2  FROM EMP
  3  WHERE SAL*12=(SELECT MIN(SAL*12)
  4                FROM EMP);

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO               
---------- ---------- --------- ---------- --------- ---------- ---------- ----------               
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20               

SQL> --50.WAQTD NAME , ANNUAL SALARY OF THE EMPLOYEES IF THEIR ANNUAL SALARY IS MORE THAN ALL THE SALESMAN
SQL> SELECT ENAME, SAL*12 AS ANNUAL_SAL
  2  FROM EMP
  3  WHERE SAL*12>(SELECT MAX(SAL*12)
  4                FROM EMP
  5                WHERE JOB='SALESMAN');

ENAME      ANNUAL_SAL                                                                               
---------- ----------                                                                               
JONES           35700                                                                               
BLAKE           34200                                                                               
CLARK           29400                                                                               
SCOTT           36000                                                                               
KING            60000                                                                               
FORD            36000                                                                               

6 rows selected.

SQL> SPOOL OFF
