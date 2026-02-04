-- 04_good_bad_loan_analysis.sql
-- Project: Bank Loan Analysis
-- Purpose: Good Loan vs Bad Loan analysis

-- Good loans (Fully Paid or Current)
SELECT
    COUNT(id) AS good_loan_count,
    SUM(loan_amount) AS good_loan_funded_amount,
    SUM(total_payment) AS good_loan_received_amount
FROM financial_loan
WHERE loan_status IN ('Fully Paid', 'Current');

-- Bad loans (Charged Off)
SELECT
    COUNT(id) AS bad_loan_count,
    SUM(loan_amount) AS bad_loan_funded_amount,
    SUM(total_payment) AS bad_loan_received_amount
FROM financial_loan
WHERE loan_status = 'Charged Off';
