@echo off
REM =============================================
REM JMeter Performance Test Runner - Windows
REM Author: Sachin Dhule
REM =============================================

SET JMETER_HOME=C:\apache-jmeter-5.6.2
SET JMETER=%JMETER_HOME%\bin\jmeter.bat
SET TIMESTAMP=%date:~10,4%%date:~4,2%%date:~7,2%_%time:~0,2%%time:~3,2%%time:~6,2%
SET TIMESTAMP=%TIMESTAMP: =0%

echo ============================================
echo  QA Performance Test Suite - Sachin Dhule
echo ============================================
echo.

REM --- Smoke Test ---
echo [1/2] Running Smoke Test (5 users)...
%JMETER% -n ^
  -t test-plans\saucedemo-performance-test.jmx ^
  -l results\smoke-results-%TIMESTAMP%.jtl ^
  -e -o reports\smoke-report-%TIMESTAMP% ^
  -Jthreads=5 ^
  -Jrampup=5 ^
  -Jduration=30

echo Smoke Test Complete! Report: reports\smoke-report-%TIMESTAMP%
echo.

REM --- API Performance Test ---
echo [2/2] Running API Performance Test (20 users)...
%JMETER% -n ^
  -t test-plans\api-performance-test.jmx ^
  -l results\api-results-%TIMESTAMP%.jtl ^
  -e -o reports\api-report-%TIMESTAMP%

echo API Test Complete! Report: reports\api-report-%TIMESTAMP%
echo.
echo ============================================
echo  All Tests Completed!
echo  Reports saved in: reports\
echo ============================================
pause
