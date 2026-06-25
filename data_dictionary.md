
# Data Dictionary — Mutual Fund Analytics

## 1. dim_fund.csv
| Column Name | Data Type | Description | Source |
|------------|-----------|-------------|--------|
| amfi_code | Integer | Unique AMFI code for the mutual fund scheme | 01_fund_master.csv |
| fund_house | Text | Name of the mutual fund house | 01_fund_master.csv |
| scheme_name | Text | Name of the scheme | 01_fund_master.csv |
| category | Text | Scheme category | 01_fund_master.csv |
| sub_category | Text | Scheme sub-category | 01_fund_master.csv |

## 2. dim_date.csv
| Column Name | Data Type | Description | Source |
|------------|-----------|-------------|--------|
| date | Date | Calendar date | Derived from nav / transactions |
| year | Integer | Year extracted from date | Derived |
| month | Integer | Month extracted from date | Derived |
| day | Integer | Day extracted from date | Derived |
| month_name | Text | Month name | Derived |

## 3. clean_nav.csv / fact_nav
| Column Name | Data Type | Description | Source |
|------------|-----------|-------------|--------|
| amfi_code | Integer | Fund AMFI code | 02_nav_history.csv |
| date | Date | NAV date | 02_nav_history.csv |
| nav | Float | Net Asset Value | 02_nav_history.csv |
| daily_return_pct | Float | Daily % return calculated from NAV | Derived |

## 4. clean_transactions.csv / fact_transactions
| Column Name | Data Type | Description | Source |
|------------|-----------|-------------|--------|
| transaction_date | Date | Transaction date | 08_investor_transactions.csv |
| transaction_type | Text | SIP / Lumpsum / Redemption | 08_investor_transactions.csv |
| amount_inr | Float | Transaction amount in INR | 08_investor_transactions.csv |
| kyc_status | Text | KYC verification status | 08_investor_transactions.csv |

## 5. clean_performance.csv / fact_performance
| Column Name | Data Type | Description | Source |
|------------|-----------|-------------|--------|
| amfi_code | Integer | Fund AMFI code | 07_scheme_performance.csv |
| scheme_name | Text | Name of scheme | 07_scheme_performance.csv |
| expense_ratio | Float | Expense ratio of the scheme | 07_scheme_performance.csv |
| return_1yr | Float | 1-year return percentage | 07_scheme_performance.csv |

## 6. fact_aum.csv
| Column Name | Data Type | Description | Source |
|------------|-----------|-------------|--------|
| fund_house | Text | Mutual fund house name | 03_aum_by_fund_house.csv |
| aum_crore | Float | Assets Under Management in crore | 03_aum_by_fund_house.csv |

## 7. fact_sip_industry.csv
| Column Name | Data Type | Description | Source |
|------------|-----------|-------------|--------|
| month | Date/Text | Month of SIP inflow | 04_monthly_sip_inflows.csv |
| sip_inflow | Float | SIP inflow amount | 04_monthly_sip_inflows.csv |

## 8. fact_category_inflows.csv
| Column Name | Data Type | Description | Source |
|------------|-----------|-------------|--------|
| category | Text | Mutual fund category | 05_category_inflows.csv |
| inflow_amount | Float | Inflow amount | 05_category_inflows.csv |

## 9. fact_folio_count.csv
| Column Name | Data Type | Description | Source |
|------------|-----------|-------------|--------|
| industry_segment | Text | Industry or fund segment | 06_industry_folio_count.csv |
| folio_count | Integer | Number of folios | 06_industry_folio_count.csv |

## 10. fact_portfolio.csv
| Column Name | Data Type | Description | Source |
|------------|-----------|-------------|--------|
| scheme_name | Text | Scheme name | 09_portfolio_holdings.csv |
| holding_name | Text | Security / holding name | 09_portfolio_holdings.csv |
| holding_weight | Float | Weight of holding in portfolio | 09_portfolio_holdings.csv |

## 11. fact_benchmark_indices.csv
| Column Name | Data Type | Description | Source |
|------------|-----------|-------------|--------|
| benchmark_name | Text | Benchmark index name | 10_benchmark_indices.csv |
| index_value | Float | Benchmark index value | 10_benchmark_indices.csv |
