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
