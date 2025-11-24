SELECT *
FROM customer
LIMIT 20;
-- Which product categories generate the highest total revenue?
SELECT 
    category,
    SUM(purchase_amount) AS total_revenue
FROM 
    customer
GROUP BY 
    category
ORDER BY 
    total_revenue DESC;


-- What is the average purchase amount by gender?
SELECT gender, avg(purchase_amount) AS Average_purchase_Amount
FROM customer
GROUP BY gender 
ORDER BY Average_purchase_Amount DESC;


-- Which locations have the highest number of customers?
SELECT 
    location,
    COUNT(DISTINCT customer_id) AS customer_count
FROM 
    customer
GROUP BY 
    location
ORDER BY 
    customer_count DESC;


-- What are the top payment methods by total sales value?
SELECT 
    payment_method,
    SUM(purchase_amount) AS total_sales_value
FROM 
    customer
GROUP BY 
    payment_method
ORDER BY 
    total_sales_value DESC;


-- Does subscription status influence average spending?
SELECT subscription_status, avg(purchase_amount) AS average_spending
FROM customer
GROUP BY subscription_status
ORDER BY average_spending DESC;

-- Which age group buys the highest number of items?
SELECT age_group, count(*) AS number_of_items_purchased
FROM customer
GROUP BY age_group
ORDER BY number_of_items_purchased DESC;

-- What is the average review rating for each product category?
SELECT category, AVG(review_rating) AS average_review_rating
FROM customer
GROUP BY category
ORDER BY average_review_rating DESC;

-- How many customers received a discount, and how does their average spending compare to those without discounts?
SELECT 
    discount_applied,
    COUNT(DISTINCT customer_id) AS customer_count,
    AVG(purchase_amount) AS average_spending
FROM 
    customer
GROUP BY 
    discount_applied;


-- Which shipping type has the highest usage?
SELECT shipping_type, COUNT(DISTINCT customer_id) as customers
FROM customer
GROUP BY shipping_type
ORDER BY customers DESC;

-- What is the relationship between previous purchases and average purchase amount (do frequent buyers spend more)?
SELECT previous_purchases, AVG(purchase_amount) AS average_purchase_amount
FROM customer
GROUP BY previous_purchases
ORDER BY previous_purchases DESC;