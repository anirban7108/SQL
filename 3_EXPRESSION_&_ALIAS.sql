SQL> -- ******************** ASSIGNMENT ON EXPRESSION & ALIAS ********************
SQL> -- ********** 1. WAQTD NAME OF THE EMPLOYEE ALONG WITH THEIR ANNUAL SALARY. **********
SQL>  SELECT ENAME, SAL*12 AS ANNUAL_SALARY
  2  FROM EMP;

ENAME      ANNUAL_SALARY
---------- -------------
SMITH               9600
ALLEN              19200
WARD               15000
JONES              35700
MARTIN             15000
BLAKE              34200
CLARK              29400
SCOTT              36000
KING               60000
TURNER             18000
ADAMS              13200
JAMES              11400
FORD               36000
MILLER             15600

14 rows selected.


SQL>  SELECT ENAME, SAL,  SAL*12 AS ANNUAL_SALARY
  2  FROM EMP;

ENAME             SAL ANNUAL_SALARY
---------- ---------- -------------
SMITH             800          9600
ALLEN            1600         19200
WARD             1250         15000
JONES            2975         35700
MARTIN           1250         15000
BLAKE            2850         34200
CLARK            2450         29400
SCOTT            3000         36000
KING             5000         60000
TURNER           1500         18000
ADAMS            1100         13200
JAMES             950         11400
FORD             3000         36000
MILLER           1300         15600

14 rows selected.

SQL> --********** 2. WAQTD ENAME AND JOB FOR ALL THE EMPLOYEE WITH THEIR HALF TERM SALARY **********

SQL> SELECT ENAME, JOB, SAL, SAL*12/2 AS HALF_TERM_SAL
  2  FROM EMP;

ENAME      JOB              SAL HALF_TERM_SAL
---------- --------- ---------- -------------
SMITH      CLERK            800          4800
ALLEN      SALESMAN        1600          9600
WARD       SALESMAN        1250          7500
JONES      MANAGER         2975         17850
MARTIN     SALESMAN        1250          7500
BLAKE      MANAGER         2850         17100
CLARK      MANAGER         2450         14700
SCOTT      ANALYST         3000         18000
KING       PRESIDENT       5000         30000
TURNER     SALESMAN        1500          9000
ADAMS      CLERK           1100          6600
JAMES      CLERK            950          5700
FORD       ANALYST         3000         18000
MILLER     CLERK           1300          7800

14 rows selected.

SQL> --********** 3. WAQTD ALL THE DETAILS OF THE EMPLOYEES ALONG WITH AN ANNUAL BONUS OF 2000. **********
SQL> SELECT EMP.*, SAL*12+2000 AS ANNUAL_BONUS
  2  FROM EMP;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO ANNUAL_BONUS
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- ------------
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20        11600
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30        21200
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30        17000
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20        37700
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30        17000
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30        36200
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10        31400
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20        38000
      7839 KING       PRESIDENT            17-NOV-81       5000                    10        62000
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30        20000
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20        15200
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30        13400
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20        38000
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10        17600

14 rows selected.

SQL> --********** 4. WAQTD NAME SALARY AND SALARY WITH A HIKE OF 10%. **********
SQL> SELECT ENAME, SAL, SAL+ SAL*10/100 "HIKE OF 10%"
  2  FROM EMP;

ENAME             SAL HIKE OF 10%
---------- ---------- -----------
SMITH             800         880
ALLEN            1600        1760
WARD             1250        1375
JONES            2975      3272.5
MARTIN           1250        1375
BLAKE            2850        3135
CLARK            2450        2695
SCOTT            3000        3300
KING             5000        5500
TURNER           1500        1650
ADAMS            1100        1210
JAMES             950        1045
FORD             3000        3300
MILLER           1300        1430

14 rows selected.

SQL> -- ********** 5.WAQTD NAME AND SALARY WITH DEDUCTION OF 25%. **********
SQL> SELECT ENAME, SAL, SAL-SAL*25/100 "DEDUCTION OF 25%"
  2  FROM EMP;

ENAME             SAL DEDUCTION OF 25%
---------- ---------- ----------------
SMITH             800              600
ALLEN            1600             1200
WARD             1250            937.5
JONES            2975          2231.25
MARTIN           1250            937.5
BLAKE            2850           2137.5
CLARK            2450           1837.5
SCOTT            3000             2250
KING             5000             3750
TURNER           1500             1125
ADAMS            1100              825
JAMES             950            712.5
FORD             3000             2250
MILLER           1300              975

