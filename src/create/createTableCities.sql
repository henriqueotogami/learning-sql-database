-- Command + Shift + E
CREATE TABLE IF NOT EXISTS brazilian_cities (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    city_name VARCHAR(255) NOT NULL,
    state_id INT UNSIGNED NOT NULL,
    area DECIMAL(10,2),
    PRIMARY KEY (id),
    FOREIGN KEY (state_id) REFERENCES brazilian_states (id)
);

-- Command + Shift + E
CREATE TABLE IF NOT EXISTS test_table (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
);