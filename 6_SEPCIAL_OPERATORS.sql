SQL> --********************ASSIGNMENT ON SEPCIAL OPERATORS********************
SQL> --**********1) LIST ALL THE EMPLOYEES WHOSE COMMISSION IS NULL .**********
SQL> SELECT *
  2  FROM EMP
  3  WHERE COMM IS NULL;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO 
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- 
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20 
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20 
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30 
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10 
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20 
      7839 KING       PRESIDENT            17-NOV-81       5000                    10 
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20 
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30 
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20 
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10 

10 rows selected.

SQL> --**********2) LIST ALL THE EMPLOYEES WHO DON'T HAVE A REPORTING MANAGER .**********
SQL> SELECT *
  2  FROM EMP
  3  WHERE MGR IS NULL;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO 
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- 
      7839 KING       PRESIDENT            17-NOV-81       5000                    10 

SQL> --**********3) LIST ALL THE SALESMEN IN DEPT 30 .**********
SQL>  SELECT *
  2   FROM EMP
  3   WHERE JOB IN 'SALESMAN'AND DEPTNO IN 30;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO 
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- 
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30 
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30 
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30 
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30 

SQL> --**********4) LIST ALL THE SALESMEN IN DEPT NUMBER 30 AND HAVING SALARY GREATER THAN 1500 .**********
SQL> SELECT *
  2  FROM EMP
  3  WHERE DEPTNO IN 30 AND JOB='SALESMAN' AND SAL>1500;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO 
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- 
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30 

SQL> --**********5) LIST ALL THE EMPLOYEES WHOSE NAME STARTS WITH 'S' OR 'A' .**********
SQL> SELECT *
  2  FROM EMP
  3  WHERE ENAME LIKE 'S%' OR ENAME LIKE 'A%';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO 
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- 
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20 
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30 
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20 
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20 

SQL> --**********6) LIST ALL THE EMPLOYEES EXCEPT THOSE WHO ARE WORKING IN DEPT 10 & 20.**********
SQL> SELECT *
  2  FROM EMP
  3  WHERE DEPTNO NOT IN (10,20);

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO 
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- 
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30 
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30 
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30 
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30 
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30 
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30 

6 rows selected.

SQL> --**********7) LIST THE EMPLOYEES WHOSE NAME DOES NOT START WITH 'S' .**********
SQL> SELECT *
  2  FROM EMP
  3  WHERE ENAME NOT LIKE 'S%';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO 
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- 
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30 
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30 
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20 
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30 
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30 
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10 
      7839 KING       PRESIDENT            17-NOV-81       5000                    10 
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30 
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20 
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30 
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20 
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10 

12 rows selected.

SQL> 
SQL> --**********8) LIST ALL THE EMPLOYEES WHO ARE HAVING REPORTING MANAGERS IN DEPT 10 .**********
SQL> SELECT *
  2  FROM EMP
  3  WHERE DEPTNO=10 AND MGR IS NOT NULL;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO 
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- 
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10 
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10 

SQL> --**********9) LIST ALL THE EMPLOYEES WHOSE COMMISSION IS NULL AND WORKING AS CLERK .**********
SQL> SELECT *
  2  FROM EMP
  3  WHERE COMM IS NULL AND JOB='CLERK';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO 
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- 
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20 
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20 
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30 
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10 

SQL> --**********10) LIST ALL THE EMPLOYEES WHO DON'T HAVE A REPORTING MANAGER IN DEPTNO 10 OR 30 .**********
SQL> SELECT *
  2  FROM EMP
  3  WHERE MGR IS NOT NULL AND DEPTNO IN (10,30);

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO 
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- 
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30 
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30 
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30 
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30 
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10 
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30 
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30 
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10 

8 rows selected.

SQL> --**********11) LIST ALL THE SALESMEN IN DEPT 30 WITH SAL MORE THAN 2450 .**********
SQL> SELECT *
  2  FROM EMP
  3  WHERE JOB='SALESMEN' AND DEPTNO IN 30 AND SAL>2450;

