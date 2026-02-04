-- 02_data_cleaning.sql
-- Project: Bank Loan Analysis
-- Database: MySQL
-- Purpose: Data cleaning, date conversion, and feature preparation

/*  HANDLE MISSING AND INVALID VALUES */

-- Handle missing employment length
UPDATE financial_loan
SET emp_length = 'Unknown'
WHERE emp_length IS NULL;

-- Handle missing employment title
UPDATE financial_loan
SET emp_title = 'Not Provided'
WHERE emp_title IS NULL;

-- Handle missing DTI
UPDATE financial_loan
SET dti = 0
WHERE dti IS NULL;


-- Add clean date columns
ALTER TABLE financial_loan
ADD issue_date_clean DATE,
ADD last_payment_date_clean DATE,
ADD last_credit_pull_date_clean DATE,
ADD next_payment_date_clean DATE;

-- Convert issue_date
UPDATE financial_loan
SET issue_date_clean = STR_TO_DATE(issue_date, '%d %M %Y');

-- Convert last_payment_date (already DATE-safe but handled defensively)
UPDATE financial_loan
SET last_payment_date_clean =
    CASE
        WHEN last_payment_date IS NOT NULL
        THEN DATE(last_payment_date)
        ELSE NULL
    END;

-- Convert last_credit_pull_date
UPDATE financial_loan
SET last_credit_pull_date_clean =
    CASE
        WHEN last_credit_pull_date IS NOT NULL
        THEN DATE(last_credit_pull_date)
        ELSE NULL
    END;

-- Convert next_payment_date
UPDATE financial_loan
SET next_payment_date_clean =
    CASE
        WHEN next_payment_date IS NOT NULL
        THEN DATE(next_payment_date)
        ELSE NULL
    END;

/* VALIDATE DATE CONVERSION */

-- Check for failed issue_date conversion
SELECT COUNT(*) AS invalid_issue_date
FROM financial_loan
WHERE issue_date IS NOT NULL
  AND issue_date_clean IS NULL;

/* REPLACE OLD DATE COLUMNS (AFTER VALIDATION) */

-- Drop old columns
ALTER TABLE financial_loan
DROP COLUMN issue_date,
DROP COLUMN last_payment_date,
DROP COLUMN last_credit_pull_date,
DROP COLUMN next_payment_date;

-- Rename clean columns
ALTER TABLE financial_loan
CHANGE issue_date_clean issue_date DATE,
CHANGE last_payment_date_clean last_payment_date DATE,
CHANGE last_credit_pull_date_clean last_credit_pull_date DATE,
CHANGE next_payment_date_clean next_payment_date DATE;

/* CREATE TIME INTELLIGENCE COLUMNS */

ALTER TABLE financial_loan
ADD issue_year INT,
ADD issue_month INT,
ADD issue_month_name VARCHAR(20);

UPDATE financial_loan
SET
    issue_year = YEAR(issue_date),
    issue_month = MONTH(issue_date),
    issue_month_name = MONTHNAME(issue_date);
