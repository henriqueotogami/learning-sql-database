-- Command + Shift + E
select * from states

-- Command + Shift + E
select nome, sigla from states

-- Command + Shift + E
select sigla, nome as 'Nome do Estado' from states

-- Command + Shift + E
select sigla, nome as 'Nome do Estado' from states
where regiao = 'sul'

-- Command + Shift + E
select nome, sigla from states
where populacao >= 10

-- Command + Shift + E
select nome, regiao from states
where populacao >= 10
order by populacao

-- Command + Shift + E
select nome, regiao from states
where populacao >= 10
order by populacao desc

-- Command + Shift + E
select 
    nome, 
    regiao,
    populacao
from states
where populacao >= 10
order by populacao desc