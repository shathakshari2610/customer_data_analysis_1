SELECT * FROM project_customer_segmentation.customer;
USE project_customer_segmentation;
select * from customer LIMIT 10;
describe customer;
SELECT COUNT(*) AS total_records FROM customer;
SELECT DISTINCT gender FROM customer;
SELECT DISTINCT category FROM customer;
SELECT DISTINCT payment_method FROM customer;
SELECT DISTINCT shopping_mall FROM customer;

SELECT gender,
    COUNT(*) AS total_transactions,
    SUM(quantity) AS total_products_sold,
    ROUND(SUM(quantity * price), 2) AS total_revenue
FROM customer
GROUP BY gender;

SELECT
    MIN(age) AS youngest_age,
    MAX(age) AS oldest_age,
    COUNT(DISTINCT age) AS unique_ages
FROM customer;

SELECT
    CASE
        WHEN age BETWEEN 18 AND 25 THEN '18-25'
        WHEN age BETWEEN 26 AND 35 THEN '26-35'
        WHEN age BETWEEN 36 AND 45 THEN '36-45'
        WHEN age BETWEEN 46 AND 55 THEN '46-55'
        ELSE '56+'
    END AS age_group,
    COUNT(*) AS total_transactions,
    SUM(quantity) AS total_products_sold,
    ROUND(SUM(quantity * price), 2) AS total_revenue
FROM customer
GROUP BY age_group
ORDER BY MIN(age);

SELECT
    CASE
        WHEN age BETWEEN 18 AND 25 THEN '18-25'
        WHEN age BETWEEN 26 AND 35 THEN '26-35'
        WHEN age BETWEEN 36 AND 45 THEN '36-45'
        WHEN age BETWEEN 46 AND 55 THEN '46-55'
        ELSE '56+'
    END AS age_group,
    COUNT(*) AS total_transactions,
    SUM(quantity) AS total_products_sold,
    ROUND(SUM(quantity * price), 2) AS total_revenue
FROM customer
GROUP BY age_group
ORDER BY MIN(age);

SELECT
    CASE
        WHEN age BETWEEN 18 AND 25 THEN '18-25'
        WHEN age BETWEEN 26 AND 35 THEN '26-35'
        WHEN age BETWEEN 36 AND 45 THEN '36-45'
        WHEN age BETWEEN 46 AND 55 THEN '46-55'
        ELSE '56+'
    END AS age_group,
    category,
    COUNT(*) AS total_transactions,
    SUM(quantity) AS total_products_sold,
    ROUND(SUM(quantity * price), 2) AS total_revenue
FROM customer
GROUP BY age_group, category
ORDER BY MIN(age), category;

SELECT
    payment_method,
    gender,
    COUNT(*) AS total_transactions,
    SUM(quantity) AS total_products_sold,
    ROUND(SUM(quantity * price), 2) AS total_revenue
FROM customer
GROUP BY payment_method, gender
ORDER BY payment_method, gender;

SELECT
    payment_method,
    CASE
        WHEN age BETWEEN 18 AND 25 THEN '18-25'
        WHEN age BETWEEN 26 AND 35 THEN '26-35'
        WHEN age BETWEEN 36 AND 45 THEN '36-45'
        WHEN age BETWEEN 46 AND 55 THEN '46-55'
        ELSE '56+'
    END AS age_group,
    COUNT(*) AS total_transactions,
    SUM(quantity) AS total_products_sold,
    ROUND(SUM(quantity * price), 2) AS total_revenue
FROM customer
GROUP BY payment_method, age_group
ORDER BY payment_method, age_group;

SELECT
    payment_method,
    category,
    COUNT(*) AS total_transactions,
    SUM(quantity) AS total_products_sold,
    ROUND(SUM(quantity * price), 2) AS total_revenue
FROM customer
GROUP BY payment_method, category
ORDER BY payment_method, category;

SELECT
    payment_method,
    COUNT(*) AS total_transactions,
    SUM(quantity) AS total_products_sold,
    ROUND(SUM(quantity * price), 2) AS total_revenue
FROM customer
GROUP BY payment_method
ORDER BY total_transactions DESC;