create database becario;

use becario;

create table bebe(
idbebe int,
nome varchar(30),
datanasc date,
pesonasc float,
altura float
) default charset = 'utf8';

create table medico(
idmedico int,
nome varchar(30),
crm varchar(6),
telefone varchar(13),
especialidade varchar(20)
) default charset = 'utf8';

create table mae(
idmae int,
nome varchar(30),
endereco varchar(30),
telefone varchar(13),
datanasc date
) default charset = 'utf8';

alter table bebe
add primary key(idbebe); 

alter table medico
add primary key(idmedico); 

alter table mae
add primary key(idmae); 

insert into bebe values
(0, 'Gustavo Rezende', '2000-09-27', '2', '0.50'),
(1, 'Vinicius Moura', '1998-05-21', '2.5', '0.4'),
(2, 'Francisco Morais', '2002-10-01', '1.5', '0.6');
select * from bebe;

insert into mae values
(0, 'Maria', 'Itajubá, Varginha, 00', '35998102849', '2000-09-27'),
(1, 'Dolores', 'São Paulo, Guarulhos','13986786756', '1998-05-21');
select * from mae;

insert into medico values
(1, 'Cleiton Rasta', '092384','35911786756', 'Obstetra');
select * from medico;

alter table bebe
add column mae int,
add column medico int;

alter table bebe 
add foreign key (mae)
references mae(idmae),
add foreign key (medico)
references medico(idmedico);

update bebe set mae = '1' where idbebe = '0';
update bebe set medico = '1' where idbebe = '0';

update bebe set mae = '1' where idbebe = '1';
update bebe set medico = '1' where idbebe = '1';

update bebe set mae = '0' where idbebe = '2';
update bebe set medico = '1' where idbebe = '2';

select b.nome, b.datanasc, b.pesonasc, b.altura, m.nome, me.nome from bebe b
join mae m
on m.idmae = b.mae
join medico me
on me.idmedico = b.medico
order by b.nome;


