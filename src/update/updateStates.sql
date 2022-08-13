-- Command + Shift + E
update states
set nome = 'Maranhão'
where sigla = 'MA'

select nome from states where sigla = 'MA'

-- Command + Shift + E
ALTER TABLE states
CHANGE nome states_name VARCHAR(45) NOT NULL, 
CHANGE sigla states_acronym VARCHAR(2) NOT NULL,
CHANGE regiao states_region ENUM('Norte', 'Nordeste', 'Centro-Oeste', 'Sudeste', 'Sul') NOT NULL,
CHANGE populacao states_population DECIMAL(5,2) NOT NULL;

SELECT * FROM `states`

-- Command + Shift + E
SELECT sta.states_name FROM states sta WHERE states_acronym = "MA"

-- Command + Shift + E
UPDATE states
SET states_name = 'Paraná', states_population = 11.31
WHERE states_acronym = 'PR'

-- Command + Shift + E
SELECT states.states_name, states_acronym, states_population
FROM states WHERE states_acronym = 'SC'