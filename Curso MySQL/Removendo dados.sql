insert into cursos value 
('1', 'HTML4', 'Curso de HTML5' , '40', '37', '2014'),
('2', 'Algoritmos', 'Curso de Algoritmos' , '20', '15', '2015'),
('3', 'Word', 'Curso de Word' , '40', '15', '2018');

select * from cursos;

update cursos 
set nome = 'HTML 5'
where idcurso = '1';

update cursos 
set nome = 'Algoritmos 1', ano = '2016'
where idcurso = '2';

update cursos
set cargahor = '35'
where idcurso = '3'
limit 1;

delete from cursos
where idcurso = '3';

truncate table cursos;
