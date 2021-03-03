select * from gafanhotos
order by nome;

select * from gafanhotos
order by nome desc;

select nome, carga, ano from cursos
order by ano;

select nome, carga, ano from cursos
order by ano, nome;

select * from cursos 
where ano = '2016'
order by nome;

select * from cursos 
where ano > '2016'
order by ano, nome;

select * from cursos 
where ano <> '2016'
order by ano, nome;

select nome, carga from cursos 
where ano = '2016'
order by nome;

select nome, ano from cursos 
where ano between 2016 and 2019
order by ano desc, nome;

select nome, ano from cursos 
where ano in (2014, 2016)
order by ano , nome;

select * from cursos 
where carga > 35 and totaulas < 30
order by ano , nome;

select * from cursos 
where carga > 35 or totaulas < 30
order by ano;

describe cursos;