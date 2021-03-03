use cadastro;

/*Criando a tabela Assiste*/
create table gafanhoto_assiste_curso (
	id int not null auto_increment,
	data date,
	idgafanhoto int,
	idcurso int,
	primary key(id),
	foreign key (idgafanhoto) references gafanhotos(id),
	foreign key (idcurso) references cursos(idcurso)
) default charset = utf8;

/*Inserindo os dados*/
insert into gafanhoto_assiste_curso values
(default, '2014-03-01', '1', '2'),
(default, '2013-07-22', '2', '9'),
(default, '2014-01-09', '3', '1'),
(default, '2011-02-08', '4', '10');

select * from gafanhoto_assiste_curso;

/* Junção das tabelas*/
select g.nome, c.nome from gafanhotos g 
join gafanhoto_assiste_curso a
on g.id = a.idgafanhoto
join cursos c 
on c.idcurso = a.idcurso;