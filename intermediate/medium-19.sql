# Show first_name, last_name, and the total number of admissions attended for each doctor.

select
	d.first_name, d.last_name,
    COUNT(a.attending_doctor_id) AS admission_total
FROM doctors as d
	JOIN admissions AS a on d.doctor_id = a.attending_doctor_id
GROUP BY d.first_name;
