-- =======================================================================================================================
-- DATABASE Creation
-- =======================================================================================================================

CREATE DATABASE Estore;

USE Estore;

SELECT * FROM Orders;

SHOW VARIABLES LIKE 'secure_file_priv';

TRUNCATE TABLE Orders;

-- =======================================================================================================================
-- CRAETE TABLE : Orders, Products, Customers, Campaign and Traffic --
-- =======================================================================================================================
DROP TABLE Orders;

-- Creating Order Table --

CREATE TABLE Orders
	(order_id VARCHAR(20),
	customer_id VARCHAR(20),
	product_id VARCHAR(20),
	session_id VARCHAR(20),
	order_date DATE NULL,
	quantity INT,
    unit_selling_price DOUBLE,
    total_amount DOUBLE,
	order_status VARCHAR(10)
);

-- Creating Product Table --

CREATE TABLE Products
	(product_id VARCHAR(20),
	product_name VARCHAR(60),
	brand VARCHAR(20),
	category VARCHAR(20),
	selling_price DOUBLE,
	cost DOUBLE,
	stock_quantity INT,
	average_rating DOUBLE
);

-- Creating Customer Table --

CREATE TABLE Customers
	(customer_id VARCHAR(20),
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	email VARCHAR(50),
	country VARCHAR(20),
	signup_date DATE 
);

-- Creating Campaign Table --

DROP TABLE Campaigns;
CREATE TABLE Campaign
	(campaign_id VARCHAR(20),
	campaign_name VARCHAR(20),
	cam_channel VARCHAR(20),
	start_date DATE,
	end_date DATE,
	ad_spend DOUBLE
);

-- Creating Traffic Table --

DROP TABLE Traffic;
CREATE TABLE Traffic
	(session_id VARCHAR(20),
	customer_id VARCHAR(20),
	campaign_id VARCHAR(20),
	visit_date DATE,
	device_type VARCHAR(20),
	duration_sec INT ,
	bounced VARCHAR(10)
);

-- ==========================================================================================================
-- LOAD DATA in Table --
-- ==========================================================================================================

LOAD DATA INFILE '"C:\Users\masoo\OneDrive\Documents\1. Portfolio Projects\End2End Data Analysis\Orders.csv"'
INTO TABLE Orders
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- ==========================================================================================================
-- ORDER TBALE : Data Accuarcy and Quality Check --
-- ==========================================================================================================

-- Checking Duplicate Orders in Order Table --

WITH DuplicateOrders AS (
SELECT
	order_id,
    COUNT(order_id) AS Duplicateorder
FROM Orders
GROUP BY order_id
HAVING COUNT(order_id) > 1
)
	SELECT COUNT(*) AS Total_Duplicate FROM DuplicateOrders; -- 100 Duplicate --
    
    -- Another Method Using Windows function --

WITH Duplicate_Orders AS (
	SELECT
		order_id,
        COUNT(*) OVER(PARTITION BY order_id) AS Duplicate_Orders
	FROM orders
)
	SELECT 
		order_id,
        COUNT(*) FROM Duplicate_Orders
        GROUP BY order_id
    HAVING COUNT(*) > 1;
    
-- ==============================================================================================================
    -- Removing Duplicate Orders From Order Table --

DELETE FROM Orders
	WHERE order_id IN (
    SELECT order_id FROM (
		SELECT
			order_id,
			COUNT(order_id) AS Duplicateorder
FROM Orders
GROUP BY order_id
HAVING COUNT(order_id) > 1) AS d);

