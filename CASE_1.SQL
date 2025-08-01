SQL> --1.WAQTD NAME OF THE EMPLOYEES EARNING MORE THAN ADAMS
SQL> SELECT ENAME,SAL
  2  FROM EMP
  3  WHERE SAL>(SELECT SAL
  4             FROM EMP
  5             WHERE ENAME='ADAMS');

ENAME             SAL                                                                               
---------- ----------                                                                               
ALLEN            1600                                                                               
WARD             1250                                                                               
JONES            2975                                                                               
MARTIN           1250                                                                               
BLAKE            2850                                                                               
CLARK            2450                                                                               
SCOTT            3000                                                                               
KING             5000                                                                               
TURNER           1500                                                                               
FORD             3000                                                                               
MILLER           1300                                                                               

11 rows selected.

SQL> --2.WAQTD NAME AND SALARY OF THE EMPLOYEES EARNING LESS THAN KING
SQL> SELECT ENAME,SAL
  2  FROM EMP
  3  WHERE SAL<(SELECT SAL
  4             FROM EMP
  5             WHERE ENAME='KING');

ENAME             SAL                                                                               
---------- ----------                                                                               
SMITH             800                                                                               
ALLEN            1600                                                                               
WARD             1250                                                                               
JONES            2975                                                                               
MARTIN           1250                                                                               
BLAKE            2850                                                                               
CLARK            2450                                                                               
SCOTT            3000                                                                               
TURNER           1500                                                                               
ADAMS            1100                                                                               
JAMES             950                                                                               
FORD             3000                                                                               
MILLER           1300                                                                               

13 rows selected.

SQL> --3.WAQTD NAME AND DEPTNO OF THE EMPLOYEES IF THEY ARE WORKING IN THE SAME DEPT AS JONES
SQL> SELECT ENAME, DEPTNO
  2  FROM EMP
  3  WHERE DEPTNO=(SELECT DEPTNO
  4                FROM EMP
  5                WHERE ENAME='JONES');

ENAME          DEPTNO                                                                               
---------- ----------                                                                               
SMITH              20                                                                               
JONES              20                                                                               
SCOTT              20                                                                               
ADAMS              20                                                                               
FORD               20                                                                               

SQL> --4.WAQTD NAME AND JOB OF ALL THE EMPLOYEES WORKING IN THE SAME DESIGNATION AS JAMES
SQL> SELECT ENAME, JOB
  2  FROM EMP
  3  WHERE JOB=(SELECT JOB
  4             FROM EMP
  5             WHERE ENAME='JAMES');

ENAME      JOB                                                                                      
---------- ---------                                                                                
SMITH      CLERK                                                                                    
ADAMS      CLERK                                                                                    
JAMES      CLERK                                                                                    
MILLER     CLERK                                                                                    

SQL> --5.WAQTD EMPNO AND ENAME ALONG WITH ANNUAL SALARY OF ALL THEEMPLOYEES IF THEIR ANNUAL SALARY IS GREATER THAN WARDS ANNUAL SALARY.
SQL>  SELECT EMPNO,ENAME,SAL*12 ANNUAL_SAL
  2   FROM EMP
  3   WHERE SAL*12>(SELECT SAL*12
  4                 FROM EMP
  5                 WHERE ENAME='WARD');

     EMPNO ENAME      ANNUAL_SAL                                                                    
---------- ---------- ----------                                                                    
      7499 ALLEN           19200                                                                    
      7566 JONES           35700                                                                    
      7698 BLAKE           34200                                                                    
      7782 CLARK           29400                                                                    
      7788 SCOTT           36000                                                                    
      7839 KING            60000                                                                    
      7844 TURNER          18000                                                                    
      7902 FORD            36000                                                                    
      7934 MILLER          15600                                                                    

9 rows selected.

SQL> --6.WAQTD NAME AND HIREDATE OF THE EMPLOYEES IF THEY ARE HIRED BEFORE SCOTT
SQL> SELECT ENAME, HIREDATE
  2  FROM EMP
  3  WHERE HIREDATE<(SELECT HIREDATE
  4                  FROM EMP
  5                  WHERE ENAME='SCOTT');

ENAME      HIREDATE                                                                                 
---------- ---------                                                                                
SMITH      17-DEC-80                                                                                
ALLEN      20-FEB-81                                                                                
WARD       22-FEB-81                                                                                
JONES      02-APR-81                                                                                
MARTIN     28-SEP-81                                                                                
BLAKE      01-MAY-81                                                                                
CLARK      09-JUN-81                                                                                
KING       17-NOV-81                                                                                
TURNER     08-SEP-81                                                                                
JAMES      03-DEC-81                                                                                
FORD       03-DEC-81                                                                                
MILLER     23-JAN-82                                                                                

12 rows selected.

SQL> --7.WAQTD NAME AND HIREDATE OF THE EMPLOYEES IF THEY ARE HIRED AFTER THE PRESIDENT
SQL> SELECT ENAME, HIREDATE
  2  FROM EMP
  3  WHERE HIREDATE<(SELECT HIREDATE
  4                  FROM EMP
  5                  WHERE JOB='PRESIDENT');

