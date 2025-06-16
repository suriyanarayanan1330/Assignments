-- Task 1 Starts Here

create database TechShop ;

use TechShop;

create table Customers(
   
   CustomerID varchar(10) not null,
   FirstName varchar(100) ,
   LastName varchar(100),
   Email varchar(150),
   Phone int(10),
   Address varchar(200),
   primary key(CustomerID)
);


create table Products(

   ProductID varchar(10) not null ,
   ProductName char(100),
   ProductDescription varchar(200),
   Price int,
   primary key(ProductID)
   
);



create table Orders(

  OrderID varchar(10) not null,
  primary key(OrderID),
  CustomerID varchar(10),
  foreign key(CustomerID) references Customers(CustomerID),
  OrderDate date,
  TotalAmount int
  
);

create table OrderDetails(
    OrderDetailID varchar(10),
    OrderID varchar(10) not null,
    ProductID varchar(10),
    Quantity int,
    primary key(OrderDetailID),
    foreign key(OrderID) references Orders(OrderID) ,
    foreign key(ProductID) references Products(ProductID)
);

create table inventory(
  
   InventoryID varchar(10),
   ProductID varchar(10),
   QuantityInStock int,
   LastStockUpdate date,
   primary key(InventoryID),
   foreign key(ProductID) references Products(ProductID)

);



select * from Products;

insert into Customers(CustomerID,FirstName,LastName,Email,Phone,Address)values('CUST001', 'Aarav', 'Patel', 'aarav.patel@email.com', 987654321, '123 Gandhi Road, Chennai'),('CUST002', 'Saanvi', 'Sharma', 'saanvi.s@email.com', 876543109, '456 Anna Salai, Chennai'),
('CUST003', 'Vikram', 'Singh', 'vikram.singh@email.com', 654321098, '789 Nungambakkam High Road, Chennai'),
('CUST004', 'Diya', 'Mehta', 'diya.m@email.com', 543210987, '101 T Nagar, Chennai'),
('CUST005', 'Rohan', 'Gupta', 'rohan.g@email.com', 123456789, '21 Velachery Main Road, Chennai'),
('CUST006', 'Ananya', 'Reddy', 'ananya.r@email.com', 988776655, '34 Adyar Bridge, Chennai'),
('CUST007', 'Arjun', 'Kumar', 'arjun.kumar@email.com', 898989898, '55 Besant Nagar Beach, Chennai'),
('CUST008', 'Isha', 'Nair', 'isha.nair@email.com', 877665544, '67 Mylapore Tank, Chennai'),
('CUST009', 'Kabir', 'Jain', 'kabir.j@email.com', 766554433, '89 ECR Road, Chennai'),
('CUST010', 'Priya', 'Verma', 'priya.v@email.com', 655443322, '11 GST Road, Chennai');

insert into Products(ProductID, ProductName, ProductDescription, Price)values('P001', 'Laptop', '15-inch display, 16GB RAM, 512GB SSD', 85000),
('P002', 'Smartphone', '6.5-inch display, 128GB Storage, 5G', 35000),
('P003', 'Headphones', 'Noise-cancelling, wireless, over-ear', 7000),
('P004', 'Keyboard', 'Mechanical, RGB lighting, USB', 2500),
('P005', 'Mouse', 'Wireless, ergonomic design, 1600 DPI', 1200),
('P006', 'Monitor', '27-inch, 4K UHD, IPS panel', 20000),
('P007', 'Smartwatch', 'Fitness tracking, heart rate monitor, GPS', 15000),
('P008', 'Tablet', '10-inch display, 64GB Storage, WiFi', 22000),
('P009', 'External HDD', '2TB storage, USB 3.0, portable', 5500),
('P010', 'Bluetooth Speaker', 'Portable, waterproof, 10 hours battery', 4000);

