#edit subset queries with current month and final select query with this month for differentials
use residual_customers;
WITH subset (last_residual) AS 
(select sum(residual)
FROM inserttablehere
Where account != '0'),
subset_2 (last_customers) AS 
(select count(distinct account)
FROM insertablehere
WHERE account !=0),
subset_3 (last_billing) AS 
(select sum(fee)
FROM inserttablehere
WHERE account !=0)
Select sum(residual) - (select last_residual from subset)  as residual_difference, count(distinct account) - (select last_customers from subset_2) as customer_dif, sum(fee) - (select last_billing from subset_3) as billing_dif
FROM inserttablehere
WHERE account !=0
