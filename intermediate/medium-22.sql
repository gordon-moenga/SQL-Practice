# For every admission, display the patient's full name, their admission diagnosis, and their doctor's full name who diagnosed their problem

SELECT
	CONCAT(p.first_name, ' ', p.last_name) as patient_name,
    a.diagnosis,
	concat(d.first_name, ' ', d.last_name) AS doctor_name
FROM patients as p
	INNER JOIN admissions as a on p.patient_id = a.patient_id
	INNER JOIN doctors as d ON a.attending_doctor_id = d.doctor_id;
