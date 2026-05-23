# ⚡ Performance Testing with JMeter

![JMeter](https://img.shields.io/badge/JMeter-5.6.2-D22128?style=flat-square&logo=apachejmeter)
![Tests](https://img.shields.io/badge/Test%20Types-Smoke%20|%20Load%20|%20Stress-blue?style=flat-square)
![Users](https://img.shields.io/badge/Max%20Users-100-orange?style=flat-square)
![License](https://img.shields.io/badge/License-MIT-green?style=flat-square)

A professional **Performance Testing suite** built with **Apache JMeter 5.6.2**. Covers Smoke, Load, and Stress testing for both Web UI and REST API applications with detailed HTML reports, assertions, and CSV data-driven tests.

---

## 📁 Project Structure

```
performance-testing-jmeter/
├── test-plans/
│   ├── saucedemo-performance-test.jmx   # Web UI performance test
│   └── api-performance-test.jmx         # REST API performance test
├── test-data/
│   └── users.csv                         # Data-driven user credentials
├── scripts/
│   ├── run-tests.bat                     # Windows runner
│   └── run-tests.sh                      # Linux/Mac runner
├── results/
│   └── test-results-summary.md          # Sample test results
├── reports/                              # HTML reports (auto-generated)
└── README.md
```

---

## 🧪 Test Plans

### 1. SauceDemo Web Performance Test
| Thread Group | Users | Ramp Up | Duration |
|---|---|---|---|
| Smoke Test | 5 | 5s | 30s |
| Load Test | 50 | 10s | 60s |
| Stress Test | 100 | 20s | 120s |

**Endpoints Tested:**
- GET `/` — Login Page
- GET `/inventory.html` — Products Page
- GET `/cart.html` — Cart Page

### 2. ReqRes API Performance Test
| Endpoint | Method | Assertion |
|---|---|---|
| `/api/users?page=1` | GET | Status 200, < 2000ms |
| `/api/users/2` | GET | Status 200, < 2000ms |
| `/api/users` | POST | Status 201, < 3000ms |
| `/api/users/2` | DELETE | Status 204 |

---

## ✅ Performance Benchmarks

| Test | Users | Avg Response | Error Rate | Result |
|------|-------|-------------|------------|--------|
| Smoke | 5 | 820 ms | 0% | ✅ Pass |
| Load | 50 | 1320 ms | 0.2% | ✅ Pass |
| Stress | 100 | 2850 ms | 1.8% | ✅ Pass |
| API Load | 20 | 318 ms | 0% | ✅ Pass |

---

## 🚀 How to Run

### Prerequisites
- Java 8+
- [Apache JMeter 5.6.2](https://jmeter.apache.org/download_jmeter.cgi)

### Run via GUI (View results live)
```bash
# Windows
jmeter.bat -t test-plans/saucedemo-performance-test.jmx

# Linux/Mac
jmeter -t test-plans/saucedemo-performance-test.jmx
```

### Run Headless + Generate HTML Report
```bash
# Windows
jmeter.bat -n -t test-plans/saucedemo-performance-test.jmx -l results/results.jtl -e -o reports/html-report

# Linux/Mac
jmeter -n -t test-plans/saucedemo-performance-test.jmx -l results/results.jtl -e -o reports/html-report
```

### Run with scripts
```bash
# Windows
scripts\run-tests.bat

# Linux/Mac
chmod +x scripts/run-tests.sh
./scripts/run-tests.sh
```

### Override thread count via CLI
```bash
jmeter -n -t test-plans/saucedemo-performance-test.jmx -Jthreads=100 -Jrampup=20 -Jduration=120
```

---

## 📊 HTML Reports

After execution, open the report:
```
reports/html-report/index.html
```
Includes: Response times, throughput, error rates, percentiles, graphs.

---

## 🎯 Key Features

- **3 Test Types** — Smoke, Load, and Stress testing
- **Response Time Assertions** — Auto-fail if thresholds exceeded
- **JSON Path Assertions** — API response body validation
- **Gaussian Random Timer** — Realistic user think time simulation
- **CSV Data-Driven** — Multiple users from CSV file
- **HTML Dashboard** — JMeter built-in HTML report generation
- **Parameterized** — Override threads/ramp/duration via CLI
- **Cookie Manager** — Session handling per user iteration

---

## 👨‍💻 Author

**Sachin Dhule** — QA Automation Engineer  
📍 Pune, Maharashtra, India  
🔗 [LinkedIn](https://linkedin.com/in/sachindhule) | [GitHub](https://github.com/sachindhule-qa)

---

## 📄 License

This project is licensed under the MIT License.
