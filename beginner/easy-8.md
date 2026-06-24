# Question
Show how many patients have a birth_date with 2010 as the birth year.
## Solution
```sql
SELECT 
COUNT(*) as total_patients
FROM patients
WHERE YEAR(birth_date) = 2010;
```