14 rows selected.

SQL> -- ********** 6. WAQTD NAME AND SALARY WITH MONTHLY HIKE OF 50. **********
SQL>  SELECT ENAME, SAL, SAL+50 "MONTHLY HIKE OF 50"
  2  FROM EMP;

ENAME             SAL MONTHLY HIKE OF 50
---------- ---------- ------------------
SMITH             800                850
ALLEN            1600               1650
WARD             1250               1300
JONES            2975               3025
MARTIN           1250               1300
BLAKE            2850               2900
CLARK            2450               2500
SCOTT            3000               3050
KING             5000               5050
TURNER           1500               1550
ADAMS            1100               1150
JAMES             950               1000
FORD             3000               3050
MILLER           1300               1350

14 rows selected.

SQL> -- ********** 7.WAQTD NAME AND ANNUAL SALARY WITH DEDUCTION OF 10%. **********
SQL> SELECT ENAME, SAL, SAL*12 "ANNUAL SAL", (SAL*12) -(SAL*12)*10/100 "ANNUAL - 10%"
  2  FROM EMP;

ENAME             SAL ANNUAL SAL ANNUAL - 10%
---------- ---------- ---------- ------------
SMITH             800       9600         8640
ALLEN            1600      19200        17280
WARD             1250      15000        13500
JONES            2975      35700        32130
MARTIN           1250      15000        13500
BLAKE            2850      34200        30780
CLARK            2450      29400        26460
SCOTT            3000      36000        32400
KING             5000      60000        54000
TURNER           1500      18000        16200
ADAMS            1100      13200        11880
JAMES             950      11400        10260
FORD             3000      36000        32400
MILLER           1300      15600        14040

14 rows selected.

SQL> -- ********** 8. WAQTD TOTAL SALARY GIVEN TO EACH EMPLOYEE (SAL+COMM). **********
SQL> SELECT SAL, SAL+COMM "TOTAL SAL"
  2  FROM EMP;

       SAL  TOTAL SAL
---------- ----------
       800
      1600       1900
      1250       1750
      2975
      1250       2650
      2850
      2450
      3000
      5000
      1500       1500
      1100
       950
      3000
      1300

14 rows selected.

SQL> SELECT ENAME, SAL, SAL+ COMM TOTAL_SAL
  2  FROM EMP;

ENAME             SAL  TOTAL_SAL
---------- ---------- ----------
SMITH             800
ALLEN            1600       1900
WARD             1250       1750
JONES            2975
MARTIN           1250       2650
BLAKE            2850
CLARK            2450
SCOTT            3000
KING             5000
TURNER           1500       1500
ADAMS            1100
JAMES             950
FORD             3000
MILLER           1300

14 rows selected.

SQL> --********** 9. WAQTD DETAILS OF ALL THE EMPLOYEES ALONG WITH ANNUAL SALARY. **********
SQL> SELECT EMP.*, SAL*12 AS ANNUAL_SAL
  2  FROM EMP;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO ANNUAL_SAL
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20       9600
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30      19200
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30      15000
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20      35700
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30      15000
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30      34200
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10      29400
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20      36000
      7839 KING       PRESIDENT            17-NOV-81       5000                    10      60000
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30      18000
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20      13200
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30      11400
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20      36000
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10      15600

14 rows selected.

SQL> --********** 10. WAQTD NAME AND DESIGNATION ALONG WITH 100 PENALTY IN SALARY. **********
SQL> SELECT ENAME, JOB, SAL, SAL-100 "100_PENALTY_IN_SAL"
  2  FROM EMP;

ENAME      JOB              SAL 100_PENALTY_IN_SAL
---------- --------- ---------- ------------------
SMITH      CLERK            800                700
ALLEN      SALESMAN        1600               1500
WARD       SALESMAN        1250               1150
JONES      MANAGER         2975               2875
MARTIN     SALESMAN        1250               1150
BLAKE      MANAGER         2850               2750
CLARK      MANAGER         2450               2350
SCOTT      ANALYST         3000               2900
KING       PRESIDENT       5000               4900
TURNER     SALESMAN        1500               1400
ADAMS      CLERK           1100               1000
JAMES      CLERK            950                850
FORD       ANALYST         3000               2900
MILLER     CLERK           1300               1200

14 rows selected.

SQL> SPOOL OFF