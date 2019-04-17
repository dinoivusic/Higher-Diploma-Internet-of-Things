# This is the database
drop database if exists Jungheinrich;

Create database if not exists Jungheinrich;
# using that database
use Jungheinrich;

drop table if exists Ordered_Item;
drop table if exists Orders;
drop table if exists service;
drop table if exists truck;
drop table if exists customers;
drop table if exists employees;


Create table customers(CustomerId int not null,
Phone int not null,
CustomerName varchar(50) not null,
Email varchar(40) not null,
Address varchar(40) not null,
primary key(CustomerId));

#creating Employee table

Create table employees(EmployeeId int not null,
FullName varchar(40) not null,
DOB datetime not null,
Gender varchar(40) not null,
Phone int not null,
primary key(EmployeeId));


# Creating the Truck table
Create table truck(truckId int not null,
TruckType varchar(40) not null,
MaxLift int not null,
Price int not null,
EngineType varchar(40) not null,
total int not null,
primary key(TruckId));
#Creating Orders table

Create table Orders(OrderId int not null,
OrderDate datetime not null,
Amount int not null,
Quantity int not null,
TimeOfPayment datetime not null,
EmployeeId int not null,
CustomerId int not null,
primary key(OrderId),
foreign key(EmployeeId) references employees(EmployeeId),
foreign key(CustomerId) references customers(CustomerId));

Create table Ordered_Item (Ordered_ItemId int not null,
Quantity int not null,
Price_unit int not null,
truckId int not null,
OrderId int not null,
timeOrdered datetime not null,
primary key(Ordered_ItemId),
foreign key(OrderId) references orders(OrderId),
foreign key(truckId) references truck(truckId));

#create Service table

Create table service(ServiceId varchar(40) not null,
Date_Time datetime not null,
Price int not null,
Warranty varchar(40) not null,
ServicePeriod varchar(40) not null,
EmployeeId int not null,
CustomerId int not null,
truckId int not null,
is_Ok boolean not null,
primary key(ServiceId),
foreign key(EmployeeId) references employees(EmployeeId),
foreign key(CustomerId) references customers(CustomerId),
foreign key(truckId) references truck(truckId));

#inserting data into tables
# truck data insertion

INSERT INTO truck(truckId, TruckType, MaxLift, Price, EngineType, total)
VALUES (1, 'Pallet Truck', 500, 14000, 'Electric', 290),
(2, 'Pallet Stacker', 2500, 16000, 'Electric', 230),
(3, 'Reach Truck', 13000, 17500, 'Electric', 205),
(5, 'Counterbalanced Forklift', 7200, 23000, 'Electric', 280),
(4, 'Forklift Truck', 7500, 25000, 'Diesel', 200),
(6, 'High-rack stacker', 17000, 23000 , 'Electric', 280);

