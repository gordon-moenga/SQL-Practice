# Display the total amount of patients for each province. Order by descending.

SELECT
	COUNT(*) AS patient_count,
    ps.province_name
FROM patients AS p 
	JOIN province_names AS ps ON P.province_id = ps.province_id
GROUP BY province_name
ORDER BY patient_count DESC;
