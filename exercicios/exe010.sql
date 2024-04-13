#Usando o operador LIKE      //Exemplo: Like aqui significa semelhante, parecido. a porcentagem depois do P vai mostrar tudo que começa com p, que esteja em nome.

 select * from cursos
 where nome like 'P%';     

 #Exemplo 2: Porcentagem ANTES do a vai mostrar tudo que termina com A

 select * from cursos
 where nome like '%A';  
 
 #Exemplo 3: #Seleciona qualquer nome que tenha a, em qualquer lugar.

 select * from cursos
 where nome like '%A%'; 

 update cursos set nome = 'PáOO' where idcurso = '9'; #Para atualizar alguma informação, botamos acento no á nesse caso.

 #Exemplo 4: #Quero selecionar todos que não tenham a no nome: NOT LIKE
 
 select * from cursos
 where nome not like '%A%'; 

 #Exemplo 5: #Quero selecionar todos que tenham ph no inicio do nome e p no final.
 
 select * from cursos
 where nome like 'ph%p'; 

 #Exemplo 6: #Quero selecionar todos que tenham ph no inicio do nome e p no final, e pode ter nada ou alguma coisa no final.
 
 select * from cursos
 where nome like 'ph%p%'; 

  #Exemplo 6: #Quero selecionar todos que tenham ph no inicio do nome e p no final, e seguido de alguma coisa no final(caractere).
 
  select * from cursos
  where nome like 'ph%p_'; 

  #Exemplo 7: #Quero selecionar todos que tenham p no inicio do nome, algum caractere no meio, seguido de p, e seguido de alguma coisa ou nada no final.
 
  select * from cursos
  where nome like 'p_p%'; 

  #Exemplo 8: #Quero selecionar todos que tenham p no inicio do nome, dois caracteres no meio, seguido de t, e seguido de alguma coisa ou nada no final.
 
  select * from cursos
  where nome like 'p__t%'; 
  
  #Exemplo 9: #Quero selecionar todos que tenham silva no nome.
 
  select * from gafanhotos
  where nome like '%silva%'; 

  #Exemplo 10: #Não quero que selecione silvana junto no exemplo acima.
 
  select * from gafanhotos
  where nome like '%_silva%'; 
 
   #Exemplo 11: #Seleciona todos que terminam com silva.
 
   select * from gafanhotos
   where nome like '%silva'; 
   
   #Exemplo 12: #Seleciona todos que começam com silva.
 
	select * from gafanhotos
	where nome like 'silva%'; 
    
    
    
#Distinguindo: DISTINCT.   //Nesse caso em vez de exibir a nacionalidade de cada pessoa ele vai me dar cada uma das nacionalidades.
   /*Ex: Brasil EUA Brasil Portugal Alemanha Alemanha Brasil 
     Ex com distinct: Brasil EUA Portugal Alemanha */

 #Exemplo: Saber qual o paises que acompanham nossos cursos.

 select distinct nacionalidade from gafanhotos;

 #Exemplo 2: Agora com a carga horaria.

 select distinct carga from cursos
 order by carga;

 #Exemplo 3:
 
 select distinct nacionalidade from gafanhotos                #Não estou interessado em saber onde cada um nasceu, so onde existem pessoas nascidas.
 order by nacionalidade;



#Funções de agregação: Servem para selecionar ou totalizar alguma coisa

 #COUNT   
  
 select count(*) from cursos;    #Vai me mostrar a quantidade de cursos cadastrados. Resultado da contagem: 30.


 #Exemplo 2: Quantos cursos tem mais de quarenta horas? 
  
 select count(*) from cursos where carga > 40;


 #Exemplo 3: Quantos tem a carga maior que quarenta?

 select count(*) from cursos where carga > 40;
 


 #MAX

 select max(carga) from cursos;   #Mostra qual a maior carga entre os cursos

 #Exemplo 2: Selecionar o curso que eu mais tive aulas em 2016

 select max(totaulas) from cursos where ano = '2016';
 
 

 #MIN 

 select min(totaulas) from cursos;


 #Exemplo 2: Selecionar o curso que eu menos tive aulas em 2016

 select nome, min(totaulas) from cursos where ano = '2016';
 
 

 #SUM
  
 select sum(totaulas) from cursos;  #Vai somar todas as horas de cursos. Resultado: 216.

 #Exemplo 2: Agora o somatório do total de aulas de 2016.

 select sum(totaulas) from crusos where ano = '2016';
 
 

 #AVG

 select avg(totaulas) from cursos;     #Vai tirar a média, pegar a somatória e dividir pelo numero de cursos. Ex: Tem 10 cursos e 216 horas de aulas. 216/10 = 21.6
