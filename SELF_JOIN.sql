SQL> --1. WAQTD NAME OF THE EMPLOYEE AND HIS MANAGER'S NAME IF EMPLOYEE IS WORKING AS CLERK
SQL> SELECT E.ENAME,M.ENAME
  2  FROM EMP E JOIN EMP M
  3  ON E.MGR=M.EMPNO
  4  WHERE E.JOB='CLERK';

ENAME      ENAME                                                                
---------- ----------                                                           
SMITH      FORD                                                                 
ADAMS      SCOTT                                                                
JAMES      BLAKE                                                                
MILLER     CLARK                                                                

SQL> --2. WAQTD NAME OF THE EMPLOYEE AND MANAGER'S DESIGNATION IF MANAGER WORKS IN DEPT 10 OR 20
SQL> SELECT E.ENAME,M.JOB
  2  FROM EMP E JOIN EMP M
  3  ON E.MGR=M.EMPNO
  4  WHERE M.DEPTNO IN (10,20);

ENAME      JOB                                                                  
---------- ---------                                                            
SMITH      ANALYST                                                              
JONES      PRESIDENT                                                            
BLAKE      PRESIDENT                                                            
CLARK      PRESIDENT                                                            
SCOTT      MANAGER                                                              
ADAMS      ANALYST                                                              
FORD       MANAGER                                                              
MILLER     MANAGER                                                              

8 rows selected.

SQL> --3.WAQTD NAME OF THE EMP AND MANAGERS SALARY IF EMPLOYEE AND MANAGER BOTH EARN MORE THAN 2300
SQL> SELECT E.ENAME,M.SAL
  2  FROM EMP E JOIN EMP M
  3  ON E.MGR=M.EMPNO
  4  WHERE E.SAL>2300 AND M.SAL>2300;

ENAME             SAL                                                           
---------- ----------                                                           
JONES            5000                                                           
BLAKE            5000                                                           
CLARK            5000                                                           
SCOTT            2975                                                           
FORD             2975                                                           


SQL> --4. WAQTD EMP NAME AND MANAGER'S HIREDATE IF EMPLOYEE WAS HIRED BEFORE1982
SQL> SELECT E.ENAME, M.HIREDATE
  2  FROM EMP E JOIN EMP M
  3  ON E.MGR=M.EMPNO
  4  WHERE TO_CHAR(E.HIREDATE,'YYYY')<1982;

ENAME      HIREDATE                                                             
---------- ---------                                                            
SMITH      03-DEC-81                                                            
ALLEN      01-MAY-81                                                            
WARD       01-MAY-81                                                            
JONES      17-NOV-81                                                            
MARTIN     01-MAY-81                                                            
BLAKE      17-NOV-81                                                            
CLARK      17-NOV-81                                                            
TURNER     01-MAY-81                                                            
JAMES      01-MAY-81                                                            
FORD       02-APR-81                                                            

10 rows selected.

SQL> --5.WAQTD EMP NAME AND MANAGER'S COMM IF EMPLOYEE WORKS AS SALESMAN AND MANAGER WORKS IN DEPT 30
SQL>  SELECT E.ENAME, M.COMM
  2   FROM EMP E JOIN EMP M
  3   ON E.MGR=M.EMPNO
  4   WHERE E.JOB='SALESMAN' AND M.DEPTNO=30;

ENAME            COMM                                                           
---------- ----------                                                           
ALLEN                                                                           
WARD                                                                            
MARTIN                                                                          
TURNER                                                                          

SQL> --6. WAQTD EMP NAME AND MANAGER NAME AND THEIR SALARIES IF EMPLOYEE EARNS MORE THAN MANAGER
SQL> SELECT E.ENAME, M.ENAME
  2  FROM EMP E JOIN EMP M
  3  ON E.MGR=M.EMPNO
  4  WHERE E.SAL>M.SAL;

ENAME      ENAME                                                                
---------- ----------                                                           
SCOTT      JONES                                                                
FORD       JONES                                                                

SQL> --7.WAQTD EMP NAME AND HIREDATE, MANAGER NAME AND HIREDATE IF MANAGER WAS HIRED BEFORE EMPLOYEE
SQL> SELECT E.ENAME, E.HIREDATE,M.ENAME,M.HIREDATE
  2  FROM EMP E JOIN EMP M
  3  ON E.MGR=M.EMPNO
  4  WHERE M.HIREDATE>E.HIREDATE;

ENAME      HIREDATE  ENAME      HIREDATE                                        
---------- --------- ---------- ---------                                       
SMITH      17-DEC-80 FORD       03-DEC-81                                       
ALLEN      20-FEB-81 BLAKE      01-MAY-81                                       
WARD       22-FEB-81 BLAKE      01-MAY-81                                       
JONES      02-APR-81 KING       17-NOV-81                                       
BLAKE      01-MAY-81 KING       17-NOV-81                                       
CLARK      09-JUN-81 KING       17-NOV-81                                       

6 rows selected.

