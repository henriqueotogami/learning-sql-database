-- Command + Shift + E
SELECT comp.company_name, br_c.city_name
FROM companies comp, companies_branches comp_br, brazilian_cities br_c
WHERE comp.id = comp_br.company_id
AND br_c.id = comp_br.city_id
AND headquarters