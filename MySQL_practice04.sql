create table student(
	id_student int not null,
    name varchar(50) not null,
    birth_date date,
    primary key (id_student)
)

create table teacher(
	id_teacher int not null,
    name varchar(50) not null,
    primary key (id_teacher)
)

create table course(
	id_course int not null,
    name varchar(50) not null,
    primary key (id_course)
)

create table point_eva(
	id_point int not null,
    first_point int,
    second_point int,
    primary key (id_point)
)


create table student_course (
	id int not null,
    id_student int not null,
    id_course int not null,
    start_date date,
    end_date date,
    constraint fk_sc_student foreign key (id_student) references student(id_student) on update cascade on delete cascade,
    constraint fk_sc_course foreign key (id_course) references course(id_course) on update cascade on delete cascade
)

create table teacher_course(
	id int not null,
    id_teacher int not null,
    id_course int not null,
    start_date date,
    end_date date,
    constraint fk_tc_teacher foreign key (id_teacher) references teacher(id_teacher) on update cascade on delete cascade,
    constraint fk_tc_course foreign key (id_course) references course(id_course) on update cascade on delete cascade
)

create table student_point_eva(
	id int not null,
    id_student int not null,
    id_point int not null,
    test_date date,
    constraint fk_sp_student foreign key (id_student) references student(id_student) on update cascade on delete cascade,
    constraint fk_sp_point foreign key (id_point) references point_eva(id_point) on update cascade on delete cascade
)

create table teacher_point_eva(
	id int not null,
    id_teacher int not null,
    id_point int not null,
    check_date date,
    constraint fk_tp_teacher foreign key (id_teacher) references teacher(id_teacher) on update cascade on delete cascade,
    constraint fk_tp_point foreign key (id_point) references point_eva(id_point) on update cascade on delete cascade
)

alter table student_course add primary key (id)
alter table teacher_course add primary key (id)
alter table student_point_eva add primary key (id)
alter table teacher_point_eva add primary key (id)

alter table teacher_point_eva modify column check_date date

select * from student
select * from teacher
select * from course
select * from point_eva

select * from student_course
select * from teacher_course
select * from student_point_eva
select * from teacher_point_eva


insert into student values 
(1,'Nguyen Van Manh','1991-01-01'),
(2,'Nguyen Van Vu','1991-01-01'),
(3,'Nguyen Van Hieu','2000-01-01')

insert into teacher values
(1,'Doan Van Van'),
(2,'Nguyen Thanh Luan'),
(3,'Nguyen Manh Hung'),
(4,'Nguyen Thi Huyen')

insert into course values 
(1,'HTML,CSS'),
(2,'Git'),
(3,'SQL'),
(4,'KR Language')

insert into point_eva values 
(1,8,null),
(2,8,null),
(3,8,null),
(4,8,null),
(5,9,null),
(6,9,null)

insert into student_course values 
(1,1,1,'2022-03-07','2022-03-09'),
(2,2,1,'2022-03-07','2022-03-09'),
(3,3,1,'2022-03-07','2022-03-09'),
(4,1,2,'2022-03-10','2022-03-10'),
(5,2,2,'2022-03-10','2022-03-10'),
(6,3,2,'2022-03-10','2022-03-10'),
(7,1,3,'2022-03-11','2022-03-16'),
(8,2,3,'2022-03-11','2022-03-16'),
(9,3,3,'2022-03-11','2022-03-16'),
(10,1,4,'2022-03-07','2022-06-07'),
(11,2,4,'2022-03-07','2022-06-07'),
(12,3,4,'2022-03-07','2022-06-07')

insert into teacher_course values 
(1,1,1,'2022-03-07','2022-03-09'),
(2,2,2,'2022-03-10','2022-03-10'),
(3,3,3,'2022-03-11','2022-03-16'),
(4,4,4,'2022-03-07','2022-06-07')

insert into student_point_eva values
(1,1,1,'2022-03-09'),
(2,2,2,'2022-03-09'),
(3,3,3,'2022-03-09'),
(4,1,4,'2022-03-10'),
(5,2,5,'2022-03-10'),
(6,3,6,'2022-03-10')

insert into teacher_point_eva values 
(1,1,1,'2022-03-10'),
(2,1,2,'2022-03-10'),
(3,1,3,'2022-03-10'),
(4,2,4,'2022-03-17'),
(5,2,5,'2022-03-17'),
(6,2,6,'2022-03-17')

create table manager(
	id_manager int not null primary key,
    name varchar(50)
)

create table staff (
	id int not null primary key,
    id_staff int not null,
    position varchar(50),
    constraint fk_staff_student foreign key (id_staff) references student(id_student) on update cascade on delete cascade,
    constraint fk_staff_teacher foreign key (id_staff) references teacher(id_teacher) on update cascade on delete cascade,
    constraint fk_staff_manager foreign key (id_staff) references manager(id_manager) on update cascade on delete cascade
)
select * from staff
drop table staff
insert into manager values 
(1,'BigSun'),
(2,'Tran Bich Lien'),
(3,'Nguyen Huyen'),
(4,'Nguyen Ha')

insert into staff values 
(1,1,'Boss'),
(2,2,'Manager'),
(3,3,'Manager'),
(4,4,'Manager'),
(5,1,'Intern'),
(6,2,'Intern'),
(7,3,'Intern'),
(8,1,'Teacher'),
(9,2,'Teacher'),
(10,3,'Teacher'),
(11,4,'Teacher')











