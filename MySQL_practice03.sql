create table employees(
	emp_no int not null,
    birth_date date not null,
    first_name varchar(14) not null,
    last_name varchar(16) not null,
    gender enum('M','F') not null,
     hire_date   date  not null,
    PRIMARY KEY (emp_no)
)

CREATE TABLE departments (
    dept_no     CHAR(4)         NOT NULL, 
    dept_name   VARCHAR(40)     NOT NULL,
    PRIMARY KEY (dept_no)
     -- UNIQUE  KEY (dept_name)
);
CREATE TABLE dept_emp (
    emp_no      INT         NOT NULL,
    dept_no     CHAR(4)     NOT NULL,
    from_date   DATE        NOT NULL,
    to_date     DATE        NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no) ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (emp_no, dept_no)
);
create table dept_manager(
	dept_no varchar(14) not null,
    emp_no int not null,
    form_date date not null,
    to_date date not null,
    foreign key (emp_no) references employees(emp_no) on delete cascade on update cascade,
    foreign key (dept_no) references departments(dept_no) on delete cascade on update cascade,
    primary key (dept_no,emp_no)
)

create table titles(
	emp_no int not null,
    title varchar (50) not null,
    from_date date not null,
    to_date date not null,
    foreign key (emp_no) references employees(emp_no) on delete cascade on update cascade,
    primary key (emp_no,title,from_date)
)

create table salaries(
	emp_no int not null,
    salary int not null,
    from_date date not null,
    to_date date not null,
    foreign key (emp_no) references employees(emp_no) on delete cascade on update cascade,
    primary key(emp_no,form_date)
    
)

INSERT INTO `departments` VALUES 
('d001','Marketing'),
('d002','Finance'),
('d003','Human Resources'),
('d004','Production'),
('d005','Development'),
('d006','Quality Management'),
('d007','Sales'),
('d008','Research'),
('d009','Customer Service');

INSERT INTO `employees` VALUES 
(10001,'1953-09-02','Georgi','Facello','M','1986-06-26'),
(10002,'1964-06-02','Bezalel','Simmel','F','1985-11-21'),
(10003,'1959-12-03','Parto','Bamford','M','1986-08-28'),
(10004,'1954-05-01','Chirstian','Koblick','M','1986-12-01'),
(10005,'1955-01-21','Kyoichi','Maliniak','M','1989-09-12'),
(10006,'1953-04-20','Anneke','Preusig','F','1989-06-02'),
(10007,'1957-05-23','Tzvetan','Zielinski','F','1989-02-10'),
(10008,'1958-02-19','Saniya','Kalloufi','M','1994-09-15'),
(10009,'1952-04-19','Sumant','Peac','F','1985-02-18'),
(10010,'1963-06-01','Duangkaew','Piveteau','F','1989-08-24'),
(10011,'1953-11-07','Mary','Sluis','F','1990-01-22'),
(10012,'1960-10-04','Patricio','Bridgland','M','1992-12-18'),
(10013,'1963-06-07','Eberhardt','Terkki','M','1985-10-20'),
(10014,'1956-02-12','Berni','Genin','M','1987-03-11'),
(10015,'1959-08-19','Guoxiang','Nooteboom','M','1987-07-02'),
(10016,'1961-05-02','Kazuhito','Cappelletti','M','1995-01-27'),
(10017,'1958-07-06','Cristinel','Bouloucos','F','1993-08-03'),
(10018,'1954-06-19','Kazuhide','Peha','F','1987-04-03'),
(10019,'1953-01-23','Lillian','Haddadi','M','1999-04-30'),
(10020,'1952-12-24','Mayuko','Warwick','M','1991-01-26'),
(10021,'1960-02-20','Ramzi','Erde','M','1988-02-10'),
(10022,'1952-07-08','Shahaf','Famili','M','1995-08-22'),
(10023,'1953-09-29','Bojan','Montemayor','F','1989-12-17'),
(10024,'1958-09-05','Suzette','Pettey','F','1997-05-19'),
(10025,'1958-10-31','Prasadram','Heyers','M','1987-08-17'),
(10026,'1953-04-03','Yongqiao','Berztiss','M','1995-03-20'),
(10027,'1962-07-10','Divier','Reistad','F','1989-07-07'),
(10028,'1963-11-26','Domenick','Tempesti','M','1991-10-22'),
(10029,'1956-12-13','Otmar','Herbst','M','1985-11-20'),
(10030,'1958-07-14','Elvis','Demeyer','M','1994-02-17'),
(10031,'1959-01-27','Karsten','Joslin','M','1991-09-01'),
(10032,'1960-08-09','Jeong','Reistad','F','1990-06-20'),
(10033,'1956-11-14','Arif','Merlo','M','1987-03-18'),
(10034,'1962-12-29','Bader','Swan','M','1988-09-21'),
(10035,'1953-02-08','Alain','Chappelet','M','1988-09-05'),
(10036,'1959-08-10','Adamantios','Portugali','M','1992-01-03'),
(10037,'1963-07-22','Pradeep','Makrucki','M','1990-12-05'),
(10038,'1960-07-20','Huan','Lortz','M','1989-09-20'),
(10039,'1959-10-01','Alejandro','Brender','M','1988-01-19'),
(10040,'1959-09-13','Weiyi','Meriste','F','1993-02-14'),
(10041,'1959-08-27','Uri','Lenart','F','1989-11-12'),
(10042,'1956-02-26','Magy','Stamatiou','F','1993-03-21'),
(10043,'1960-09-19','Yishay','Tzvieli','M','1990-10-20')

