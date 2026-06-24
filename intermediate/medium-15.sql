# Show the difference between the largest weight and smallest weight for patients with the last name 'Maroni'

SELECT 
	(MAX(weight) - min(weight)) AS weight_delta
from patients
WHERE last_name = 'Maroni';
