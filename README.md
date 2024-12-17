#Trendline Retail Solutions Analysis

> To explore more of my projects and follow my data journey, visit my [Portfolio](https://ansaa01.github.io/Afua-Ansaa.github.io/index.html).
<details>
<summary>Table of Contents</summary>

Table of Contents

- [Project Background](#project-background)
- [Executive Summary](#executive-summary)
- [Insights Deep-Dive](#insights-deep-dive)
    - [Customer Lifetime Value (CLV) and Purchase Frequency Trend](#Customer-Lifetime-Value-(CLV)-and-Purchase-Frequency-Trend)
    - [Review Ratings Trend](#Review-Ratings-Trend)
    - [Retention Rate Trend](#Retention-Rate-Trend)
    - [Promo Codes, Distance and Location Trend](#Promo-Codes-Distance-and-Location-Trend)
- [Actionable Recommendations](#actionable-recommendations)
- [Recommendations](#recommendations)
- [Assumptions and Caveats](#assumptions-and-caveats)

</details>


## Project Background

Trendline Retail Analysis, a global e-commerce company founded in 2015, specializes in specializes in fashion and lifestyle products.

Founded in 2015, Trendline Retail Solutions specializes in fashion and lifestyle products, like clothing and accessories, and operates as a leading e-commerce platform with an expanding network of physical stores. I collaborate closely with the Product Management Team and Customer Experience Team to understand customer lifetime value (CLV), evaluate product demand, and uncover purchase patterns. These insights help optimize product offerings, enhance the shopping experience, and develop strategies that drive customer engagement and retention.

## Executive Summary**

---

Trendline's Retail Analysis of **39k records** shows a high retention rate of 97.87%, with non-subscribers having higher Customer Lifetime Value (CLV). **Outerwear** drives the highest CLV across all categories, while **Express** and **Store Pickup** shipping types account for **65%** of total purchase value, with non-subscribers representing a majority of this trend. Retention remains strong across age groups, particularly **Senior Males** accounting for **28%** of total retained customers and **Adult Females** contributing **34%.** Trendline can benefit by optimizing subscription offerings, enhancing shipping strategies, and targeting younger age groups   **elevate CLV** and drive **sustainable growth**.

![ERD Table](/data-visualization/ERD.jpg)


## Insights Deep-Dive
SQL is used to answer key stakeholder questions and visualization of the results is done in Excel, enabling more informed and strategic decision-making.


### Customer Lifetime Value (CLV) and Purchase Frequency Trend

 Assuming each customer has a lifespan of 3 years  
 In this scenario, CLV is calculated as: 

 ![CLV Formula](/data-visualization/clv.jpg)

 **Which shipping types, across subscription statuses, contribute the most to Customer Lifetime Value (CLV) ?**

The top 4 shipping types that emerge as the most valuable contributors to Customer Lifetime Value (CLV) across subscription statuses are Express, Store Pickup, 2-Day Shipping and Free Shipping. Notably, subscribers show higher CLV with these shipping types, particularly Express representing 280.45 non-subscribers vs. 202.05 subscribers. This highlights opportunities to enhance the subscription offerings as they currently do not show the same level of effectiveness. Store Pickup stands out with strong CLV for both Yes (250.45) and No (228.23), providing a budget-friendly delivery without shipping expenses.


**Which product category drives the most customer value (CLV) overall?**

Outerwear emerges as the top-performing product category, driving the highest **Customer Lifetime Value (CLV)** at **252**overall. Notably, Outerwear excels in **Spring** (296) and **Fall** (270), highlighting its seasonal appeal. This suggests opportunities to optimize inventory and marketing efforts around these peak seasons to maximize **CLV** further.

### **Review Ratings Trend**

The general average rating across the dataset is 3.75 reflecting a generally good rating for items. However, there were some items that fell below the average rating.

**Which items were rated below-average review ratings compared to the overall item ratings?**

Blouse received a rating of 3.68, lower than the general rating, with non-subscribers at 3.70 and subscribers at 3.58.
Coat and Hoodie have ratings close to the general rating (3.73 and 3.72 respectively), suggesting they are performing reasonably well.
Shirt has the lowest average review rating of 3.63, consistent for both subscription statuses (No: 3.63, Yes: 3.63).

### **Retention Rate Trend**

To calculate the retention rate, we first confirmed that all 3900 customers have made at least one purchase. Customers were then categorized as either "new" (one purchase) or "retained" (multiple purchases).

![Retention Formula](/data-visualization/retention_formula.jpg)

**What is the retention rate analysis by Age Bracket, Gender, and Customer Status?**

Retention rates across age and gender groups show strong loyalty, with Adult Female at 98.56% and Adult Male at 97.39%, both performing well. Senior Male and Senior Female also show high retention. Young Adult Female (97.46%) and Young Adult Male (98.11%) exhibit similar loyalty, though slightly lower. In total, there are 1,481 Adult, 1,178 Senior, and 1,241 Young Adult customers, with a higher number of male customers (2,652) compared to female customers (1,248). 

![Retention Rate](/data-visualization/retention_rate.jpg)

### Promo Codes, Distance and Location Trend

**What are the top-performing promo codes and their high-impact locations that drive discounts?**

Promo code usage across locations shows a balanced adoption and a non-drastic change between "Yes" and "No" promo code usage. With Indiana leading in promo code usage (45 "Yes" vs. 34 "No"), and Nevada showing similar trends (41 "Yes" vs. 46 "No"). Locations like California and Idaho show higher "No" promo code usage, suggesting opportunities to increase promo code adoption.

![Promo Code per location](/data-visualization/promo_codes.jpg)

# Overall Dashboard of Trends
![Dashboard](/data-visualization/dashboard.jpg)


# Recommendations

---

**Maximizing product offerings**

**Outerwear** drives the highest output, with CLV peaking during Spring (296) and Fall (270). Expanding inventory and launching targeted promotions during these seasons will boost CLV, purchase frequency, and retention.

In contrast, the **Clothing** category has the lowest average CLV, with **Blouses** (3.68) and **Shirts** (3.63) underperforming and receiving below-average ratings. Enhancing product quality, design, and offering targeted discounts, along with gathering customer feedback, can prevent dissatisfaction and improve retention.

These efforts will maximize CLV, strengthen retention, and set Trendline apart in a competitive market.

**Loyalty Program Enhancements by implementing progressive loyalty rewards**

The reward system is designed to boost customer engagement and encourage frequent purchases by offering **Express Shipping** as a key benefit in higher loyalty levels, which helps increase Customer Lifetime Value (CLV), especially for non-subscribers (280.45 compared to 202.05 for subscribers). Targeted discounts for **Store Pickup** can also be included, as it shows strong CLV for both subscribers (250.45) and non-subscribers (228.23), making it an affordable and convenient option for regular loyalty members. Additionally, providing early access to top-performing product categories like **Outerwear**, which leads CLV overall (252) and peaks during Spring (296) and Fall (270), will further encourage repeat purchases and loyalty.

**Regional Growth Strategies**

Focus on boosting promo code usage in areas like California and Idaho, where adoption and customer value are low, by improving awareness and accessibility. In regions like Indiana and Nevada, promo code usage is higher, but customer value remains low, suggesting that the issue lies not with the promo codes themselves but with educating customers on how to maximize their benefits.

**Customer Growth and Retention**

Target Young Adults, who make up a significant portion of the customer base (1,241 out of 3,900), with tailored marketing campaigns and rewards. While retention rates for Young Adult Males (97.46%) and Females (98.11%) are strong, personalized offers and membership levels can further encourage repeat purchases. Since young adults are not necessarily working and may have limited income, introduce the **"SmartStart Savings Campaign"**, offering targeted discounts and promo codes to make purchases more accessible and appealing to this demographic.

**Customer Re-Engagement**

Retarget Single-Purchase customers with personalized email and SMS campaigns, highlighting trending products and exclusive offers to drive repeat purchases.

# Clarifying Questions, Assumptions, and Caveats

---

**Questions for Stakeholders Prior to Project Advancement**

- **Unmatched `Customer ID`Records**

Which table should be the primary source for `Customer ID` to ensure consistency across   analyses?

- **Promo Code and Discount Tracking**

How are `Promo Code Used` and `Discount Applied` recorded? Are they linked to individual purchases or broader customer-wide campaigns?

- **Customer Lifetime Value (CLV)**

Does `CLV`  reflect past behavior, future predictions, or both?

- **Subscription Status and Retention:**

What does `Subscription Status` represent? Is it tied to an ongoing service or repeat purchases?

Assumptions and Caveats

- **Promo Code and Discount Ambiguity:**

The link between `Promo Code Used` and `Discount Applied` might be unclear, especially if codes don’t always result in discounts.

- **Retention and CLV:**

High retention may not always correlate with high `CLV` if low-value items are being purchased consistently.

- **Location Data Granularity:**

The `Location` field may be too broad (e.g., state-level) for detailed geographic analysis.

---

- See the raw data and my cleaning, analysis, and pivot tables in this [Excel workbook](https://onedrive.live.com/view.aspx?resid=BCD7177EF7563899!s7c986db9eeec44e0b70e6c607a7cd392&migratedtospo=true&redeem=aHR0cHM6Ly8xZHJ2Lm1zL3gvYy9iY2Q3MTc3ZWY3NTYzODk5L0lRUzViWmg4N083Z1JMY09iR0I2Zk5PU0FUcU1tdGtnclFyOXN5YVBaVlJzTkhB).
- See my SQL queries in the [SQL file](/Exploratory%20Analysis/shopping.sql)
- For more of my projects and data journey, visit my [portfolio website and reach out!](https://ansaa01.github.io/Afua-Ansaa.github.io/index.html)