-- ===========================================================================================================
-- Checking Extra Spaces in Order ID ( Because Extra Spaces can give the duplicate of same Order ID --

SELECT
	order_id,
    LENGTH(order_id) AS Len,
    LENGTH(TRIM(order_id)) AS Trim_Len
FROM orders
WHERE LENGTH(order_id) > LENGTH(TRIM(order_id)); -- No Extra Spaces Found --

-- ===========================================================================================================
-- Removing Extra Spaces from Order Status Column --

UPDATE orders
	 SET order_status = TRIM(order_status);
     
-- ===========================================================================================================
    -- Changing Order Status Column Data to Proper Case --

UPDATE orders
	SET order_status = 
    CONCAT(
    UPPER(LEFT(order_status,1)),
    LOWER(SUBSTRING(order_status,2)));
    
-- ===========================================================================================================================
-- Converting Session ID Blanks Data to Null --

UPDATE orders
	SET session_id = NULL
    WHERE session_id LIKE  "";

SELECT * FROM orders;

-- ============================================================================================================
-- PRODUCT TABLE : Transformation and Cleaning Product Table --
-- ============================================================================================================

-- Checking Duplicate in Products Table --

SELECT
	product_id,
    COUNT(product_id)
FROM products
GROUP BY product_id
HAVING product_id > 1; -- No Duplicate Found --

-- ==============================================================================================================
-- Checking Extra Spaces in Product ID --

SELECT
	product_id,
    LENGTH(product_id) AS Len,
    LENGTH(TRIM(product_id)) AS Trim_Len
FROM products
WHERE LENGTH(product_id) > LENGTH(TRIM(product_id));

-- ==============================================================================================================
-- CUSTOMER TABLE : Transformatio and Cleaning in Customers Table --
-- ==============================================================================================================

-- Checking Duplicate in Customer Table --

WITH Duplicate_Cust AS (
SELECT
	customer_id,
    COUNT(customer_id) AS Dup_Cust
FROM customers
GROUP BY customer_id
HAVING COUNT(customer_id) > 1
)
	SELECT COUNT(*) AS Duplicate_Cust FROM Duplicate_Cust; -- 50 Duplicate Found --

-- ========================================================================================================================
-- Deleting Duplicate From Customer Table --


-- ========================================================================================================================
-- Checking Extra Spaces in Customer ID --

SELECT
	customer_id,
    LENGTH(customer_id) AS Len,
    LENGTH(TRIM(customer_id)) AS Trim_Len
FROM customers
WHERE LENGTH(customer_id) > LENGTH(TRIM(customer_id));

-- ========================================================================================================================
-- Check Extra Spaces in the Customers Table --

SELECT
	customer_id,
	LENGTH(customer_id) AS len_th
    -- TRIM(LENGTH(customer_id)) AS trim_Len
FROM Customers
WHERE LENGTH(customer_id) >  TRIM(LENGTH(customer_id));

-- ========================================================================================================================
-- Check Extra Spaces in First Name and Last Name --

SELECT
	first_name,
    LENGTH(first_name) AS First_Len,
    LENGTH(TRIM(first_name)) AS Trim_First_Name,
    last_name,
    LENGTH(last_name) AS Last_Len,
    LENGTH(TRIM(last_name)) AS Trim_Last_Name
FROM customers
GROUP BY first_name, last_name;

-- ========================================================================================================================
-- Removing Extra Spaces from Customers First Name and Last Name --

UPDATE customers
	SET first_name = TRIM(first_name),
    last_name = TRIM(last_name);

COMMIT;

-- ========================================================================================================================
-- Converting First Name and Last Name and Converting to Proper Case --

SELECT
	CONCAT(
    UPPER(LEFT(first_name,1)),
    LOWER(SUBSTRING(first_name,2)), ' ',
    UPPER(LEFT(last_name,1)),
    LOWER(SUBSTRING(last_name,2))) AS Full_Name
FROM customers;


START TRANSACTION;

ROLLBACK;

SELECT * FROM customers;
-- ========================================================================================================================
-- Changing Country Column Data in Proper Case --

SELECT COUNT(*) FROM (
SELECT DISTINCT(country) FROM Customers) AS C;

SELECT COUNT(DISTINCT country) FROM customers;

UPDATE customers
SET Country =
			CASE WHEN country LIKE "US%" THEN "United State"
            WHEN country LIKE "Germany%" THEN "Germany"
            WHEN country LIKE "Japan%" THEN "Japan"
            WHEN country LIKE "CAN%" THEN "Canada"
            WHEN country LIKE "AUS%" THEN "Australia"
            WHEN country LIKE "UK%" THEN "UK"
            WHEN country LIKE "France%" THEN "France"
            END;

-- ==================================================================================================================
--  TRAFFIC TABLE : Transformation and Cleaning Data in Traffic Table --
-- ==================================================================================================================

-- Checking Dupicate in Traffic Table --

SELECT
	session_id,
    COUNT(session_id) AS Dup_Traffic
FROM Traffic
GROUP BY session_id
HAVING COUNT(session_id) > 1; -- No Duplicate Found --

-- ===================================================================================================================
-- Checking Extra Spaces in Traffic Table Session ID Column --

SELECT
	session_id,
    LENGTH(session_id) AS Len,
    LENGTH(TRIM(session_id)) AS Trim_Len
FROM traffic
WHERE LENGTH(session_id) > LENGTH(TRIM(session_id));

-- ===================================================================================================================
-- Converting Device Types column Data in Proper Case --

SELECT 
	DISTINCT device_type
FROM traffic;

UPDATE traffic
	SET device_type =
    CASE WHEN device_type LIKE "Desk%" THEN "Desktop"
    WHEN device_type LIKE "Tablet%" THEN "Tablet"
    WHEN device_type LIKE "%ob%" THEN "Mobile"
    END;

-- ==============================================================================================================
-- Converting Campaign ID coolumn Blanks Data to Null --

SELECT * FROM traffic WHERE campaign_id IS NULL;

UPDATE traffic
	SET campaign_id = NULL 
    WHERE campaign_id LIKE "";
    
    SELECT COUNT(*) FROM (
SELECT DISTINCT campaign_id FROM traffic) c;

-- ===============================================================================================================
-- Converting Customer_ID Blanks Data to NULL --

UPDATE traffic
	SET customer_id = NULL 
    WHERE customer_id LIKE "";

-- ===================================================================================================
-- Converting Blank Customer ID to Null --

SELECT * FROM traffic WHERE customer_id IS NULL;

UPDATE traffic
	SET customer_id = NULL 
    WHERE customer_id LIKE "";

SELECT * FROM traffic;

-- ===================================================================================================
