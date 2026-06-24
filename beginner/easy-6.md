# Question
Show first name and last name concatinated into one column to show their full name.
## Solution
```sql
SELECT 
	concat(first_name, ' ', last_name) AS full_name
FROM patients;
```
