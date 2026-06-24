# Question
Show the first_name, last_name, and height of the patient with the greatest height.
## Solution
```sql
SELECT 
	first_name, last_name,
    MAX(height)
FROM patients;
```
