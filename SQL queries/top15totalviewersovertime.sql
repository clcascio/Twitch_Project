SELECT *
FROM top15;

SELECT game, SUM(viewers)
FROM top15
GROUP BY game
ORDER BY SUM(viewers) DESC;




