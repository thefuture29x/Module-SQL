create table rent(
	id int not null primary key auto_increment,
    customerName varchar(50) not null,
    startDate date not null,
    endDate date not null,
    price int not null
)

insert into rent(customerName,startDate,endDate,price) values
('Nguyen Van A','2021-04-26','2022-03-16',1000)
update rent set 

call sp_insertRent('Nguyen Van A','2021-04-26','2022-03-16',1000);

create table house (
id_house int not null,
id_rent int not null,
name varchar(50) not null,
update_rent varchar(20) not null,
primary key(id_house),
foreign key (id_rent) references rent(id)
)
alter table house MODIFY COLUMN id_house int not null auto_increment
select * from rent
select * from house

-- trigger after insert
create trigger insert_rent 
after insert on rent for each row
insert into house (id_rent,name,update_rent) values
	(NEW.id,NEW.customerName,'insert')

-- trigger after update
create trigger update_rent2 
after update on rent for each row
insert into house (id_rent,name,update_rent) values
	(OLD.id,OLD.customerName,'update')
   
    
show triggers;
drop trigger update_rent; 
select * from house
