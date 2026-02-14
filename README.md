<div align="center">

# Aprendendo SQL para Banco de Dados Relacionais

<img width="auto" src="https://github.com/henriqueotogami/learning-sql-database/blob/master/src/img/Learning-SQL-database.png?raw=true">
<br>
<br>
<img src="https://img.shields.io/github/issues/henriqueotogami/learning-sql-database">
<img src="https://img.shields.io/github/forks/henriqueotogami/learning-sql-database">
<img src="https://img.shields.io/github/stars/henriqueotogami/learning-sql-database">
<img src="https://img.shields.io/github/license/henriqueotogami/learning-sql-database">
</div>
<hr>

# Learning SQL for Relational Databases

> Repositório com scripts SQL e exemplos desenvolvidos durante o módulo de Banco de Dados Relacional do curso de Java, focado em criação de esquemas, tabelas, operações CRUD e consultas com Join e Aggregation.

## 📋 Sobre o Projeto

Este projeto contém uma coleção de scripts SQL desenvolvidos como parte do curso [Cod3r | Java 2022 Completo](https://www.udemy.com/course/fundamentos-de-programacao-com-java/). Os scripts incluem a criação de um banco de dados relacional de estados e cidades brasileiras, prefeituras, empresas e filiais, além de exemplos práticos de inserção, atualização, exclusão e consultas com JOIN e agregação.

## 📁 Estrutura do Projeto

### Criação de Esquema e Tabelas (`src/create/`)
- **createSchema.sql** - Criação do esquema `wm`
- **createTableState.sql** - Tabela de estados brasileiros
- **createTableCities.sql** - Tabela de cidades e tabela de teste
- **createTableMayor.sql** - Tabela de prefeitos (relação 1:1 com cidades)
- **createTableCompany.sql** - Tabelas de empresas e filiais (relação N:N)

### Inserção de Dados (`src/insert/`)
- **inserNewStates.sql** - Inserção de novos estados
- **insertStatesOne.sql** / **insertStatesTwo.sql** - Inserção de estados
- **insertNewCities.sql** - Inserção de cidades com subconsulta
- **insertNewMayors.sql** - Inserção de prefeitos
- **insertCompanies.sql** - Inserção de empresas

### Atualização de Dados (`src/update/`)
- **updateStates.sql** - Atualização de registros, ALTER TABLE (renomear colunas) e RENAME TABLE

### Exclusão de Dados (`src/delete/`)
- **deleteStates.sql** - Exclusão de registros com WHERE

### Remoção de Tabelas (`src/drop/`)
- **dropTableTest.sql** - Remoção de tabelas com DROP TABLE

### Consultas (`src/query/`)
- **queryStates.sql** - Consultas básicas em estados
- **queryStatesWithJoin.sql** - JOIN entre estados e cidades (sintaxe antiga e INNER JOIN)
- **queryStatesWithAggregation.SQL** - Agregações (SUM, AVG) e GROUP BY
- **queryMayorsWithJoin.sql** - Consultas com JOIN envolvendo prefeitos
- **queryCompanies.sql** - Consultas em empresas e filiais

## 📂 Estrutura do Repositório

```
LICENCE
README.md
src/
  create/
    createSchema.sql          # criação do esquema
    createTableState.sql      # tabela de estados
    createTableCities.sql     # tabela de cidades
    createTableMayor.sql      # tabela de prefeitos
    createTableCompany.sql    # tabelas empresas e filiais
  insert/
    inserNewStates.sql        # inserir estados
    insertStatesOne.sql
    insertStatesTwo.sql
    insertNewCities.sql       # inserir cidades
    insertNewMayors.sql       # inserir prefeitos
    insertCompanies.sql       # inserir empresas
  update/
    updateStates.sql          # atualizar e renomear tabelas
  delete/
    deleteStates.sql          # excluir registros
  drop/
    dropTableTest.sql         # remover tabelas
  query/
    queryStates.sql           # consultas básicas
    queryStatesWithJoin.sql   # consultas com JOIN
    queryStatesWithAggregation.SQL  # agregações
    queryMayorsWithJoin.sql
    queryCompanies.sql
```

## 🛠️ Tecnologias Utilizadas

- **MySQL 8.0.30** - Sistema de gerenciamento de banco de dados relacional
- **Visual Studio Code 1.70.2** - Editor de código
  - [Plugin vscode-database](https://marketplace.visualstudio.com/items?itemName=bajdzis.vscode-database) - Execução de scripts SQL
  - [Plugin Xcode Theme](https://marketplace.visualstudio.com/items?itemName=MateoCERQUETELLA.xcode-12-theme)
- **MacOS Monterey 12.5.1** - Sistema operacional de desenvolvimento

## 📝 Funcionalidades Principais

### Modelo de Dados
- **Estados** (`brazilian_states`) - id, nome, sigla, região, população
- **Cidades** (`brazilian_cities`) - relacionamento N:1 com estados (chave estrangeira)
- **Prefeitos** (`mayors`) - relacionamento 1:1 com cidades
- **Empresas e Filiais** (`companies`, `companies_branches`) - tabela de junção N:N

### Operações CRUD
- **CREATE** - Criação de esquemas, tabelas e inserção de dados
- **READ** - Consultas com SELECT, WHERE, aliases
- **UPDATE** - Alteração de registros e estrutura de tabelas (ALTER TABLE, RENAME)
- **DELETE** - Exclusão de registros com condições
- **DROP** - Remoção de tabelas

### Consultas Avançadas
- **JOIN** - INNER JOIN entre estados e cidades
- **Aggregation** - SUM, AVG, GROUP BY, ORDER BY
- **Subconsultas** - Uso de SELECT em INSERT (ex: inserir cidade referenciando estado por sigla)

## 🚀 Como Executar os Scripts

### Pré-requisitos
- MySQL Server 8.0+ instalado e em execução
- MySQL Workbench ou extensão vscode-database no VS Code

### Execução no VS Code (vscode-database)
1. Conecte ao servidor MySQL através do plugin
2. Abra o arquivo `.sql` desejado
3. Selecione o trecho que deseja executar ou use o script inteiro
4. Pressione `Command + Shift + E` (Mac) ou `Ctrl + Shift + E` (Windows/Linux) para executar

### Ordem Recomendada de Execução
```bash
# 1. Criar esquema e tabelas (ordem importa por causa das FKs)
create/createSchema.sql
create/createTableState.sql
create/createTableCities.sql      # depende de brazilian_states
create/createTableMayor.sql       # depende de brazilian_cities
create/createTableCompany.sql

# 2. Executar updateStates.sql para renomear states → brazilian_states
# (necessário antes dos inserts que referenciam brazilian_states)

# 3. Inserir dados
insert/*.sql

# 4. Consultas
query/*.sql
```

### Execução no MySQL Workbench
1. Abra o MySQL Workbench e conecte ao servidor
2. Abra o arquivo SQL ou cole o conteúdo
3. Execute com o ícone de raio (Execute) ou `Ctrl+Shift+Enter`

## 📚 Conteúdos Abordados

- ✅ Instalação do MySQL Server e Workbench no MacOS
- ✅ Modelo Entidade/Relacionamento (ER)
- ✅ Chave primária, chave estrangeira e relacionamentos (1:1, N:1, N:N)
- ✅ Criação de esquemas e tabelas (CREATE SCHEMA, CREATE TABLE)
- ✅ Tipos de dados: INT, VARCHAR, DECIMAL, ENUM
- ✅ Constraints: PRIMARY KEY, UNIQUE, FOREIGN KEY, NOT NULL
- ✅ Inserção de dados (INSERT INTO)
- ✅ Atualização de dados (UPDATE, ALTER TABLE, RENAME TABLE)
- ✅ Exclusão de dados (DELETE)
- ✅ Remoção de tabelas (DROP TABLE)
- ✅ Consultas com JOIN (sintaxe antiga e INNER JOIN)
- ✅ Agregações (SUM, AVG, GROUP BY, ORDER BY)
- ✅ Subconsultas em INSERT

## ⚙️ Como Funciona

### Fluxo de Criação do Banco
1. O esquema `wm` é criado para organizar os objetos
2. A tabela `states` é criada com colunas: id, nome, sigla, regiao, populacao
3. Via `updateStates.sql`, as colunas são renomeadas e a tabela passa a ser `brazilian_states`
4. `brazilian_cities` é criada com FK para `brazilian_states`
5. `mayors` tem relação 1:1 com cidades (UNIQUE em city_id)
6. `companies` e `companies_branches` formam relação N:N entre empresas e cidades

### Exemplo de JOIN
Os scripts em `queryStatesWithJoin.sql` demonstram consultas que unem estados e cidades:
- Sintaxe antiga: `FROM tabela1, tabela2 WHERE tabela1.id = tabela2.state_id`
- Sintaxe moderna: `INNER JOIN tabela2 ON tabela1.id = tabela2.state_id`

### Exemplo de Agregação
Em `queryStatesWithAggregation.SQL` são usados SUM e AVG para totalizar população por região e calcular média.

## 📄 Licença

Este projeto está licenciado sob a MIT License - veja o arquivo [LICENCE](LICENCE) para mais detalhes.

## 🤝 Contribuições

> Caso você queira ajudar a melhorar este repositório, qualquer ajuda é bem-vinda.

- [ ] Faça um **fork** deste repositório ([link para fork](https://github.com/henriqueotogami/learning-sql-database/fork))
- [ ] Crie um **branch** com as suas modificações: `git checkout -b meu-novo-recurso`
- [ ] Faça um **commit**: `git commit -am 'Adicionando um novo recurso...'`
- [ ] Faça um **push**: `git push origin meu-novo-recurso`
- [ ] Crie uma **Pull Request** neste repositório

**Depois que sua solicitação (pull request) for aceita e adicionada (merged) ao ramo principal (branch master), você pode excluir sua branch tranquilamente.**

## 📖 Referências

- Curso: [Cod3r | Java 2022 Completo](https://www.udemy.com/course/fundamentos-de-programacao-com-java/) - Módulo de Banco de Dados Relacional
- Documentação MySQL: [dev.mysql.com](https://dev.mysql.com/doc/)

<div align="center">
<br>
> ### **Muito obrigado, e que a força esteja com você.**
>
> ### Desenvolvido por **HMAP | Henrique Matheus Alves Pereira** 🦁
</div>

---

### Hashtags
#SQL #MySQL #Database #RelationalDatabase #Java #LearningToCode #CRUD #JOIN #Aggregation #OpenSource #GitHub #DatabaseDesign #EntityRelationship #ForeignKeys #Cod3r

### Meta Keywords
```
SQL, MySQL, banco de dados relacional, CRUD, JOIN, agregação, criação de tabelas,
esquema, chave primária, chave estrangeira, modelo entidade relacionamento,
estados e cidades, INSERT, UPDATE, DELETE, SELECT, GROUP BY, Cod3r, Java,
aprendizado SQL, scripts SQL, vscode-database
```