#inserting data into tables
# employee data insertion
insert into employees (EmployeeId, FullName, DOB, Gender, Phone) values (1023, 'Pamella Morland', '1977-11-06 15:21:15', 'Female', 768332);
insert into employees (EmployeeId, FullName, DOB, Gender, Phone) values (1024, 'Olly Lavalle', '1986-04-15 08:14:31', 'Female', 303189);
insert into employees (EmployeeId, FullName, DOB, Gender, Phone) values (1025, 'Aaren Godfree', '1987-03-12 06:58:18', 'Female', 116973);
insert into employees (EmployeeId, FullName, DOB, Gender, Phone) values (1026, 'Andie Legrand', '1982-05-23 04:20:03', 'Male', 196139);
insert into employees (EmployeeId, FullName, DOB, Gender, Phone) values (1027, 'Aubry Gosling', '1988-03-22 20:10:49', 'Female', 76684);
insert into employees (EmployeeId, FullName, DOB, Gender, Phone) values (1028, 'Tobin Prescot', '1989-11-28 03:58:45', 'Male', 114594);
insert into employees (EmployeeId, FullName, DOB, Gender, Phone) values (1029, 'Lyssa Beavers', '1988-02-10 16:52:06', 'Female', 152731);
insert into employees (EmployeeId, FullName, DOB, Gender, Phone) values (1030, 'Melloney Demaid', '1980-09-19 16:15:36', 'Female', 483149);
insert into employees (EmployeeId, FullName, DOB, Gender, Phone) values (1031, 'Nan Cheese', '1987-05-28 00:12:11', 'Female', 791349);
insert into employees (EmployeeId, FullName, DOB, Gender, Phone) values (1032, 'Powell Grant', '1981-06-07 20:42:55', 'Male', 826576);
insert into employees (EmployeeId, FullName, DOB, Gender, Phone) values (1033, 'Ada Treanor', '1987-09-01 01:29:57', 'Female', 358761);
insert into employees (EmployeeId, FullName, DOB, Gender, Phone) values (1034, 'Luke Gerrels', '1985-06-29 19:29:45', 'Male', 295409);
insert into employees (EmployeeId, FullName, DOB, Gender, Phone) values (1035, 'Doralynn Strutt', '1984-08-09 20:32:27', 'Female', 112828);
insert into employees (EmployeeId, FullName, DOB, Gender, Phone) values (1036, 'Alex Trood', '1983-10-31 22:04:20', 'Male', 791147);
insert into employees (EmployeeId, FullName, DOB, Gender, Phone) values (1037, 'Base Djorvic', '1981-07-31 10:38:41', 'Male', 942172);
insert into employees (EmployeeId, FullName, DOB, Gender, Phone) values (1038, 'Artair Questier', '1986-03-16 23:13:39', 'Male', 810779);
insert into employees (EmployeeId, FullName, DOB, Gender, Phone) values (1039, 'Augustin Rivaland', '1984-11-02 00:38:56', 'Male', 398541);
insert into employees (EmployeeId, FullName, DOB, Gender, Phone) values (1040, 'Hillier Easlea', '1985-01-07 12:02:25', 'Male', 907667);
insert into employees (EmployeeId, FullName, DOB, Gender, Phone) values (1041, 'Joby Pierton', '1989-07-02 15:28:28', 'Female', 768156);
insert into employees (EmployeeId, FullName, DOB, Gender, Phone) values (1042, 'Carma Pither', '1984-11-18 22:26:02', 'Female', 847982);
insert into employees (EmployeeId, FullName, DOB, Gender, Phone) values (1043, 'Lenette Sieur', '1982-11-25 21:29:14', 'Female', 914769);
insert into employees (EmployeeId, FullName, DOB, Gender, Phone) values (1044, 'Nero Tarburn', '1983-05-08 22:38:17', 'Male', 107330);
insert into employees (EmployeeId, FullName, DOB, Gender, Phone) values (1045, 'Mureil Camlin', '1989-02-04 18:35:09', 'Female', 996503);
insert into employees (EmployeeId, FullName, DOB, Gender, Phone) values (1046, 'Garrott Gallichiccio', '1989-08-12 19:14:29', 'Male', 7432779);
insert into employees (EmployeeId, FullName, DOB, Gender, Phone) values (1047, 'Randolf Jeffery', '1977-06-13 10:13:22', 'Male', 713572);
insert into employees (EmployeeId, FullName, DOB, Gender, Phone) values (1048, 'Aurora Duckitt', '1979-12-13 20:36:44', 'Female', 790691);
insert into employees (EmployeeId, FullName, DOB, Gender, Phone) values (1049, 'Shanta Bottomer', '1990-09-03 15:50:05', 'Female', 347358);
insert into employees (EmployeeId, FullName, DOB, Gender, Phone) values (1050, 'Berget Elan', '1980-06-26 13:58:31', 'Female', 5656240);
insert into employees (EmployeeId, FullName, DOB, Gender, Phone) values (1001, 'Wallace Dumingos', '1990-12-09 11:34:13', 'Male',5395812);
insert into employees (EmployeeId, FullName, DOB, Gender, Phone) values (1002, 'Horton Clohissy', '1987-08-15 23:19:13', 'Male', 459438);
insert into employees (EmployeeId, FullName, DOB, Gender, Phone) values (1003, 'Boyce Bampfield', '1989-08-04 05:48:16', 'Male', 281452);
insert into employees (EmployeeId, FullName, DOB, Gender, Phone) values (1004, 'Avram Curgenuer', '1982-07-19 03:13:01', 'Male', 507775);
insert into employees (EmployeeId, FullName, DOB, Gender, Phone) values (1005, 'Auberta Raubenheim', '1979-04-27 18:03:38', 'Female', 911110);
insert into employees (EmployeeId, FullName, DOB, Gender, Phone) values (1006, 'Aurelia Mitchley', '1986-03-13 20:39:10', 'Female', 593434);
insert into employees (EmployeeId, FullName, DOB, Gender, Phone) values (1007, 'Carol Spencelayh', '1981-04-04 12:56:21', 'Female', 965280);
insert into employees (EmployeeId, FullName, DOB, Gender, Phone) values (1008, 'Misha Marjoram', '1979-12-25 18:20:31', 'Female', 308300);
insert into employees (EmployeeId, FullName, DOB, Gender, Phone) values (1009, 'Sandie Pimley', '1978-11-06 19:35:35', 'Female',640488);
insert into employees (EmployeeId, FullName, DOB, Gender, Phone) values (1010, 'Bibbye Goddard', '1980-10-29 20:42:45', 'Female', 996807);
insert into employees (EmployeeId, FullName, DOB, Gender, Phone) values (1011, 'Raleigh Brockman', '1980-09-15 03:51:11', 'Male', 945763);
insert into employees (EmployeeId, FullName, DOB, Gender, Phone) values (1012, 'Trevar Wadlow', '1988-08-20 12:45:05', 'Male', 426553);
insert into employees (EmployeeId, FullName, DOB, Gender, Phone) values (1013, 'Berne Chamberlaine', '1977-12-23 04:33:41', 'Male', 512207);
insert into employees (EmployeeId, FullName, DOB, Gender, Phone) values (1014, 'Alyss Angric', '1985-10-17 05:34:47', 'Female', 710449);
insert into employees (EmployeeId, FullName, DOB, Gender, Phone) values (1015, 'Phyllis Helks', '1981-01-31 22:22:32', 'Female', 329739);
insert into employees (EmployeeId, FullName, DOB, Gender, Phone) values (1016, 'Stephi Munnings', '1987-07-05 19:03:25', 'Female', 869562);
insert into employees (EmployeeId, FullName, DOB, Gender, Phone) values (1017, 'Lewes Blodgett', '1987-09-09 03:38:40', 'Male', 983676);
insert into employees (EmployeeId, FullName, DOB, Gender, Phone) values (1018, 'Brander Dollar', '1982-04-27 01:58:39', 'Male', 963665);
insert into employees (EmployeeId, FullName, DOB, Gender, Phone) values (1019, 'Carolin Trice', '1985-06-28 00:21:17', 'Female', 529411);
insert into employees (EmployeeId, FullName, DOB, Gender, Phone) values (1020, 'Galvan Hagerty', '1987-06-21 18:07:51', 'Male', 472181);
insert into employees (EmployeeId, FullName, DOB, Gender, Phone) values (1021, 'Carin Crosskill', '1980-09-06 00:05:36', 'Female', 652234);
insert into employees (EmployeeId, FullName, DOB, Gender, Phone) values (1022, 'Alanson Brunsdon', '1983-02-25 00:21:47', 'Male', 142581);

#Inserting data into tables
#Customer data insertion