SQL> --8. WAQTD EMP NAME AND MANAGER NAME IF BOTH ARE WORKING IN SAME JOB
SQL>  SELECT E.ENAME, M.ENAME
  2   FROM EMP E JOIN EMP M
  3   ON E.MGR=M.EMPNO
  4  WHERE E.JOB=M.JOB;

no rows selected

SQL> --9. WAQTD EMP NAME AND MANAGER NAME IF MANAGER IS WORKING AS ACTUAL MANAGER
SQL> SELECT E.ENAME, M.ENAME
  2  FROM EMP E JOIN EMP M
  3  ON E.MGR=M.EMPNO
  4  WHERE M.MGR NOT IN (E.EMPNO);

ENAME      ENAME                                                                
---------- ----------                                                           
SMITH      FORD                                                                 
ALLEN      BLAKE                                                                
WARD       BLAKE                                                                
MARTIN     BLAKE                                                                
SCOTT      JONES                                                                
TURNER     BLAKE                                                                
ADAMS      SCOTT                                                                
JAMES      BLAKE                                                                
FORD       JONES                                                                
MILLER     CLARK                                                                

10 rows selected.

SQL> SELECT E.ENAME, M.ENAME
  2  FROM EMP E JOIN EMP M
  3  ON E.MGR=M.EMPNO
  4  WHERE M.JOB='MANAGER';

ENAME      ENAME                                                                
---------- ----------                                                           
ALLEN      BLAKE                                                                
WARD       BLAKE                                                                
MARTIN     BLAKE                                                                
SCOTT      JONES                                                                
TURNER     BLAKE                                                                
JAMES      BLAKE                                                                
FORD       JONES                                                                
MILLER     CLARK                                                                

8 rows selected.

SQL>  SELECT E.ENAME, M.ENAME
  2   FROM EMP E JOIN EMP M
  3   ON E.MGR=M.EMPNO
  4   WHERE M.MGR NOT IN (E.EMPNO) AND E.EMPNO NOT IN (M.MGR);

ENAME      ENAME                                                                
---------- ----------                                                           
SMITH      FORD                                                                 
ALLEN      BLAKE                                                                
WARD       BLAKE                                                                
MARTIN     BLAKE                                                                
SCOTT      JONES                                                                
TURNER     BLAKE                                                                
ADAMS      SCOTT                                                                
JAMES      BLAKE                                                                
FORD       JONES                                                                
MILLER     CLARK                                                                

10 rows selected.


SQL> --10. WAQTD EMP NAME AND MANAGER NAME ALONG WITH THEIR ANNUAL SALARIES IF EMPLOYEE WORKS IN DEPT 10, 20 AND MANAGER'S SAL IS GREATER THAN EMPLOYEES SALARY
SQL> SELECT E.ENAME AS ENAME,E.SAL*12 AS EASAL,M.ENAME AS MNAME,M.SAL*12 AS MASAL
  2  FROM EMP E JOIN EMP M
  3  ON E.MGR=M.EMPNO
  4  WHERE E.DEPTNO IN (10,20) AND M.SAL>E.SAL;

ENAME           EASAL MNAME           MASAL                                     
---------- ---------- ---------- ----------                                     
SMITH            9600 FORD            36000                                     
JONES           35700 KING            60000                                     
CLARK           29400 KING            60000                                     
ADAMS           13200 SCOTT           36000                                     
MILLER          15600 CLARK           29400                                     

SQL> --11.WAQTD EMPLOYEE'S NAME AND MANAGER'S DESIGNATION FOR ALL THE EMPLOYEES
SQL> SELECT E.ENAME,M.JOB
  2  FROM EMP E JOIN EMP M
  3  ON E.MGR=M.EMPNO
  4  ;

ENAME      JOB                                                                  
---------- ---------                                                            
SMITH      ANALYST                                                              
ALLEN      MANAGER                                                              
WARD       MANAGER                                                              
JONES      PRESIDENT                                                            
MARTIN     MANAGER                                                              
BLAKE      PRESIDENT                                                            
CLARK      PRESIDENT                                                            
SCOTT      MANAGER                                                              
TURNER     MANAGER                                                              
ADAMS      ANALYST                                                              
JAMES      MANAGER                                                              

ENAME      JOB                                                                  
---------- ---------                                                            
FORD       MANAGER                                                              
MILLER     MANAGER                                                              

13 rows selected.

SQL> --12. WAQTD EMPLOYEE'S NAME AND MANAGER'S SALARY FOR ALL THE EMPLOYEES IF MANAGER'S SALARY ENDS WITH 50
SQL> SELECT E.ENAME,M.SAL
  2  FROM EMP E JOIN EMP M
  3  ON E.MGR=M.EMPNO
  4  WHERE TO_CHAR(M.SAL) LIKE '%50';

ENAME             SAL                                                           
---------- ----------                                                           
ALLEN            2850                                                           
WARD             2850                                                           
MARTIN           2850                                                           
TURNER           2850                                                           
JAMES            2850                                                           
MILLER           2450                                                           

6 rows selected.

SQL> SPOOL OFF
