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
