-- Criando a tabela que representa do Estado.
create table states (
    id INT  UNSIGNED NOT NULL AUTO_INCREMENT,
    nome VARCHAR(45) NOT NULL, 
    sigla varchar(2) NOT NULL, 
    regiao ENUM('Norte', 'Nordeste', 'Centro-Oeste', 'Sudeste', 'Sul') NOT NULL,
    populacao  DECIMAL(5,2) NOT NULL,
    PRIMARY KEY (id),
    UNIQUE KEY (nome),
    UNIQUE KEY (sigla) 
);