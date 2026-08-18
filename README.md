# 📊 D2C Electronics Store — End-to-End Business Analytics Project

## Content Sequence
- Project Overview
- Business Problem
- Project Objectives
- Tools & Tevhnology Used
- Practical Use of SQL Statement, Clause & Functions
- Practical Use of Power Bi Dax
- End to End Analytics Workflow
- Sales Overview Dashboard, Report & Conclusion
- Customers Analysis Dashboard, Report & Conclusion
- Ads Campaign & Traffic Dashboard, Report & Conclusion
- Summary of Analysis, Action Plan and Key Takeaway

## Project Type: D2C Electronics Store Analytics
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

![Sales Overview](https://github.com/syed-masoom/Complete-Data-Analysis-Project/blob/main/1.%20Sales%20Dashboard.png?raw=true)

# Business Report

## Overall Business Performance

| KPI                             |  Result     |
| ------------------------------- | ----------: |
| **Total Orders**                |  **2.68K**  |
| **Average Order Value**         |  **3.75K**  |
| **Net Revenue**                 |  **$3.33M** |
| **Net Profit**                  |  **$1.12M** |
| **Processing Order Revenue**    |  **$1.71M** |
| **Refunded Value**              |  **$1.66M** |
| **Cancelled Order Value**       |  **$3.36M** |
| **Order Success Rate**          |  **33.58%** |
| **Successful Orders**           |     **901** |
| **Unsuccessful Orders**         |  **49.76%** |
| **Unsuccess Order**             |   **1.38K** |

- The company generated 2.68K orders which include organically and paid wit average order value $3.75K, $3.33 Million Net Revenue and $1.12 Million in Net Profit with only 33.58% order success rate

- But the Company can losted almost 50% of revenue and more profit due 34% of cancelation  and 15% of refund rate almost 50% of failed order in which $3.36 Million of order value cancelled and $1.66 Million Refunded

- The business is generating strong order value, but a significant portion isn't converting into realized revenue.

- The biggest concern is that high order failed rate almost 50%. This is potentially the largest operational opportunity in the business.

- Conclusion: The business should investigate the main reasons behind refunds—product issues, delivery problems, customer expectations, payment issues, or product quality.


## order-status visualization shows approximately:

|Order Status    | Order %       |
| ------------   | ------------: |
| **Completed**  |   **33.1%**   |
| **Cancelled**  |   **33.41%**  |
| **Refunded**   |   **16.45%**  |
| **Processing** |   **17%**     |

- Here we can see the order rate by order status and this is clearly showing the reason behind of 
our revenue and profit loss from the total order value which we generated

- This creates an important business question: Why are so many orders failing to reach successful completion?
Potential Causes to Investigate

- Conclusion:
Management should investigate:
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

| Product                            | Units Sold |
| ---------------------------------- | ---------: |
| Samsung S90C 77-inch OLED          |    **250** |
| Sony Bravia XR A95L 65-inch        |    **230** |
| Canon EOS R6 Mark II               |    **202** |
| Samsung Galaxy Z Fold 5            |    **201** |
| Nikon Z8                           |    **195** |
| Sony Alpha a7 IV                   |    **192** |
| Razer Blade 16                     |    **181** |
| Sony Xperia 1 V                    |    **174** |
| Apple MacBook Pro 16-inch (M3 Max) |    **160** |
| LG InstaView Refrigerator          |    **120** |

- Samsung S90C 77-inch OLED leads the ranking with 250 units sold.
- The Sony Bravia XR A95L is second with 230 units, only 20 units behind the leader.
- Canon EOS R6 Mark II and Samsung Galaxy Z Fold 5 have very similar sales at 202 and 201 units.
- LG InstaView Refrigerator has the lowest volume among the top 10, with 120 units.
- The top 10 products together sold 1,905 units.
- Sales are concentrated around premium electronics, particularly high-end TVs, cameras, smartphones, laptops, and gaming devices.

- Concluison: These products should receive close attention for inventory planning, pricing, promotions, and profitability analysis.


## Recommendation

- So the biggest opportunity is not simply acquiring more traffic or increasing advertising spend.
The biggest opportunity is to convert more existing demand into completed, profitable orders while increasing the lifetime value of existing customers.

This means management should focus on:

Acquire → Convert → Complete → Retain → Grow

rather than simply: Acquire → Acquire → Acquire

- Refunds Are a Major Revenue Leakage Area The dashboard shows approximately: $1.66M Refunded Amount
This represents a significant amount of order value.

The business should identify whether refunds are driven by:

Product quality
Product expectations
Damaged products
Delivery problems
Wrong products
Pricing issues
Customer dissatisfaction
Product availability
Payment/order issues
Action

Create a Refund Root-Cause Analysis.
For example: Product → Refund Rate → Refund Amount → Reason → Profit Impact

In One Line: Focus on reducing cancellations and refunds, improving order completion, and optimizing high-performing products to increase realized revenue and profit.

Do not evaluate product success using sales volume alone.
Combine: Revenue + Quantity + Profit Margin + Return Rate to identify truly valuable products.
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------

# Customer Analysis Dashboard

![Customer Analysis](https://github.com/syed-masoom/Complete-Data-Analysis-Project/blob/main/3.%20Customer%20Analysis%20Dashboard.png?raw=true)

# Business Report

## Overall Customer KPIs Data

| KPI                     |      Result |
| ----------------------- | ----------: |
| **Total Customers / Orders**                |   **927 / 2.68K**     |
| **Net Revenue / Profit**                    |   **$3.33M / $1.12M** |
| **Total Order Value**                       |   **$10.06M**         |
| **Avg Order Value**                         |   **$3.75**           |
| **Customer Repeat Rate / Customers**        |   **78.64% / 729**    |
| **New Customer Rate**                       |   **21.36% / 198**    |

- 2.68K Orders placed by the 927 Customers.

- Business recieved the orders of order value $10.06 Million but the net revenue is only $3.36 Million and Profit is $1.12 Million because almost 33.58% orders was successfully delivered

- The business has strong customer retention 79% Customers Repeat rate still we are losing the our most of the revenue and profit of almost 50% in failed orders.

- Conclusion: improving the value of existing customers and improve the shopping experience from web visiting, checkout to delivery could be more efficient than relying only on new customer acquisition. because business have already significant customer repeat rate

## 4. RFM analysis highlights

- Some customers who have previously generated meaningful value may be becoming inactive. These at risk customers are potentially valuable win-back targets

- Some customers who lost they buy from us long time ago. can be the valuable customers again by providing discount and efficient shopping experience

- Try to give high value and best shopping experience and retain those for the long to champion customers, Loyal Customers, Potential Loyal Customers who is providing meaningful value is the most important customer segment

- The RFM analysis shows that the business should not treat every customer the same.


| Customer Segment       | Key Takeaway                                                                                                                                                 | Recommended Business Action                                                                                                      |
| ---------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------ | -------------------------------------------------------------------------------------------------------------------------------- |
| 🏆 **Champions**       | These are the most recently active, frequent, and valuable customers. They are the strongest customer group and an important source of repeat revenue.       | Protect them with VIP rewards, early access, loyalty benefits, and referral programs.                                            |
| 💚 **Loyal Customers** | These customers purchase regularly and show strong engagement, but may not yet have the highest monetary value.                                              | Increase their value through cross-selling, upselling, bundles, and loyalty programs.                                            |
| 🟠 **At Risk**         | These customers have previously shown good purchase frequency or spending but have not purchased recently. They represent a potential revenue-loss risk.     | Prioritize personalized win-back campaigns, product recommendations, and targeted incentives.                                    |
| 🟡 **Potential Loyal** | These customers have purchased recently but have relatively low or moderate purchase frequency. They have the potential to become long-term loyal customers. | Focus on encouraging the next purchase through personalized recommendations, complementary products, and second-purchase offers. |
| 🔴 **Lost Customers**  | These customers have low recent activity and limited historical purchasing behavior, making them the least engaged segment.                                  | Use low-cost reactivation campaigns and avoid spending heavily unless they show renewed engagement.                              |


## Order Distribution by Country

| Country       | Cancelled | Completed | Processing | Refunded |
| ------------- | --------: | --------: | ---------: | -------: |
| Other         |    19.91% |    19.03% |     24.61% |   20.00% |
| Australia     |    16.06% |    16.33% |     14.77% |   16.67% |
| Canada        |    15.32% |    16.54% |     13.65% |   14.47% |
| United States |    16.52% |    17.02% |     12.13% |   10.93% |
| Germany       |     9.06% |    10.89% |     11.19% |   10.75% |
| Japan         |     9.52% |     6.58% |      8.28% |    9.26% |
| France        |     6.76% |     7.58% |      7.61% |   10.93% |
| UK            |     6.78% |     6.98% |      7.76% |    6.89% |

Order performance varies meaningfully by country. Australia, Canada and the US appear to be important markets, while Japan shows a relatively higher cancellation contribution and France shows a relatively higher refund contribution. The "Other" category is also large enough to warrant deeper geographic analysis. Management should investigate the reasons for cancellations and refunds by market and prioritize operational improvements where the gap between successful and unsuccessful orders is largest.

## Recomendation

RFM Analysis Reveals the Next Opportunity

Your RFM analysis identifies:

🏆 Champions
Recent + frequent + high-value customers.
Action: Retain and reward.

💚 Loyal Customers
Frequent customers with strong engagement.
Action: Cross-sell and upsell.

🟡 Potential Customers
Recent customers who haven't purchased frequently enough.
Action: Encourage the second/third purchase.

🟠 At-Risk Customers
Previously valuable customers who haven't purchased recently.
- Action: Win them back.

🔴 Lost Customers
Low engagement and low historical value.
- Action: Low-cost reactivation or reduce marketing priority

- A customer who purchased 4 times and spent $25K but hasn't purchased for 170 days is much more valuable to reactivate than a customer who purchased once for $500.

Action: 
Build a dedicated: High-Value Customer Win-Back Program
Target: High Frequency, High Monetary, Low Recency

with:
Personalized recommendations
Product launch notifications
Cross-sell offers
WhatsApp/email campaigns
Loyalty benefits
Limited incentives

In One Line: Retain Champions and Loyal Customers, while using targeted win-back campaigns to reactivate high-value At-Risk customers and convert new customers into repeat buyers.
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------

# Ads Campaign & Traffic Analysis

![Ads Campaign & Traffic](https://github.com/syed-masoom/Complete-Data-Analysis-Project/blob/main/2.%20Ads%20Campaign%20&%20Traffic%20Dashboard.png?raw=true)

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
| **Organic Revenue / Net Revenue**        |  **$5.15M / $1.61M** |
| **Total Net Revenue**                    |  **$3.33M**          |
| **Net Profit**                           | **$1.12M**           |

- The business recieving the significant amount of traffic 5.00K almost 50% organic and 50% paid ads campaign with 53.66% of conversion rate and almost 50% bounce rate.

- The the organic and paid channel also contributing 50% organic and 50% paid with around 1.38K orders comes organically and 1.30K orders comes from paid ads

- total Ads Spent is $250.68K across all the channel Instagram, facebook, google, email marketing and refferal with 6.87x ROAS with $1.72 Million Net attributed Revenue generated from this Ads camapign.

- We recieved around $10 million of orders from across all the channel in which $4.4 Million comes from paid ads and almost $5.15 Million come from organic but the net revenue we generated is only $3.33 Million which is around 34% of total orders. this because of high cancellation and refund rate

- $4.92 Million Revenue comes from Ads Campaign shows in the dashboard but the Net Revenue is  only $1.72 Million when we look this on the order status filter this will show complete picture of all the orders

- This is clearly showing the business is performing well organically is slightly more than paid but the biggest concern is 50% bounce rate and high order failed rate if we improve our order success rate this will more valuable than only spend on Ads campaign.

- Conclusion: The business shouldn't rely only on paid acquisition; organic acquisition is already contributing strongly. Organic is therefore slightly more efficient in converting traffic into orders.

## Ads Spent on Platform

| Channel                 |    Amount  | Percentage      |
| ----------------------- | ---------- | --------------: |
| **Instagram Ads**          |  **$96,364** | **38.44%** |
| **Email Marketing**        | **$44,920**  | **17.92%** |
| **Facebook Ads**           |  **$43,931** | **17.52%** |
| **Google Ads**             |  **$39,315** | **15.68%** |
| **Referral**               |  **$26,154** | **10.43%** |

- We Spent maximum on Instagram Ads $96,364 almost 38.44% of total amount of total Ad spend
- On Email Marketing $44,920 almost 17.92% of total
- $43,931 on Facebook Ad almost 17.52% of total
- $39,315 on Google Ads 15.68% of total
- $26.154 on Referral 10.43% of total

- Conclusion: Instagram is the biggest paid channel, so it deserves close monitoring to make sure its high spend is also producing proportionally strong revenue and conversions.

## Ad Spent by Campaign type

We run Ads campaign based on the multiple discount type campaign on across different channels we launch Ads campaign for specific discount campaign like

## Traffic Vs Order Vs Bounce by Channel

| Channel                |  Traffic % of Total | Conversion % of Total | Revenue % of Total | Order Success Rate |
| ---------------------- | ------------------- | --------------------- | ------------------ | -----------------: |
| **Organic**            |  **50.88%**         |     **51.40%**        |    **51.13%**      |     **16.92%**     |
| **Instagram Ads**      |  **14.68%**         |     **13.53%**        |    **13.98%**      |     **4.29%**      |
| **Google Ads**         |  **10.08%**         |     **9.28%**         |    **10.29%**      |     **3.35%**      |
| **Facebook Ads**       |  **9.90%**          |     **10.10%**        |    **8.59%**       |     **3.32%**      |
| **Referral**           |  **9.44%**          |     **10.55%**        |    **10.64%**      |     **3.73%**      |
| **Email Marketing**    |  **5.02%**          |     **5.14%**         |    **5.36%**       |     **1.98%**      |

- 50% of traffic comes from organically without spending any amount on Ads campaign and almost 50% of traffic come from all the Ads campaign which include Instagram, Facebook, Google, Email Marketing and Referral

- If we don't spend on the Ads Campaign still we can do well, The biggest concern is that 33% order success rate  we are recieving decent amount orders but almost around 60% - 70% is our order unsuccess rate

- If we do further deep dive analysis to diagnose why our orders has 33% success rate and 60 - 70% unsuccess rate and works on the improvement of order success rate this can become massive win for business

- Instead of running discount Ads campaign we have to run our campaign based on the customer target who have placed the but cancelled, refunded we have target those customer by giving extra discount with best shopping experience can more valueable than spending on discount Ads campaign

- Conclusion: There is an opportunity to improve landing pages, product pages and the checkout journey to convert more of the existing traffic.

## Traffic Vs Order by Device

| Channel          |  Traffic % of Total | Conversion % of Total |  Order Success Rate |
| ---------------- | ------------------- | --------------------- |  -----------------: |
| **Tablet**       |  **50.88%**         |     **51.40%**        |     **16.92%**      |
| **Desktop**      |  **14.68%**         |     **13.53%**        |     **4.29%**       |
| **Mobile**       |  **10.08%**         |     **9.28%**         |     **10.29%**      |

- Takeaway: The mobile shopping experience should be a priority because mobile is already generating strong order performance.


## 🎯 Conclusion

- The business have Healthy Acquisition Mix for paid - organic 50/50. That's positive The business isn't completely dependent on paid advertising.

- Company have to focus on reducing the bounce rate of 49.78% by finding the root cause behind bounce and failed orders this can add the more value to the business.

- focus on: Mobile UX, Landing pages, Product pages, Checkout, Payment experience and Trust signals. goal reduce bounce rate and failed order rate

- Comapny should not rely on paid ads. Because organic channel is also performing the well than paid. Paid should invest on past customers like at risk customers and lost who have added some value to our business in past but they are comming back to buy from us.


In One Line: Shift marketing budget toward channels and campaigns that generate the highest profitable returns, while improving website conversion and reducing bounce rate.

## Business Summary
The business has a healthy acquisition mix and strong advertising returns, with organic traffic performing slightly better than paid traffic in order generation. However, marketing spend is concentrated heavily on Instagram and promotional campaigns, so these investments should be evaluated against revenue and profitability rather than spend alone. The ~50% bounce rate also indicates room to improve the website experience and conversion journey. Overall, the strongest growth opportunity is to improve traffic quality and conversion efficiency while reallocating marketing budget toward campaigns and channels that generate the highest profitable customer value.

- Overall Ads and Traffic is look perfect but Ads can be make more profitable and gigh revenue generator
- The biggest concern is the low as 50% Conversion rate this can be more better and this can also improve our customers and also helps us to retain customer for long term and increase repeat purchase and the overall business can be improve by which 

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------

## 🎯 Final Business Recommendation

- Don't increase marketing spend aggressively yet. First fix the leakage in the existing sales funnel.

- The business already has: Strong demand + strong repeat customers + meaningful marketing returns.

- The biggest issue is: Too much value is being lost after orders are generated.

Therefore, the priority should be:

1. Reduce cancellations and refunds

↓

2. Increase completed orders

↓

3. Reactivate high-value At-Risk customers

↓

4. Improve website conversion

↓

5. Optimize marketing toward profitable channels

↓

6. Scale high-margin products and customer segments
Executive Conclusion

The D2C electronics business has a solid foundation for growth, with $10.06M in order value, $1.12M in net profit, a 78.64% repeat purchase rate, and a balanced paid-organic acquisition mix. However, the analysis reveals substantial revenue leakage through cancellations and refunds, making order completion the most immediate growth opportunity. The business should prioritize fixing operational and customer-experience issues, while using RFM segmentation to protect high-value customers and targeted marketing to reactivate at-risk customers. At the same time, marketing budgets should be allocated based on profitable customer acquisition rather than spend or revenue alone.