insert into Orders(OrderID,CustomerID,OrderDate,TotalAmount)values('ORD001', 'CUST001', '2024-01-15', 125000),
('ORD002', 'CUST002', '2024-02-05', 35000),
('ORD003', 'CUST003', '2024-02-20', 7000),
('ORD004', 'CUST004', '2024-03-10', 2500),
('ORD005', 'CUST005', '2024-03-25', 40000),
('ORD006', 'CUST006', '2024-04-01', 22000),
('ORD007', 'CUST007', '2024-04-15', 5500),
('ORD008', 'CUST008', '2024-05-05', 4000),
('ORD009', 'CUST009', '2024-05-20', 85000),
('ORD010', 'CUST010', '2024-06-01', 15000);

insert into OrderDetails(OrderDetailID,OrderID,ProductID,Quantity)values('OD001', 'ORD001', 'P001', 1),
('OD002', 'ORD001', 'P003', 2),
('OD003', 'ORD002', 'P002', 1),
('OD004', 'ORD003', 'P003', 1),
('OD005', 'ORD004', 'P004', 1),
('OD006', 'ORD005', 'P002', 1),
('OD007', 'ORD006', 'P008', 1),
('OD008', 'ORD007', 'P009', 2),
('OD009', 'ORD008', 'P010', 1),
('OD010', 'ORD009', 'P001', 1); 

insert into inventory(inventoryID,ProductID,QuantityInStock,LastStockUpdate)values('INV001', 'P001', 25, '2024-06-01'),
('INV002', 'P002', 40, '2024-05-28'),
('INV003', 'P003', 60, '2024-06-05'),
('INV004', 'P004', 80, '2024-06-03'),
('INV005', 'P005', 100, '2024-06-02'),
('INV006', 'P006', 15, '2024-05-30'),
('INV007', 'P007', 20, '2024-05-25'),
('INV008', 'P008', 30, '2024-06-04'),
('INV009', 'P009', 50, '2024-06-01'),
('INV010', 'P010', 45, '2024-05-29');

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Task 2 Starts Here

-- 1.Query to retrieve al the names and emails of all the customers
select CustomerID,FirstName,LastName,Email from Customers ;

-- 2.Query to list all the orders with their order dates and corresponding customer names
select OrderID,OrderDate,FirstName,LastName from Orders join Customers on Orders.CustomerID = Customers.CustomerID;

-- 3.Query to insert new customer into the Customer Table

insert into Customers value('CUST11','Suriya','Narayanan','sn@gmail.com','0832987','TamilNadu,Madurai');

-- 4.Query to update the prices of all electronic gadgets in the Product table by 10%

set sql_safe_updates = 0;
update Products set Price = Price*1.10 ;
set sql_safe_updates = 1;
select * from Products;

-- 5.Query to delete a specific order and its associated order details from the "Orders" and "OrderDetails" tables. Passing OrderId as a parameter.

alter table OrderDetails add constraint fk foreign key(OrderID) references Orders(OrderId) on delete cascade;
delete from Orders where OrderId = 'ORD002';
select * from Orders;

-- 6.Inserting New Orders inside the Orders Table

insert into Orders value('ORD002', 'CUST002', '2024-02-05', 35000);

-- 7.Query to update the Customer Table

update Customers set Email = 'abc@gmail.com', address = 'Madurai' where CustomerID = 'CUST003';
select * from Customers;

-- 8.Query to recalculate and update the total cost of each order in the Orders Table based on the prices and quantities in the OrderDetails Table
update Orders o join (
    select od.OrderID, sum(od.Quantity * p.Price)  as Total 
    from OrderDetails od join Products p on od.ProductID = p.ProductID
    group by OrderID
) totalTable on o.OrderID = totalTable.OrderID
set o.TotalAmount = totalTable.Total;


select * from Orders;

 -- 9.Query to delete all orders and orderDetails by passing customerID as Parameter

 delete from Orders where CustomerID = 'CUST005';
 select * from Orders;
 
-- 10.Query to insert a product into product Table 

insert into Products value('P011', 'Ear Buds', 'Noise Cancellation, 18 hours battery', 4400);

-- 11.Query to update the status of a specific order in the Orders Table allowing users to input orderID and the newStatus

