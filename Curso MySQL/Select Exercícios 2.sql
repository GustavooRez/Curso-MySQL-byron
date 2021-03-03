select profissao, count(*) from gafanhotos
group by profissao
order by profissao;
/* Profissoes e a quantidade de pessoas*/

select sexo, count(*) from gafanhotos
where nascimento > '2005-01-01'
group by sexo;
/*Homens e mulheres que nasceram após de 01/01/2005*/

select nacionalidade, count(*) from gafanhotos
where nacionalidade != 'Brasil'
group by nacionalidade
having count(*) > 3;
/*Pessoas fora do Brasil que cada país tenha mais de 3 pessoas morando nele*/

