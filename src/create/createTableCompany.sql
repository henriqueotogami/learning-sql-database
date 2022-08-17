-- Command + Shift + E
CREATE TABLE IF NOT EXISTS companies (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    company_name VARCHAR(255) NOT NULL,
    company_cnpj INT UNSIGNED,
    PRIMARY KEY (id),
    UNIQUE KEY (company_cnpj)
);

-- Command + Shift + E
CREATE TABLE IF NOT EXISTS companies_branches (
    company_id INT UNSIGNED NOT NULL,
    city_id INT UNSIGNED NOT NULL,
    headquarters TINYINT(1) NOT NULL,
    PRIMARY KEY (company_id, city_id)
);