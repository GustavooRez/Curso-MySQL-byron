describe gafanhotos;

alter table gafanhotos
add column cursopreferiso int;

alter table gafanhotos
change column cursopreferiso cursopreferido int;

/* Adicionar Chave Estrangeira*/
alter table gafanhotos 
add foreign key (cursopreferido)
references cursos(idcurso);

select * from gafanhotos;

/*Adicionando curso a uma pessoa*/
update gafanhotos set cursopreferido = '6' where id = '1';

/*Não consigo deletar um curso que está sendo
integrado a outro mas um que não está eu consigo*/
delete from cursos where idcurso = '1';
delete from cursos where idcurso = '15';

select nome,cursopreferido from gafanhotos;
select nome, ano from cursos;

/*Fazendo aparecer o nome do curso ao invés do número*/
select g.nome, c.nome, c.ano
from gafanhotos as g inner join cursos as c /* Dando apelido para os nomes, funciona sem*/
on c.idcurso = g.cursopreferido
order by g.nome;


/*Agora ele mostra todos os alunos independente do curso, pois ele da preferencia para as pessoas*/
select g.nome, c.nome, c.ano
from gafanhotos as g left join cursos as c 
on c.idcurso = g.cursopreferido;


/*Agora ele mostra todos os curso independente do aluno, pois ele da preferencia para oc cursos*/
select g.nome, c.nome, c.ano
from gafanhotos as g right join cursos as c 
on c.idcurso = g.cursopreferido;