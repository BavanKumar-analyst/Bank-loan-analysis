# 🏦 Bank Loan Analysis  
### End-to-End Data Analytics Project using MySQL & Power BI

---

## 📌 Project Overview
This project focuses on analyzing bank loan data to evaluate lending performance, borrower behavior, and overall loan portfolio health.  
Using **MySQL for data cleaning and analysis** and **Power BI for visualization**, the project delivers actionable business insights through KPIs, trend analysis, and risk segmentation.

The analysis helps stakeholders monitor loan performance, identify risk patterns, and make data-driven lending decisions.

---

## 🎯 Business Objectives
- Analyze total loan applications and funded amounts
- Track **Month-to-Date (MTD)** and **Month-over-Month (MoM)** performance
- Classify loans into **Good Loans** and **Bad Loans**
- Understand borrower and loan characteristics affecting performance
- Provide a detailed, drill-down view of loan-level data

---

## 🗂 Dataset Overview
- Format: CSV
- Granularity: Loan-level data
- Each record represents a single loan application
- The dataset includes loan details, borrower information, and repayment performance

---

## 🧱 Data Structure (Key Columns)

| Column Name | Description |
|------------|-------------|
| id | Unique identifier for each loan |
| issue_date | Date when the loan was issued |
| loan_amount | Amount of loan sanctioned |
| total_payment | Total amount received from the borrower |
| int_rate | Interest rate applied to the loan |
| dti | Debt-to-Income ratio of the borrower |
| loan_status | Current status of the loan |
| term | Loan repayment duration |
| purpose | Purpose of the loan |
| address_state | Borrower’s state |
| emp_length | Borrower’s employment length |
| home_ownership | Home ownership status |
| annual_income | Borrower’s annual income |

---

## 🛠 Tools & Technologies
- **MySQL**
  - Data profiling and validation
  - Data cleaning and transformation
  - KPI and business logic queries
- **Power BI**
  - Data modeling
  - DAX measures
  - Interactive dashboards and reports
- **GitHub**
  - Version control
  - Project documentation

---

## 📊 Dashboards Created

### 1️⃣ Summary Dashboard
Provides a high-level view of loan performance:
- Total Loan Applications
- Total Funded Amount
- Total Amount Received
- Average Interest Rate
- Average Debt-to-Income Ratio (DTI)
- Good Loan vs Bad Loan KPIs

---

### 2️⃣ Overview Dashboard
Visual analysis to identify trends and patterns:
- Monthly loan application trends
- State-wise loan distribution (Filled Map)
- Loan purpose analysis
- Loan term distribution
- Home ownership impact on lending

---

### 3️⃣ Details Dashboard
- Loan-level tabular view
- Detailed borrower and loan attributes
- Supports filtering and drill-down analysis

---

## 📈 Key Insights
- Identified trends and seasonality in loan applications
- Highlighted regions with higher lending activity
- Segmented loans based on performance status
- Analyzed borrower profiles impacting loan outcomes

---

## 🚀 Key Learnings
- Handling real-world date formats and data inconsistencies
- Writing MySQL queries for business KPIs
- Implementing time-based analysis (MTD, MoM)
- Designing structured and insightful Power BI dashboards
- Organizing analytics projects for GitHub portfolios

---

## 📌 Future Enhancements
- Add predictive modeling for loan default risk
- Automate data refresh pipelines
- Enhance dashboards with advanced DAX calculations



