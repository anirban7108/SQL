SQL> --1. WAQTD DETAILS OF THE EMPS WHO ARE HAVING MORE THAN 4 CHARACTERS IN THEIR NAME.
SQL> SELECT *
  2  FROM EMP
  3  WHERE LENGTH(ENAME)>4;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO               
---------- ---------- --------- ---------- --------- ---------- ---------- ----------               
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20               
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30               
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20               
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30               
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30               
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10               
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20               
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30               
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20               
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30               
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10               

11 rows selected.

SQL> --2.  WAQTD DETAILS OF THE EMPS,IF EMP SALARY IS MORE THAN 3 DIGITS AND LESS THAN 5 DIGITS.
SQL> SELECT *
  2  FROM EMP
  3  WHERE LENGTH(ENAME) BETWEEN 3 AND 5;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO               
---------- ---------- --------- ---------- --------- ---------- ---------- ----------               
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20               
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30               
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30               
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20               
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30               
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10               
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20               
      7839 KING       PRESIDENT            17-NOV-81       5000                    10               
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20               
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30               
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20               

11 rows selected.

SQL> --3. WAQTD JOIN THE GIVEN STRING 'HI' TO ALL THE EMPLOYEES NAME.
SQL> SELECT CONCAT('HI ',ENAME)
  2  FROM EMP
  3  ;

