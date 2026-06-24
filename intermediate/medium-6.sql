# Show the total amount of male patients and the total amount of female patients in the patients table.
# Display the two results in the same row.

SELECT
	(SELECT count(*) 
     from patients 
     where gender = 'M') AS male_count,
    (SELECT count(*)
     from patients
     where gender = 'F') AS female_count;
