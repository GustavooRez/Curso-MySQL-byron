create table if not exists cursos(
nome varchar(30) not null unique,
descricao text,
cargahor int unsigned,
totalaulas int unsigned,
ano year default '2016' 
) default charset = utf8;

alter table cursos
add column idcurso int first;

alter table cursos
add primary key(idcurso); 

drop table if exists cursos;
