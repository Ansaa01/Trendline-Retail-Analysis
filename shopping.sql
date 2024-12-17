-- Identifying null values in key metrics --
SELECT *
FROM 
    projects_on_sql.shopping_behavior
WHERE 
	`Purchase Amount (USD)` IS NULL 
	OR `Customer Lifetime Value` IS NULL
	OR `Frequency of Purchases` IS NULL;
 
 -- Identifying duplicate records based on 'Customer ID' and 'Customer Lifetime Value' --
 WITH duplicate_cte AS
(
SELECT *,
	 ROW_NUMBER() OVER(
        PARTITION BY `Customer ID`,`Customer Lifetime Value`
        ) AS row_num
FROM 
     projects_on_sql.shopping_behavior
)
SELECT *
FROM 
	 duplicate_cte 
WHERE 
	 row_num > 1;


-- Detecting Outliers in Age --
SELECT *
FROM 
      projects_on_sql.shopping_behavior
WHERE 
	  age < 0 OR age > 120;

-- Validating location standardization consistency --
SELECT 
       `Location`,
	   COUNT(*) AS occurrences
FROM 
       projects_on_sql.shopping_behavior
GROUP BY 
       `Location`
ORDER BY
	   occurrences DESC;


-- Analysis of shipping types across subscription statuses contributing the most to CLV -- 
WITH ShippingTotals AS (
    SELECT 
        `Shipping Type`, 
        SUM(`Customer Lifetime Value`) AS Grand_Total
    FROM
        projects_on_sql.shopping_behavior
    GROUP BY 
        `Shipping Type`
	
)
SELECT 
    sb.`Subscription Status`, 
    sb.`Shipping Type`,
    ROUND(AVG(sb.`Customer Lifetime Value`), 2) AS Avg_CLV
FROM
    projects_on_sql.shopping_behavior sb
JOIN 
    ShippingTotals st
    ON sb.`Shipping Type` = st.`Shipping Type`
WHERE 
    st.`Shipping Type` IN ('2-Day Shipping', 'Express', 'Free Shipping', 'Next Day Air', 'Standard', 'Store Pickup')
GROUP BY 
    sb.`Subscription Status`, 
    sb.`Shipping Type`
ORDER BY 
    st.Grand_Total DESC
LIMIT 8;


-- Items with below-average review ratings compared to overall item ratings --
SELECT 
    `Item Purchased`, 
    `Subscription Status`,
	ROUND(AVG(`Review Rating`), 2) AS Avg_Review
FROM 
	projects_on_sql.shopping_behavior
GROUP BY 
    `Item Purchased`,
	`Subscription Status`
HAVING 
     AVG(`Review Rating`) < 3.75;

-- Retention Rate analysis by Age Bracket, Gender, and Customer Status --
SELECT 
    `Age Bracket`,
    `Gender`,
    COUNT(CASE WHEN `Customer Type` = 'Retained Customer' THEN 1 END) AS Retained_Customers,
    COUNT(*) AS Total_Customers,
    ROUND(
	(COUNT(CASE WHEN `Customer Type` = 'Retained Customer' THEN 1 END) * 100.0) / COUNT(*), 
        2
    ) AS Retention_Rate_Percentage
FROM 
	projects_on_sql.shopping_behavior
GROUP BY 
    `Age Bracket`, `Gender`
ORDER BY 
    `Age Bracket`, `Gender`;

-- Top-performing promo codes and their high-impact locations driving discounts--
SELECT 
    `Location`, 
    `Promo Code Used`, 
    COUNT(`Discount Applied`) AS Discount_Count
FROM 
    projects_on_sql.shopping_behavior
WHERE 
    `Discount Applied` = 'Yes'  
GROUP BY 
    `Location`, 
    `Promo Code Used`
ORDER BY 
    Discount_Count DESC
LIMIT 15;

-- Average Customer Lifetime Value (CLV) by product category and season --
SELECT 
    `category`,
    `Season`,
    ROUND(AVG(`Customer Lifetime Value`), 2) AS `avg_clv`
FROM 
    `projects_on_sql`.`shopping_behavior`
GROUP BY 
    `category`,
    `Season`
ORDER BY 
    `Season`,
    `category`;
    
-- Identifying the product category with the highest overall customer value (CLV) --
SELECT 
    shopping_behavior.`category`,
    ROUND(AVG(shopping_behavior.`Customer Lifetime Value`), 2) AS Avg_Customer_Lifetime_Value
FROM 
    projects_on_sql.shopping_behavior
GROUP BY 
    shopping_behavior.`category`
ORDER BY 
    Avg_Customer_Lifetime_Value DESC
LIMIT 4;
