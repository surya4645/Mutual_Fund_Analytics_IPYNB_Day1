
-- 1. Top 5 funds by AUM
SELECT fund_house, SUM(aum_crore) AS total_aum
FROM fact_aum
GROUP BY fund_house
ORDER BY total_aum DESC
LIMIT 5;

-- 2. Average NAV by AMFI code
SELECT amfi_code, ROUND(AVG(nav), 2) AS avg_nav
FROM fact_nav
GROUP BY amfi_code
ORDER BY avg_nav DESC;

-- 3. Monthly average NAV trend
SELECT strftime('%Y-%m', date) AS month, ROUND(AVG(nav), 2) AS avg_nav
FROM fact_nav
GROUP BY month
ORDER BY month;

-- 4. Daily return summary by fund
SELECT amfi_code,
       ROUND(MIN(daily_return_pct), 2) AS min_return,
       ROUND(MAX(daily_return_pct), 2) AS max_return,
       ROUND(AVG(daily_return_pct), 2) AS avg_return
FROM fact_nav
GROUP BY amfi_code;

-- 5. Total transaction amount by transaction type
SELECT transaction_type, ROUND(SUM(amount_inr), 2) AS total_amount
FROM fact_transactions
GROUP BY transaction_type
ORDER BY total_amount DESC;

-- 6. Transactions count by KYC status
SELECT kyc_status, COUNT(*) AS total_transactions
FROM fact_transactions
GROUP BY kyc_status;

-- 7. Funds with expense ratio less than 1%
SELECT amfi_code, scheme_name, expense_ratio
FROM fact_performance
WHERE expense_ratio < 1
ORDER BY expense_ratio;

-- 8. Top 5 performing schemes by return percentage
SELECT amfi_code, scheme_name, return_1yr
FROM fact_performance
ORDER BY return_1yr DESC
LIMIT 5;

-- 9. Category-wise SIP inflow summary
SELECT category, ROUND(SUM(inflow_amount), 2) AS total_inflow
FROM fact_category_inflows
GROUP BY category
ORDER BY total_inflow DESC;

-- 10. Benchmark index summary
SELECT benchmark_name, ROUND(AVG(index_value), 2) AS avg_index_value
FROM fact_benchmark_indices
GROUP BY benchmark_name
ORDER BY avg_index_value DESC;
