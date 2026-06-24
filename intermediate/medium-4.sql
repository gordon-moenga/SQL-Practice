# Show patient_id, first_name, last_name from patients whos diagnosis is 'Dementia'.

SELECT
	p.patient_id, p.first_name, p.last_name
FROM patients p 
	JOIN admissions a ON p.patient_id = a.patient_id
where a.diagnosis = 'Dementia';