insert into customers (CustomerId, Phone, CustomerName, Email, Address) values (2001, 1575380, 'Dasie Stait', 'dstait0@newsvine.com', '31 Anderson Court');
insert into customers (CustomerId, Phone, CustomerName, Email, Address) values (2002, 5677692, 'Rafferty Swayne', 'rswayne1@spotify.com', '50 Parkside Center');
insert into customers (CustomerId, Phone, CustomerName, Email, Address) values (2003, 20343384, 'Gwenneth Londors', 'glondors2@icio.us', '404 Fairfield Center');
insert into customers (CustomerId, Phone, CustomerName, Email, Address) values (2004, 13648106, 'Cookie Folland', 'cfolland3@123-reg.co.uk', '617 Holy Cross Road');
insert into customers (CustomerId, Phone, CustomerName, Email, Address) values (2005, 25071408, 'Madelena Potter', 'mpotter4@dagondesign.com', '79 Longview Drive');
insert into customers (CustomerId, Phone, CustomerName, Email, Address) values (2006, 81724634, 'Gordy Giacobbo', 'ggiacobbo5@msn.com', '5897 7th Crossing');
insert into customers (CustomerId, Phone, CustomerName, Email, Address) values (2007, 3808141, 'Marina Loreit', 'mloreit6@usgs.gov', '8 Marquette Way');
insert into customers (CustomerId, Phone, CustomerName, Email, Address) values (2008, 7024297, 'Spencer McAusland', 'smcausland7@shop-pro.jp', '51 Pennsylvania Pass');
insert into customers (CustomerId, Phone, CustomerName, Email, Address) values (2009, 8283671, 'Benjy Peotz', 'bpeotz8@usatoday.com', '93508 Carey Parkway');
insert into customers (CustomerId, Phone, CustomerName, Email, Address) values (2010, 3399469, 'Alecia Freckingham', 'afreckingham9@gizmodo.com', '30671 Londonderry Circle');
insert into customers (CustomerId, Phone, CustomerName, Email, Address) values (2011, 999547, 'Darice Kislingbury', 'dkislingburya@reuters.com', '57786 Delladonna Crossing');
insert into customers (CustomerId, Phone, CustomerName, Email, Address) values (2012, 545006, 'Lorrie Southan', 'lsouthanb@eepurl.com', '7 Cascade Street');
insert into customers (CustomerId, Phone, CustomerName, Email, Address) values (2013, 213953, 'Kennan Schwant', 'kschwantc@blog.com', '1 Gina Drive');
insert into customers (CustomerId, Phone, CustomerName, Email, Address) values (2014, 2697542, 'D''arcy Hartropp', 'dhartroppd@patch.com', '3 Pawling Terrace');
insert into customers (CustomerId, Phone, CustomerName, Email, Address) values (2015, 1459558, 'Dasya Battell', 'dbattelle@webeden.co.uk', '5 Westerfield Terrace');
insert into customers (CustomerId, Phone, CustomerName, Email, Address) values (2016, 4485940, 'Christoffer Kondratovich', 'ckondratovichf@wp.com', '44944 Kenwood Street');
insert into customers (CustomerId, Phone, CustomerName, Email, Address) values (2017, 745503, 'Veradis Paulig', 'vpauligg@jimdo.com', '42 Spohn Drive');
insert into customers (CustomerId, Phone, CustomerName, Email, Address) values (2018,160042, 'Fanni Dymidowski', 'fdymidowskih@opera.com', '0 Crest Line Parkway');
insert into customers (CustomerId, Phone, CustomerName, Email, Address) values (2019, 612990, 'Van Faunt', 'vfaunti@tiny.cc', '0 West Circle');
insert into customers (CustomerId, Phone, CustomerName, Email, Address) values (2020, 1245460, 'Eberhard Nyles', 'enylesj@ibm.com', '12890 Banding Park');
insert into customers (CustomerId, Phone, CustomerName, Email, Address) values (2021, 1199316, 'Jeannie Hupe', 'jhupek@amazon.de', '34 Independence Road');
insert into customers (CustomerId, Phone, CustomerName, Email, Address) values (2022, 266953, 'Shari Klaiser', 'sklaiserl@telegraph.co.uk', '881 Little Fleur Lane');
insert into customers (CustomerId, Phone, CustomerName, Email, Address) values (2023, 984592, 'Janek Skerme', 'jskermem@twitpic.com', '0338 Lawn Pass');
insert into customers (CustomerId, Phone, CustomerName, Email, Address) values (2024, 618502, 'Yoko Deverson', 'ydeversonn@vistaprint.com', '0 Manley Road');
insert into customers (CustomerId, Phone, CustomerName, Email, Address) values (2025, 120643, 'Aldin Vondruska', 'avondruskao@cornell.edu', '868 Michigan Parkway');
insert into customers (CustomerId, Phone, CustomerName, Email, Address) values (2026, 436577, 'Elissa Coulman', 'ecoulmanp@moonfruit.com', '8 Marcy Lane');
insert into customers (CustomerId, Phone, CustomerName, Email, Address) values (2027, 784920, 'Georgianne Kreber', 'gkreberq@163.com', '720 Sunfield Place');
insert into customers (CustomerId, Phone, CustomerName, Email, Address) values (2028, 699413, 'Hayes Meneux', 'hmeneuxr@desdev.cn', '461 Ridgeway Junction');
insert into customers (CustomerId, Phone, CustomerName, Email, Address) values (2029, 615333, 'Colly Seeger', 'cseegers@dmoz.org', '231 Sunbrook Pass');
insert into customers (CustomerId, Phone, CustomerName, Email, Address) values (2030, 663088, 'Lowrance Keoghane', 'lkeoghanet@va.gov', '0 Darwin Street');
insert into customers (CustomerId, Phone, CustomerName, Email, Address) values (2031, 172127, 'Cheri Bakeup', 'cbakeupu@wsj.com', '77 Hooker Park');
insert into customers (CustomerId, Phone, CustomerName, Email, Address) values (2032, 733351, 'Raoul O''Griffin', 'rogriffinv@mediafire.com', '8871 Texas Pass');
insert into customers (CustomerId, Phone, CustomerName, Email, Address) values (2033, 907368, 'Tracie Knatt', 'tknattw@discovery.com', '413 Clemons Circle');
insert into customers (CustomerId, Phone, CustomerName, Email, Address) values (2034, 268130, 'Marvin Cristofano', 'mcristofanox@exblog.jp', '23 Bowman Alley');
insert into customers (CustomerId, Phone, CustomerName, Email, Address) values (2035, 256786, 'Lesya Philimore', 'lphilimorey@jimdo.com', '1113 Old Shore Junction');
insert into customers (CustomerId, Phone, CustomerName, Email, Address) values (2036, 932733, 'Karole Wellsman', 'kwellsmanz@phoca.cz', '7143 Steensland Crossing');
insert into customers (CustomerId, Phone, CustomerName, Email, Address) values (2037, 808143, 'Stacy Ogelbe', 'sogelbe10@hugedomains.com', '75650 Loftsgordon Pass');
insert into customers (CustomerId, Phone, CustomerName, Email, Address) values (2038, 838259, 'Justin McKew', 'jmckew11@japanpost.jp', '0837 Iowa Park');
insert into customers (CustomerId, Phone, CustomerName, Email, Address) values (2039, 422556, 'Denice Greneham', 'dgreneham12@1und1.de', '60609 Wayridge Parkway');
insert into customers (CustomerId, Phone, CustomerName, Email, Address) values (2040, 328519, 'Gerome Decroix', 'gdecroix13@qq.com', '2 Arrowood Junction');
insert into customers (CustomerId, Phone, CustomerName, Email, Address) values (2041, 948503, 'Shayne Christofol', 'schristofol14@yandex.ru', '763 Leroy Road');
insert into customers (CustomerId, Phone, CustomerName, Email, Address) values (2042, 161131, 'Leroy Hubbock', 'lhubbock15@boston.com', '905 Spaight Crossing');
insert into customers (CustomerId, Phone, CustomerName, Email, Address) values (2043, 230879, 'Derrick Exroll', 'dexroll16@eventbrite.com', '1 Jana Pass');
insert into customers (CustomerId, Phone, CustomerName, Email, Address) values (2044, 178482, 'Sorcha Hennington', 'shennington17@mashable.com', '09 Pepper Wood Alley');
insert into customers (CustomerId, Phone, CustomerName, Email, Address) values (2045, 453844, 'Rosalinda Yeell', 'ryeell18@webeden.co.uk', '472 Anniversary Trail');
insert into customers (CustomerId, Phone, CustomerName, Email, Address) values (2046, 926763, 'Yevette Coushe', 'ycoushe19@dot.gov', '51 Roth Place');
insert into customers (CustomerId, Phone, CustomerName, Email, Address) values (2047, 754222, 'Mercedes Worswick', 'mworswick1a@unesco.org', '71562 Golf Junction');
insert into customers (CustomerId, Phone, CustomerName, Email, Address) values (2048, 569830, 'Darya Leyfield', 'dleyfield1b@elpais.com', '5389 Manitowish Trail');
insert into customers (CustomerId, Phone, CustomerName, Email, Address) values (2049, 855322, 'Teodor Cullington', 'tcullington1c@dropbox.com', '65 Alpine Lane');
insert into customers (CustomerId, Phone, CustomerName, Email, Address) values (2050, 935642, 'Pru Rathke', 'prathke1d@boston.com', '5 Golf View Trail');

