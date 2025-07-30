SQL> --1. NAME OF THE EMPLOYEE AND HIS LOCATION OF ALL THE EMPLOYEES.
SQL> SELECT ENAME, LOC
  2  FROM EMP INNER JOIN DEPT
  3  ON EMP.DEPTNO=DEPT.DEPTNO;

ENAME      LOC                                                                  
---------- -------------                                                        
SMITH      DALLAS                                                               
ALLEN      CHICAGO                                                              
WARD       CHICAGO                                                              
JONES      DALLAS                                                               
MARTIN     CHICAGO                                                              
BLAKE      CHICAGO                                                              
CLARK      NEW YORK                                                             
SCOTT      DALLAS                                                               
KING       NEW YORK                                                             
TURNER     CHICAGO                                                              
ADAMS      DALLAS                                                               

ENAME      LOC                                                                  
---------- -------------                                                        
JAMES      CHICAGO                                                              
FORD       DALLAS                                                               
MILLER     NEW YORK                                                             

14 rows selected.

SQL> --2.WAQTD DNAME AND SALARY FOR ALL THE EMPLOYEE WORKING IN ACCOUNTING.
SQL> SELECT DNAME, SAL
  2  FROM EMP INNER JOIN DEPT
  3  ON EMP.DEPTNO=DEPT.DEPTNO;

DNAME                 SAL                                                       
-------------- ----------                                                       
RESEARCH              800                                                       
SALES                1600                                                       
SALES                1250                                                       
RESEARCH             2975                                                       
SALES                1250                                                       
SALES                2850                                                       
ACCOUNTING           2450                                                       
RESEARCH             3000                                                       
ACCOUNTING           5000                                                       
SALES                1500                                                       
RESEARCH             1100                                                       

DNAME                 SAL                                                       
-------------- ----------                                                       
SALES                 950                                                       
RESEARCH             3000                                                       
ACCOUNTING           1300                                                       

14 rows selected.

SQL> --3. WAQTD DNAME AND ANNUAL SALARY FOR ALL EMPLOYEES WHOS SALARY IS MORE THAN 2340
SQL> SELECT DNAME, SAL*12
  2  FROM EMP INNER JOIN DEPT
  3  ON EMP.DEPTNO=DEPT.DEPTNO AND SAL>2340;

DNAME              SAL*12                                                       
-------------- ----------                                                       
RESEARCH            35700                                                       
SALES               34200                                                       
ACCOUNTING          29400                                                       
RESEARCH            36000                                                       
ACCOUNTING          60000                                                       
RESEARCH            36000                                                       

6 rows selected.

SQL> --4. WAQTD ENAME AND DNAME FOR EMPLOYEES HAVING CAHARACTER 'A' IN THEIR DNAME
SQL> SELECT ENAME, DNAME
  2  FROM EMP INNER JOIN DEPT
  3  ON EMP.DEPTNO=DEPT.DEPTNO AND DNAME LIKE '%A%';

ENAME      DNAME                                                                
---------- --------------                                                       
SMITH      RESEARCH                                                             
ALLEN      SALES                                                                
WARD       SALES                                                                
JONES      RESEARCH                                                             
MARTIN     SALES                                                                
BLAKE      SALES                                                                
CLARK      ACCOUNTING                                                           
SCOTT      RESEARCH                                                             
KING       ACCOUNTING                                                           
TURNER     SALES                                                                
ADAMS      RESEARCH                                                             

ENAME      DNAME                                                                
---------- --------------                                                       
JAMES      SALES                                                                
FORD       RESEARCH                                                             
MILLER     ACCOUNTING                                                           

14 rows selected.

SQL> --5.WAQTD ENAME AND DNAME FOR ALL THE EMPLOYEES WORKING AS SALESMAN
SQL> SELECT ENAME, DNAME
  2  FROM EMP INNER JOIN DEPT
  3  ON EMP.DEPTNO=DEPT.DEPTNO AND JOB='SALESMAN';

ENAME      DNAME                                                                
---------- --------------                                                       
ALLEN      SALES                                                                
WARD       SALES                                                                
MARTIN     SALES                                                                
TURNER     SALES                                                                

SQL> --6.WADTD DNAME AND JOB FOR ALL THE EMPLOYEES WHOS JOB AND DNAME 'STARTS WITH CHARACTER 'S'
SQL> SELECT ENAME, JOB
  2  FROM EMP INNER JOIN DEPT
  3  ON EMP.DEPTNO=DEPT.DEPTNO AND DNAME LIKE 'S%' AND JOB LIKE 'S%';

ENAME      JOB                                                                  
---------- ---------                                                            
ALLEN      SALESMAN                                                             
WARD       SALESMAN                                                             
MARTIN     SALESMAN                                                             
TURNER     SALESMAN                                                             

SQL> --7. WAQTD DNAME AND MGR NO FOR EMPLOYEES REPORTING TO 7839
SQL> SELECT DNAME, MGR
  2   FROM EMP INNER JOIN DEPT
  3   ON EMP.DEPTNO=DEPT.DEPTNO AND MGR=7839;

DNAME                 MGR                                                       
-------------- ----------                                                       
RESEARCH             7839                                                       
SALES                7839                                                       
ACCOUNTING           7839                                                       

SQL> --8. WAQTD DNAME AND HIREDATE FOR EMPLOYEES HIRED AFTER 83 INTO ACCOUNTING OR RESEARCH DEPT
SQL>  SELECT DNAME, HIREDATE
  2   FROM EMP INNER JOIN DEPT
  3   ON EMP.DEPTNO=DEPT.DEPTNO AND DNAME IN ('ACCOUNTING', 'RESEARCH') AND EXTRACT(YEAR FROM HIREDATE)>1983;

DNAME          HIREDATE                                                         
-------------- ---------                                                        
RESEARCH       19-APR-87                                                        
RESEARCH       23-MAY-87                                                        

SQL> --9.WAQTD ENAME AND DNAME OF THE EMPLOYEES WHO ARE GETTING COMM IN DEPT 10 OR 30
SQL> SELECT ENAME, DNAME
  2   FROM EMP INNER JOIN DEPT
  3   ON EMP.DEPTNO=DEPT.DEPTNO AND EMP.DEPTNO IN (10,30) AND COMM>0;

ENAME      DNAME                                                                
---------- --------------                                                       
ALLEN      SALES                                                                
WARD       SALES                                                                
MARTIN     SALES                                                                

SQL> --10. WAQTD DNAME AND EMPNO FOR ALL THE EMPLOYEES WHO'S EMPNO ARE (7839,7902) AND ARE WORKING IN LOC NEW YORK.
SQL> SELECT DNAME, EMPNO
  2  FROM EMP INNER JOIN DEPT
  3  ON EMP.DEPTNO=DEPT.DEPTNO AND EMPNO IN (7839,7902) AND LOC='NEW YORK';

DNAME               EMPNO                                                       
-------------- ----------                                                       
ACCOUNTING           7839                                                       

SQL> SPOOL OFF
