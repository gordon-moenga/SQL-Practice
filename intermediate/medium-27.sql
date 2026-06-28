# Display every patient that has at least one admission and show their most recent admission along with the patient and doctor's full name.

SELECT
	CONCAT(p.first_name, ' ', p.last_name) AS patient_name,
    a.admission_date,
    CONCAT(d.first_name, ' ', d.last_name) AS doctor_name
FROM patients AS p 
	INNER JOIN admissions AS a ON p.patient_id = a.patient_id
    INNER JOIN doctors AS d ON a.attending_doctor_id = d.doctor_id
WHERE admission_date = (SELECT
                        MAX(a.admission_date)
                        FROM admissions AS a
                        WHERE a.patient_id = p.patient_id
                        );
