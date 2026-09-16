show databases;
drop database ecommercedb;

create database ecommercedb;
use ecommercedb;

CREATE TABLE Orders (
	order_id INT,
	customer_name VARCHAR(50),
	product_name VARCHAR(100),
	category VARCHAR(30),
	city VARCHAR(30),
	order_status VARCHAR(30),
	payment_method VARCHAR(30),
	order_amount DECIMAL(10,2),
	discount_percent DECIMAL(5,2),
	order_date DATE
);

INSERT INTO Orders
	(order_id, customer_name, product_name, category, city, order_status,
	payment_method, order_amount, discount_percent, order_date)
VALUES
	(1001, 'Rahul Sharma', 'Wireless Headphones', 'Electronics', 'Pune', 'Delivered', 'UPI', 3499, 10, '2026-01-05'),
	(1002, 'Priya Mehta', 'Running Shoes', 'Fashion', 'Mumbai', 'Delivered', 'Credit Card', 4299, 15, '2026-01-07'),
	(1003, 'Amit Patil', 'Laptop Stand', 'Electronics', 'Pune', 'Cancelled', 'UPI', 1899, 5, '2026-01-09'),
	(1004, 'Sneha Kulkarni', 'Yoga Mat', 'Fitness', 'Delhi', 'Delivered', 'Debit Card', 1299, 20, '2026-01-10'),
	(1005, 'Rohan Shah', 'Coffee Maker', 'Home', 'Pune', 'Processing', 'Credit Card', 5499, 10, '2026-01-12'),
	(1006, 'Neha Joshi', 'Smart Watch', 'Electronics', 'Mumbai', 'Delivered', 'UPI', 6999, 12, '2026-01-14'),
	(1007, 'Karan Deshmukh', 'Office Chair', 'Home', 'Delhi', 'Delivered', 'Credit Card', 8999, 18, '2026-01-16'),
	(1008, 'Anjali Verma', 'Backpack', 'Fashion', 'Nashik', 'Returned', 'UPI', 2499, 8, '2026-01-18'),
	(1009, 'Vivek Nair', 'Bluetooth Speaker', 'Electronics', 'Pune', 'Delivered', 'Cash', 2799, 0, '2026-01-20'),
	(1010, 'Pooja Iyer', 'Air Fryer', 'Home', 'Mumbai', 'Delivered', 'Credit Card', 7499, 15, '2026-01-22'),
	(1011, 'Arjun Rao', 'Gaming Mouse', 'Electronics', 'Bengaluru', 'Processing', 'UPI', 1999, 5, '2026-01-24'),
	(1012, 'Meera Kapoor', 'Dress', 'Fashion', 'Delhi', 'Delivered', 'Debit Card', 3299, 25, '2026-01-26'),
	(1013, 'Sahil Khan', 'Protein Shaker', 'Fitness', 'Mumbai', 'Delivered', 'UPI', 799, 0, '2026-01-28'),
	(1014, 'Isha Malhotra', 'Monitor', 'Electronics', 'Pune', 'Delivered', 'Credit Card', 15999, 10, '2026-02-01'),
	(1015, 'Nikhil Bansal', 'Dining Table', 'Home', 'Nashik', 'Cancelled', 'Debit Card', 12999, 12, '2026-02-03'),
	(1016, 'Kavya Singh', 'Sneakers', 'Fashion', 'Bengaluru', 'Delivered', 'UPI', 3899, 10, '2026-02-05'),
	(1017, 'Aditya Jain', 'Dumbbells', 'Fitness', 'Pune', 'Delivered', 'Cash', 2999, 5, '2026-02-07'),
	(1018, 'Simran Kaur', 'Tablet', 'Electronics', 'Mumbai', 'Returned', 'Credit Card', 18999, 20, '2026-02-09'),
	(1019, 'Varun Gupta', 'Vacuum Cleaner', 'Home', 'Delhi', 'Delivered', 'UPI', 9999, 15, '2026-02-11'),
	(1020, 'Riya Desai', 'Handbag', 'Fashion', 'Pune', 'Processing', 'Credit Card', 4599, 12, '2026-02-13'),
	(1021, 'Rahul Verma', 'Keyboard', 'Electronics', 'Nashik', 'Delivered', 'UPI', 2999, 7, '2026-02-15'),
	(1022, 'Priya Shah', 'Blender', 'Home', 'Mumbai', 'Delivered', 'Debit Card', 4499, 10, '2026-02-17'),
	(1023, 'Amit Joshi', 'Treadmill', 'Fitness', 'Delhi', 'Processing', 'Credit Card', 25999, 20, '2026-02-19'),
	(1024, 'Sneha Patil', 'Jacket', 'Fashion', 'Pune', 'Delivered', 'UPI', 5999, 18, '2026-02-21'),
	(1025, 'Rohan Mehta', 'Webcam', 'Electronics', 'Bengaluru', 'Delivered', 'Credit Card', 4999, 5, '2026-02-23'),
	(1026, 'Neha Sharma', 'Bookshelf', 'Home', 'Nashik', 'Returned', 'Cash', 6999, 10, '2026-02-25'),
	(1027, 'Karan Rao', 'Football Shoes', 'Fitness', 'Mumbai', 'Delivered', 'UPI', 3799, 15, '2026-02-27'),
	(1028, 'Anjali Kapoor', 'Smartphone', 'Electronics', 'Delhi', 'Delivered', 'Credit Card', 28999, 8, '2026-03-01'),
	(1029, 'Vivek Shah', 'Bedsheet Set', 'Home', 'Pune', 'Delivered', 'UPI', 2199, 5, '2026-03-03'),
	(1030, 'Pooja Nair', 'Sports Watch', 'Fitness', 'Bengaluru', 'Delivered', 'Debit Card', 8499, 10, '2026-03-05')
