# For each doctor, display their id, full name, and the first and last admission date they attended.

  select
	d.doctor_id,
	concat(d.first_name, ' ', d.last_name) as full_name,
	MAX(a.admission_date) AS last_admission, 
	MIN(a.admission_date) AS first_admission
FROM doctors as d 
	JOIN admissions AS a on d.doctor_id = a.attending_doctor_id
GROUP BY d.first_name;
