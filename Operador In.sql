-- EL OPERADOR IN TRABAJA DENTRO DE LA CLÁUSULA WHERE
-- ESTA CONSULTA SE RETORNA COMO NULL 
select * from sakila.customer where first_name = 'MARY' and first_name = 'PATRICIA';

-- MEDIANTE EL OPERADOR OR OBTENEMOS AMBOS RESULTADOS
select * from sakila.customer where first_name = 'MARY' or first_name = 'PATRICIA';
		
-- OBTENGO EL MISMO VALOR QUE USANDO OR
select * from sakila.customer where first_name in ('MARY','PATRICIA');	

select * from sakila.film where special_features in ('Trailers','Trailers,Deleted Scenes') and rating in ('G','NC-17') and length > 50;

-- COMBINACION IN CON NOT
-- 	CONDICIONA EL QUERY "NO EN"
select * from sakila.category where name not in('Action','Animation','Children');

-- EJERCICIO DE CONSULTA Consulta la tabla film_text de la base de datos sakila.
-- Filtra la información donde title  sea ZORRO ARK, VIRGIN DAISY, UNITED PILOT
select * from sakila.film_text;  
select * from sakila.film where title in('Zorro Ark','Virgin Daisy', 'United Pilot');

-- EJERCICIO DE CONSULTA Consulta la tabla city de la base de datos sakila.
-- Filtra la información donde city sea Chiayi, Dongying, Fukuyama y Kilis.
select * from sakila.city;
select * from sakila.city where city in('Chiayi','Dongying','Fukuyama','Kilis');
