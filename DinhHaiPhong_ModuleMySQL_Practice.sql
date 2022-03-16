
create table users (
	id int not null primary key,
    email varchar(25) not null,
    pwd varchar(15),
    phone varchar(13) not null,
    address varchar(50) not null
)

select * from users;

insert into users(id,email,phone,address) values (001,'admin@niit.com','0123456','Hà Nội');

select * from users where id = 001;
-- select * from users where email = 'admin@niit.com' and phone = '0123456' and address = 'Hà Nội'
update users set id = 001 
-- update users set address = 'Hải Phòng' where email = 'admin@niit.com' and phone = '0123456' 