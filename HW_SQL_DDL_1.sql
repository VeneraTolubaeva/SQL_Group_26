--1) ������� employees
--������� ������� employees
-- id. serial,  primary key,
-- employee_name. Varchar(50), not null
--��������� ������� employee 70 ��������.

create table employees (
	id serial primary key,
	monthly_salary varchar (50) not null
);

select * from employees;

insert into employees (employee_name)
values ('David Gal'),
		('Dina Di'),
		('Sirena Lite'),
		('Alina Grec'),
		('Anton Bred'),
		('Andrey Vish');

--2)������� salary
--������� ������� salary
-- id. Serial  primary key,
-- monthly_salary. Int, not null
--��������� ������� salary 15 ��������:
-- 1000
-- 1100
-- 1200
-- 1300
-- 1400
-- 1500
-- 1600
-- 1700
-- 1800
-- 1900
-- 2000
-- 2100
-- 2200
-- 2300
-- 2400
-- 2500

create table salary (
	id serial primary key,
	monthly_salary int not null
);

select * from salary;

insert into salary (monthly_salary)
values (1000),
		(1100),
		(1200),
		(1300),
		(1400),
		(1500),
		(1600),
		(1700),
		(1800),
		(1900),
		(2000),
		(2100),
		(2200),
		(2300),
		(2400),
		(2500);

--3) ������� employee_salary
--������� ������� employee_salary
-- id. Serial  primary key,
-- employee_id. Int, not null, unique
-- salary_id. Int, not null
--��������� ������� employee_salary 40 ��������:
-- � 10 ����� �� 40 �������� �������������� employee_id

create table employee_salary (
	id serial primary key,
	employee_id int not null,
	salary_id int not null 
);

select * from employee_salary;

insert into employee_salary (id,employee_id,salary_id)
values (1,3,7),
		(2,1,4),
		(3,5,9),
		(4,40,13),
		(5,23,4),
		(6,11,2),
		(7,52,10),
		(8,15,13),
		(9,26,4),
		(10,16,1),
		(11,33,7),
		(12,4,3),
		(13,6,8),
		(14,7,5),
		(15,8,6),
		(16,9,2),
		(17,10,11),
		(18,12,13),
		(19,13,14),
		(20,14,15),
		(21,17,10),
		(22,18,12),
		(23,19,5),
		(24,20,13),
		(25,21,4),
		(26,22,2),
		(27,24,10),
		(28,25,13),
		(29,27,4),
		(30,28,1),
		(31,29,7),
		(32,30,4),
		(33,31,9),
		(34,32,13),
		(35,203,4),
		(36,204,2),
		(37,205,10),
		(38,207,13),
		(39,208,4),
		(40,209,1);
		
select * from employee_salary;

--3)������� roles
--������� ������� roles
-- id. Serial  primary key,
-- role_name. int, not null, unique
--�������� ��� ������ role_name � int �� varchar(30)
--��������� ������� roles 20 ��������:

create table roles (
	id serial primary key,
	role_name int not null unique
);

select * from roles;

alter table roles 
alter column role_name type varchar(30) using role_name::varchar(30);

insert into roles (id,role_name)
values (1,'Junior_Phyton_developer'),
		(2,'Middle_Phyton_developer'),
		(3,'Senior_Phyton_developer'),
		(4,'Junior_Java_developer'),
		(5,'Middle_Java_developer'),
		(6,'Senior_Java_developer'),
		(7,'Junior_JavaScript_developer'),
		(8,'Middle_JavaScript_developer'),
		(9,'Senior_JavaScript_developer'),
		(10,'Junior_Manual_QA_engineer'),
		(11,'Middle_Manual_QA_engineer'),
		(12,'Senior_Manual_QA_engineer'),
		(13,'Project_Manager'),
		(14,'Designer'),
		(15,'HR'),
		(16,'CEO'),
		(17,'Sales_Manager'),
		(18,'Junior_Automation_QA_engineer'),
		(19,'Middle_Automation_QA_engineer'),
		(20,'Senior_Automation_QA_engineer');

--4)������� roles_employee
--������� ������� roles_employee
-- id. Serial  primary key,
-- employee_id. Int, not null, unique (������� ���� ��� ������� employees, ���� id)
-- role_id. Int, not null (������� ���� ��� ������� roles, ���� id)
--��������� ������� roles_employee 40 ��������:

create table roles_employee (
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key (employee_id)
		references employees(id),
	foreign key (role_id)
		references roles(id)
);

insert into roles_employee (employee_id, role_id)
values (7,2),
		(20,4),
		(3,9),
		(5,13),
		(23,4),
		(11,2),
		(10,9),
		(22,13),
		(21,3),
		(34,4),
		(6,7),
		(1,1),
		(2,8),
		(4,7),
		(8,4),
		(9,2),
		(13,9),
		(12,13),
		(14,3),
		(15,4),
		(16,7),
		(17,4),
		(18,9),
		(19,13),
		(24,4),
		(25,2),
		(26,9),
		(27,13),
		(28,3),
		(29,4),
		(30,7),
		(31,4),
		(32,9),
		(33,13),
		(35,4),
		(36,2),
		(37,9),
		(38,13),
		(39,3),
		(40,4);
		
select * from roles_employee;
