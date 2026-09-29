SQL Customer & Sales Analysis

## Overview
This project contains SQL scripts to create a customer orders database and analyze purchasing behavior, customer lifetime value, and city-wise sales performance using SQLite.

## Database Schema
- **customers:** `customer_id`, `customer_name`, `city`
- **orders:** `order_id`, `customer_id`, `order_date`, `amount`

## Key Analysis & Insights
1. **Top Spender Identification:** Identified Aarti Sharma as the highest spending customer (₹7,400 total expenditure).
2. **Geographic Sales Performance:** Grouped sales data by region to evaluate revenue contribution across major cities (Delhi, Mumbai, Bangalore).

## Tech Stack & Concepts
- **Database Engine:** SQLite
- **Concepts Applied:** DDL (Data Definition), DML (Data Manipulation), INNER JOINs, GROUP BY, Aggregations (SUM, COUNT), ORDER BY