INSERT INTO `dept_emp` VALUES 
(10001,'d005','1986-06-26','9999-01-01'),
(10002,'d007','1996-08-03','9999-01-01'),
(10003,'d004','1995-12-03','9999-01-01'),
(10004,'d004','1986-12-01','9999-01-01'),
(10005,'d003','1989-09-12','9999-01-01'),
(10006,'d005','1990-08-05','9999-01-01'),
(10007,'d008','1989-02-10','9999-01-01'),
(10008,'d005','1998-03-11','2000-07-31'),
(10009,'d006','1985-02-18','9999-01-01'),
(10010,'d004','1996-11-24','2000-06-26'),
(10010,'d006','2000-06-26','9999-01-01'),
(10011,'d009','1990-01-22','1996-11-09'),
(10012,'d005','1992-12-18','9999-01-01'),
(10013,'d003','1985-10-20','9999-01-01'),
(10014,'d005','1993-12-29','9999-01-01'),
(10015,'d008','1992-09-19','1993-08-22')

INSERT INTO `dept_manager` VALUES 
('d001',10001,'1985-01-01','1991-10-01'),
('d001',10002,'1991-10-01','9999-01-01'),
('d002',10003,'1985-01-01','1989-12-17'),
('d002',10004,'1989-12-17','9999-01-01'),
('d003',10005,'1985-01-01','1992-03-21'),
('d003',10006,'1992-03-21','9999-01-01'),
('d004',10007,'1985-01-01','1988-09-09')

INSERT INTO `salaries` VALUES 
(10001,60117,'1986-06-26','1987-06-26'),
(10002,62102,'1987-06-26','1988-06-25'),
(10003,66074,'1988-06-25','1989-06-25'),
(10004,66596,'1989-06-25','1990-06-25'),
(10005,66961,'1990-06-25','1991-06-25'),
(10006,71046,'1991-06-25','1992-06-24'),
(10007,74333,'1992-06-24','1993-06-24'),
(10008,75286,'1993-06-24','1994-06-24'),
(10009,75994,'1994-06-24','1995-06-24'),
(10010,76884,'1995-06-24','1996-06-23')

INSERT INTO `titles` VALUES 
(10001,'Senior Engineer','1986-06-26','9999-01-01'),
(10002,'Staff','1996-08-03','9999-01-01'),
(10003,'Senior Engineer','1995-12-03','9999-01-01'),
(10004,'Engineer','1986-12-01','1995-12-01'),
(10004,'Senior Engineer','1995-12-01','9999-01-01'),
(10005,'Senior Staff','1996-09-12','9999-01-01'),
(10005,'Staff','1989-09-12','1996-09-12'),
(10006,'Senior Engineer','1990-08-05','9999-01-01'),
(10007,'Senior Staff','1996-02-11','9999-01-01'),
(10007,'Staff','1989-02-10','1996-02-11'),
(10008,'Assistant Engineer','1998-03-11','2000-07-31')

