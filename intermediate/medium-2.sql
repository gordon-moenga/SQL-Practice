# Show unique first names from the patients table which only occurs once in the list.

SELECT 
	DISTINCT(first_name)
FROM patients
GROUP BY first_name 
HAVING Count(first_name) = 1;
