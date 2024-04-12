select * from gafanhotos;

select * from cursos;

#Exibir/Selecionar essa tabela priorizando o nome em ordem alfabetica: ORDER 
 select * from cursos
 order by nome;
 
 #Se eu quiser de baixo para cima e por nome tambem? DESC
 select * from cursos
 order by nome desc;
 
 #Filtrar colunas: Se eu não quiser selecionar todas as colunas e so nome, carga e ano:   //Tira o asterisco e bota as colunas que você quer separando por virgula

 select nome, carga, ano from cursos
 order by nome;

#A ordem influencia na exibição tambem se quiser exibir uma coluna primeiro so botar antes:
 select ano, nome, carga from cursos
 order by nome;
 
 #Se eu quiser organizar pelo ano a ordem:
 select ano, nome, carga from cursos
 order by ano;

#Se eu quiser ordernar por ano e depois por nome?
  select ano, nome, carga from cursos
  order by ano, nome;


#E para filtrar linha?  //So vai selecionar os cursos lançados no ano de 2016.
 select * from cursos 
 where ano = '2016'
 order by nome;

#E para selecionar filtrando linhas e colunas?  //So vai selecionar nome e carga dos cursos lançados em 2016
  select nome, carga from cursos 
  where ano = '2016'
  order by nome;
  
  #Utilizando outros operadores relacionais para filtrar   //Vai selecionar nome, descrição e ano dos cursos que seja de 2015 ou antes.

 select nome, descricao, ano from cursos
 where ano >= '2015'
 order by ano, nome;                            #Organizando por ano e depois por nome.

 
#Exemplo 2: Maior que 2016

  select nome, descricao, ano from cursos
  where ano < '2016'
  order by ano, nome;   

#Exemplo 3: Não igual
  
  select nome, descricao, ano from cursos
  where ano != '2016'
  order by ano, nome;   
  

  select nome, descricao, ano from cursos
  where ano <> '2016'
  order by ano, nome;
                  
#Selecionando intervalos, podemos usar mais operadores relacionais: BETWEEN AND    //Entre  e

  select nome, descricao, ano from cursos
  where ano between '2014' and '2016'                    #Vai selecionar filtrando oque esta entre o ano de 2014 e 2016.
  order by ano desc, nome asc;                    #um descrescente e o outro ascendente.

#Selecionando valores: IN           //Podendo botar valores especificos.

  select nome, descricao, ano from cursos
  where ano in (2014, 2016)  #So vai me mostrar os cursos de 2014 e 2016
  order by ano;


   #Exemplo 2:

  select nome, descricao, ano from cursos
  where ano in (2014, 2016, 2020)  #So vai me mostrar os cursos de 2014 e 2016 e 2020
  order by ano;

#Combinando operadores: relacionais e lógicos: 

  select nome, carga, totaulas from cursos
  where carga > 35 and totaulas <  30;  #So vai me mostrar os cursos que a carga é maior que 35 e o total de aulas menor que 30.
  

  #Exemplo 2: 
   
  select nome, carga, totaulas from cursos
  where carga > 35 or totaulas <  30;  #Serve qualquer um se a carga for maior que 35 ou se o total de aulas for menor que 30.


 
