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


# 🗄️ MySQL Data Validation, Cleaning & Transformation

MySQL was used as the primary data preparation layer between the raw datasets and Power BI. The SQL workflow focused on validating data quality, identifying duplicates and inconsistencies, standardizing categorical fields, handling missing values, correcting date ranges, and transforming the datasets into a reliable structure for business analysis and Power BI reporting.

# 🔧 SQL Statements & Functions Used

| SQL Function / Statement | How I Used It in the Project                                                                                               |
| ------------------------ | -------------------------------------------------------------------------------------------------------------------------- |
| **CREATE DATABASE**    | Created the `Estore` database to organize all analytical tables in a centralized MySQL environment.                        |
| **USE**                | Selected the `Estore` database as the active database for all subsequent SQL operations.                                   |
| **CREATE TABLE**       | Created structured schemas for Orders, Products, Customers, Campaign, and Traffic datasets with appropriate data types.    |
| **DROP TABLE**         | Removed existing tables when recreating or restructuring the data schema.                                                  |
| **TRUNCATE TABLE**     | Removed all records from a table while retaining its structure for data reloading and preparation.                         |
| **SELECT**             | Used extensively to inspect datasets, validate records, profile data, and verify cleaning results.                         |
| **SHOW VARIABLES**     | Checked the MySQL `secure_file_priv` configuration while preparing for CSV data loading.                                   |
| **WITH / CTE**         | Created temporary result sets to identify duplicate Orders and Customers in a structured and readable way.                 |
| **COUNT()**            | Counted duplicate records, customers, orders, and other data-quality results.                                              |
| **COUNT(DISTINCT)**    | Measured the number of unique customers, countries, campaigns, and other distinct values.                                  |
| **GROUP BY**           | Grouped records by IDs or categories to identify duplicates and summarize data.                                            |
| **HAVING**             | Filtered grouped results to identify duplicate records where the count was greater than one.                               |
| **COUNT() OVER()**     | Used a window function with `PARTITION BY` as an alternative method for identifying duplicate Order IDs.                   |
| **PARTITION BY**       | Divided records into groups by Order ID so duplicate occurrences could be identified without collapsing the original rows. |
| **DELETE**             | Removed identified duplicate Order records from the Orders table.                                                          |
| **UPDATE**             | Modified existing records to clean and standardize values across the datasets.                                             |
| **JOIN**               | Compared Orders with Customers to validate customer IDs and investigate referential data consistency.                      |
| **IN**                 | Used to identify records matching a set of values, including duplicate IDs identified through subqueries.                  |
| **LENGTH()**           | Checked the length of text fields to identify potential leading or trailing spaces.                                        |
| **TRIM()**             | Removed unwanted spaces from Order Status, Customer Names, IDs, and other text fields.                                     |
| **UPPER()**            | Converted selected characters to uppercase when standardizing text values.                                                 |
| **LOWER()**            | Converted characters to lowercase to create consistent text formatting.                                                    |
| **LEFT()**             | Extracted the first character of names for proper-case transformation.                                                     |
| **SUBSTRING()**        | Extracted the remaining characters of names while standardizing customer names.                                            |
| **CONCAT()**           | Combined multiple text values to create standardized names and corrected Customer IDs.                                     |
| **LIKE**               | Identified patterns such as blank values, country variations, device types, and inconsistent categorical values.           |
| **IS NULL**            | Checked for missing values in fields such as Campaign ID and Customer ID.                                                  |
| **CASE WHEN**          | Applied conditional transformation rules to standardize countries, device types, and other categorical values.             |
| **DISTINCT**           | Retrieved unique values to profile categorical columns and identify inconsistent data entries.                             |
| **YEAR()**             | Extracted the year from dates to identify and correct invalid signup-date ranges.                                          |
| **DATE_ADD()**         | Adjusted incorrect customer signup dates by adding or subtracting years based on validation rules.                         |
| **INTERVAL**           | Defined the amount of time to add or subtract when correcting date values.                                                 |
| **START TRANSACTION**  | Started a transaction before making potentially sensitive data modifications.                                              |
| **COMMIT**             | Permanently saved validated data changes after reviewing the transformation.                                               |
| **ROLLBACK**           | Reverted changes made within a transaction when the modifications needed to be cancelled.                                  |
| **LPAD()**             | Standardized the formatting of generated Customer IDs by padding numbers with leading zeros.                               |
| **FLOOR()**            | Converted randomly generated decimal values into whole numbers when creating replacement Customer IDs.                     |
| **RAND()**             | Generated random numbers for replacing invalid Customer IDs during data correction.                                        |



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

                RAW BUSINESS DATA
                       │
                       ▼
                 MICROSOFT EXCEL
                       │
              Data Preparation
              Data Validation
                       │
                       ▼
                    MySQL
                       │
        ┌──────────────┼──────────────┐
        │              │              │
     Cleaning      Transformation   Analysis
        │              │              │
        └──────────────┼──────────────┘
                       │
                       ▼
                    POWER BI
                       │
             Data Modeling + DAX
                       │
        ┌──────────────┼──────────────┐
        ▼              ▼              ▼
      SALES         CUSTOMER       MARKETING
     ANALYSIS       ANALYSIS       ANALYSIS
        │              │              │
        └──────────────┼──────────────┘
                       ▼
              BUSINESS INSIGHTS
                       │
                       ▼
             DATA-DRIVEN DECISIONS
