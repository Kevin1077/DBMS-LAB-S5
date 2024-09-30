create table items(
 itemid int primary key,
 Itemname varchar(50) not null,
 category varchar(50),
 Price decimal(10,2) not null,
 Instock int check(Instock >= 0)
 );
 
 create table customers(
 custid int primary key,
 Custname varchar(50) not null,
 address varchar(100),
 state varchar(50)
 );
 
 create table orders(
 orderid int primary key,
 Itemid int,
 Custid int,
 quantity int not null,
 orderdate date not null,
 foreign key(Itemid)references items(itemid),
 foreign key(orderid)references customers(custid)
 );
 drop table orders;
 
 
 create table delivery(
 deliveryid int primary key,
 Custid int,
 Orderid int,
  foreign key(orderid)references customers(custid),
  foreign key(Orderid)references orders(orderid)
  );
   insert into items values(1,'Samsung Galaxy S4','smartphone',4299.99,50);
   insert into items values(2,'macbook pro','laptop',6491.99,30);
   insert into items values(3,'sony wh','headphones',5499.9,100);
   insert into items values(4,'sony','smarttv',5299.99,80);
   
  insert into customers values(1,'Elvin','144galaxyline','haryana');
  insert into customers values(2,'Saniya','1456wilstonline','gujarat');
  insert into customers values(3,'Darwin','RJ street','TamilNadu');
  insert into customers values(4,'Kiran','GandhiStreet','Rajasthan');
   
  insert into orders values(1,1,1,1,DATE '2024-01-15'); 
  insert into orders values(2,2,2,1,DATE '2024-02-20'); 
  insert into orders values(3,3,3,1,DATE '2024-03-25');   
  insert into orders values(4,4,4,2,DATE '2024-04-10');     
    
    SELECT * FROM orders;
  insert into delivery values(1,1,1);    
  insert into delivery values(2,1,2);
  insert into delivery values(3,2,3);
  insert into delivery values(4,3,4);    
  select *from delivery;
  
  SELECT DISTINCT c.* FROM customers c JOIN orders o ON
  c.custid = o.Custid;
  SELECT DISTINCT c.* FROM customers c JOIN orders o ON
  c.custid = o.custid JOIN Delivery d ON o.orderid = d.Orderid;
  SELECT o.orderid, o.Orderdate FROM orders o JOIN customers
  c ON o.custid = c.custid WHERE c.custname LIKE 'S%';
  
SELECT i.Itemname, i.Price FROM items i JOIN orders o ON
i.itemid = o.itemidJOIN customers c ON o.custid = c.custid WHERE c.Custname = 'Elvin';

SELECT DISTINCT c.* FROM customers c JOIN orders o ON c.custid = o.custid LEFT JOIN Delivery 
d ON o.orderid = d.orderid WHERE o.Orderdate > DATE '2013-01-31' AND d.deliveryid IS NULL;

SELECT DISTINCT i.itemid FROM items i JOIN orders o ON i.itemid = o.itemid UNION
SELECT DISTINCT i.itemid FROM items i LEFT JOIN orders o ON i.itemid = o.itemid
LEFT JOIN delivery d ON o.orderid = d.orderid WHERE d.deliveryid IS NULL;

SELECT DISTINCT i.itemid FROM items i JOIN orders o ON i.itemid = o.itemid
UNION SELECT DISTINCT i.itemid FROM items i LEFT JOIN orders o ON i.itemid = o.itemid
LEFT JOIN delivery d ON o.orderid = d.orderid WHERE d.deliveryid IS NULL;

SELECT custname
FROM customers
WHERE custid IN (SELECT custid FROM orders INTERSECT SELECT custid FROM);
SELECT custname
FROM customers WHERE custid IN (SELECT custid FROM orders MINUS SELECT custid FROM delivery);

SELECT c.custname
FROM customers c
JOIN ( SELECT custid, COUNT(*) as orders_count FROM orders
 GROUP BY custid ORDER BY orders_count DESC FETCH FIRST 1 ROW ONLY
)o ON c.custid = o.custid;

SELECT DISTINCT c.*
FROM customers c
JOIN orders o ON c.custid = o.custid
JOIN items i ON o.itemid = i.itemid
WHERE i.price > 5000;

SELECT custname, address
FROM customers WHERE custid NOT IN ( SELECT o.custid FROM orders o
JOIN items i ON o.itemid = i.itemid WHERE i.itemname = 'Samsung Galaxy S4');

SELECT c.*, o.*
FROM c LEFT OUTER JOIN orders o ON c.custid = o.custid;

SELECT c.*, o.*
FROM customers c RIGHT OUTER JOIN orders o ON c.custid = o.custid;

