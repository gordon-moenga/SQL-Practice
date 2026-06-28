# Display a single row with max_visits, min_visits, average_visits where the maximum, minimum and average number of admissions per day is calculated. Average is rounded to 2 decimal places.

SELECT
	min(daily_admissions) AS min_visits,
    MAX(daily_admissions) AS max_visits,
    ROUND(avg(daily_admissions),2) as average_visits
FROM
	(SELECT 
     	admission_date,
     	COUNT(*) as daily_admissions
	FROM admissions
	GROUP BY admission_date);
