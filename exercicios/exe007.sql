use cadastro;

#INSERINDO LINHAS
insert into cursos values
('1', 'HTML4', 'Curso de HTML', '40', '37', '2014'),
('2', 'Algoritmos', 'Lógica de Programação', '20', '15', '2014'),
('3', 'Photoshop', 'Photoshop CC', '40', '20', '2014'),
('4', 'PGP', 'PHP', '30', '15', '2000'),
('5', 'Jarva', 'Java', '40', '30', '2010');


#MODIFICAR UMA LINHA, APARTIR DA NOSSA CHAVE PRIMARIA
update cursos
set nome = 'HTML5'
where idcurso = '1';

#VAMOS MODIFICAR A LINHA: DUAS COLUNAS
update cursos
set nome = 'PHP', ano = '2015'
where idcurso = '4';

#VAMOS MODIFICAR A LINHA: TRÊS COLUNAS 
update cursos
set nome = 'Java', carga = '40', ano = '2015'
where idcurso = '5'
limit 1;          

#MODIFICAR MAIS DE UMA LINHA, USANDO TODAS AS LINHAS QUE FOREM DO ANO 2015 EM VEZ DA CHAVE PRIMARIA.
update cursos
set ano = '2050', carga = '800'
where ano = '2015';

#PARA APAGAR LINHA
delete from cursos
where idcurso = 8;

#PARA APAGAR LINHAS
delete from cursos 
where ano ='2050'  
limit 2;  

#PARA APAGAR TODAS AS LINHAS DA TABELA
truncate table cursos;

select * from cursos;