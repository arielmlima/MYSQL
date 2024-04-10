#DESCRIÇÃO PESSOAS
describe pessoas; 

#ADICIONAR NOVA COLUNA
alter table pessoas
add column profissao varchar(10);

#REMOVER COLUNA
alter table pessoas 
drop column profissao;

#ADICIONAR COLUNA DEPOIS DE NOME
alter table pessoas
add column profissao varchar(10) after nome;

#ADICIONAR COLUNA NO INICIO
alter table pessoas
add column codigo int first;

#MODIFICAR QUANTIDADE DE DADOS QUE CABE NAQUELE CAMPO
alter table pessoas
modify column profissao varchar(20);

#MUDAR NOME DA COLUNA
alter table pessoas
change column profissao prof varchar(20);

#MUDAR NOME DA TABELA
alter table pessoas
rename to gafanhotos;

#EXIBIÇÃO DE TUDO EM PESSOAS
select * from pessoas;