CONCAT('HI',E                                                                                       
-------------                                                                                       
HI SMITH                                                                                            
HI ALLEN                                                                                            
HI WARD                                                                                             
HI JONES                                                                                            
HI MARTIN                                                                                           
HI BLAKE                                                                                            
HI CLARK                                                                                            
HI SCOTT                                                                                            
HI KING                                                                                             
HI TURNER                                                                                           
HI ADAMS                                                                                            
HI JAMES                                                                                            
HI FORD                                                                                             
HI MILLER                                                                                           

14 rows selected.

SQL> --4. WAQTD DETAILS OF EMPLOYESS WHO HAVE ODD EMPID NUMBER.
SQL> SELECT *
  2  FROM EMP
  3  WHERE MOD(EMPNO,2)!=0;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO               
---------- ---------- --------- ---------- --------- ---------- ---------- ----------               
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20               
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30               
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30               
      7839 KING       PRESIDENT            17-NOV-81       5000                    10               

SQL> --5. WAQTD NAME,SALARY OF THE EMPLOYEE, IF THE EMPLOYEE SALARY IS IN ODD NUMBER AND THEIR EMPNO IS EVEN.
SQL> SELECT ENAME,SAL
  2  FROM EMP
  3  WHERE MOD(SAL,2)!=0 AND MOD(EMPNO,2)=0;

ENAME             SAL                                                                               
---------- ----------                                                                               
JONES            2975                                                                               

SQL> --6. WAQTD NAME,JOB OF EMPS IN UPPER CASE.
SQL> SELECT UPPER(ENAME),UPPER(JOB)
  2  FROM EMP;

UPPER(ENAM UPPER(JOB                                                                                
---------- ---------                                                                                
SMITH      CLERK                                                                                    
ALLEN      SALESMAN                                                                                 
WARD       SALESMAN                                                                                 
JONES      MANAGER                                                                                  
MARTIN     SALESMAN                                                                                 
BLAKE      MANAGER                                                                                  
CLARK      MANAGER                                                                                  
SCOTT      ANALYST                                                                                  
KING       PRESIDENT                                                                                
TURNER     SALESMAN                                                                                 
ADAMS      CLERK                                                                                    
JAMES      CLERK                                                                                    
FORD       ANALYST                                                                                  
MILLER     CLERK                                                                                    

14 rows selected.

SQL> --7. WAQTD DNAME AND LOCATION OF EMPS IN LOWER CASE.
SQL> SELECT LOWER(DNAME),LOWER(LOC)
  2  FROM DEPT;

LOWER(DNAME)   LOWER(LOC)                                                                           
-------------- -------------                                                                        
accounting     new york                                                                             
research       dallas                                                                               
sales          chicago                                                                              
operations     boston                                                                               

SQL> --8. WAQTD NAME OF EMPS IN LOWER CASE AND JOB SHOULD BE INITIAL LETTER IN UPPER REMAINING LETTERS IN LOWER ,WHO ARE HAVING COMM.
SQL> SELECT LOWER(ENAME),INITCAP(JOB)
  2   FROM EMP
  3   WHERE COMM IS NOT NULL;

LOWER(ENAM INITCAP(J                                                                                
---------- ---------                                                                                
allen      Salesman                                                                                 
ward       Salesman                                                                                 
martin     Salesman                                                                                 
turner     Salesman                                                                                 

SQL> --9. WAQTD ROUND OFF THE SALARY TO THE NEAREST VALUE IN EMP TABLE.
SQL> SELECT ROUND(SAL)
  2  FROM EMP;

ROUND(SAL)                                                                                          
----------                                                                                          
       800                                                                                          
      1600                                                                                          
      1250                                                                                          
      2975                                                                                          
      1250                                                                                          
      2850                                                                                          
      2450                                                                                          
      3000                                                                                          
      5000                                                                                          
      1500                                                                                          
      1100                                                                                          
       950                                                                                          
      3000                                                                                          
      1300                                                                                          

14 rows selected.

SQL> SQL> --10. WAQTD THE SALARY TO LOWEST VALUE IN EMPLOYEE TABLE.
SQL> SELECT TRUNC(SAL)
  2  FROM EMP;

TRUNC(SAL)
----------
       800
      1600
      1250
      2975
      1250
      2850
      2450
      3000
      5000
      1500
      1100
       950
      3000
      1300

14 rows selected.

SQL> --11. WAQTD DETAILS OF DEPARTMENT TABLE WHO HAVE MORE THEN 7 CHARACTERES IN THEIR LOCATION.
SQL> SELECT *
  2  FROM DEPT
  3  WHERE LENGTH(LOC)>7;

    DEPTNO DNAME          LOC                                                                       
---------- -------------- -------------                                                             
        10 ACCOUNTING     NEW YORK                                                                  

SQL> --12. WAQTD NAME OF EMP;OYEE WHO HAVE LAST CHAR AS 'H' IN THEIR NAME.
SQL> SELECT ENAME
  2  FROM EMP
  3  WHERE UPPER(SUBSTR(ENAME,-1,1))='H';

ENAME                                                                                               
----------                                                                                          
SMITH                                                                                               

SQL> --13. WAQTD NAME , SALARY AND HIREDATE OF EMPLOYEE IF EMPLOYEE NAME STARTS WITH CHAR'J'.
SQL> SELECT ENAME, SAL, HIREDATE
  2  FROM
  3  EMP
  4  WHERE SUBSTR(ENAME,1,1)='J';

ENAME             SAL HIREDATE                                                                      
---------- ---------- ---------                                                                     
JONES            2975 02-APR-81                                                                     
JAMES             950 03-DEC-81                                                                     

SQL> --14. WAQTD DETAILS OF DEPT WHO HAVE 2ND CHAR AS 'A' IN THEIR DEPTNAME.
SQL> SELECT *
  2  FROM DEPT
  3  WHERE SUBSTR(DNAME,2,1)='A';

    DEPTNO DNAME          LOC                                                                       
---------- -------------- -------------                                                             
        30 SALES          CHICAGO                                                                   

SQL> --15. WAQTD FIRST HALF OF DEPTNAME.
SQL> SELECT SUBSTR(DNAME,1,LENGTH(DNAME)/2)
  2  FROM DEPT;

SUBSTR(DNAME,1                                                                                      
--------------                                                                                      
ACCOU                                                                                               
RESE                                                                                                
SA                                                                                                  
OPERA                                                                                               

SQL> --16. WAQTD SECOND HALF OF LOCATION.
SQL> SELECT SUBSTR(LOC,LENGTH(LOC)/2)
  2  FROM DEPT;

SUBSTR(LOC,LE                                                                                       
-------------                                                                                       
 YORK                                                                                               
LLAS                                                                                                
ICAGO                                                                                               
STON                                                                                                

SQL> --17. WAQTD NAME AND COMMISSION OF EMPLOYEE, IF THEY HAVE CHAR 'I' PRESENT IN THEIR NAME.
SQL> SELECT ENAME, COMM
  2  FROM EMP
  3  WHERE INSTR(ENAME, 'I')>0;

ENAME            COMM                                                                               
---------- ----------                                                                               
SMITH                                                                                               
MARTIN           1400                                                                               
KING                                                                                                
MILLER                                                                                              

SQL> --18. WAQTD NAME,JOB OF THE EMPLOYEE, IF THEY HAVE CHAR 'A' PRESENT ATLEAST TWICE IN THEIR NAME
SQL> SELECT ENAME, JOB
  2  FROM EMP
  3  WHERE INSTR(ENAME,'A',1,2)>0;

ENAME      JOB                                                                                      
---------- ---------                                                                                
ADAMS      CLERK                                                                                    

SQL> --19. WAQTD ALL THE LOCATION WHOSE DNAME STARTS WITH STRING 'RES'.
SQL> SELECT LOC
  2  FROM DEPT
  3  WHERE INSTR(DNAME,'RES')>0;

LOC                                                                                                 
-------------                                                                                       
DALLAS                                                                                              

SQL> --20. WAQTD NAME OF THE EMPLOYEES BY REPLACING CHAR 'A' BY 'P' IN THEIR NAME.
SQL> SELECT REPLACE(ENAME,'A','P')
  2  FROM EMP;

REPLACE(EN                                                                                          
----------                                                                                          
SMITH                                                                                               
PLLEN                                                                                               
WPRD                                                                                                
JONES                                                                                               
MPRTIN                                                                                              
BLPKE                                                                                               
CLPRK                                                                                               
SCOTT                                                                                               
KING                                                                                                
TURNER                                                                                              
PDPMS                                                                                               
JPMES                                                                                               
FORD                                                                                                
MILLER                                                                                              

14 rows selected.

SQL> --21. WAQTD DETAILS OF THE EMPLOYEES, IF THEY HAVE CHAR 'A' EXACTLY TWICE IN THEIR JOB.     
SQL> SELECT *
  2  FROM EMP
  3  WHERE LENGTH(JOB) - LENGTH(REPLACE(UPPER(JOB), 'A', '')) = 2;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO               
---------- ---------- --------- ---------- --------- ---------- ---------- ----------               
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30               
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30               
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20               
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30               
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30               
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10               
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20               
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30               
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20               

9 rows selected.


SQL>  SELECT *
  2   FROM EMP
  3   WHERE LENGTH(JOB)-LENGTH(REPLACE(JOB,'A',''))=2;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO               
---------- ---------- --------- ---------- --------- ---------- ---------- ----------               
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30               
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30               
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20               
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30               
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30               
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10               
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20               
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30               
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20               

9 rows selected.

SQL> --22. WAQTD NAME,JOB OF EMPS WHOSE NAME START WITH VOWELS.(ALL THE NAMES ARE IN UPPER CASE)
SQL> SELECT NAME,JOB
  2  FROM EMP
  3  
SQL> SELECT ENAME, JOB
  2  FROM EMP
  3  WHERE SUBSTR(ENAME,1,1) IN ('A','E','I','O','U');

ENAME      JOB                                                                                      
---------- ---------                                                                                
ALLEN      SALESMAN                                                                                 
ADAMS      CLERK                                                                                    

SQL> --23. WAQTD DETAILS OF THE EMPLOYEES WHOSE JOBS ENDS WITH CONSONENTS.(ALL JOBS ARE IN UPPER CASE)
SQL> SELECT *
  2  FROM EMP
  3  WHERE SUBSTR(JOB,-1,1) NOT IN ('A','E','I','O','U');

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

SQL> --24. WAQTD FIRST 3 CHARACTERS OF NAME IN LOWER CASE AND REMAINING IN UPPER CASE IN EMPLOYEE TABLE.
SQL> SELECT CONCAT(LOWER(SUBSTR(ENAME,1,3)),UPPER(SUBSTR(ENAME,4)))
  2  FROM EMP;

CONCAT(LOW                                                                                          
----------                                                                                          
smiTH                                                                                               
allEN                                                                                               
warD                                                                                                
jonES                                                                                               
marTIN                                                                                              
blaKE                                                                                               
claRK                                                                                               
scoTT                                                                                               
kinG                                                                                                
turNER                                                                                              
adaMS                                                                                               
jamES                                                                                               
forD                                                                                                
milLER                                                                                              

14 rows selected.

SQL> --25. WAQTD TO JOIN A STRING 'HAPPY BIRTHDAY' TO EMPLOYEE NAME,WHO ARE HIRED AFTER '01-JAN-1981'.
SQL> SELECT CONCAT('HAPPY BIRTHDAY ',ENAME)
  2  FROM EMP
  3  WHERE HIREDATE>'01-JAN-1981';

CONCAT('HAPPYBIRTHDAY',EN                                                                           
-------------------------                                                                           
HAPPY BIRTHDAY ALLEN                                                                                
HAPPY BIRTHDAY WARD                                                                                 
HAPPY BIRTHDAY JONES                                                                                
HAPPY BIRTHDAY MARTIN                                                                               
HAPPY BIRTHDAY BLAKE                                                                                
HAPPY BIRTHDAY CLARK                                                                                
HAPPY BIRTHDAY SCOTT                                                                                
HAPPY BIRTHDAY KING                                                                                 
HAPPY BIRTHDAY TURNER                                                                               
HAPPY BIRTHDAY ADAMS                                                                                
HAPPY BIRTHDAY JAMES                                                                                
HAPPY BIRTHDAY FORD                                                                                 
HAPPY BIRTHDAY MILLER                                                                               

13 rows selected.

SQL> --27. WAQTD NAME AND SALARY ALONG WITH HIREDATE OF THE EMPS WHO HIRED ON MONDAY.
SQL> SELECT ENAME, SAL, HIREDATE
  2  FROM EMP
  3  WHERE TO_CHAR(HIREDATE,'DAY')='MONDAY';

SQL> --28. WAQTD DETAILS OF EMPLOYEES WHO HIRED IN THE MONTH OF JANUARY ON WEDNESDAY AT 11 AM.
SQL> SELECT *
  2  FROM EMP
  3  WHERE TO_CHAR(HIREDATE,'MM')='01' AND TO_CHAR(HIREDATE,'DAY')='WEDNESDAY' AND TO_CHAR(HIREDATE,'HH24')='11';

no rows selected

SQL> --29. WAQTD TOTAL EARNING OF ALL THE EMPS ALONG WITH NAME AND HIREDATE.(TOTAL EARNING MEANS (SAL+COMM)).
SQL> SELECT ENAME, HIREDATE, SAL, COMM, SAL+NVL(COMM,0)
  2  FROM EMP;

ENAME      HIREDATE         SAL       COMM SAL+NVL(COMM,0)                                          
---------- --------- ---------- ---------- ---------------                                          
SMITH      17-DEC-80        800                        800                                          
ALLEN      20-FEB-81       1600        300            1900                                          
WARD       22-FEB-81       1250        500            1750                                          
JONES      02-APR-81       2975                       2975                                          
MARTIN     28-SEP-81       1250       1400            2650                                          
BLAKE      01-MAY-81       2850                       2850                                          
CLARK      09-JUN-81       2450                       2450                                          
SCOTT      19-APR-87       3000                       3000                                          
KING       17-NOV-81       5000                       5000                                          
TURNER     08-SEP-81       1500          0            1500                                          
ADAMS      23-MAY-87       1100                       1100                                          
JAMES      03-DEC-81        950                        950                                          
FORD       03-DEC-81       3000                       3000                                          
MILLER     23-JAN-82       1300                       1300                                          

14 rows selected.

SQL> --30. WAQTD DETAILS OF THE EMPLOYEE WHO HAVE MORE THEN 35 YEARS OF EXPERIENCE .
SQL> SELECT *
  2  FROM EMP
  3  WHERE MONTHS_BETWEEN(SYSDATE,HIREDATE)/12>35;

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


SQL> SPOOL OFF
