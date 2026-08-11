SELECT * FROM subscriber.payments;
select * from payments where total_charges is null ;
SELECT total_charges, LENGTH(total_charges)
FROM payments
WHERE total_charges IS NULL;
select count(*) from payments where total_charges is null;
select count(*) from payments where total_charges='';
select count(*) from payments where total_charges=' ';
UPDATE payments
SET total_charges = NULL
WHERE total_charges = '';
UPDATE payments
SET monthly_charges  = NULL
WHERE  monthly_charges = '';
UPDATE payments
SET payment_method  = NULL
WHERE  payment_method = '';

SET SQL_SAFE_UPDATES = 0;
select * from payments order by total_charges desc;
describe payments;
alter table payments 
modify total_charges double;
