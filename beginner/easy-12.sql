# Question
# Show all the columns from admissions where the patient was admitted and discharged on the same day.
# Solution
SELECT *
FROM admissions
WHERE admission_date = discharge_dat
