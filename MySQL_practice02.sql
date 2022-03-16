create table client (
	id_client int not null auto_increment primary key,
    name varchar(200) not null,
    phone_number varchar(12),
    company varchar(200)
)

create table home (
	id_home int not null auto_increment primary key,
    address varchar(200) not null,
    cost varchar(20),
    owner_name varchar(50)
)

create table contract (
	id_home int not null,
    id_client int not null,
    time_begin varchar(20),
    time_finish varchar(20),
    foreign key (id_home) references home(id_home),
    foreign key (id_client) references client(id_client)
)

insert into client (name,phone_number,company) values
("Nông Văn Dền","123123123","Company 1"),
("Nông Văn Dầu","234234234","Company 2"),
("Nông Văn Kền","345345345","Company 3"),
("Nông Văn Hền","456456456","Company 4"),
("Nông Văn Bền","567567567","Company 5")

insert into home (address,cost,owner_name) values
("Address 7","12000000","Dinh Van V")
-- ("Address 2","8000000","Dinh Van B"),
-- ("Address 3","10000000","Dinh Van C"),
-- ("Address 4","7000000","Dinh Van D"),
-- ("Address 5","9000000","Dinh Van E")

insert into contract (id_home,id_client,time_begin,time_finish) values
(1,1,"1/1/2022","1/7/2021"),
(2,2,"1/1/2022","1/7/2021"),
(3,3,"1/1/2022","1/7/2021"),
(4,4,"1/1/2022","1/7/2021"),
(5,1,"1/7/2022","1/9/2021")

select * from home
select * from client
select * from contract


select address,owner_name from home where cost < 10000000

select id_client,name,company from client where name = 'Nông Văn Dền'

alter table contract 
add constraint fk_home_contract
foreign key (id_home) references home(id_home) 
on update set null
on delete set null

alter table contract
drop foreign key '1'

select * from home hm
left join contract ct on hm.id_home = ct.id_home
where ct.id_home is null

select count(ct.id_home), hm.id_home from home hm
left join contract ct on hm.id_home = ct.id_home
group by hm.id_home
having count(ct.id_home) >= 1


select * from ((contract ct
inner join home hm on hm.id_home = ct.id_home)
inner join client cl on ct.id_client = cl.id_client)
order by hm.cost asc limit 1

delete from home, contract
using home 
inner join contract 
where home.id_home = 5 
and home.id_home = contract.id_home


delete home,contract from home
inner join contract on home.id_home = contract.id_home
where home.id_home = 5
