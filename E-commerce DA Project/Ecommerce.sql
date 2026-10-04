-- Total Orders
SELECT COUNT(*) AS total_orders FROM orders;

-- Total Sales
SELECT SUM("Net_Amount") AS total_sales FROM orders;

-- Top Product 
select "Product",sum("Net_Amount") as sales
from orders
group by "Product"
order by sales desc;

--Top Cities
select "City",sum("Net_Amount") as sales 
from orders
group by "City"
order by sales desc;

-- Monthly Sales
select "Month",sum("Net_Amount") as sales
from orders
group by "Month";

-- Highest profit product 
select "Product", sum("Profit") as profit
from orders
group by "Product"
order by profit desc;

--Payment mode distribution
select "Payment_Mode",count(*) as Total_orders
from orders
group by "Payment_Mode"
order by Total_orders asc;

-- Cancelled orders
select *
from orders 
where "Order_Status" = 'Cancelled';

-- No. of cancelled orders
select count("Order_Status") as cos
from orders 
where "Order_Status" = 'Cancelled';

