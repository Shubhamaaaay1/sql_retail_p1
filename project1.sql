use sql_project;
alter table csvjson
rename to retail_sales;
select count(*) from retail_sales
WHERE cogs is not null;
    transactions_id IS NULL
    OR sale_date IS NULL
    OR sale_time IS NULL
    OR gender IS NULL
    OR category IS NULL
    OR quantiy IS NULL
    
    OR total_sale IS NULL;
    set sql_safe_updates=0;
    SELECT count(*) FROM retail_sales;
WHERE customer_id IN ('64', '42', '137');
delete FROM retail_sales
WHERE 
    transactions_id IS NULL
    OR sale_date IS NULL
    OR sale_time IS NULL
    OR gender IS NULL
    OR category IS NULL
    OR quantiy IS NULL OR quantiy = ''
    OR cogs IS NULL OR cogs = ''
    OR total_sale IS NULL;
select count(distinct customer_id) from retail_sales;
alter table retail_sales
change quantiy quantity int;
SELECT *
FROM retail_sales
WHERE 
    category = 'Clothing'
    AND DATE_FORMAT(sale_date, '%Y-%m') = '2022-11'
    AND quantity >= 4;

select category,avg(age) 
from retail_sales
where category="beauty"
group by category;

select category,gender,count(*)
from retail sales 
group by category,gender
order by category,gender desc;
select year(sale_date) from retail_sales;

SELECT * FROM (
    SELECT 
        YEAR(sale_date) AS year,
        MONTH(sale_date) AS month,
        AVG(total_sale) AS avg_sale,
        RANK() OVER (PARTITION BY YEAR(sale_date) ORDER BY AVG(total_sale) DESC) AS sale_rank
    FROM retail_sales
    GROUP BY year,month
) AS ranked_sales
WHERE sale_rank = 1;

select customer_id,sum(total_sale) as sum from retail_sales group by customer_id
order by sum desc limit 5;
select count(distinct customer_id),category
from retail_sales 
group by category;
SELECT 
    CASE
        WHEN HOUR(sale_time) < 12 THEN 'Morning'
        WHEN HOUR(sale_time) BETWEEN 12 AND 17 THEN 'Afternoon'
        ELSE 'Evening'
    END AS shift,
    COUNT(*) 
FROM retail_sales
GROUP BY shift;
