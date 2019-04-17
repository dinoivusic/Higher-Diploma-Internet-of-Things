create database dataMart;
use jungheinrich;
use dataMart;
drop table if exists datamart.table1weeklyReport;
#1. showing all transaction within a first week of March
Create table dataMart.table1weeklyReport 
select customers.CustomerId, customers.CustomerName, ordered_item.Price_unit, ordered_item.Quantity
from customers
join orders
on customers.CustomerId=orders.CustomerId
join ordered_item
on orders.OrderId=ordered_item.OrderId
where timeOrdered between '2018-03-01' AND '2018-03-08';

select * from datamart.table1weeklyReport;

#2 Create a trigger that stores truck levels once a sale takes place
drop table if exists ordered_item_update;
create table ordered_item_update (
 ID int auto_increment primary key,
 Ordered_ItemId int not null,
 Quantity int not null,
 changedat datetime default null,
 Price_unit int not null,
 action varchar(50) default null
);

drop trigger if exists before_ordered_item_update;
delimiter $$
create trigger before_ordered_item_update
 before insert on ordered_item
 for each row
begin
 insert into ordered_item_update
 set 
 action = 'update',
 Ordered_ItemId = new.Ordered_ItemId,
 Quantity = new.Quantity,
 Price_unit = new.Price_unit,
 changedat = now();
end$$
delimiter ;

#3. creating a view on services table that shows the customers, price, truckid and Month of service in the first half of 2018.
use jungheinrich;
drop view if exists ServiceView;
Create view ServiceView 
AS
select customers.CustomerName, Price as Purchase_Amount from service
join customers
on customers.CustomerId = service.CustomerId
where Date_Time between '2018-01-01' AND '2018-07-07'
order by Date_Time;

select * from serviceView;

#4.total of trucks sold to public

use jungheinrich;
drop table if exists datamart.table2TotalTruckSold; 
Create table datamart.table2TotalTruckSold 
select truck.truckType AS truckCode, ordered_item.Quantity AS Total
from jungheinrich.ordered_item 
join truck 
on ordered_item.truckId=truck.truckId;

select coalesce (truckCode,'Total'), sum(Total) 
from datamart.table2TotalTruckSold
group by truckCode
with rollup;


#5. detailed transactions in March 
use jungheinrich;
use datamart;
drop table if exists datamart.report3TransactionsMonth;
create table datamart.report3TransactionsMonth
select sum(Quantity), sum(Price_unit) AS totalTransactions from jungheinrich.ordered_item
where timeOrdered between '2018-03-01' AND '2018-04-01'
group by timeOrdered
with rollup;

#6 Detailed and total revenue for the year up to date
drop table if exists datamart.report4RevenueYear;
create table datamart.report4RevenueYear
select sum(ordered_item.Price_unit) AS totalRevenue, sum(service.Price) AS totalService
from ordered_item
join service
on service.truckId = ordered_item.truckId
where ordered_item.timeOrdered >= (NOW() - INTERVAL 1 YEAR)
group by month(timeOrdered)
with ROLLUP;

select * from datamart.report4RevenueYear;

#7. Detailed and total transaction for year broken down by month
drop table if exists datamart.report5detailTransaction;
create table datamart.report5detailTransaction
select month(ordered_item.timeOrdered) as PaymentDate, sum(ordered_item.Price_unit)as totalSold, sum(service.Price) AS totalService
from orders
join service
on orders.customerId=service.CustomerId
join ordered_item
on orders.orderId=ordered_item.orderId
where ordered_item.timeOrdered between '2018-01-01' AND '2018-12-31'
group by PaymentDate
with rollup;

select * from datamart.report5detailTransaction;

#8. Display the growth in sales/services (as a percentage) for your business, from the 1st month of opening until now

drop table if exists datamart.growthSales;
create table datamart.growthSales
select Month(ordered_item.timeOrdered) AS PaymentMonth, (ordered_item.Price_unit/sum(ordered_item.Price_unit))*100 AS totalGrowth
from jungheinrich.ordered_item
group by PaymentMonth
with rollup;

select * from datamart.growthSales;

drop table if exists datamart.growthService;
create table datamart.growthService
select month(service.Date_time) as ServicePerMonth, (service.price/sum(service.Price))*100 as ServiceGrowth
from jungheinrich.service
group by ServicePerMonth
with rollup;

select * from datamart.growthService;