#Inserting data into tables
#Customer service insertion

insert into service (ServiceId, Date_Time, Price, Warranty, ServicePeriod, EmployeeId, CustomerId, truckId, is_Ok) values (3001, '2018-05-29 19:33:06', 2132, '18months', '2 weeks', 1001, 2035, 6, false);
insert into service (ServiceId, Date_Time, Price, Warranty, ServicePeriod, EmployeeId, CustomerId, truckId, is_Ok) values (3002, '2018-07-29 08:47:54', 4309, '18months', '2 weeks', 1002,2036, 1, false);
insert into service (ServiceId, Date_Time, Price, Warranty, ServicePeriod, EmployeeId, CustomerId, truckId, is_Ok) values (3003, '2018-02-07 21:40:29', 2157, '18months', '6 weeks', 1003, 2038, 2, false);
insert into service (ServiceId, Date_Time, Price, Warranty, ServicePeriod, EmployeeId, CustomerId, truckId, is_Ok) values (3004, '2018-04-10 05:39:33', 3481, '18months', '5 weeks', 1004, 2005, 3, true);
insert into service (ServiceId, Date_Time, Price, Warranty, ServicePeriod, EmployeeId, CustomerId, truckId, is_Ok) values (3005, '2018-07-18 08:01:22', 2025, '18months', '2 weeks', 1005, 2003, 5, false);
insert into service (ServiceId, Date_Time, Price, Warranty, ServicePeriod, EmployeeId, CustomerId, truckId, is_Ok) values (3006, '2018-04-16 16:08:09', 1137, '6 months', '2 weeks', 1006, 2001, 2, false);
insert into service (ServiceId, Date_Time, Price, Warranty, ServicePeriod, EmployeeId, CustomerId, truckId, is_Ok) values (3007, '2018-11-30 06:32:58', 1079, '18months', '4 weeks', 1007, 2008, 5, true);
insert into service (ServiceId, Date_Time, Price, Warranty, ServicePeriod, EmployeeId, CustomerId, truckId, is_Ok) values (3008, '2018-10-25 18:12:53', 4915, '18months', '2 weeks', 1008, 2032, 2, false);
insert into service (ServiceId, Date_Time, Price, Warranty, ServicePeriod, EmployeeId, CustomerId, truckId, is_Ok) values (3009, '2018-12-12 22:19:42', 1858, '15months', '3 weeks', 1009, 2009, 1, true);
insert into service (ServiceId, Date_Time, Price, Warranty, ServicePeriod, EmployeeId, CustomerId, truckId, is_Ok) values (3010, '2018-05-10 17:46:33', 3180, '18months', '2 weeks', 1011, 2037, 6, true);
insert into service (ServiceId, Date_Time, Price, Warranty, ServicePeriod, EmployeeId, CustomerId, truckId, is_Ok) values (3011, '2018-06-30 02:38:25', 4274, '18months', '2 weeks', 1012, 2026, 3, false);
insert into service (ServiceId, Date_Time, Price, Warranty, ServicePeriod, EmployeeId, CustomerId, truckId, is_Ok) values (3012, '2018-04-07 15:07:43', 2586, '18months', '3 weeks', 1013, 2040, 4, false);
insert into service (ServiceId, Date_Time, Price, Warranty, ServicePeriod, EmployeeId, CustomerId, truckId, is_Ok) values (3013, '2018-10-20 21:49:24', 3619, '15months', '2 weeks', 1014, 2041, 1, false);
insert into service (ServiceId, Date_Time, Price, Warranty, ServicePeriod, EmployeeId, CustomerId, truckId, is_Ok) values (3014, '2018-11-20 01:40:54', 4254, '18months', '2 weeks', 1015, 2043, 4, false);
insert into service (ServiceId, Date_Time, Price, Warranty, ServicePeriod, EmployeeId, CustomerId, truckId, is_Ok) values (3015, '2018-02-09 06:55:29', 1068, '18months', '2 weeks', 1016, 2037, 1, false);
insert into service (ServiceId, Date_Time, Price, Warranty, ServicePeriod, EmployeeId, CustomerId, truckId, is_Ok) values (3016, '2018-06-11 07:55:37', 2348, '18months', '2 weeks', 1017, 2021, 1, true);
insert into service (ServiceId, Date_Time, Price, Warranty, ServicePeriod, EmployeeId, CustomerId, truckId, is_Ok) values (3017, '2018-08-11 09:32:59', 3156, '18months', '2 weeks', 1018, 2015, 6, false);
insert into service (ServiceId, Date_Time, Price, Warranty, ServicePeriod, EmployeeId, CustomerId, truckId, is_Ok) values (3018, '2018-11-13 07:58:00', 3179, '18months', '4 weeks', 1019, 2040, 2, true);
insert into service (ServiceId, Date_Time, Price, Warranty, ServicePeriod, EmployeeId, CustomerId, truckId, is_Ok) values (3019, '2018-09-10 22:51:30', 3829, '12months', '2 weeks', 1020, 2008, 1, false);
insert into service (ServiceId, Date_Time, Price, Warranty, ServicePeriod, EmployeeId, CustomerId, truckId, is_Ok) values (3020, '2018-12-03 02:48:16', 2994, '12months', '4 weeks', 1021, 2042, 3, false);
insert into service (ServiceId, Date_Time, Price, Warranty, ServicePeriod, EmployeeId, CustomerId, truckId, is_Ok) values (3021, '2018-03-15 02:48:16', 2994, '12months', '4 weeks', 1021, 2042, 3, false);
insert into service (ServiceId, Date_Time, Price, Warranty, ServicePeriod, EmployeeId, CustomerId, truckId, is_Ok) values (3022, '2018-03-19 02:48:16', 2994, '12months', '4 weeks', 1021, 2042, 3, false);

