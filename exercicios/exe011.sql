#Agrupamento: GROUP BY         

 select carga from cursos
 group by carga;                 #Significa agrupado por carga em portugues.


#Função de agregação e agrupamento              //Conseguindo ver quantos registros temos agrupados

 select carga, count(nome) from cursos
 group by carga;        


 #Exemplo 2: 

 select totaulas, count(*) from cursos
 group by totaulas
 order by totaulas;

 #Exemplo 3:

 select totaulas, count(*) from cursos
 group by totaulas
 order by totaulas;

 select * from cursos where totaulas = 30;


 #Exemplo 4:

 select totaulas, count(*) from cursos
 group by totaulas
 order by totaulas;

 select * from cursos where totaulas = 12;

 #Exemplo 5:

 select totaulas, count(*) from cursos
 group by totaulas
 order by totaulas;

 select * from cursos where totaulas > 20;

 #Exemplo 6:

 select totaulas, count(*) from cursos
 group by totaulas
 order by totaulas;

 select carga, count(nome) from cursos where totaulas = 30
 group by carga;

 #Exemplo 7:
 
 select ano, count(*) from cursos
 group by ano
 order by count(*) desc;

 #Exemplo 8: HAVING  //Para agrupar so os que forem maior que 3
 
 select carga, count(nome) from cursos
 group by carga
 having count(nome) > 3;

 #Exemplo 9:  //Para agrupar so os que forem maior ou igual a 5

 select ano, count(*) from cursos
 group by ano
 having count(ano) >= 5                     
 order by count(*) desc;

 #Exemplo 10: 

 select ano, count(*) from cursos
 group by ano                         #Note que so podemos usar o having no grupo que agrupamos acima, senão da erro se for outro campo.           
 having ano > 2013                    
 order by count(*) desc;

 select avg(carga) from cursos;   #Podemos tirar a média tambem

 #Exemplo 11:

 select carga, count(*) from cursos
 where ano > 2015
 group by carga;

 #Exemplo 12: 
 
 select carga, count(*) from cursos
 where ano > 2015
 group by carga
 having carga > 36.6;            #Dessa forma quando a média mudar se eu adicionar mais cursos vai ficar a informação antiga.
 
 
 #Exemplo 13: Mostrar somente quem esta acima da média.

 select carga, count(*) from cursos
 where ano > 2015
 group by carga
 having carga > (select avg(carga) from cursos);
  