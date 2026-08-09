# 📊 D2C Electronics Store — End-to-End Business Analytics Project

Project Type: D2C Electronics Store Analytics
Turning Sales, Customer & Marketing Data into Data-Driven Business Decisions

Analytics Areas

- 📈 Sales Performance
- 👥 Customer Behavior & RFM
- 📣 Advertising & Traffic Performance
- 💰 Revenue & Profitability
- 🎯 Campaign Effectiveness

Technology Stack

Excel → MySQL → Power BI → DAX

# 🚀 Project Overview

The objective was to transform this raw data into a reliable analytical dataset and create an executive-level BI solution that helps stakeholders make data-driven decisions.

The analysis was designed to help management answer these critical questions:

- How the business is performing overall
- Which products and categories are driving revenue
- Which customers are the most valuable
- How effectively the company is retaining customers
- Which marketing campaigns and channels generate the best results
- How advertising spend translates into revenue
- Which traffic sources generate high-quality customers
- Where the business has opportunities to improve revenue and profitability

To answer these questions, I built a complete analytics pipeline using:

**Excel → MySQL → Power BI**


# 🎯 Business Problem

The Business Challenge

The company had large amounts of sales, product, customer, marketing and traffic data but

However, the raw data was not immediately suitable for business analysis due to:

- Inconsistent
- Missing values
- Duplicate records
- Different data formats
- Inconsistent categorical values
- Multiple data sources

And Management lacked a centralized analytical view of business performance to track where is the business generating value, where are we losing value, and where should management focus its next investment?"

The key challenges were:

- Sales performance was difficult to monitor consistently.
- Order failures represented a significant share of total orders.
- Customer behavior was not clearly segmented.
- Marketing channels were generating different levels of traffic and revenue.
- Advertising spend needed stronger performance measurement.
- Management needed actionable insights rather than raw transactional data.


# 🎯 Project Objectives

The main objectives of this project were to:

1. Prepare and validate raw business data using Excel.
2. Clean and transform the data using MySQL.
3. Create analysis-ready datasets for reporting.
4. Connect MySQL with Power BI.
5. Build an interactive Sales Overview Dashboard.
6. Perform Customer Analysis and RFM segmentation.
7. Analyze advertising campaigns and traffic channels.
8. Measure marketing efficiency using ROAS and related KPIs.
9. Identify business trends, opportunities, and performance gaps.
10. Provide actionable recommendations for business stakeholders.

---

# 🛠️ Tools & Technologies

| Tool | Purpose |
|------|---------|
| **Microsoft Excel** | Initial data preparation, validation and profiling |
| **MySQL** | Data cleaning, transformation, aggregation and business analysis |
| **Power BI** | Data modeling, DAX, visualization and dashboard development |
| **DAX** | Business metrics, KPIs, time intelligence and customer analytics |
| **Power Query** | Data transformation and preparation |
| **GitHub** | Project documentation and portfolio |

-- ---------------------------

🗄️ MySQL Data Validation, Cleaning & Transformation

MySQL was used as the core data preparation layer between the raw Excel/CSV data and Power BI. The SQL script focuses on data validation, quality checks, cleaning, standardization, and transformation to create a reliable dataset for downstream business analysis and Power BI reporting.

🔍 Database & Table Setup

The script first creates the Estore database and defines structured tables for:

Orders — Transaction and order-level data
Products — Product, pricing, cost, stock and rating information
Customers — Customer profile and signup information
Campaign — Marketing campaign and advertising spend data
Traffic — Website sessions, devices, campaigns and bounce information
🧹 Data Validation & Quality Checks

The script performs several data-quality checks before analysis, including:

Identifying duplicate Order IDs
Identifying duplicate Customer IDs
Checking duplicate Product and Traffic records
Checking for unwanted leading/trailing spaces
Validating customer IDs between Orders and Customers
Checking distinct values in categorical fields
Identifying blank values in important columns
Validating date ranges and data consistency
🔧 Data Cleaning & Transformation

