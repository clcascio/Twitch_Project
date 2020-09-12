SELECT *
FROM stats;

UPDATE stats
SET min_viewers = 
(
	SELECT MIN(viewers)
	FROM a28
	
	)
WHERE ID = 1;

UPDATE stats
SET min_viewers = 
(
	SELECT MIN(viewers)
	FROM a29
	
	)
WHERE ID = 2;

UPDATE stats
SET min_viewers = 
(
	SELECT MIN(viewers)
	FROM a30
	)
WHERE ID = 3;

UPDATE stats
SET min_viewers = 
(
	SELECT MIN(viewers)
	FROM a31
	)
WHERE ID = 4;