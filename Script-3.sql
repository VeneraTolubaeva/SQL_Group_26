create table City(
	id serial,
	title varchar(30)
);

insert into City (title)
values ('Warsaw'),
		('Dubai'),
		('Budapest'),
		('New York');
	
select * from City;

update City set title in 

insert into City (title)
values 	('Kracow'),
		('Istambul'),
		('Moscow'),
		('Almaty');
	

drop table City;

create table Persons(
	person_name varchar (80),
	city_id int 
);

insert into Persons(person_name, city_id)
values ('Alex',2),
		('Dmitriy',4),
		('Vadim',2),
		('Anna',1),
		('Viktor',5),
		('Natalia',3),
		('Sergey',1),
		('Tanua',6);

select * from Persons;

select * from Persons join City 
on Persons.City_id = City.id;

select * from Persons left join City 
on Persons.city_id = City.id;

select * from Persons right join City 
on Persons.city_id = City.id;

select * from roles;

select * from salary;

select * from roles_employee;

select * from employees;

create table roles_salary(
	id serial primary key,
	id_role int not null ,
	id_salary int not null,
	foreign key (id_role)
		references roles(id),
	foreign key (id_salary)
		references salary(id)
);

insert into roles_salary (id_role, id_salary)
values (1,4),
		(2,3),
		(3,6),
		(4,1),
		(5,2),
		(6,9),
		(7,7),
		(8,10),
		(9,8),
		(10,11);
	
select * from roles_salary ;
		
select roles.role_name, salary.monthly_salary  from roles 
join roles_salary on roles.id = roles_salary.id_role
join salary on roles_salary.id_salary = salary.id;

select roles.role_name, salary.monthly_salary from roles 
join roles_salary on roles.id = roles_salary.id_role
join salary on roles_salary.id_salary = salary.id
where monthly_salary > 1400;

select count(*) from roles 
join roles_salary on roles.id = roles_salary.id_role
join salary on roles_salary.id_salary = salary.id
where monthly_salary > 1400;

select sum(monthly_salary) from roles 
join roles_salary on roles.id = roles_salary.id_role
join salary on roles_salary.id_salary = salary.id
where monthly_salary > 1400;

insert into roles_employee (employee_id, role_id)
values (62,5),
		(48,6),
		(67,5),
		(50,6),
		(51,5),
		(69,6),
		(41,10);
		
insert into employee_salary(id, employee_id, salary_id)
values 	(41,2,5),
		(42,40,15),
		(43,45,5),
		(44,47,3),
		(45,48,13),
		(46,52,12),
		(47,55,13),
		(48,57,8),
		(49,56,15),
		(52,62,10);
		
		
		