The data was standardized using SQL operations such as:

TRIM() to remove unnecessary spaces
UPPER() and LOWER() to standardize text
CONCAT() to create standardized names
CASE statements to normalize categories and country names
Converting blank values to NULL
Standardizing order statuses
Standardizing device types such as Desktop, Mobile and Tablet
Standardizing country names
Adjusting invalid/inconsistent signup dates
Correcting invalid customer identifiers
Removing duplicate records where required
⚙️ SQL Techniques Demonstrated

The script demonstrates practical MySQL techniques including:

CREATE DATABASE
CREATE TABLE
DROP TABLE
TRUNCATE TABLE
INSERT / LOAD DATA
SELECT
WHERE
GROUP BY
HAVING
JOIN
CTE
Window Functions
CASE
UPDATE
DELETE
TRIM
UPPER / LOWER
CONCAT
SUBSTRING
LEFT
LENGTH
DATE_ADD
YEAR
RAND
LPAD
TRANSACTION / COMMIT / ROLLBACK

-- ---------------------------------------


# Key DAX Concepts Demonstrated

The project demonstrates practical use of:

| DAX Function          | What I Did With It                                                                                                                                    |
| --------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------- |
| **CALCULATE()**     | Used to calculate business metrics under specific filter conditions, such as completed orders, previous-month revenue, and paid/organic performance.  |
| **SUM()**           | Used to aggregate numerical fields such as revenue, profit, COGS, quantity sold, and advertising spend.                                               |
| **DISTINCTCOUNT()** | Used to count unique entities such as customers, orders, and other distinct business IDs without double-counting.                                     |
| **DIVIDE()**        | Used to safely calculate ratios and percentages such as order success rate, conversion rate, repeat purchase rate, and ROAS.                          |
| **FILTER()**        | Used to apply custom filtering logic when creating metrics and analytical calculations based on specific business conditions.                         |
| **SWITCH()**        | Used to create business-rule-based customer segmentation, including RFM customer segments such as Champions, Loyal Customers, and At Risk.            |
| **IF()**            | Used to apply conditional business logic, such as classifying customers, handling positive/negative growth, and assigning labels based on conditions. |
| **COALESCE()**      | Used to replace blank values with meaningful defaults, such as classifying traffic with no campaign as **Organic**.                                   |
| **RANKX()**         | Used to rank customers based on Recency, Frequency, and Monetary values for RFM scoring and customer segmentation.                                    |
| **ALL()**           | Used to remove the current filter context when calculating overall customer rankings, totals, and comparison benchmarks.                              |
| **PREVIOUSMONTH()** | Used to retrieve the previous month's values for calculating month-over-month revenue and performance changes.                                        |
| **DATEDIFF()**      | Used to calculate the number of days between a customer's last purchase and the analysis/reference date for the RFM Recency metric.                   |
| **FORMAT()**        | Used to format numerical results into user-friendly labels, such as RFM scores, percentages, and dynamic KPI labels.                                  |



# 🔄 End-to-End Data Analytics Workflow

```text
Raw Business Data
       │
       ▼
Microsoft Excel
       │
       ├── Data Profiling
       ├── Data Validation
       ├── Missing Value Checks
       ├── Duplicate Checks
       └── Initial Preparation
       │
       ▼
MySQL
       │
       ├── Data Cleaning
       ├── Data Transformation
       ├── Data Validation
       ├── Joins
       ├── Aggregations
       └── Business Analysis
       │
       ▼
Power BI
       │
       ├── Data Modeling
       ├── Relationships
       ├── DAX Measures
       ├── KPI Development
       └── Interactive Visualizations
       │
       ▼
Business Intelligence Dashboards
       │
       ├── Sales Overview
       ├── Customer Analysis
       └── Ads & Traffic Analysis
       │
       ▼
Business Insights & Recommendations
```
-- ---------------------------------------------------------


Along with:

Time intelligence
Customer segmentation
RFM scoring
KPI calculations
Conditional logic
Percentage calculations
Marketing metrics
