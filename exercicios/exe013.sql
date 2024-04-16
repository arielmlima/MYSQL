create table gafanhoto_assiste_curso (
 id int not null auto_increment, 
 data date, 
 idgafanhoto int,
 idcurso int, 
 primary key (id),                                         #Definindo a chave primaria
 foreign key (idgafanhoto) references gafanhotos(id),      #Definindo a chave estrangeira e a referencia
 foreign key (idcurso) references curso(idcurso)          #Definindo a outra chave estrangeira e a refencia
 )default charset = utf8mb4;
 
 #Como inserir os registros

insert into gafanhoto_assiste_curso values
(default, '2014-03-01', '1', '2');    #Id default vai gerar meu id automaticamente do (gafanhoto_assiste-curso) e depois diz que no dia primeiro de março de 2014 o Gafanhoto 1 começou a assistir o curso 2.

select * from gafanhoto_assiste_curso; #Confere se ta tudo certo

#Junções vamos usar o inner JOIN e ON denovo.

 select * from gafanhotos g          #Botei g como apelido
 join gafanhoto_assiste_curso a      #Juntando a tabela gafanhotos com o resultado do assiste
 on g.id = a.idgafanhoto;            #//Precisa do on para dar tudo certo, on id do gafanhoto igual ao id gafanhoto da tabela a. 

 #Exemplo 2: Mostrar so as informações que queremos.

 select g.id, g.nome from gafanhotos g  
 join gafanhoto_assiste_curso a              
 on g.id = a.idgafanhoto;     

#Exemplo 3:                
 
 select g.nome, a.idcurso from gafanhotos g  
 join gafanhoto_assiste_curso a              
 on g.id = a.idgafanhoto
 order by g.nome ;   #Odernar pelo nome

#Exemplo 4: Não quero so o código do curso quero o nome do curso, que ta la na outra tabela cursos, e vamos usar a tabela cursos como? Outro JOIN.
             #Assim conseguimos juntar e puxar dados de três tabelas.
             
 select g.nome, a.idcurso, c.nome from gafanhotos g  
 join gafanhoto_assiste_curso a              
 on g.id = a.idgafanhoto
 join cursos c
 on a.idcurso = c.idcurso;



