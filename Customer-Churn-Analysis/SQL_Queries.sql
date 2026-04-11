use project;
select * from mytable;

select count(*) from mytable;
select churn, count(*) from mytable group by churn;

SELECT contract_type, 
COUNT(*) AS total_customers,
SUM(CASE WHEN churn='Yes' THEN 1 ELSE 0 END) AS churn_count
FROM mytable
GROUP BY contract_type;

SELECT payment_method,
COUNT(*) AS total,
SUM(CASE WHEN churn='Yes' THEN 1 ELSE 0 END) AS churned
FROM mytable
GROUP BY payment_method;

SELECT 
(SUM(CASE WHEN churn='Yes' THEN 1 ELSE 0 END)*100.0)/COUNT(*) AS churn_rate
FROM mytable;


