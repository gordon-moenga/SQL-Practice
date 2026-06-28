# Show patient_id, first_name, last_name from patients whose does not have any records in the admissions table

select
	p.patient_id,
    p.first_name,
    p.last_name
FROM patients as p
	left join admissions as a on p.patient_id = a.patient_id
WHERE 
a.patient_id is null;
