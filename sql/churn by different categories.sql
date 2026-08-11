-- churn rate by contract type 
select contract_type, 
round(sum(case when churn='Yes' then 1.00 else 0.00 end)/count(customer_id) * 100,2) as churn_rate_by_contract_type
from subscriptions 
group by contract_type;

-- churn rate by tenure groups 
select 
case when tenure_months <=12 then '0-12 months'
     when tenure_months <=24 then '13-24 months ' 
     else '25+ months' end as tenure_groups, 
round(sum(case when churn='Yes' then 1.00 else 0.00 end)/count(customer_id) * 100,2) as churn_rate_by_tenure_months
from subscriptions 
group by tenure_groups
order by churn_rate_by_tenure_months desc;

-- churn rate by payment method
 select payment_method, 
round(sum(case when churn='Yes' then 1.00 else 0.00 end)/count(payments.customer_id) * 100,2) as churn_rate_by_payment_method
from payments 
join subscriptions
on payments.customer_id=subscriptions.customer_id
group by payment_method;

