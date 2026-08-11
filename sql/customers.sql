SELECT * FROM subscriber.customers;
use subscriber;
SELECT * FROM customers where customer_id is null or customer_id='';
SELECT * FROM customers where city is null or city='';
SELECT * FROM customers where age is null or age='';
SELECT * FROM customers where gender is null or gender='';
select gender,count(*) from customers group by gender;
select age,count(*) from customers group by age order by count(*) desc;
select age,count(*) from customers group by age order by age desc;
describe customers;