#Inserting data into tables
#Customer orders insertion

insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (101, '2018-02-27 04:41:58', 31, 8, '2018-01-12', 1027, 2004);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (102, '2018-08-29 18:26:09', 37, 6, '2018-08-20', 1001, 2043);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (103, '2018-01-15 10:25:32', 70, 10, '2018-08-01', 1047, 2018);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (104, '2018-10-08 10:43:21', 72, 1, '2018-11-04', 1027, 2009);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (105, '2018-12-21 03:59:08', 90, 6, '2018-06-16', 1045, 2045);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (106, '2018-12-15 09:15:19', 39, 13, '2018-05-06', 1015, 2015);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (107, '2018-06-19 08:24:05', 18, 16, '2018-12-10', 1048, 2026);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (108, '2018-03-09 06:38:27', 53, 15, '2018-07-19', 1022, 2029);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (109, '2018-02-01 03:41:08', 54, 15, '2018-08-24', 1028, 2025);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (110, '2018-09-25 03:29:17', 27, 14, '2018-06-21', 1042, 2036);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (111, '2018-02-22 09:28:22', 11, 1, '2018-01-13', 1010, 2018);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (112, '2018-05-08 19:06:17', 64, 2, '2018-01-17', 1050, 2045);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (113, '2018-08-11 03:46:56', 71, 20, '2018-06-03', 1023, 2012);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (114, '2018-09-12 17:55:57', 64, 1, '2018-01-02', 1003, 2034);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (115, '2018-06-06 23:12:31', 73, 19, '2018-12-21', 1044, 2016);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (116, '2018-11-23 04:23:59', 83, 15, '2018-02-20', 1030, 2003);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (117, '2018-10-11 15:33:52', 67, 3, '2018-06-20', 1010, 2030);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (118, '2018-02-23 12:45:00', 73, 12, '2018-11-04', 1024, 2024);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (119, '2018-12-23 14:12:25', 93, 18, '2018-12-07', 1034, 2048);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (120, '2018-12-27 23:12:04', 36, 10, '2018-08-17', 1027, 2006);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (121, '2018-03-06 19:35:17', 67, 9, '2018-12-12', 1025, 2018);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (122, '2018-03-24 04:38:24', 15, 14, '2018-04-24', 1020, 2001);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (123, '2018-08-11 01:55:01', 32, 5, '2018-01-29', 1013, 2005);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (124, '2018-05-19 05:52:50', 36, 3, '2018-09-15', 1050, 2007);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (125, '2018-01-03 09:39:39', 57, 20, '2018-04-13', 1014, 2017);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (126, '2018-08-13 01:12:07', 46, 15, '2018-05-11', 1031, 2008);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (127, '2018-04-22 12:30:43', 97, 4, '2018-04-15', 1033, 2031);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (128, '2018-05-04 02:32:43', 5, 9, '2018-05-11', 1047, 2021);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (129, '2018-12-16 21:00:20', 50, 19, '2018-09-26', 1025, 2011);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (130, '2018-02-16 17:46:52', 78, 4, '2018-08-18', 1025, 2021);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (131, '2018-01-29 04:37:57', 19, 14, '2018-08-23', 1003, 2042);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (132, '2018-12-06 09:05:29', 69, 7, '2018-10-03', 1050, 2023);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (133, '2018-09-10 10:28:00', 97, 20, '2018-04-19', 1014, 2047);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (134, '2018-01-07 09:44:19', 58, 14, '2018-06-18', 1044, 2011);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (135, '2018-10-25 09:04:12', 69, 10, '2018-05-06', 1050, 2030);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (136, '2018-11-20 18:38:03', 4, 9, '2018-06-02', 1002, 2018);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (137, '2018-11-29 00:39:01', 25, 15, '2018-01-15', 1029, 2017);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (138, '2018-08-01 11:38:28', 39, 12, '2018-05-27', 1008, 2040);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (139, '2018-11-15 12:34:01', 57, 11, '2018-02-14', 1037, 2005);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (140, '2018-08-27 03:50:46', 40, 20, '2018-02-22', 1023, 2037);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (141, '2018-10-07 20:17:32', 58, 7, '2018-01-30', 1024, 2050);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (142, '2018-12-05 01:17:30', 16, 14, '2018-07-20', 1043, 2017);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (143, '2018-07-04 19:37:05', 82, 14, '2018-01-26', 1050, 2050);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (144, '2018-04-07 13:01:39', 87, 5, '2018-04-15', 1012, 2025);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (145, '2018-05-11 20:46:20', 98, 6, '2018-04-19', 1008, 2043);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (146, '2018-01-22 09:44:51', 82, 12, '2018-02-12', 1035, 2023);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (147, '2018-09-05 10:43:38', 3, 19, '2018-08-29', 1018, 2039);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (148, '2018-09-06 08:28:03', 43, 4, '2018-08-30', 1023, 2004);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (249, '2018-09-10 01:08:33', 21, 3, '2018-02-01', 1033, 2006);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (149, '2018-10-08 16:32:00', 7, 18, '2018-08-03', 1045, 2028);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (150, '2018-12-15 20:25:09', 45, 12, '2018-06-27', 1033, 2010);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (151, '2018-04-05 20:57:28', 90, 13, '2018-12-12', 1034, 2050);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (152, '2018-01-17 22:31:18', 59, 18, '2018-09-04', 1013, 2042);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (153, '2018-02-07 07:13:56', 57, 3, '2018-07-19', 1002, 2024);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (154, '2018-08-21 19:33:16', 52, 16, '2018-03-11', 1035, 2044);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (155, '2018-01-30 09:10:37', 26, 20, '2018-01-16', 1019, 2043);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (156, '2018-05-09 01:30:52', 94, 3, '2018-08-17', 1041, 2023);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (157, '2018-08-14 23:14:31', 79, 5, '2018-12-21', 1004, 2011);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (158, '2018-04-15 23:29:19', 54, 9, '2018-11-15', 1029, 2008);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (159, '2018-10-30 20:06:26', 22, 14, '2018-12-26', 1042, 2011);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (250, '2018-12-24 07:56:53', 1, 20, '2018-07-13', 1049, 2004);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (160, '2018-09-22 19:05:49', 32, 20, '2018-02-09', 1009, 2010);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (161, '2018-11-08 23:35:09', 15, 18, '2018-12-06', 1032, 2028);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (162, '2018-06-25 11:33:04', 22, 5, '2018-04-24', 1012, 2021);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (163, '2018-01-15 16:54:29', 90, 19, '2018-08-14', 1051, 2050);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (164, '2018-12-03 19:03:28', 73, 10, '2018-04-04', 1013, 2014);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (165, '2018-01-27 04:15:13', 71, 15, '2018-11-08', 1007, 2032);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (166, '2018-03-22 03:10:54', 90, 10, '2018-08-02', 1012, 2026);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (167, '2018-10-13 19:45:48', 35, 16, '2018-08-15', 1020, 2006);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (168, '2018-03-05 20:26:18', 14, 4, '2018-01-26', 1020, 2042);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (169, '2018-02-07 16:14:54', 37, 13, '2018-09-06', 1039, 2014);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (170, '2018-12-26 23:33:57', 48, 15, '2018-01-29', 1051, 2046);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (171, '2018-08-14 06:08:06', 51, 16, '2018-11-24', 1033, 2033);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (172, '2018-10-28 21:15:46', 54, 4, '2018-12-22', 1023, 2041);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (173, '2018-06-29 12:18:32', 2, 19, '2018-11-01', 1018, 2037);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (174, '2018-01-09 12:47:51', 90, 10, '2018-09-24', 1006, 2032);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (175, '2018-04-17 12:36:57', 29, 10, '2018-05-07', 1024, 2039);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (176, '2018-11-26 02:13:28', 63, 4, '2018-03-13', 1010, 2004);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (177, '2018-04-23 20:04:15', 47, 20, '2018-08-12', 1028, 2044);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (178, '2018-07-03 12:19:11', 80, 8, '2018-05-13', 1051, 2003);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (179, '2018-08-09 12:35:20', 13, 14, '2018-07-05', 1044, 2013);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (180, '2018-05-08 11:33:56', 29, 6, '2018-06-28', 1033, 2016);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (181, '2018-12-11 10:26:01', 13, 17, '2018-12-06', 1008, 2050);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (182, '2018-05-04 19:25:56', 60, 1, '2018-04-25', 1034, 2036);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (183, '2018-02-02 14:43:36', 88, 12, '2018-09-23', 1013, 2028);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (184, '2018-01-31 06:39:33', 79, 5, '2018-05-29', 1013, 2041);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (185, '2018-02-15 01:18:45', 35, 13, '2018-09-25', 1032, 2040);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (100, '2018-06-25 15:11:26', 19, 16, '2018-06-18', 1017, 2016);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (186, '2018-02-21 10:04:11', 91, 5, '2018-10-04', 1025, 2004);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (187, '2018-04-10 20:43:25', 45, 12, '2018-12-22', 1033, 2001);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (189, '2018-07-04 21:24:27', 18, 2, '2018-09-22', 1042, 2044);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (190, '2018-04-09 21:48:10', 88, 1, '2018-06-29', 1044, 2031);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (191, '2018-04-15 09:21:25', 93, 13, '2018-10-12', 1034, 2009);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (192, '2018-03-09 04:25:57', 21, 9, '2018-02-01', 1011, 2009);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (193, '2018-03-18 07:31:04', 64, 6, '2018-03-01', 1009, 2003);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (194, '2018-02-26 15:19:35', 73, 9, '2018-07-04', 1040, 2030);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (195, '2018-09-17 06:44:58', 93, 10, '2018-07-23', 1029, 2038);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (196, '2018-12-03 10:35:11', 72, 12, '2018-06-08', 1048, 2025);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (197, '2018-04-12 15:08:21', 13, 5, '2018-03-07', 1038, 2041);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (198, '2018-11-21 05:16:20', 58, 17, '2018-01-14', 1020, 2031);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (199, '2018-03-18 07:39:59', 43, 14, '2018-12-11', 1024, 2022);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (200, '2018-11-16 23:18:25', 57, 3, '2018-05-30', 1037, 2026);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (201, '2018-09-16 00:03:37', 49, 15, '2018-12-18', 1048, 2004);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (202, '2018-07-16 04:38:21', 4, 6, '2018-01-19', 1040, 2024);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (203, '2018-09-24 09:35:45', 86, 17, '2018-03-18', 1016, 2024);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (204, '2018-01-23 12:52:03', 4, 1, '2018-12-22', 1051, 2038);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (205, '2018-05-18 21:40:25', 27, 10, '2018-09-20', 1042, 2025);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (206, '2018-01-25 23:14:54', 53, 11, '2018-02-23', 1013, 2030);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (207, '2018-03-13 17:27:36', 53, 12, '2018-07-04', 1028, 2016);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (208, '2018-05-26 14:53:25', 73, 2, '2018-05-16', 1045, 2032);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (209, '2018-05-19 22:12:09', 69, 13, '2018-07-27', 1033, 2016);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (210, '2018-02-16 08:12:54', 79, 6, '2018-08-04', 1023, 2043);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (211, '2018-08-31 22:25:46', 27, 13, '2018-09-26', 1050, 2040);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (212, '2018-12-22 22:48:12', 97, 9, '2018-08-24', 1051, 2036);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (213, '2018-03-04 17:08:47', 45, 3, '2018-09-21', 1037, 2033);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (214, '2018-11-28 20:03:15', 36, 9, '2018-12-22', 1028, 2006);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (215, '2018-11-30 01:27:44', 88, 12, '2018-06-10', 1048, 2010);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (216, '2018-01-09 22:06:16', 74, 1, '2018-08-11', 1008, 2042);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (217, '2018-06-08 02:37:23', 37, 10, '2018-06-21', 1020, 2042);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (218, '2018-01-20 16:27:52', 90, 20, '2018-07-29', 1020, 2042);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (219, '2018-08-14 16:20:54', 4, 12, '2018-01-04', 1029, 2012);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (220, '2018-10-27 06:54:42', 49, 19, '2018-11-20', 1016, 2051);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (221, '2018-11-02 19:50:35', 9, 20, '2018-10-17', 1030, 2015);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (222, '2018-11-22 02:54:32', 39, 19, '2018-10-03', 1031, 2019);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (223, '2018-04-14 21:15:15', 13, 14, '2018-06-16', 1038, 2015);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (224, '2018-12-18 22:13:09', 51, 16, '2018-01-12', 1015, 2029);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (225, '2018-01-20 21:08:08', 14, 6, '2018-12-26', 1025, 2025);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (226, '2018-03-15 02:35:28', 60, 6, '2018-06-24', 1024, 2001);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (227, '2018-07-15 02:04:17', 29, 17, '2018-09-05', 1023, 2015);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (228, '2018-05-21 06:36:52', 10, 18, '2018-01-14', 1043, 2017);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (229, '2018-02-18 04:24:03', 90, 14, '2018-10-23', 1020, 2028);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (230, '2018-05-26 23:23:54', 77, 18, '2018-04-16', 1043, 2034);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (231, '2018-01-08 20:32:42', 35, 8, '2018-06-10', 1004, 2004);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (232, '2018-12-06 04:40:52', 2, 17, '2018-07-11', 1029, 2003);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (233, '2018-03-03 22:58:42', 67, 17, '2018-10-01', 1028, 2004);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (234, '2018-01-25 19:34:01', 9, 17, '2018-06-07', 1029, 2034);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (235, '2018-07-07 16:18:43', 31, 9, '2018-03-10', 1029, 2029);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (236, '2018-01-24 20:16:29', 76, 5, '2018-06-18', 1013, 2044);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (237, '2018-06-26 12:47:38', 53, 18, '2018-05-09', 1044, 2007);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (238, '2018-03-12 17:05:20', 47, 5, '2018-12-13', 1037, 2035);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (239, '2018-03-23 16:07:08', 19, 12, '2018-02-13', 1044, 2018);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (240, '2018-11-07 11:43:33', 18, 13, '2018-06-14', 1028, 2016);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (241, '2018-12-16 07:23:48', 65, 5, '2018-02-04', 1043, 2029);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (242, '2018-02-16 05:39:20', 43, 11, '2018-10-07', 1025, 2044);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (243, '2018-10-24 17:29:25', 70, 10, '2018-02-11', 1047, 2004);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (244, '2018-04-07 11:05:52', 27, 2, '2018-08-20', 1018, 2026);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (245, '2018-04-03 14:55:00', 73, 6, '2018-08-07', 1010, 2048);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (246, '2018-06-05 21:43:49', 54, 4, '2018-12-17', 1032, 2029);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (247, '2018-06-14 13:55:19', 42, 3, '2018-12-28', 1023, 2026);
insert into Orders (OrderId, OrderDate, Amount, Quantity, TimeOfPayment, EmployeeId, CustomerId) values (248, '2018-09-25 15:24:37', 50, 6, '2018-09-08', 1050, 2047);

