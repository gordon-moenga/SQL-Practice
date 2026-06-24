# Question
Show first name and last name of patients that weight within the range of 100 to 120 (inclusive)
## Solution
```sql
SELECT 
	first_name, last_name
FROM patients
WHERE weight between 100 and 120;
```
