-- Command + Shift + E
SELECT * FROM mayors;

-- Command + Shift + E
SELECT * FROM brazilian_cities; 

-- Command + Shift + E
SELECT * FROM brazilian_cities br_c INNER JOIN mayors br_m ON br_c.id = br_m.city_id;

-- Command + Shift + E
SELECT * FROM brazilian_cities br_c LEFT JOIN mayors br_m ON br_c.id = br_m.city_id;

-- Command + Shift + E
SELECT * FROM brazilian_cities br_c RIGHT JOIN mayors br_m ON br_c.id = br_m.city_id;

-- Command + Shift + E
-- SELECT * FROM brazilian_cities br_c FULL JOIN mayors br_m ON br_c.id = br_m.city_id;
SELECT * FROM brazilian_cities br_c LEFT OUTER JOIN mayors br_m ON br_c.id = br_m.city_id
UNION
SELECT * FROM brazilian_cities br_c RIGHT JOIN  mayors m ON br_c.id = br_m.city_id;