-- Вывести всех студентов, у которых имена начинаются на f,s и b
select * from students where name similar to '(F|S|B)%';

-- вывести всех студентов, которые были зарегистрированны в 10 месяце 2020 и 2021 года
select * from students where date_part('year', created_on) >= '2020' and date_part('month', created_on) = '10'; 

-- вывести всех студентов, которые были зарегистрированны после 10 месяце 2021 года
select * from students where date_part('year', created_on) = '2021' and date_part('month', created_on) > '10'; 
