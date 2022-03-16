
create table student (
	id_student int not null auto_increment primary key,
    first_name varchar(100) not null,
    last_name varchar(100) not null,
    age int
)
create table class (
	id_class int not null auto_increment primary key,
    name_class varchar(200)
)
create table teacher (
	id_teacher int not null auto_increment primary key,
    name_teacher varchar(200)
)

insert into student (first_name, last_name,age) values 
("Nguyen Van","C",20),
("Nguyen Van","D",20),
("Nguyen Van","E",20)

insert into class (name_class) values
("Class 1"),
("Class 2"),
("Class 3"),
("Class 4")

insert into teacher (name_teacher) values 
("Dinh Van A"),
("Dinh Van B"),
("Dinh Van C")

select * from student
select * from teacher
select * from class

select * from class where id_class = 2

select * from student where id_student = 1 and age = 20
select * from student where id_student = 1 or last_name = "E"

select * from student order by id_student DESC

update student set first_name = "Dinh Thi" where id_student = 5

delete from student where id_student = 5

select * from student where first_name = "Nguyen Van" limit 3

select count(age) from student
select avg(age) from student
select sum(age) from student

select * from student where first_name like '%uyen%'

alter table student add id_class int

alter table teacher add id_class int

update student set id_class = 4 where id_student = 5
update teacher set id_class = 3 where id_teacher = 3

alter table student
add CONSTRAINT FK_StudentClass
foreign key (id_class)
references class(id_class)

alter table teacher
add CONSTRAINT FK_TeacherClass
foreign key (id_class)
references class(id_class)

select * from class cl 
inner join student st
on cl.id_class = st.id_class
where cl.id_class = 1

select * from (
(class cl inner join student st on cl.id_class = st.id_class)
inner join teacher tc on cl.id_class = tc.id_class )
where cl.id_class = 1