#Create insertion into Ordered items table

insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (1, 11, 11814, 1, 100, '2018-05-22');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (2, 6, 21396, 1, 101, '2018-04-03');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (3, 14, 36633, 3, 102, '2018-04-07');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (4, 8, 26736, 1, 103, '2018-10-20');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (5, 4, 48249, 4, 104, '2018-04-05');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (6, 16, 54784, 5, 105, '2018-05-11');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (7, 20, 38656, 1, 106, '2018-03-28');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (8, 8, 54186, 1, 107, '2018-02-12');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (9, 8, 59279, 5, 108, '2018-03-30');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (10, 18, 17197, 4, 109, '2018-07-16');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (11, 4, 20132, 4, 110, '2018-07-09');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (12, 4, 18615, 1, 111, '2018-04-24');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (13, 11, 15338, 4, 112, '2018-06-07');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (14, 14, 48732, 1, 113, '2018-06-15');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (15, 16, 35412, 5, 114, '2018-02-03');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (16, 18, 48898, 2, 115, '2018-10-07');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (17, 7, 45597, 3, 116, '2018-04-16');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (18, 4, 11217, 6, 117, '2018-04-30');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (19, 15, 13389, 1, 118, '2018-07-26');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (20, 6, 22124, 4, 119, '2018-11-11');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (21, 8, 40542, 1, 120, '2018-05-09');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (22, 6, 10484, 4, 121, '2018-03-08');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (23, 7, 22649, 6, 122, '2018-01-25');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (25, 3, 37482, 6, 123, '2018-04-22');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (24, 7, 11143, 1, 124, '2018-11-07');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (26, 7, 17552, 2, 125, '2018-09-05');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (27, 10, 32696, 3, 128, '2018-07-09');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (28, 19, 20015, 6, 126, '2018-10-31');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (29, 6, 33784, 6, 127, '2018-05-10');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (30, 4, 32668, 3, 129, '2018-10-02');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (31, 18, 17963, 4, 130, '2018-05-19');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (32, 13, 26726, 5, 131, '2018-11-08');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (33, 15, 57925, 6, 132, '2018-03-02');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (34, 1, 23714, 2, 133, '2018-06-01');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (35, 4, 12366, 3, 134, '2018-09-28');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (37, 11, 56965, 5, 135, '2018-02-09');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (36, 9, 39417, 1, 136, '2018-01-21');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (38, 6, 43974, 4, 137, '2018-10-12');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (39, 2, 53023, 2, 138, '2018-09-30');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (41, 12, 25379, 4, 140, '2018-11-03');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (40, 17, 32131, 4, 139, '2018-03-24');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (42, 4, 11453, 6, 141, '2018-10-22');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (43, 18, 22816, 2, 142, '2018-09-23');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (44, 1, 14700, 3, 143, '2018-09-21');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (45, 15, 53800, 6, 144, '2018-04-29');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (46, 13, 28008, 1, 145, '2018-10-03');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (47, 12, 54445, 4, 146, '2018-04-28');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (48, 13, 20327, 6, 147, '2018-10-02');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (49, 2, 55791, 3, 148, '2018-01-25');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (50, 11, 42835, 6, 149, '2018-10-02');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (51, 5, 52166, 3, 150, '2018-02-21');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (52, 13, 30657, 1, 151, '2018-05-13');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (53, 2, 43965, 5, 152, '2018-09-06');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (54, 8, 23320, 3, 153, '2018-03-13');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (55, 13, 14517, 5, 154, '2018-04-17');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (56, 8, 13620, 3, 155, '2018-06-05');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (57, 7, 56538, 1, 156, '2018-05-12');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (58, 1, 32204, 4, 157, '2018-01-13');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (59, 16, 15085, 6, 158, '2018-03-19');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (60, 12, 29293, 1, 159, '2018-10-15');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (61, 19, 39257, 2, 160, '2018-07-26');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (63, 11, 24627, 1, 161, '2018-11-04');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (62, 1, 27245, 3, 162, '2018-06-04');

insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (65, 5, 16620, 4, 164, '2018-09-26');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (66, 13, 36597, 2, 165, '2018-06-04');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (67, 7, 58504, 4, 166, '2018-05-05');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (68, 15, 32943, 1, 167, '2018-02-05');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (69, 2, 18356, 2, 168, '2018-05-11');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (70, 12, 51967, 6, 169, '2018-10-19');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (73, 5, 19095, 4, 171, '2018-06-09');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (71, 13, 41871, 3, 172, '2018-03-18');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (74, 11, 16184, 3, 173, '2018-04-07');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (75, 17, 35876, 2, 174, '2018-05-14');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (76, 6, 31564, 1, 175, '2018-05-27');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (77, 2, 21164, 3, 176, '2018-08-01');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (78, 16, 45335, 3, 177, '2018-08-16');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (81, 7, 34205, 4, 180, '2018-04-21');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (82, 18, 46503, 6, 181, '2018-12-28');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (84, 13, 38747, 4, 182, '2018-09-01');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (83, 11, 56512, 5, 183, '2018-12-15');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (85, 9, 58210, 2, 184, '2018-09-19');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (86, 10, 13062, 5, 185, '2018-01-15');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (90, 13, 18378, 6, 189, '2018-04-13');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (91, 16, 39914, 5, 190, '2018-06-14');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (92, 14, 56303, 5, 191, '2018-02-09');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (93, 10, 24340, 3, 192, '2018-04-24');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (94, 14, 15115, 3, 193, '2018-05-20');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (95, 4, 48599, 6, 194, '2018-03-22');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (96, 10, 56859, 6, 195, '2018-07-18');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (97, 9, 28314, 2, 196, '2018-01-01');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (98, 14, 55587, 5, 197, '2018-04-20');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (99, 19, 32181, 2, 198, '2018-04-25');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (100, 5, 50812, 3, 199, '2018-10-15');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (101, 10, 27372, 5, 200, '2018-08-20');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (102, 3, 40903, 1, 201, '2018-08-30');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (103, 15, 46157, 2, 202, '2018-01-22');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (104, 8, 39939, 2, 203, '2018-07-02');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (106, 6, 21245, 6, 205, '2018-08-01');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (108, 16, 28575, 2, 207, '2018-07-20');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (109, 19, 23511, 6, 208, '2018-11-20');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (110, 10, 19896, 4, 209, '2018-11-10');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (111, 6, 55377, 5, 210, '2018-05-15');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (112, 19, 43236, 1, 211, '2018-01-24');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (115, 12, 48213, 1, 214, '2018-06-22');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (116, 8, 31927, 5, 215, '2018-08-01');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (117, 6, 31901, 4, 216, '2018-09-27');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (118, 12, 15648, 4, 217, '2018-03-20');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (119, 7, 27577, 2, 218, '2018-01-11');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (120, 18, 47778, 3, 219, '2018-08-24');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (122, 6, 15203, 2, 221, '2018-06-02');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (123, 11, 27931, 4, 222, '2018-04-12');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (124, 1, 10080, 4, 223, '2018-02-23');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (125, 18, 40291, 3, 224, '2018-09-30');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (126, 14, 19998, 3, 225, '2018-09-09');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (127, 20, 44397, 4, 226, '2018-11-25');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (128, 5, 31631, 6, 227, '2018-04-29');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (129, 9, 49730, 1, 228, '2018-11-08');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (130, 13, 57105, 6, 229, '2018-02-03');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (131, 3, 31828, 4, 230, '2018-07-21');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (132, 20, 58344, 3, 231, '2018-09-15');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (133, 6, 50113, 4, 232, '2018-03-02');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (134, 12, 35553, 5, 233, '2018-07-21');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (135, 3, 32730, 6, 235, '2018-01-01');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (136, 12, 39672, 1, 234, '2018-08-18');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (137, 9, 17684, 6, 236, '2018-07-22');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (138, 4, 57537, 5, 237, '2018-06-14');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (139, 15, 43888, 1, 238, '2018-06-14');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (140, 15, 59548, 4, 239, '2018-01-22');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (141, 7, 58500, 5, 240, '2018-09-08');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (142, 1, 58651, 1, 241, '2018-01-01');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (143, 14, 48670, 4, 242, '2018-11-27');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (144, 11, 54111, 6, 243, '2018-02-07');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (145, 11, 56234, 1, 244, '2018-08-02');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (146, 6, 19419, 5, 245, '2018-09-29 ');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (147, 13, 19675, 5, 246, '2018-08-28');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (148, 11, 32320, 4, 247, '2018-08-07');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (149, 13, 20744, 2, 248, '2018-02-25');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (150, 14, 40084, 1, 249, '2018-10-24');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (107, 4, 45996, 6, 207, '2018-12-10');
insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (113, 19, 34939, 2, 208, '2018-02-15');

insert into ordered_item (Ordered_ItemId, Quantity, Price_unit, truckId, OrderId, timeOrdered) values (105, 18, 38401, 1, 212, '2018-01-24');
