# 📊 Performance Test Results Summary

**Project:** SauceDemo + ReqRes API  
**Author:** Sachin Dhule  
**Date:** May 2026  
**Tool:** Apache JMeter 5.6.2  

---

## 🧪 Test 1 — Smoke Test (SauceDemo Web)

| Metric | Result | Threshold | Status |
|--------|--------|-----------|--------|
| Virtual Users | 5 | 5 | ✅ Pass |
| Ramp Up | 5 seconds | — | ✅ |
| Total Requests | 45 | — | ✅ |
| Avg Response Time | 820 ms | < 2000 ms | ✅ Pass |
| 90th Percentile | 1150 ms | < 2500 ms | ✅ Pass |
| 95th Percentile | 1380 ms | < 3000 ms | ✅ Pass |
| Error Rate | 0% | < 1% | ✅ Pass |
| Throughput | 8.5 req/sec | > 5 req/sec | ✅ Pass |

---

## 🧪 Test 2 — Load Test (SauceDemo Web)

| Metric | Result | Threshold | Status |
|--------|--------|-----------|--------|
| Virtual Users | 50 | 50 | ✅ Pass |
| Ramp Up | 10 seconds | — | ✅ |
| Duration | 60 seconds | — | ✅ |
| Total Requests | 1250 | — | ✅ |
| Avg Response Time | 1320 ms | < 3000 ms | ✅ Pass |
| 90th Percentile | 2100 ms | < 4000 ms | ✅ Pass |
| 95th Percentile | 2650 ms | < 5000 ms | ✅ Pass |
| Error Rate | 0.2% | < 2% | ✅ Pass |
| Throughput | 18.3 req/sec | > 10 req/sec | ✅ Pass |

---

## 🧪 Test 3 — API Load Test (ReqRes.in)

| Endpoint | Avg (ms) | 90th % | Error Rate | Status |
|----------|----------|--------|------------|--------|
| GET /api/users | 320 ms | 480 ms | 0% | ✅ Pass |
| GET /api/users/2 | 280 ms | 410 ms | 0% | ✅ Pass |
| POST /api/users | 410 ms | 580 ms | 0% | ✅ Pass |
| DELETE /api/users/2 | 260 ms | 380 ms | 0% | ✅ Pass |

---

## 🧪 Test 4 — Stress Test (SauceDemo Web)

| Metric | Result | Threshold | Status |
|--------|--------|-----------|--------|
| Virtual Users | 100 | 100 | ✅ Pass |
| Ramp Up | 20 seconds | — | ✅ |
| Duration | 120 seconds | — | ✅ |
| Avg Response Time | 2850 ms | < 5000 ms | ✅ Pass |
| Error Rate | 1.8% | < 5% | ✅ Pass |
| Breaking Point | ~120 users | — | ℹ️ Info |

---

## 📈 Performance Observations

1. **Login page** consistently responds under 1 second for up to 50 concurrent users
2. **Products page** shows slight degradation above 80 concurrent users
3. **API endpoints** remain stable up to 20 concurrent users with < 500ms avg
4. **No memory leaks** detected during 60-second sustained load test
5. **System recovers** within 30 seconds after stress test peak

---

## 🔧 Test Environment

| Item | Detail |
|------|--------|
| JMeter Version | 5.6.2 |
| OS | Windows 11 |
| Network | 100 Mbps |
| Application | SauceDemo (https://www.saucedemo.com) |
| API | ReqRes.in (https://reqres.in) |
