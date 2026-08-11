 -- total revenue generated
 
 select sum(total_charges) as gross_revenue from payments;


-- revenue lost due to churn

select churn , round(sum(total_charges),2)as revenue
from payments 
join subscriptions
on subscriptions.customer_id=payments.customer_id
group by churn ;

-- average revenue per user

select round(avg(total_charges),2) from payments;


--  rvenue lost  estimation
SELECT 
round(sum( case when churn='Yes' then total_charges else 0 end )*100.00/sum(total_charges),2) AS revenue_in_percentage
FROM payments 
JOIN subscriptions
ON subscriptions.customer_id = payments.customer_id;
  
  
-- revenue lost by each tenure group 

select case when tenure_months<=12 then '0-12'
				when tenure_months<=24 then '13-24'
                else '25+' end as tenure_groups, 
                round(sum( case when churn='Yes' then total_charges else 0 end )*100.00/sum(total_charges),2) AS revenue_in_percentage
FROM payments 
JOIN subscriptions
ON subscriptions.customer_id = payments.customer_id
group by tenure_groups;

