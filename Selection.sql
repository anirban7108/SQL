SQL>  select 'Hi ' || ename from emp where job='MANAGER';

'HI'||ENAME
-------------
Hi JONES
Hi BLAKE
Hi CLARK

SQL> select ename, deptno, sal
  2  from emp
  3  where deptno=20 and sal<3000;

ENAME          DEPTNO        SAL                                                                    
---------- ---------- ----------                                                                    
SMITH              20        800                                                                    
JONES              20       2975                                                                    
ADAMS              20       1100                                                                    

SQL> select ename, deptno
  2  from emp
  3  where deptno=10 or deptno=20;

ENAME          DEPTNO                                                                               
---------- ----------                                                                               
SMITH              20                                                                               
JONES              20                                                                               
CLARK              10                                                                               
SCOTT              20                                                                               
KING               10                                                                               
ADAMS              20                                                                               
FORD               20                                                                               
MILLER             10                                                                               

8 rows selected.

SQL> select ename, sal, deptno
  2  from emp
  3  where sal>1250 and sal<4000 and deptno=20;

ENAME             SAL     DEPTNO                                                                    
---------- ---------- ----------                                                                    
JONES            2975         20                                                                    
SCOTT            3000         20                                                                    
FORD             3000         20                                                                    


SQL> select ename, job, deptno
  2  from emp;

ENAME      JOB           DEPTNO                                                                     
---------- --------- ----------                                                                     
SMITH      CLERK             20                                                                     
ALLEN      SALESMAN          30                                                                     
WARD       SALESMAN          30                                                                     
JONES      MANAGER           20                                                                     
MARTIN     SALESMAN          30                                                                     
BLAKE      MANAGER           30                                                                     
CLARK      MANAGER           10                                                                     
SCOTT      ANALYST           20                                                                     
KING       PRESIDENT         10                                                                     
TURNER     SALESMAN          30                                                                     
ADAMS      CLERK             20                                                                     
JAMES      CLERK             30                                                                     
FORD       ANALYST           20                                                                     
MILLER     CLERK             10                                                                     

14 rows selected.

  
SQL> select ename, job, deptno
  2  from emp
  3  where job='MANAGER';

ENAME      JOB           DEPTNO                                                                     
---------- --------- ----------                                                                     
JONES      MANAGER           20                                                                     
BLAKE      MANAGER           30                                                                     
CLARK      MANAGER           10                                                                    

SQL>  select ename, job, deptno
  2   from emp
  3   where job='MANAGER' and (deptno=10 or deptno=30);

ENAME      JOB           DEPTNO                                                                     
---------- --------- ----------                                                                     
BLAKE      MANAGER           30                                                                     
CLARK      MANAGER           10                                                                     

SQL> spool off
