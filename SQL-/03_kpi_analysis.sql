-- 03_kpi_analysis.sql
-- Project: Bank Loan Analysis
-- Purpose: Summary KPI calculations

-- Total loan applications
SELECT COUNT(id) AS total_loan_applications
FROM financial_loan;

-- Total funded amount
SELECT SUM(loan_amount) AS total_funded_amount
FROM financial_loan;

-- Total amount received
SELECT SUM(total_payment) AS total_amount_received
FROM financial_loan;

-- Average interest rate
SELECT ROUND(AVG(int_rate), 2) AS avg_interest_rate
FROM financial_loan;

-- Average Debt-to-Income ratio
SELECT ROUND(AVG(dti), 2) AS avg_dti
FROM financial_loan;

-- Monthly loan applications
SELECT
    issue_year,
    issue_month_name,
    COUNT(id) AS monthly_loan_applications
FROM financial_loan
GROUP BY issue_year, issue_month, issue_month_name
ORDER BY issue_year, issue_month;
