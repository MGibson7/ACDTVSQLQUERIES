USE residual_customers;
SELECT count(distinct(Account)), Customer, Start
FROM inserttablehere
WHERE Account NOT IN (SELECT Account FROM inserttablehere)
#Group by account
#Flip this month in row 3 with last month in row 4 to see lost jobs
#QUERY TO SEE NEW CUSTOMERS LOST IN LAST MONTH
