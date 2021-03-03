select totaulas, count(*) from cursos 
group by totaulas
order by totaulas;
/* Agrupando grupos por total de aulas*/

select carga, count(nome) from cursos where totaulas = 30
group by carga;
/* Quantos cursos tem 40 horas e quantos tem 60*/

select ano, count(*) from cursos
group by ano
having count(ano) >= 5
order by count(*) desc;
/* Seleciona o total de cursos por ano e só mostra os que tem mais que 5 cursos por ano*/

select ano, count(*) from cursos
group by ano
having ano > 2015
order by count(*) desc;
/* Seleciona o total de cursos por ano e só mostra os que tem ano maior que 2015*/

select ano, count(*) from cursos
where totaulas > 30
group by ano
having ano > 2015
order by count(*) desc;
/* Seleciona o total de cursos por ano que tenham total de aulas maiores 
que 30 e só mostra os que tem mais que 5 cursos por ano*/

select carga, count(*) from cursos
where ano > 2013
group by carga
having carga > (select avg(carga) from cursos);
/* Todos os cursos 2013+, agrupados por carga que tenham carga maior 
que a média de todos os cursos*/



