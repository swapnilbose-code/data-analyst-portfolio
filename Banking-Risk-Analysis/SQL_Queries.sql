use project_1;
select * from mytable;

SELECT COUNT(*) FROM mytable;
SELECT loan_status, COUNT(*) FROM mytable GROUP BY loan_status;

SELECT grade, COUNT(*) AS total_loans,
SUM(CASE WHEN loan_status = 'Default' THEN 1 ELSE 0 END) AS defaults
FROM mytable
GROUP BY grade order by grade;

SELECT 
(SUM(CASE WHEN loan_status = 'Default' THEN 1 ELSE 0 END) * 100.0) / COUNT(*) AS default_rate
FROM mytable;