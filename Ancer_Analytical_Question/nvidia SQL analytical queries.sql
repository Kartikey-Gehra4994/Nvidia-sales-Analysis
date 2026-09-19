-- create database Nvidia;
-- use nvidia;

-- Module 1: Revenue & Product Performance
-- Question 1.1: What is the total Revenue, Net Revenue, and Units Sold by Region and Product Category?
select region, 
product_category, count(*) as total_transactions,
sum(units_sold) as total_units_sold, 
round(sum(sales_revenue), 2) as gross_revenue,
round(sum(sales_revenue * (1 - (return_rate / 100))), 2) as net_revenue
from nvidia_sales group by region, `product_category` order by net_revenue desc;

-- Question 1.2: Identify the Top 5 Performing Products by Average Net Revenue per Transaction.
select product_name, product_category,
round(avg(sales_revenue * (1 - (return_rate / 100))), 2) as avg_net_revenue,
round(avg(sales_revenue / units_sold), 2) as avg_selling_price
from nvidia_sales group by product_name, product_category
order by avg_net_revenue desc limit 5;

-- Module 2: Marketing ROI & Campaign Efficiency
-- Question 2.1: What is the Marketing ROI and Ad Effectiveness score per Product Category?
select product_category, 
round(sum(sales_revenue), 2) as total_revenue,
round(sum(marketing_spend), 2) as total_marketing_spend,
ROUND(
        (SUM(sales_revenue) - SUM(marketing_spend)) / SUM(marketing_spend), 
        2
    ) AS marketing_ROI,
round(avg(ad_campaign_effectiveness), 2) as avg_ad_effectiveness
from nvidia_sales group by product_category order by marketing_ROI;

-- Question 2.2: Do higher discount percentages result in higher product return rates?
select case
	when discount_percentage < 5 then "0-5% Low"
    when discount_percentage between 5 and 15 then "5-15% Medium"
    else "15%+ High"
End discount_tier,
count(*) as total_order,
round(avg(return_rate), 2) as avg_return_rate,
round(avg(customer_satisfaction), 2) as avg_customer_satisfaction
from nvidia_sales group by discount_tier order by Avg_Return_Rate desc;

-- Module 3: Customer Intelligence & AI Adoption
-- Question 3.1: How does AI/ML Adoption Rate impact Customer Retention and Revenue?
select customer_segment,
round(avg(ai_ml_adoption_rate), 2) as Avg_AI_Adoption,
round(avg(customer_retention_rate), 2) as Avg_retention_rate,
round(avg(customer_satisfaction), 2) as Avg_satisfaction,
round(sum(sales_revenue), 2) as total_segment_revenue
from nvidia_sales group by customer_segment order by Avg_AI_Adoption desc;

-- Module 4: Advanced SQL (Window Functions for Executive Metrics)
-- Question 4.1: Rank Regions by Net Revenue within each Product Category using DENSE_RANK().
with Regional_Category_Revenue as (
	select product_category, region,
    round(sum(sales_revenue * (1 - (return_rate / 100))), 2) as Net_Revenue
    from nvidia_sales group by product_category, region
)
select product_category, region, Net_Revenue,
dense_rank() over(partition by product_category order by Net_Revenue desc) as Regional_Rank
from Regional_Category_Revenue;

-- Question 4.2: Calculate the Month-over-Month (MoM) Revenue Growth Trend using LAG().
with Monthly_Sales as (
	select date_format(date, "%y-%m") as _Year_Month,
    round(sum(sales_revenue), 2) as monthly_revenue
    from nvidia_sales group by date_format(date, "%y-%m") 
)
select _Year_Month, monthly_revenue,
lag(monthly_revenue, 1) over(order by _Year_Month) as Prev_Month_Revenue,
round(
	((monthly_revenue - lag(monthly_revenue, 1) over(order by _Year_Month)) / 
    lag(monthly_revenue, 1) over(order by _Year_Month)) * 100
    , 2) as MoM_Growth_Percentage
from Monthly_Sales;