-- Command + Shift + E
SELECT * FROM brazilian_states br_s, brazilian_cities br_c
WHERE br_s.id = br_c.state_id;

-- Command + Shift + E
SELECT states_name FROM brazilian_states br_s, brazilian_cities br_c
WHERE br_s.id = br_c.state_id;

-- Command + Shift + E
SELECT br_s.states_name, br_c.city_name, br_s.states_region 
FROM brazilian_states br_s, brazilian_cities br_c
WHERE br_s.id = br_c.state_id;

-- Command + Shift + E
SELECT 
    br_s.states_name AS Estado,
    br_c.city_name AS Cidade,
    br_s.states_region AS Região
FROM brazilian_states br_s, brazilian_cities br_c
WHERE br_s.id = br_c.state_id;

-- Command + Shift + E
SELECT 
    br_s.states_name AS Estado,
    br_c.city_name AS Cidade,
    br_s.states_region AS Região
FROM brazilian_states br_s
INNER JOIN brazilian_cities br_c ON br_s.id = br_c.state_id