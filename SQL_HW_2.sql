--Создать таблицу employees
--id. serial,  primary key,
--employee_name. Varchar(50), not null

create table employees (
	id serial primary key,
	employee_name varchar(50) not null
);

--Наполнить таблицу employee 70 строками

insert into employees(employee_name)
values ('Третьякова Ева Елисеевна'),
		('Иванов Тимофей Саввич'),
		('Федоров Ярослав Артурович'),
		('Горбунов Тимур Даниилович'),
		('Сорокин Глеб Кириллович'),
		('Борисов Михаил Николаевич'),
		('Кравцов Захар Романович'),
		('Филатова Софья Константиновна'),
		('Смирнова Анастасия Денисовна'),
		('Наумова Сафия Матвеевна'),
		('Шилова Дарья Алексеевна'),
		('Тимофеева Ксения Кирилловна'),
		('Головина Екатерина Марковна'),
		('Широкова Анастасия Ивановна'),
		('Бессонова Анна Денисовна'),
		('Сазонова Ксения Максимовна'),
		('Захаров Мирон Дамирович'),
		('Булатова Вера Макаровна'),
		('Новиков Артём Давидович'),
		('Пономарев Фёдор Даниилович'),
		('Киселева Александра Константиновна'),
		('Кудряшова Злата Максимовна'),
		('Иванова Виктория Ярославовна'),
		('Голикова Виктория Данииловна'),
		('Колосов Павел Денисович'),
		('Румянцева Майя Александровна'),
		('Худякова Маргарита Константиновна'),
		('Попова Александра Данииловна'),
		('Зайцева Виктория Дмитриевна'),
		('Киселева Александра Григорьевна'),
		('Семенов Александр Николаевич'),
		('Потапова Алина Тимофеевна'),
		('Устинова Ульяна Ярославовна'),
		('Тихонова Антонина Ильинична'),
		('Голубев Максим Максимович'),
		('Костин Денис Ярославович'),
		('Захаров Егор Артёмович'),
		('Васильева София Даниловна'),
		('Терехова Агата Данииловна'),
		('Верещагин Даниил Валерьевич'),
		('Сергеева Наталья Семёновна'),
		('Голубев Эмир Саввич'),
		('Хохлова Анна Павловна'),
		('Волошина Таисия Матвеевна'),
		('Соловьев Игорь Максимович'),
		('Устинов Даниил Михайлович'),
		('Павлов Роман Никитич'),
		('Березина Алиса Давидовна'),
		('Карпов Али Иванович'),
		('Ларионова Полина Богдановна'),
		('Баранова Дарья Ярославовна'),
		('Смирнов Константин Петрович'),
		('Карпов Дмитрий Всеволодович'),
		('Никулина Вероника Артёмовна'),
		('Савельева Виктория Михайловна'),
		('Черкасов Лев Егорович'),
		('Кузнецова Екатерина Дмитриевна'),
		('Павлов Даниил Робертович'),
		('Мещеряков Лев Романович'),
		('Суханов Дмитрий Кириллович'),
		('Минаев Егор Глебович'),
		('Королева Василиса Михайловна'),
		('Ермакова Камилла Артёмовна'),
		('Тарасова Амира Георгиевна'),
		('Аникин Илья Савельевич'),
		('Белкина Евангелина Георгиевна'),
		('Головина Агата Степановна'),
		('Исаев Андрей Андреевич'),
		('Зайцева Арина Вячеславовна'),
		('Полякова Евгения Андреевна');

--Создать таблицу salary
--id. Serial  primary key,
--monthly_salary. Int, not null

create table salary (
	id serial primary key,
	monthly_salary int not null 
);

--Наполнить таблицу salary 15 строками:

insert into salary(monthly_salary)
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

--Создать таблицу employee_salary
--id. Serial  primary key,
--employee_id. Int,  not null, unique,
--salary_id. Int, not null

create table employee_salary(
id serial primary key,
empoloyee_id int not null unique, 
salary_id int not null
);

--Наполнить таблицу employee_salary 40 строками:
--в 10 строк из 40 вставить несуществующие employee_id

insert into employee_salary(empoloyee_id, salary_id)
values (14, 7),
		(10, 4),
		(40, 9),
		(34, 13),
		(31, 4),
		(39, 2),
		(77, 10),
		(20, 13),
		(35, 4),
		(92, 1),
		(7, 5),
		(4, 8),
		(83, 12),
		(19, 12),
		(25, 15),
		(82, 12),
		(33, 5),
		(22, 5),
		(2, 1),
		(98, 7),
		(29, 11),
		(23, 7),
		(1, 1),
		(97, 10),
		(9, 11),
		(15, 14),
		(38, 12),
		(85, 10),
		(28, 13),
		(32, 14),
		(73, 16),
		(26, 13),
		(16, 15),
		(37, 6),
		(89, 14),
		(12, 12),
		(17, 7),
		(30, 10),
		(99, 1),
		(11, 7);

--Создать таблицу roles
--id. Serial  primary key,
--role_name. int, not null, unique

create table roles(
id serial primary key,
role_name int not null unique 
);

--Поменять тип столба role_name с int на varchar(30)

alter table roles 
alter column role_name type varchar(30);

--Наполнить таблицу roles 20 строками

insert into roles(role_name)
values ('Junior Python developer'),
	('Middle Python developer'),
	('Senior Python developer'),
	('Junior Java developer'),
	('Middle Java developer'),
	('Senior Java developer'),
	('Junior JavaScript developer'),
	('Middle JavaScript developer'),
	('Senior JavaScript developer'),
	('Junior Manual QA engineer'),
	('Middle Manual QA engineer'),
	('Senior Manual QA engineer'),
	('Project Manager'),
	('Designer'),
	('HR'),
	('CEO'),
	('Sales manager'),
	('Junior Automation QA engineer'),
	('Middle Automation QA engineer'),
	('Senior Automation QA engineer');

--Создать таблицу roles_employee
--id. Serial  primary key,
--employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
--role_id. Int, not null (внешний ключ для таблицы roles, поле id)

create table roles_employee(
id serial primary key,
empoloyee_id int not null unique, 
role_id int not null,
foreign key (empoloyee_id) references employees(id),
foreign key (role_id)	references roles(id) 
);

--Наполнить таблицу roles_employee 40 строками

insert into roles_employee(empoloyee_id, role_id)
values (36, 1),
		(11, 15),
		(13, 5),
		(35, 8),
		(26, 1),
		(10, 15),
		(40, 5),
		(2, 8),
		(18, 12),
		(24, 19),
		(29, 20),
		(27, 9),
		(7, 14),
		(20, 5),
		(31, 17),
		(5, 5),
		(38, 20),
		(30, 10),
		(14, 5),
		(21, 5),
		(3, 17),
		(28, 20),
		(1, 14),
		(25, 4),
		(33, 9),
		(19, 7),
		(34, 16),
		(32, 20),
		(22, 18),
		(17, 5),
		(37, 13),
		(6, 15),
		(9, 7),
		(4, 5),
		(39, 8),
		(8, 5),
		(23, 9),
		(16, 2),
		(15, 11),
		(12, 18);