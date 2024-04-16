use cadastro;
describe gafanhotos;

#Adicionando a foreign key

alter table gafanhotos
add column cursopreferido int;         #Pegamos a chave primaria de cursos e demos o nome de cursopreferido e declamaros o tipo na sequencia int.


alter table gafanhotos           #Agora precisamos dizer que esse campo é uma chave estrangeira, vamos dar outro alter table.
add foreign key (cursopreferido)
references cursos(idcurso);     #Fazendo a referencia no final a cursos e dentro do parenteses a chave primaria original. Significa que o cursopreferido da tabela garfanhotos esta ligado a idcurso

 #Note que quando damos describe denovo, no final da lista vai estar o cursopreferido com a key escrito MUL (multipla), sendo uma chave multipla, nesse caso tambem sendo uma chave estrangeira.


select * from gafanhotos;              #Para selecionar tudo da nossa entidade gafanhotos e vermos o id de cada tupla
select * from cursos;                  #Para selecionar tudo da nossa entidade curso e vermos o id de cada tupla

#Agora vamos registrar os cursos preferidos de cada aluno

update gafanhotos set cursopreferido = '6' where id = '1';   #Note que o aluno id 1 é o daniel

 /*E para fazer mais rapido essa parte? Podemos fazer no proprpio mouse clicando em cima do curso preferido de cada um e editando.
 Tem que clicar no Apply para funcionar.*/
 
#Integridade Referencial: Não consigo modificar um campo, se ele for afetar minha transação, se começar a rolar inconsistencia ele não vai deixar acontecer.

#Vamos tentar apagar o curso de MySQL: Note que vai dar erro: constraint fails key, um erro de integridade referencial.

 delete from cursos 
 where idcurso = '6'; 

#Da mesma forma que se tentarmos apagar/alterar qualquer estrutura do curso de html5, não vai dar certo, pois ja existe a relação entre o garfanhoto e esse curso. Senão ia se perder o relacionamento entre eles.

 delete from cursos 
 where idcurso = '28';     #Vamos conseguir apagar sem problemas pois não tem relação com nada.


#JUNÇÃO: Como eu faço para juntar a tabela cursos e a tabela gafanhotos? JOIN e ON

 select gafanhotos.nome, cursos.nome, cursos.ano  #E assim conseguimos juntar as informações das duas entidades Ex: entidade.atributodatupla
 from gafanhotos join cursos
 on cursos.idcurso = gafanhotos.cursopreferido  #Para funcionar e fazer a ligação da chave primaria e a chave estrangeira.
 order by gafanhotos.nome; #Para ordenar por ordem alfabetica

 #O Join que usamos é o inner join mas podemos escrever so join nesse caso. - Vai somente fazer com quais tem as ligações. Vendo oque tem de relação entre as duas tabelas.

#Trabalhando com apelidos de colunas: AS       #Diminuindo o código: So não simplifica na linha do join, de resto pode usar a simplificação para tudo. 

 select g.nome, c.nome, c.ano  
 from gafanhotos as g inner join cursos as c             #sempre que for me referir a gafanhotos uso g e cursos c
 on c.idcurso = g.cursopreferido  
 order by g.nome;


#OUTER JOIN: Mostrar todos os gafanhotos mesmo os que não preferem nada:

 select g.nome, c.nome, c.ano  
 from gafanhotos as g left outer join cursos as c        #Note que oque ta do lado esquerdo de join é gafanhotos, e o do lado direito cursos.  Se quisermos dizer quem é o prefencial bota um left (esquerda), ou right (direita) antes do join. 
 on c.idcurso = g.cursopreferido;

select g.nome, c.nome, c.ano  
 from gafanhotos as g right outer join cursos as c        
 on c.idcurso = g.cursopreferido;
 
 /*Podemos simplificar tirando o outer, que ele ja vai entender que é um outer so de ter left ou right.
 Quando mostrar o left, mostrou todos os gafanhotos até de quem não tem curso preferido.  
 Se mostramos o right nesse caso o lado direito (cursos) vai ter a preferencia, exibindo todos os cursos até os não preferidos e com repetições exibindo oque vimos antes: um mesmo curso é preferido por pessoas diferentes. Note que temos varios null nos campos g.nome pois não tem relação com os cursos exibidos, mas mesmo assim é exibido por ser outer.
 */

