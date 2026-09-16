# 🛒 Retail Sales Health Check

## 📌 Project Overview

The **Retail Sales Health Check** is a SQL-based data analysis project using the **Sample Superstore** dataset.

The goal of this project is to analyze retail sales performance and identify which **categories, sub-categories, and regions are actually profitable after considering discounts**.

Instead of focusing only on revenue, this project investigates the relationship between **discounts and profitability** to identify areas where high discounts may be associated with negative profit.

---

## 🎯 Business Question

> **Which categories and regions actually make money once discounts are counted?**

The analysis focuses on:

- Sales performance
- Profitability
- Category and sub-category performance
- Regional performance
- Discount levels
- Loss-making product segments
- High-discount orders with negative profit

---

## 📊 Dataset

**Dataset:** Sample Superstore

The dataset contains retail order information including:

- Order details
- Customer information
- Product categories
- Sales
- Quantity
- Discount
- Profit
- Region
- Order and shipping dates

**Source:** Kaggle – Superstore Dataset

---

## 🛠️ Tools & Technologies

- **SQL Server**
- **SQL**
- **SSMS (SQL Server Management Studio)**
- **GitHub**
- **CSV Dataset**

### SQL Concepts Used

- `SELECT`
- `COUNT()`
- `SUM()`
- `MIN()` / `MAX()`
- `GROUP BY`
- `HAVING`
- `WHERE`
- `CASE WHEN`
- Aggregate functions
- Data quality checks
- Conditional filtering

---

## 🔍 Analysis Performed

### Q1. Basic Dataset Health Check

Checked the total number of records in the dataset to verify that the data was loaded correctly.

### Q2. NULL Value Check

Checked important columns for missing values to ensure data quality before performing analysis.

### Q3. Date Range Analysis

Identified the earliest and latest order dates to understand the time period covered by the dataset.

### Q4. Sales & Profit by Category

Analyzed total sales and profit across different product categories.

### Q5. Sales & Profit by Sub-Category

Analyzed individual sub-categories to identify profitable and loss-making product segments.

### Q6. Sales & Profit by Region

Compared sales and profit across different geographic regions.

### Q7. Discount Band Classification

Created discount categories using `CASE WHEN`:

| Discount Band | Definition |
|---|---|
| 0% | No discount |
| 1–20% | Discount greater than 0% and up to 20% |
| 20%+ | Discount greater than 20% |

### Q8. Profit by Discount Band

Compared total sales and profit across different discount bands to investigate how profitability changes as discount levels increase.

### Q9. Loss-Making Sub-Categories

Identified sub-categories where the **overall aggregated profit is negative**.

### Q10. High-Discount Sub-Categories with Negative Profit

Identified sub-categories where orders receiving **more than 20% discount** generated negative total profit.

This is the key analysis of the project.

---

## 📁 Project Structure

```text
Retail-Sales-Health-Check/
│
├── README.md
│
├── sql/
│   └── retail_sales_health_check.sql
│
└── data/
    └── superstore.csv
```

---

## 💡 Key Business Insight

The project goes beyond simply identifying the products or regions with the highest sales.

The analysis investigates whether **higher discount levels are associated with lower profitability** and identifies specific sub-categories where high-discount orders result in negative profit.

> **Important:** A negative profit observed at a high discount level does not by itself prove that the discount caused the loss. It shows an observed relationship that can be investigated further.

---

## 📈 Expected Deliverables

- SQL script containing **10 structured analysis queries**
- Data quality checks
- Sales and profitability analysis
- Discount-band analysis
- Identification of loss-making sub-categories
- Business findings based on SQL results

---

## 🚀 How to Run the Project

### 1. Create the database

```sql
CREATE DATABASE RetailSalesHealthCheck;
GO

USE RetailSalesHealthCheck;
GO
```

### 2. Import the Superstore CSV

Import the CSV file into SQL Server using **SSMS → Tasks → Import Flat File**.

Create the table with the name:

```text
Superstore
```

### 3. Run the SQL script

Open:

```text
sql/retail_sales_health_check.sql
```

Run the queries sequentially in SQL Server Management Studio.

### 4. Review the results

Use the query outputs to identify:

- Profitable categories
- Loss-making sub-categories
- Regional performance
- Discount profitability
- High-discount segments with negative profit

---

## 🎓 Skills Demonstrated

This project demonstrates practical knowledge of:

- SQL data analysis
- Data quality validation
- Aggregation and grouping
- Business-oriented analysis
- Conditional logic using `CASE`
- Filtering aggregated results using `HAVING`
- Profitability analysis
- Translating business questions into SQL queries
- Drawing insights from structured data

---

## 📌 Conclusion

The **Retail Sales Health Check** demonstrates how SQL can be used to move from raw transactional data to actionable business insights.

Rather than focusing only on revenue, the project evaluates **profitability, discounts, products, and regions** to identify potential areas of concern and understand where retail performance may be affected by discounting strategies.

---

## 👤 Author

**Satyam Katara**

Data Analyst | SQL | Data Analytics

---

## 📚 Dataset Source

Sample Superstore Dataset available on Kaggle.
