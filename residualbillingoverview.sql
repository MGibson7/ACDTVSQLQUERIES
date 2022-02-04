use residual_customers;
Select count(distinct account), customer, programming, sum(residual) as residual, phone, city, start, state, type
FROM insertcustomerfilehere
Where account != '0'
#Where start > '2019-09-01' 
#Group By account
#Order By state desc, billing desc

#Find specific account below
#WHERE Account = '39615311'

#Query to see unique accounts grouped together with their total billing/residual