alter table Orders add Ord_Status varchar(100);
insert into Orders(OrderID,OrderDate,Ord_Status) value('R012',curdate(),'Pending');
select * from Orders;

-- 12. Query to calculate and update the number of orders placed by each customer in the Customer Table based on the data in the Orders Table

insert into Orders value('ORD015', 'CUST009',curdate(),6000,'Pending');
select CustomerID, count(CustomerID) No_of_customers from Orders group by CustomerID ;


-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Task 3 Starts Here
-- 1.Query to retrieve all the Orders along with customer information(customer name) for each order
select OrderID,OrderDate,FirstName,LastName,Email,Phone,Address from Orders join Customers on Orders.CustomerID = Customers.CustomerID;  

-- 2. Query to find Total revenue generated bby each Electronic gadget Product,Including product name and total revenue
select p.ProductID,p.ProductName, sum(od.Quantity * p.Price) as revenue from Products p left join OrderDetails od on p.ProductID = od.ProductID group by ProductID;

-- 3.Query to list down all the customers who atleast made one purchase
select * from Orders;

 select Customers.CustomerID ,FirstName,LastName, count(OrderID) from Orders join Customers on Customers.CustomerID=Orders.CustomerID group by CustomerID;
 
 -- 4.Query to find out the most popular electronic gadget and the product name and total quantity ordered
 
select Products.ProductID,ProductName,sum from (select ProductID, sum(Quantity) as sum from OrderDetails group by ProductID) as sum_table join Products on sum_table.ProductID = Products.ProductID order by sum_table.sum desc limit 1;
 
 
 -- 5.Query to list down electronic gadgets along with their category
 alter table Products add column Category varchar(225);
 
update Products set Category='Computer' where ProductID='P001';
update Products set Category='Phone' where ProductID='P002';
update Products set Category='Accessories' where ProductID='P003';
update Products set Category='Computer' where ProductID='P004';
update Products set Category='Computer' where ProductID='P005';
update Products set Category='Computer' where ProductID='P006';
update Products set Category='Accessories' where ProductID='P007';
update Products set Category='Phone' where ProductID='P008';
update Products set Category='Computer' where ProductID='P009';
update Products set Category='Accessories' where ProductID='P010';

select * from Products;

-- 6.Query to list down customers with their avg order value with name
select * from Orders;

insert into Orders(OrderID,CustomerID,OrderDate,TotalAmount) value('ORD011','CUST004','2024-06-01' ,1000);

select Orders.CustomerID,FirstName,LastName,Phone, avg(TotalAmount) as avg_order_value from Orders join Customers on Orders.CustomerID = Customers.CustomerID group by CustomerID;

-- 7.Query to find order with highest total revenue with customer information and total amount

select Orders.OrderID, FirstName,LastName,Orders.TotalAmount from Orders join Customers on Orders.CustomerID = Customers.CustomerID order by Orders.TotalAmount desc limit 1;

-- 8.Query to list down all the products with number of times each product got ordered
select Products.ProductID,ProductName, count(OrderDetails.ProductID) as ordered from Products left join OrderDetails on Products.ProductID = OrderDetails.ProductID group by Products.ProductID;

