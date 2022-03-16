create table khachsan(
	ma_khachsan int not null,
    ten_khachsan varchar(50) not null,
    diachi varchar(100) not null,
    primary key (ma_khachsan)
    
)
create table phong(
	so_phong int not null,
    ma_khachsan int not null,
    loai_phong varchar(50) not null,
    gia int not null,
    primary key (so_phong),
    foreign key (ma_khachsan) references khachsan(ma_khachsan) on delete cascade on update cascade
)

create table datphong(
	ma_khachsan int not null,
    ma_khach int not null,
    ngaynhan date not null,
    ngaytra date not null,
    so_phong int not null,
    primary key (ma_khachsan,ma_khach,ngaynhan),
    foreign key (ma_khachsan) references khachsan(ma_khachsan) on delete cascade on update cascade,
    foreign key (ma_khach) references khach(ma_khach) on delete cascade on update cascade,
    foreign key (so_phong) references phong(so_phong) on delete cascade on update cascade
)

create table khach(
	ma_khach int not null,
    hoten varchar(50) not null,
    diachi varchar(100) not null,
    primary key (ma_khach)
)

insert into khachsan values 
(1,'Khach san 1','London'),
(2,'Khach san 2','Tokyo'),
(3,'Khach san 3','Berlin'),
(4,'Khach san 4','Brazil'),
(5,'Khach san 5','NewYork')

insert into khach values 
(1,'Nguyen Van A','Ha Noi'),
(2,'Nguyen Van B','Ha Noi'),
(3,'Nguyen Van C','Ha Noi'),
(4,'Nguyen Van D','Ha Noi'),
(5,'Nguyen Van E','Ha Noi')

insert into phong values
(130,2,'Loai Phong 1',5000000),
(132,2,'Loai Phong 2',6000000),
(133,2,'Loai Phong 3',7000000),
(134,2,'Loai Phong 4',8000000),
(135,2,'Loai Phong 5',9000000)

insert into datphong values 
(1,1,'2022-04-01','2022-04-02',110),
(1,2,'2022-04-01','2022-04-02',112),
(1,3,'2022-04-01','2022-04-02',113),
(1,4,'2022-04-01','2022-04-02',114),
(1,5,'2022-04-01','2022-04-02',115)


select * from khachsan order by ma_khachsan asc limit 2,1
select * from 
(
    select ma_khach, @rowNumber := @rowNumber+ 1 rn from khach
    JOIN (SELECT @rowNumber:= 0) r
) n
where (rn % 2) = 1
select * from(Select @rowNumber as rno,E.* from phong) where (rno%2)=0

select @rowNumber :=1 from phong
select * from datphong

alter table phong modify column gia int

select ph.gia, ph.loai_phong from khachsan ks
inner join phong ph on ks.ma_khachsan = ph.ma_khachsan
where ten_khachsan like 'Khach san 1'

select kh.hoten from datphong dp 
inner join khach kh on kh.ma_khach = dp.ma_khach
inner join khachsan ks on ks.ma_khachsan = dp.ma_khachsan
where ten_khachsan like 'Khach san 1'

select kh.hoten,ph.so_phong from datphong dp 
inner join khach kh on kh.ma_khach = dp.ma_khach
inner join khachsan ks on ks.ma_khachsan = dp.ma_khachsan
right join phong ph on ph.so_phong = dp.so_phong
where dp.so_phong is null and ph.ma_khachsan = 1 

select count(ph.so_phong) from phong ph 
inner join khachsan ks on ks.ma_khachsan = ph.ma_khachsan
where ks.ten_khachsan = 'Khach san 1'

update phong set gia = gia*1.05
 
select count(*) from khachsan

select * from rent






