-- Command + Shift + E
SELECT states_region AS 'REGIÃO', 
SUM(states_population) as TOTAL
FROM states
GROUP BY states_region
ORDER BY TOTAL DESC


-- Command + Shift + E
SELECT AVG(states_population) as TOTAL
FROM states