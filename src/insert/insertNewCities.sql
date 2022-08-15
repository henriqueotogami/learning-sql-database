-- Command + Shift + E
SELECT * FROM brazilian_states WHERE id = 27

-- Command + Shift + E
INSERT INTO brazilian_cities(city_name, area, state_id)
VALUES
    ('Campinas',  795 , 27),
    ('Niterói' , 133.9,21);

-- Command + Shift + E  
INSERT INTO brazilian_cities(city_name, area, state_id)
VALUES
    ('Caruaru',920.6,(SELECT id FROM brazilian_states WHERE states_acronym = 'PE'))

-- Command + Shift + E  
INSERT INTO brazilian_cities(city_name, area, state_id)
VALUES
    ('Juazeiro do Norte',248.2,(SELECT id FROM brazilian_states WHERE states_acronym = 'CE'))