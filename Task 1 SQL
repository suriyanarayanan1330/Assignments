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
