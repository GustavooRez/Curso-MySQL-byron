select * from cursos 
where nome like 'P%';
/*Primeira letra*/ 

select * from cursos 
where nome like '%A';
/*Ultima letra*/ 

select * from cursos 
where nome like '%A%';
/*Esteja em qualquer posição*/ 

select * from cursos 
where nome not like '%A%';
/*Não tem a letra*/ 

select * from cursos 
where nome like '%ph%p_%';
/*Comece com as duas primerias letras e a ultima termine com P e tenha um espaço*/ 

select * from gafanhotos
where nome like '%silva%';
/*Tenha esse nome*/ 

select distinct nacionalidade from gafanhotos
order by nacionalidade;
/* Mostra um de cada, se tiver mais Brasil ele não mostra*/ 

select distinct carga from cursos
order by carga;
/* Mostra um de cada, não repetiu*/ 

select count(*) from cursos;
/* Conta quantos tem*/

select count(*) from cursos where carga > 40;

select max(carga) from cursos;
/*Seleciona qual é a maior*/

select max(totaulas) from cursos where ano = '2016';
/* Máximo do total de aulas do ano de 2016*/

select nome, min(totaulas) from cursos where ano = '2016';
/* Mínimo do total de aulas do ano de 2016*/

select sum(totaulas) from cursos where ano = '2016';
/* Soma do total de aulas do ano de 2016*/

select avg(totaulas) from cursos where ano = '2016';
/* Média do total de aulas do ano de 2016*/


