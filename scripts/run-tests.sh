#!/bin/bash
# =============================================
# JMeter Performance Test Runner - Linux/Mac
# Author: Sachin Dhule
# =============================================

JMETER_HOME="/opt/apache-jmeter-5.6.2"
JMETER="$JMETER_HOME/bin/jmeter"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")

echo "============================================"
echo " QA Performance Test Suite - Sachin Dhule"
echo "============================================"
echo ""

# Create output directories
mkdir -p results reports

# --- Smoke Test ---
echo "[1/2] Running Smoke Test (5 users)..."
$JMETER -n \
  -t test-plans/saucedemo-performance-test.jmx \
  -l results/smoke-results-$TIMESTAMP.jtl \
  -e -o reports/smoke-report-$TIMESTAMP \
  -Jthreads=5 \
  -Jrampup=5 \
  -Jduration=30

echo "✅ Smoke Test Complete! Report: reports/smoke-report-$TIMESTAMP"
echo ""

# --- API Performance Test ---
echo "[2/2] Running API Performance Test (20 users)..."
$JMETER -n \
  -t test-plans/api-performance-test.jmx \
  -l results/api-results-$TIMESTAMP.jtl \
  -e -o reports/api-report-$TIMESTAMP

echo "✅ API Test Complete! Report: reports/api-report-$TIMESTAMP"
echo ""
echo "============================================"
echo " All Tests Completed!"
echo " Reports: reports/"
echo "============================================"
