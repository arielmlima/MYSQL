#IF NOT EXIST: SÓ VAI CRIAR/APAGAR UMA TABELA/BANCO DE DADOS SE ELE NÃO EXISTIR.
create table if not exists cursos (
nome varchar(30) not null unique,
descricao text,
carga int unsigned, 
totaulas int unsigned,
ano year default '2024'
) default charset = utf8mb4;

#ADICIONANDO NOVO CAMPO 
alter table cursos
add column idcurso int first;

#ADICIONAR A CHAVE PRIMARIA A ESSE CAMPO QUE CRIAMOS 
alter table cursos
add primary key (idcurso);

#DESCRIÇÃO CURSOS
describe cursos;

#APAGAR TABELA INTEIRA:
drop table cursos;