-- 9.Query to find the customers who purchased specific electronic gadget using the product name
select Customers.FirstName,Customers.LastName , c_r_p.CustomerID, c_r_p.OrderID, c_r_p.ProductID from 
( 
 select Orders.CustomerId, order_product_table.OrderID,order_product_table.ProductID,order_product_table.ProductName from 
 (
select OrderDetails.OrderID, Product_table.ProductID,Product_table.ProductName  from 
 (
select ProductID,ProductName from Products where ProductName = 'HeadPhones'
)
 as Product_table join OrderDetails on Product_table.ProductID = OrderDetails.ProductID
)
 as order_product_table join Orders on order_product_table.OrderID = Orders.OrderID
 ) 
 as c_r_p join Customers on c_r_p.CustomerID = Customers.CustomerID;
 
 -- Simplified version 
 
 select Customers.FirstName,Customers.LastName,
		Orders.CustomerID,
        OrderDetails.OrderID,
        Products.ProductID,Products.ProductName
 from 
       Customers
 join 
      Orders on Customers.CustomerId = Orders.CustomerID
 join 
      OrderDetails on Orders.OrderID = OrderDetails.OrderID
 join
	 Products on OrderDetails.ProductID = Products.ProductID
 where
     Products.ProductName = 'HeadPhones';
	
 
 select * from OrderDetails;
 
 -- 10.Query to find out the total revenue of the all the orders placed between specified time period
 
 select * from Orders;
 select sum(TotalAmount) as TotalRevenue from Orders where OrderDate between '2024-01-01' and '2024-04-01';
 
 
 -----------------------------------------------------------------------------------------------------------------------------------------------------------------------
 
 
 
 -- Task 4 Starts Here
 
 -- 1.Query to find which customer have not placed any order
 select * from Customers where CustomerID not in (select CustomerID from Orders);
 
 -- 2.Total number number of products available for sale
 select  count(ProductID) as Total_no_of_products_sales from inventory where QuantityInStock > 0;
 
 -- 3.Query to generate the total revenue generated by the techshop
 select sum(TotalAmount) as Revenue_generated from Orders ;
 
 -- 4.Query to list avg quantity ordered for a specific category
 
 select * from Products;
 
 select * from OrderDetails;
 
select avg(OrderDetails.Quantity) as avg_order ,Category_table.Category from 
 (
 select ProductID , ProductName ,Category from Products where Category in('Computer')
 ) 
 as Category_table join OrderDetails on Category_table.ProductID = OrderDetails.ProductID ;
 
 -- 5.Query to generate total revenue generated by a specific customer using customerID
 
 select Customers.FirstName,Customers.LastName, Orders.CustomerID , sum(Orders.TotalAmount) as revenue_gen
 from 
 Orders
 join Customers on Orders.CustomerID = Customers.CustomerID where Orders.CustomerID = 'CUST010'  group by Orders.CustomerID;

select * from Orders;

-- 6.Query to list down all the customers based on the number of orders placed

select Customers.FirstName,Customers.LastName,count_table.CustomerID,count_table.count from
 ( 
 select Orders.CustomerID, count(Orders.OrderID) as count from Orders group by CustomerID 
 )
 as count_table join Customers on count_table.CustomerID = Customers.CustomerID order by count_table.count desc limit 1; 

 
 -- 7. Query to find the most popular product category , which is the one with the highest total quantity ordered across all orders 
 
 select Products.Category  , sum(OrderDetails.Quantity) as sum_of_orders 
 from
 Products
 join
 OrderDetails
 on Products.ProductID = OrderDetails.ProductID
 group by Products.Category
 order by sum_of_orders
 desc limit 1;


-- 8.Query to find out the customer who spend the most money (Highest revenue) with their name and Total money spend
select Customers.CustomerID,Customers.FirstName,Customers.LastName,customer_table.Total_spend from 
 (
 select CustomerID, sum(TotalAmount) as Total_spend from Orders group by CustomerID 
 )
 as customer_table right join Customers on customer_table.CustomerID = Customers.CustomerID order by customer_table.Total_spend desc limit 1;
 
 -- 9.Query to list down all the customers with avg order values
 
 select Customers.CustomerID,Customers.FirstName,Customers.LastName,customer_table.avg_order_value from
 (
 select CustomerID, avg(TotalAmount) as avg_order_value from Orders group by CustomerID
 )
 as customer_table right join Customers on customer_table.CustomerID = Customers.CustomerID ;
 
 -- 10.Query to list down all the customers with total no of orders they have made
 
 select Customers.CustomerID,Customers.FirstName,Customers.LastName,customer_table.no_of_orders from
 (
 select CustomerID, count(Orders.OrderID) as no_of_orders from Orders group by CustomerID
 )
 as customer_table right join Customers on customer_table.CustomerID = Customers.CustomerID ;
 
