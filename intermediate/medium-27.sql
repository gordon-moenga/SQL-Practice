# Display every patient that has at least one admission and show their most recent admission along with the patient and doctor's full name.

select
	concat(p.first_name, ' ', p.last_name) as patient_name,
    a.admission_date,
    concat(d.first_name, ' ', d.last_name) as doctor_name
FROM patients as p 
	inner join admissions as a on p.patient_id = a.patient_id
    inner join doctors as d on a.attending_doctor_id = d.doctor_id
WHERE admission_date = (SELECT
                        max(a.admission_date)
                        from admissions as a
                        WHERE a.patient_id = p.patient_id
                        );
