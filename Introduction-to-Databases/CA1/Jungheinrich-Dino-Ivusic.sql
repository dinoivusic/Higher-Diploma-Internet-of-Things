# This is the database
drop database if exists Jungheinrich;

Create database if not exists Jungheinrich;
# using that database
use Jungheinrich;

drop table if exists Ordered_Item;
drop table if exists orders;
drop table if exists service;
drop table if exists truck;
drop table if exists customers;
drop table if exists employees;

Create table customers(CustomerId varchar(40) not null,
Phone int not null,
CustomerName varchar(50) not null,
Email varchar(40) not null,
Address varchar(40) not null,
primary key(CustomerId));

#creating Employee table

Create table employees(EmployeeId varchar(40) not null,
FullName varchar(40) not null,
DOB datetime not null,
Gender varchar(40) not null,
Age int not null,
primary key(EmployeeId));


# Creating the Truck table
Create table truck(truckId int not null,
TruckType varchar(40) not null,
MaxLift int not null,
Price int not null,
EngineType varchar(40) not null,
primary key(TruckId));
#Creating Orders table

Create table orders(OrderId varchar(40) not null,
OrderDate datetime not null,
Amount int not null,
Quantity int not null,
TimeOfPayment datetime not null,
EmployeeId varchar(40) not null,
CustomerId varchar(40) not null,
primary key(OrderId),
foreign key(EmployeeId) references employees(EmployeeId),
foreign key(CustomerId) references customers(CustomerId));

Create table Ordered_Item (Ordered_ItemId varchar(40) not null,
Quantity int not null,
Price int not null,
truckId int not null,
OrderId varchar(40) not null,
timeOrdered datetime not null,
primary key(Ordered_ItemId),
foreign key(OrderId) references orders(OrderId),
foreign key(truckId) references truck(truckId));

#create Service table

Create table service(ServiceId varchar(40) not null,
DateTime datetime not null,
Price int not null,
Warranty varchar(40) not null,
ServicePeriod varchar(40) not null,
EmployeeId varchar(40) not null,
CustomerId varchar(40) not null,
truckId int not null,
is_Ok boolean not null,
primary key(ServiceId),
foreign key(EmployeeId) references employees(EmployeeId),
foreign key(CustomerId) references customers(CustomerId),
foreign key(truckId) references truck(truckId));

#inserting data into tables
# employee data insertion

INSERT INTO employees(EmployeeId, FullName,DOB, Gender, Age)
VALUES ('2231d', 'Kivdaj Mario', '2018-09-11 12:54', 'M', 24),
('2133d', 'Hec Glava', '2018-11-12 09:29', 'M', 33),
('2221d', 'Nada Kurblaj', '2019-02-01 11:54', 'F', 44),
('2336d', 'Nena Lasta', '2018-11-20 16:21', 'F', 39),
('2198d', 'Kara Mario', '2018-12-11 12:54', 'M', 28);

#inserting data into tables
# truck data insertion

INSERT INTO truck(truckId, TruckType, MaxLift, Price, EngineType)
VALUES (114, 'Pallet Truck', 500, 14000, 'Electric'),
(220, 'Pallet Stacker', 2500, 16000, 'Electric'),
(318, 'Reach Truck', 13000, 17500, 'Electric'),
(550, 'Counterbalanced Forklift', 7200, 23000, 'Electric'),
(425, 'Forklift Truck', 7500, 25000, 'Diesel'),
(515, 'High-rack stacker', 17000, 23000 , 'Electric');

#Inserting data into tables
#Customer data insertion

INSERT INTO customers(CustomerId, CustomerName, Phone, Email, Address)
VALUES ('x1312', 'Musterija', 013842000, 'musterija@gmail.com', 'Dubrava 1'),
('x1411', 'Kiljent', 012898822, 'klijent@gmail.com', 'Spansko 2'),
('x1335', 'Kupac', 013654000, 'kupac@gmail.com', 'Kvart 3'),
('x1221', 'Prodavac', 016543210, 'prodavac@gmail.com', 'Srednjaci 4'),
('x1554', 'Dobava', 019851472, 'dobava@gmail.com', 'Vrbnicka 5'),
('x1754', 'Probava', 016655321, 'probava@gmail.com', 'Ibler 9');

#Inserting data into tables
#Customer service insertion

INSERT INTO service(ServiceId, DateTime, Price, Warranty, ServicePeriod, EmployeeId, truckId, CustomerId, is_Ok)
VALUES ('z2312', '2018-02-03 18:23', 1500, '24 months', '2 days', '2231d', 114,  'x1312', true),
('z2411', '2018-02-03 17:23', 2000, '36 months', '1 day', '2133d', 220, 'x1411',true),
('z2251', '2018-03-02 16:23', 3500, '18 months', '3 days', '2221d', 515, 'x1335',true),
('z2221', '2018-04-02 13:23', 750, '12 months', '7 days', '2336d', 550, 'x1221',false),
('z2354', '2018-05-01 12:23', 1000, '30 months', '4 days', '2198d', 425, 'x1754',false);
#Inserting data into tables
#Customer service insertion

INSERT INTO orders(OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId)
VALUES ('o2316', '2018-09-11 12:54', 14000, 1, '2018-09-11 12:54', '2133d', 'x1312'),
('o2417', '2018-01-12 13:54', 52500, 3, '2018-01-12 15:44', '2336d','x1411'),
('o2258', '2018-03-01 15:54', 50000, 2, '2018-03-01 16:54', '2336d','x1335'),
('o2223', '2018-09-12 16:54', 42000, 3, '2018-09-12 17:54', '2231d','x1554'),
('o2356', '2018-02-01 11:51', 49000, 3, '2018-02-01 12:54', '2198d','x1221'),
('o2399', '2018-06-06 11:21', 28000, 2, '2019-02-01 18:50', '2231d','x1754');

INSERT INTO Ordered_Item(Ordered_ItemId, Quantity, Price, truckId, OrderId,  timeOrdered)
VALUES ('g1511', 1, 14000,114, 'o2316', '2018-02-11 18:54'),
('g1719', 3, 52500, 220, 'o2417', '2019-01-11 13:54'),
('g1211', 2, 50000, 318, 'o2258', '2019-01-03 11:54'),
('g1566', 3, 42000, 550, 'o2223', '2018-01-03 11:22'),
('g1333', 3, 49000,425, 'o2356', '2018-09-09 10:12'),
('g1987', 2, 28000, 515, 'o2399', '2018-11-11 07:12');