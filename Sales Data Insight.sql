# Show all customer records
SELECT count(*) FROM sales.customers;

#Show transactions for Chennai market (market code for chennai is Mark001
select * from sales.transactions where market_code="mark001";

#Show distrinct product codes that were sold in chennai
select distinct product_code from sales.transactions where market_code="mark001";

#Show transactions where currency is US dollars
select * from sales.transactions where currency="USD";

#Show transactions in 2020 join by date table
select sales.transactions.*, sales.date.* from sales.transactions inner join sales.date on sales.transactions.order_date=sales.date.date where sales.date.year="2020";

#Show total revenue in year 2020
select sum(sales.transactions.sales_amount) from sales.transactions inner join sales.date on sales.transactions.order_date=sales.date.date where sales.date.year="2020" 
and sales.transactions.currency="INR" or sales.transactions.currency="USD";

#Show total revenue in year 2020, January Month
select sum(sales.transactions.sales_amount) from sales.transactions inner join sales.date on sales.transactions.order_date=sales.date.date where sales.date.year="2020" 
and sales.date.month_name="Janurary" and sales.transactions.currency="INR" or sales.transactions.currency="USD";

#Show total revenue in year 2020 in Chennai
select sum(sales.transactions.sales_amount) from sales.transactions inner join sales.date on sales.transactions.order_date=sales.date.date where sales.date.year="2020";

