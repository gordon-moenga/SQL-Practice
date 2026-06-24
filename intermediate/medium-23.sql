# display the first name, last name and number of duplicate patients based on their first name and last name.

SELECT
	first_name, last_name,
    COUNT(*) AS no_of_duplicates
FROM patients
GROUP BY first_name, last_name
HAVING COUNT(*) > 1;
