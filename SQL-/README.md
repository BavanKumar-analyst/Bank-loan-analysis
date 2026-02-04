# SQL Scripts – Bank Loan Analysis

This folder contains all MySQL scripts used for analyzing and preparing data
for the Bank Loan Analysis project.

Each script follows a structured workflow, starting from data understanding
to business KPI calculation.

---

## 📄 File Descriptions

### 01_data_profiling.sql
- Performs initial data exploration
- Validates record counts and key dimensions
- Analyzes loan status, application type, and purpose distributions
- Checks the date range of loan issuance

### 02_data_cleaning.sql
- Handles missing and inconsistent values
- Standardizes borrower-related attributes
- Creates derived time-based columns (year, month, month name)
- Prepares clean, analysis-ready data for reporting

### 03_kpi_analysis.sql
- Calculates high-level KPIs used in the Summary dashboard
- Includes total loan applications, funded amount, and repayments
- Computes average interest rate and DTI
- Generates monthly trends for time-based analysis

### 04_good_bad_loan_analysis.sql
- Implements business logic to classify loans
- Separates loans into Good Loans and Bad Loans
- Calculates application counts and financial metrics for each category

---

## 🛠 Database Used
- MySQL

## 📌 Notes
- These SQL scripts are designed to be modular and readable
- All transformations are handled in SQL before visualization in Power BI

