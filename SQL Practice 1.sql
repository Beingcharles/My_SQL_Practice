use sql_practice;
create table students(
ID int,
Name varchar(15),
Age int
);
select * from students;
alter table students add column Grade varchar(10);

alter table students rename column Grade to Final_Grade;

insert into students(ID,Name,Age,Final_Grade) values
(101,'john doe',20,'A'),
(102,'Jane Smith',22,'B'),
(103, 'Bob John', 19, 'C'),
(104, 'Alice Brown', 21, 'A'),
(105, 'Charlie Davis', 20, 'B'),
(106, 'Emma Wilson', 23, 'A'),
(107, 'Michael Lee', 20, 'C'),
(108, 'Olivia Moore', 19, 'B'),
(109, 'William Turner', 21, 'A'),
(110, 'Sophia Rod', 22, 'C');

update students set age=21 where id=101;

delete from students where id =101;

select * from students where age>=19;

select * from students where name in ('Alice Brown','William Turner');

select * from students where Final_Grade in ('A','B') and age >= 20;

select * from students where age between 18 and 25;

select * from students where age < 20;

select * from students where Final_Grade > 'B';

select count(*) from students;

select avg(age) as Average_Age from students;

select sum(age) from students where  Final_Grade ='A'or  final_grade= 'B';

select count(Name),final_grade from students group by final_grade order by final_grade; 

select avg(age),final_grade from students group by final_grade order by final_grade;


insert into students values (111, "John", 25, 'C');

select count(Name),final_grade from students group by final_grade order by final_grade desc limit 1;

select avg(age), final_grade from students group by final_grade having avg(age) > 20;

select count(name), final_grade from students group by final_grade having count(name) < 4;

select avg(age), final_grade from students group by final_grade having avg(age) between 20 and 25;

select name, age from students order by age;

select name, age from students where final_grade in ('A','B') order by age DESC;

select * from students order by final_grade asc;

delete from students where id =102;