ENAME      HIREDATE                                                                                 
---------- ---------                                                                                
SMITH      17-DEC-80                                                                                
ALLEN      20-FEB-81                                                                                
WARD       22-FEB-81                                                                                
JONES      02-APR-81                                                                                
MARTIN     28-SEP-81                                                                                
BLAKE      01-MAY-81                                                                                
CLARK      09-JUN-81                                                                                
TURNER     08-SEP-81                                                                                

8 rows selected.

SQL> --8.WAQTD NAME AND SAL OF THE EMPLOYEE IF THEY ARE EARNING SAL LESS THAN THE EMPLOYEE WHOS EMPNO IS 7839
SQL> SELECT ENAME, SAL
  2  FROM EMP
  3  WHERE SAL< (SELECT SAL
  4              FROM EMP
  5              WHERE EMPNO=7839);

ENAME             SAL                                                                               
---------- ----------                                                                               
SMITH             800                                                                               
ALLEN            1600                                                                               
WARD             1250                                                                               
JONES            2975                                                                               
MARTIN           1250                                                                               
BLAKE            2850                                                                               
CLARK            2450                                                                               
SCOTT            3000                                                                               
TURNER           1500                                                                               
ADAMS            1100                                                                               
JAMES             950                                                                               
FORD             3000                                                                               
MILLER           1300                                                                               

13 rows selected.

SQL> SELECT ENAME, SAL
  2  FROM EMP
  3  WHERE SAL< (SELECT SAL
  4              FROM EMP
  5              WHERE EMPNO='7839');

ENAME             SAL                                                                               
---------- ----------                                                                               
SMITH             800                                                                               
ALLEN            1600                                                                               
WARD             1250                                                                               
JONES            2975                                                                               
MARTIN           1250                                                                               
BLAKE            2850                                                                               
CLARK            2450                                                                               
SCOTT            3000                                                                               
TURNER           1500                                                                               
ADAMS            1100                                                                               
JAMES             950                                                                               
FORD             3000                                                                               
MILLER           1300                                                                               

13 rows selected.

SQL> --9.WAQTD ALL THE DETAILS OF THE EMPLOYEES IF THE EMPLOYEES ARE HIRED BEFORE MILLER
SQL> SELECT * FROM EMP
  2  WHERE HIREDATE<(SELECT HIREDATE
  3                  FROM EMP
  4                  WHERE ENAME='MILLER');

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO               
---------- ---------- --------- ---------- --------- ---------- ---------- ----------               
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20               
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30               
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30               
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20               
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30               
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30               
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10               
      7839 KING       PRESIDENT            17-NOV-81       5000                    10               
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30               
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30               
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20               

11 rows selected.

SQL> --10.WAQTD ENAME AND EMPNO OF THE EMPLOYEES IF EMPLOYEES ARE EARNING MORE THAN ALLEN
SQL> SELECT ENAME, EMPNO
  2  FROM EMP
  3  WHERE SAL>(SELECT SAL
  4             FROM EMP
  5             WHERE ENAME='ALLEN');

ENAME           EMPNO                                                                               
---------- ----------                                                                               
JONES            7566                                                                               
BLAKE            7698                                                                               
CLARK            7782                                                                               
SCOTT            7788                                                                               
KING             7839                                                                               
FORD             7902                                                                               

6 rows selected.

SQL> --11.WAQTD ENAME AND SALARY OF ALL THE EMPLOYEES WHO ARE EARNING MORE THAN MILLER BUT LESS THAN ALLEN .
SQL> SELECT ENAME, SAL
  2  FROM EMP
  3  WHERE SAL>(SELECT SAL
  4              FROM EMP
  5              WHERE ENAME='MILLER') AND SAL<(SELECT SAL
  6                                             FROM EMP
  7                                             WHERE ENAME='ALLEN');

ENAME             SAL                                                                               
---------- ----------                                                                               
TURNER           1500                                                                               

SQL> --12.WAQTD ALL THE DETAILS OF THE EMPLOYEES WORKING IN DEPT 20 AND WORKING IN THE SAME DESIGNATION AS SMITH
SQL> SELECT * FROM EMP
  2  WHERE DEPTNO=20 AND JOB=(SELECT JOB
  3                           FROM EMP
  4                           WHERE ENAME='SMITH');

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO               
---------- ---------- --------- ---------- --------- ---------- ---------- ----------               
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20               
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20               

SQL> SELECT * FROM EMP
  2  WHERE JOB=(SELECT JOB
  3       FROM EMP
  4       WHERE ENAME='SMITH') AND DEPTNO=20;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO               
---------- ---------- --------- ---------- --------- ---------- ---------- ----------               
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20               
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20               