;

show tables;

select * from orders;

-- 1. Display all delivered orders, sorted by order_amount from highest to lowest.
select * from orders 
where order_status = 'Delivered'
order by order_amount desc;

-- 2. Display the 5 highest-value orders in the dataset.
select * from orders
order by order_amount desc
limit 5;

-- 3. Display the 5 highest-value delivered orders.
select * from orders
where order_status = 'Delivered'
order by order_amount desc
limit 5;

-- 4. Find customers whose names start with 'A'. Display name, product, city, and order_amount.
select customer_name, product_name, city, order_amount from orders
where customer_name like 'A%';

-- 5. Find products whose names contain the word 'Watch'. Display customer_name, product_name, order_status, and order_amount.
select customer_name, product_name, order_status, order_amount from orders
where product_name like '%Watch%';

-- 6. Find orders with order_amount between ₹3,000 and ₹10,000, inclusive. Sort from highest to lowest amount.
select * from orders
where order_amount between 3000 and 10000
order by order_amount desc;

-- 7. Find delivered orders from Pune or Mumbai with order_amount greater than ₹4,000. Sort by order_amount descending.
select * from orders
where city in ('Pune', 'Mumbai') and order_amount > 4000 and order_status = 'Delivered'
order by order_amount desc;

-- 8. Find the top 3 delivered Electronics orders with order_amount between ₹5,000 and ₹30,000.
select * from orders
where category = 'Electronics' and order_amount between 5000 and 30000 and order_status = 'Delivered'
order by order_amount desc
limit 3;

-- 9. Display orders where the customer name contains 'Shah'. Sort by order_date from newest to oldest.
select * from orders
where customer_name like '%Shah%'
order by order_date desc;

-- 10. Display distinct cities from which customers have placed orders, sorted alphabetically.
select distinct city from orders
order by city;

-- 11. Create a CASE column called discount_category: 'High Discount' for discount_percent >= 20, 'Medium Discount' for 10–19.99, and 'Low/No Discount' for below 10.
select 
	order_amount,
    discount_percent,
    case
		when discount_percent >= 20 then 'High Discount'
        when discount_percent between 10 and 19.99 then 'Medium Discount'
        else 'Low/No Discount'
	end as discount_category
