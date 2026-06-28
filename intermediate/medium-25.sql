# Show patient_id, first_name, last_name from patients whose does not have any records in the admissions table

SELECT
	p.patient_id,
    p.first_name,
    p.last_name
FROM patients as p
	LEFT JOIN admissions AS a ON p.patient_id = a.patient_id
WHERE 
a.patient_id IS NULL;
