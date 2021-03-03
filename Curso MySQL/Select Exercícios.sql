select * from gafanhotos;

select * from gafanhotos
where sexo = 'F';
/*Selecionar todas as mulheres*/

select * from gafanhotos
where nascimento between '2000-01-01' and '2015-12-31';
/*Pessoas que nasceram entre essa data*/

select * from gafanhotos
where profissao = 'Programador' and sexo = 'M';
/*Homens programadores*/

select * from gafanhotos
where nacionalidade = 'Brasil' and nome like 'J%' and sexo = 'F';
/* Mulheres Brasileiras com nome iniciado por J*/

select nome,nacionalidade from gafanhotos
where sexo = 'M' and nome like '%silva%' and nacionalidade != 'Brasil' and peso < 100;
/* Todos os homens, que tenham silva no nome, não são brasileiros e tenham peso menor que 100*/

select max(altura) from gafanhotos
where nacionalidade = 'Brasil' and sexo = 'M';
/* Maior altura de um Brasileiro*/

select avg(peso) from gafanhotos;
/*Média dos pesos de todas as pessoas*/

select min(peso) from gafanhotos
where sexo = 'F' and nacionalidade != 'Brasil' and nascimento between '1990-01-01' and '2000-12-31' ;
/*Menor peso das mulheres não brasilieras que nasceram entre essa data*/

select count(*) from gafanhotos 
where sexo = 'F' and altura > 1.90; 
/*Quantas mulheres tem mais de 1.90*/