-- ---------------------------------------------------------

# Sales Overview Dashboard

# Business Report

## Overall Business Performance

| KPI                     |      Result |
| ----------------------- | ----------: |
| **Total Orders**        |   **2.68K** |
| **Revenue**             | **$10.06M** |
| **Profit**              |  **$3.36M** |
| **COGS**                |  **$6.70M** |
| **Order Success Rate**  |  **33.58%** |
| **Successful Orders**   |     **901** |
| **Unsuccessful Orders** |  **66.42%** |
| **Quantity Sold**       |      **8K** |

The company generated approximately $10.06M in revenue and $3.36M in profit.

However, the most important concern is the 33.58% order success rate.

That means approximately two-thirds of orders are currently classified as unsuccessful according to the dashboard's status logic.

This is potentially the largest operational opportunity in the business.

## order-status visualization shows approximately:
33.1% Completed
33.41% Cancelled
16.45% Refunded
~17% Processing

This creates an important business question:

Why are so many orders failing to reach successful completion?

Potential Causes to Investigate

## Management should investigate:
Payment failures
Customer cancellations
Inventory availability
Delivery delays
Pricing issues
Customer dissatisfaction
Product availability
Fraud screening
Refund-related issues
Business Opportunity

Even a modest improvement in successful order completion could have a meaningful impact on:
Revenue, Profit, Customer satisfaction and Marketing ROI

## Top 10 Bestseller Products

The dashboard identifies the strongest-selling products across the electronics catalog.

The leading products include:

- Nikon Z8
- Sony Bravia XR
- Samsung S90C OLED
- Apple MacBook Pro
- Canon EOS R6
- Razer Blade
- Sony Alpha
- Sony Xperia
- Samsung Galaxy
- LG InstaView
- Business Questions

## Management should use this analysis to determine:

1. Which products deserve higher inventory allocation?

2. Which products drive the largest share of sales?

3. Are high-volume products also high-margin products?

4. Are there products with strong sales but weak profitability?

## Recommendation

Do not evaluate product success using sales volume alone.
Combine:
Revenue + Quantity + Profit Margin + Return Rate to identify truly valuable products.

# Customer Analysis Dashboard

# Business Report

## Overall Customer KPIs Data

| KPI                     |      Result |
| ----------------------- | ----------: |
| **Total Customers / Orders**                |   **927 / 2.68K**   |
| **Net Revenue / Profit**                    | **$3.36M / $1.12M**  |
| **Total Order Value**              |  **$10.06M**|
| **Avg Order Value**                |  **$3.75** |
| **Customer Repeat Rate / Customers**           |  **78.64% / 729** |
| **New Customer Rate**              |     **21.36% / 198** |

- 2.68K Orders placed by the 927 Customers.
- Business recieved the orders of order value of $10.06 Million but the net revenue is only $3.36 Million and Profit is $1.12 Million because almost 33.58% orders was successfully delivered
- We Have 78.64% Customers Repeat still we are losing the our most of the revenue and profit of almost 65%-70% in failed orders.



# Ads Campaign & Traffic Analysis

# Business Report
## Overall Ads Camapign and Traffic KPIs

| KPI                     |      Result |
| ----------------------- | ----------: |
| **Total Traffic**                        |  **5.00 K / 2.68K** |
| **Organic Traffic / Orders**             | **2.54K / 1.38K** |
| **Paid Traffic / Orders**                |  **2.46K / 1.30K** |
| **Conversion Rate**                      |  **53.66% / 2.68K** |
| **Bounce Rate / Bounce**                 |  **48.78% / 2.49K** |
| **Ad Spend / ROAS**                      |  **$250.68K / 19.62x** |
| **Revenue from Ads / Net Revenue**       | **$4.92M / $1.72M** |
| **Total Net Revenue**                    |  **$3.33M** |
| **Total Order Value / Orders**           |  **$10.06M / 2.68K** |
| **Net Profit**                           | **$1.12M** |



