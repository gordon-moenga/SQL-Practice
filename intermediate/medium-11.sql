# Show all allergies ordered by popularity. Remove NULL values from query.

SELECT
	allergies,
    COUNT(*) as total_diagnosis
from patients
WHERE allergies is NOT NULL
GROUP BY allergies
ORDER BY total_diagnosis DEsc;
