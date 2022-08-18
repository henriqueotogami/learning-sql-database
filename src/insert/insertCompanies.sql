-- Command + Shift + E
INSERT INTO companies
    (company_name, company_cnpj)
VALUES
    ('Bradesco', 95694186000132),
    ('Vale', 27887148000146),
    ('Cielo', 01598317000134);

-- Command + Shift + E
ALTER TABLE companies MODIFY company_cnpj VARCHAR(14);

-- Command + Shift + E
desc brazilian_states;

-- Command + Shift + E
desc brazilian_cities;

-- Command + Shift + E
desc mayors;

-- Command + Shift + E
desc companies;

-- Command + Shift + E
desc companies_branches;

-- Command + Shift + E
SELECT * FROM companies;

-- Command + Shift + E
SELECT * FROM brazilian_cities;

-- Command + Shift + E
INSERT INTO companies_branches
    (company_id, city_id, headquarters)
VALUES
    (1, 1, 1),
    (1, 2, 0),
    (2, 1, 0),
    (2, 2, 1);