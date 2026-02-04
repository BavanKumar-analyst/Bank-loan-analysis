-- 01_data_profiling.sql
-- Project: Bank Loan Analysis
-- Database: MySQL
-- Purpose: Initial data understanding and validation

-- Total number of records
SELECT COUNT(*) AS total_records
FROM financial_loan;

-- Unique loans and borrowers
SELECT
    COUNT(DISTINCT id) AS total_loans,
    COUNT(DISTINCT member_id) AS total_borrowers
FROM financial_loan;

-- Loan status distribution
SELECT loan_status, COUNT(*) AS loan_count
FROM financial_loan
GROUP BY loan_status
ORDER BY loan_count DESC;

-- Application type distribution
SELECT application_type, COUNT(*) AS application_count
FROM financial_loan
GROUP BY application_type;

-- Purpose-wise loan distribution
SELECT purpose, COUNT(*) AS purpose_count
FROM financial_loan
GROUP BY purpose
ORDER BY purpose_count DESC;

-- Date range check
SELECT
    MIN(issue_date) AS first_issue_date,
    MAX(issue_date) AS last_issue_date
FROM financial_loan;