from orders;

-- 12. Create a CASE column called order_value_category: 'High Value' for order_amount >= 15000, 'Medium Value' for 5000–14999.99, and 'Low Value' for below 5000.
select 
	order_amount,
    case
		when order_amount >= 15000 then 'High Value'
        when order_amount between 5000 and 14999.99 then 'Medium Value'
        else 'Low Value'
	end as order_value_category
from orders;

-- 13. Create a CASE column called order_type: Delivered → 'Completed', Processing → 'In Progress', Returned → 'Returned', Cancelled → 'Cancelled'.
select 
	order_status,
    case 
		when order_status = 'Delivered' then 'Completed'
        when order_status = 'Processing' then 'In Progress'
        when order_status = 'Returned' then 'Returned'
        else 'Cancelled'
	end as order_type
from orders;

-- 14. Find the top 5 delivered orders with discount_percent between 10 and 20, inclusive. Display customer_name, product_name, order_amount, and discount_percent.
select 
	customer_name,
    product_name,
    order_amount, 
	discount_percent
from orders
where discount_percent between 10 and 20 and order_status = 'Delivered'
order by discount_percent desc
limit 5;

-- 15. Find delivered orders where the customer name starts with 'P' OR the product name contains 'Phone'. Sort by order_amount descending.
select * from orders
where order_status = 'Delivered' and (customer_name like 'P%' or product_name like '%Phone%')
order by order_amount desc;

-- 16. Find orders from Pune, Mumbai, or Delhi where order_amount is between ₹2,000 and ₹10,000. Return only the top 7 by order_amount.
select * from orders
where city in ('Pune', 'Mumbai', 'Delhi') and order_amount between 2000 and 10000
order by order_amount desc
limit 7; 

-- 17. Create a CASE column called priority: 'Priority' when order_amount >= 10000 AND order_status = 'Delivered';
-- 'Standard' for delivered orders below ₹10,000; 'Not Completed' for all other statuses.
select 
	order_id,
    product_name, 
    category,
    order_status, 
    order_amount,
    case 
		when order_amount >= 10000 and order_status = 'Delivered' then 'Priority'
        when order_amount < 10000 and order_status = 'Delivered' then 'Standard'
        else 'Not Completed'
	end as priority
from orders;

-- 18. Find orders where the customer name contains 'a' and discount_percent is at least 15%. 
-- Display name, product, discount_percent, and order_amount, sorted by discount_percent descending.
select customer_name, product_name, discount_percent, order_amount
from orders
where customer_name like '%a%' and discount_percent >= 15
order by discount_percent desc;

-- 19. Find the top 5 delivered orders in Electronics or Fitness where order_amount is between ₹5,000 and ₹30,000. 
-- Display order_id, customer_name, product_name, category, order_amount, and order_date.
select order_id, customer_name, product_name, category, order_amount, order_date
from orders
where order_status = 'Delivered' and category in ('Electronics', 'Fitness') and order_amount between 5000 and 30000
order by order_amount desc
limit 5;

-- 20. Write one management query returning the top 5 delivered orders from Pune, Mumbai, or Bengaluru 
-- where the customer name contains 'a', order_amount is between ₹4,000 and ₹20,000, and discount_percent is at least 10%. 
-- Add a CASE column called customer_priority: 'High' for order_amount >= ₹10,000, 'Medium' for ₹6,000–₹9,999.99, 
-- and 'Low' below ₹6,000. Sort by order_amount descending.
select 
	customer_name, 
    city, 
    order_amount,
    discount_percent,
    order_status,
	case
		when order_amount >= 10000 then 'High'
        when order_amount between 6000 and 9999.99 then 'Medium'
        else 'Low'
	end as customer_priority
from orders
where city in ('Pune', 'Mumbai', 'Bengaluru') and customer_name like '%a%' and order_amount between 4000 and 20000 and discount_percent >= 10 and order_status = 'Delivered'
order by order_amount desc
limit 5;


