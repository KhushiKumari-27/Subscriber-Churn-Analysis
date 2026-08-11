-- high risk customers 

select customers.* 
FROM customers
    join subscriptions
    on subscriptions.customer_id=customers.customer_id
    join payments
    on customers.customer_id=payments.customer_id
    
    where contract_type ='Month-to-month' and tenure_months <=12 and tech_support='No' and churn='No'
    order by customer_id;