SQL> --13.WAQTD ALL THE DETAILS OF THE EMPLOYEES WORKING AS MANAGER IN THE SAME DEPT AS TURNER
SQL> SELECT * FROM EMP
  2  WHERE JOB='MANAGER' AND DEPTNO=(SELECT DEPTNO
  3                                  FROM EMP
  4                                  WHERE ENAME='TURNER');

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO               
---------- ---------- --------- ---------- --------- ---------- ---------- ----------               
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30               

SQL> --14.WAQTD NAME AND HIREDATE OF THE EMPLOYEES HIRED AFTER 1980 AND BEFORE KING
SQL> SELECT ENAME, HIREDATE FROM EMP
  2  WHERE  HIREDATE>TO_DATE('31-DEC-1980','DD-MON-YYYY') AND HIREDATE<(SELECT HIREDATE
  3                                                                     FROM EMP
  4                                                                     WHERE ENAME='KING');

ENAME      HIREDATE                                                                                 
---------- ---------                                                                                
ALLEN      20-FEB-81                                                                                
WARD       22-FEB-81                                                                                
JONES      02-APR-81                                                                                
MARTIN     28-SEP-81                                                                                
BLAKE      01-MAY-81                                                                                
CLARK      09-JUN-81                                                                                
TURNER     08-SEP-81                                                                                

7 rows selected.

SQL> --15.WAQTD NAME AND SAL ALONG WITH ANNUAL SAL FOR ALL EMPLOYEES WHOS SAL IS LESS THAN BLAKE AND MORE THAN 3500
SQL> SELECT ENAME, SAL, (SAL + NVL(COMM, 0)) * 12 AS ANNUAL_SAL
  2  FROM EMP
  3  WHERE SAL > (
  4      SELECT SAL FROM EMP WHERE ENAME = 'BLAKE'
  5  )
  6  AND SAL > 3500;

ENAME             SAL ANNUAL_SAL                                                                    
---------- ---------- ----------                                                                    
KING             5000      60000                                                                    

SQL> --16.WAQTD ALL THE DETAILS OF EMPLOYEES WHO EARN MORE THAN SCOTT BUT LESS THAN KING
SQL> SELECT *
  2  FROM EMP
  3  WHERE SAL>(SELECT SAL
  4             FROM EMP
  5             WHERE ENAME='SCOTT') AND SAL<(SELECT SAL
  6                                           FROM EMP
  7                                           WHERE ENAME='KING');

no rows selected

SQL> --17.WAQTD NAME OF THE EMPLOYEES WHOS NAME STARTS WITH 'A' AND WORKS IN THE SAME DEPT AS BLAKE
SQL> SELECT ENAME
  2  FROM EMP
  3  WHERE ENAME LIKE 'A%' AND DEPTNO=(SELECT DEPTNO
  4                                     FROM EMP
  5                                     WHERE ENAME='BLAKE');

ENAME                                                                                               
----------                                                                                          
ALLEN                                                                                               

SQL> --18.WAQTD NAME AND COMM IF EMPLOYEES EARN COMISSION AND WORK IN THE SAME DESIGNATION AS SMITH
SQL> 
SQL> SELECT ENAME, COMM
  2  FROM EMP
  3  WHERE COMM IS NOT NULL AND JOB=(SELECT JOB
  4                                  FROM EMP
  5                                  WHERE ENAME='SMITH');

no rows selected

SQL> --19.WAQTD DETAILS OF ALL THE EMPLOYEES WORKING AS CLERK IN THE SAME DEPT AS TURNER .
SQL> SELECT *
  2  FROM EMP
  3  WHERE JOB='CLERK' AND DEPTNO=(SELECT DEPTNO
  4                                FROM EMP
  5                                WHERE ENAME='TURNER');

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO               
---------- ---------- --------- ---------- --------- ---------- ---------- ----------               
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30               

SQL> --20.WAQTD ENAME, SAL AND DESIGNATION OF THE EMPLOYEES WHOS ANNUAL SALARY IS MORE THAN SMITH AND LESS THAN KING. 
SQL> SELECT ENAME, SAL, JOB
  2  FROM EMP
  3  WHERE SAL*12>(SELECT SAL*12
  4                FROM EMP
  5                WHERE ENAME='SMITH') AND SAL*12<(SELECT SAL*12
  6                                                 FROM EMP
  7                                                 WHERE ENAME='KING');

ENAME             SAL JOB                                                                           
---------- ---------- ---------                                                                     
ALLEN            1600 SALESMAN                                                                      
WARD             1250 SALESMAN                                                                      
JONES            2975 MANAGER                                                                       
MARTIN           1250 SALESMAN                                                                      
BLAKE            2850 MANAGER                                                                       
CLARK            2450 MANAGER                                                                       
SCOTT            3000 ANALYST                                                                       
TURNER           1500 SALESMAN                                                                      
ADAMS            1100 CLERK                                                                         
JAMES             950 CLERK                                                                         
FORD             3000 ANALYST                                                                       
MILLER           1300 CLERK                                                                         

12 rows selected.

SQL> SPOOL OFF
