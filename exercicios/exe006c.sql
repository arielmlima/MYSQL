
#CRIANDO TABELA TESTE SE ELA NÃO EXISTIR
create table if not exists teste(
id int,
nome varchar(10),
idade int
);

insert into teste value
('1', 'Pedro', '22'),
('2', 'Maria', '12'),
('3', 'Maricota', '77');

select * from teste;

#DELETANDO TABELA TESTE SE ELA EXISTIR
drop table if exists teste;