no rows selected

SQL> --**********12) LIST ALL THE ANALYST IN DEPT NUMBER 20 AND HAVING SALARY GREATER THAN 2500 .**********
SQL> SELECT *
  2  FROM EMP
  3  WHERE JOB='ANALYST' AND SAL>2500;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO 
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- 
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20 
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20 

SQL> --**********13) LIST ALL THE EMPLOYEES WHOSE NAME STARTS WITH 'M' OR 'J' .**********
SQL> SELECT *
  2  FROM EMP
  3  WHERE ENAME LIKE 'M%' OR ENAME LIKE 'J%';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO 
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- 
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20 
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30 
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30 
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10 

SQL> --**********14) LIST ALL THE EMPLOYEES WITH ANNUAL SALARY EXCEPT THOSE WHO ARE WORKING IN DEPT 30 .**********
SQL> SELECT EMP.*, SAL*12 ANNUAL_SAL
  2  FROM EMP
  3  WHERE DEPTNO NOT IN 30;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO ANNUAL_SAL 
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- ---------- 
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20       9600 
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20      35700 
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10      29400 
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20      36000 
      7839 KING       PRESIDENT            17-NOV-81       5000                    10      60000 
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20      13200 
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20      36000 
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10      15600 

8 rows selected.

SQL> --**********15) LIST THE EMPLOYEES WHOSE NAME DOES NOT END WITH 'ES' OR 'R' .**********
SQL> SELECT *
  2  FROM EMP
  3  WHERE ENAME NOT LIKE '%ES' AND ENAME NOT LIKE '%R';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO 
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- 
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20 
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30 
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30 
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30 
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30 
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10 
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20 
      7839 KING       PRESIDENT            17-NOV-81       5000                    10 
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20 
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20 

10 rows selected.

SQL> --**********16) LIST ALL THE EMPLOYEES WHO ARE HAVING REPORTING MANAGERS IN DEPT 10 ALONG WITH 10% HIKE IN SALARY .**********
SQL> SELECT EMP.*,SAL,SAL+(SAL*10/100) "10%_HIKE"
  2  FROM EMP
  3  WHERE MGR IS NOT NULL AND DEPTNO IN 10;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO        SAL   10%_HIKE 
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- ---------- ---------- 
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10       2450       2695 
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10       1300       1430 

SQL> --**********17) DISPLAY ALL THE EMPLOYEE WHO ARE 'SALESMAN'S HAVING 'E' AS THE LAST BUT ONE CHARACTER IN ENAME BUT SALARY HAVING EXACTLY 4 CHARACTER .**********
SQL> SELECT *
  2  FROM EMP
  3  WHERE JOB='SALESMAN' AND ENAME LIKE '%E_' AND SAL LIKE '____';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO 
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- 
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30 
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30 

SQL> --**********18) DISPLAY ALL THE EMPLOYEE WHO ARE JOINED AFTER YEAR 81 .**********
SQL> SELECT *
  2  FROM EMP
  3  WHERE HIREDATE >'31-DEC-81';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO 
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- 
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20 
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20 
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10 

SQL> --**********19) DISPLAY ALL THE EMPLOYEE WHO ARE JOINED IN FEB .**********
SQL> SELECT *
  2  FROM EMP
  3  WHERE HIREDATE LIKE '%FEB%';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO 
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- 
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30 
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30 

SQL> --**********20) LIST THE EMPLOYEES WHO ARE NOT WORKING AS MANAGERS AND CLERKS IN DEPT 10 AND 20 WITH A SALARY IN THE RANGE OF 1000 TO 3000.**********
SQL> SELECT *
  2  FROM EMP
  3  WHERE JOB NOT IN ('MANAGER','CLERK') AND DEPTNO IN (10,20) AND SAL BETWEEN 1000 AND 3000;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO 
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- 
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20 
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20 

SQL> SPOOL OFF
