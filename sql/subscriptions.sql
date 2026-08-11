SELECT * FROM subscriber.subscriptions;
SELECT * FROM subscriptions where customer_id is null or customer_id='';
SELECT * FROM subscriptions where tenure_months is null or tenure_months='';
SELECT * FROM subscriptions where contract_type is null or contract_type='';
SELECT * FROM subscriptions where internet_service is null or internet_service='';
update subscriptions
set internet_service=NULL
where internet_service='';
SELECT * FROM subscriptions where online_security is null or online_security='';
SELECT * FROM subscriptions where tech_support is null or tech_support='';
SELECT * FROM subscriptions where join_date is null or join_date='';
SELECT * FROM subscriptions where churn is null or churn='';
update subscriptions
set *=NULL
where *='';
