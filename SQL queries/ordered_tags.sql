SELECT tags,
	COUNT(*)
FROM tags
GROUP BY tags
HAVING COUNT(*) > 0
ORDER BY COUNT(*) DESC;





