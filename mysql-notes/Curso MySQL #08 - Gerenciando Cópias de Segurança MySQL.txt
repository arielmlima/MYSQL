#VAMOS VER COMO ESTA NOSSAS ESTRUTURAS
use cadastro;
select * from cursos;
select * from gafanhotos;
describe gafanhotos;
desc cursos;


#COMO FAZER UM BACKUP NO MYSQL WORKBENCH
/*
1-SERVER > DATAEXPORT > SELECIONA O BANCO E AS TABELAS > 
2-DUMP DEFINIMOS SE QUEREMOS A TABELA E OS DADOS, OU SO UM DELES>
3-EXPORT TO SELF-CONTAINED FILE              
4-Marca a opção include create schema. 
5-Start Export.
6-Vai me pedir a senha, clico enter.

//Um dump é o passo a passo que quem criou o banco de dados fez para chegar aquele resultado. Podemos abrir esse dump no bloco de notas, vai ter todos os nossos registros.
E para testar vamos apagar nosso banco de dados:

drop database cadastro;

E agora abrimos denovo o mysql workbench, server, data import, import from self contained file, por arquivo, vai pedir senha da okay. 
Agora so atualizar e nosso banco de dados vai estar lá, nosso backup funciona! Podemos fazer isso para abrir em outro computador tambem no caso, so importar. Qualquer computador que tenha o MYSQL workbench vai suportar.
*/