UPDATE stats
SET avg_viewers = 
(
	SELECT AVG(viewers)
	FROM a28
	
	)
WHERE ID = 1;

UPDATE stats
SET avg_viewers = 
(
	SELECT AVG(viewers)
	FROM a29
	
	)
WHERE ID = 2;

UPDATE stats
SET avg_viewers = 
(
	SELECT AVG(viewers)
	FROM a30
	)
WHERE ID = 3;

UPDATE stats
SET avg_viewers = 
(
	SELECT AVG(viewers)
	FROM a31
	)
WHERE ID = 4;

SELECT *
FROM stats;
