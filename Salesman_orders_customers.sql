CREATE TABLE salesman (
    salesman_id int,
    name varchar(255),
    city varchar(255),
    commission int
);

INSERT INTO salesman (salesman_id, name, city, commission)
VALUES (5001,'James Hoog','New York',0.15),(5002,'Nail Knite', 'Paris',0.13),(5005,'Pit Alex','London',0.11),(5006,'MC Lyson','Paris',0.13),(5007,'Paul Adam','Rome',0.13),(5003,'Lauson Hen','San Jose',0.12);


SELECT *
FROM salesman;

SELECT *
FROM salesman
ORDER BY salesman_id;

SELECT name,commission
from salesman;

CREATE TABLE Customer (
    customer_id int,
    cust_name varchar(255),
    city varchar(255),
    grade int,salesman_id int
);

INSERT INTO Customer 
VALUES (3002,'Nick Rimando','New York', 100, 5001),
(3005,'Graham Zusi','California',200,5002),
(3004,'Fabian Johnson','Paris',300,5006),
(3007,'Brad Davis','New York',200,5001),
(3009,'Geoff Cameron','Berlin',100,5003),
(3008,'Julian Green','london',300,5002),
(3003,'Jozy Altidore','Moscow',200,5007),
(3001,'Brad Guzan','London','',5005);

SELECT * from Customer;

SELECT city,MAX(grade) from Customer group by city; 


CREATE table orders(ord_no int,
purch_amt dec(6,2),
ord_date Date,custome_id int,salesman_id int);
INSERT into orders 
values (70001,150.50,'2012-10-05',3005,5002),
(70009,270.65,'2012-09-10',3001,5005),
(70002,65.26,'2012-10-05',3002,5001),
(70004,110.50,'2012-08-17',3009,5003),
(70007,948.50,'2012-09-10',3005,5002),
(70005,2400.60,'2012-07-27',3007,5001),
(70008,5760.00,'2012-09-10',3002,5001),
(70010,1983.43,'2012-10-10',3004,5006),
(70003,2480.40,'2012-10-05',3009,5003),
(70012,250.45,'2012-06-27',3008,5002),
(70011,75.29,'2012-08-17',3003,5007),
(70013,3045.60,'2012-04-25',3002,5001);

SELECT * from orders;
