use practice;
-- 1. Display all customers who live in Pune.
select * from customers
where city = 'Pune';

-- 2. Display all customers who live in Mumbai.
select * from customers
where city = 'Mumbai';

-- 3. Display all orders with an amount greater than 2000.
select * from orders
where amount > 2000;

-- 4. Display all orders with an amount less than or equal to 1000.
select * from orders
where amount <= 1000;

-- 5. Display all delivered orders.
select * from orders
where status = 'Delivered';

-- 6. Display all cancelled orders.
select * from orders
where status = 'Cancelled';

-- 7. Display all products with a price greater than 2000.
select * from products
where price > 2000;

-- 8. Display all products belonging to the Accessories category.
select * from products 
where category = 'Accessories';

-- 9. Display customers who signed up after 2024-05-01.
select * from customers
where signup_date > '2024-05-01';

-- 10. Display orders placed after 2025-03-01.
select * from orders
where order_date > '2025-03-01';

-- 11. Display orders with amount between 1000 and 3000.
select * from orders
where amount between 1000 and 3000;

select * from orders
where amount >= 1000 and amount <= 3000;

-- 12. Display products with price between 1000 and 5000.
select * from products
where price between 1000 and 5000;

-- 13. Display customers who are NOT from Pune.
select * from customers
where city != 'Pune';

-- 14. Display orders whose status is NOT 'Cancelled'.
select * from orders
where status != 'Cancelled';

-- 15. Display products whose category is either Electronics or Accessories using IN.
select * from products
where category in ('Electronics', 'Accessories');

-- 16. Display customers from Pune, Mumbai, or Nashik using IN.
select * from customers
where city in ('Pune', 'Mumbai', 'Nashik');

-- 17. Display orders whose status is either Delivered or Shipped using IN.
select * from orders
where status in ('Delivered', 'Shipped');

-- 18. Display customers whose first name starts with 'A'.
select * from customers
where fname like 'A%';

-- 19. Display customers whose first name contains the letter 'a'.
select * from customers
where fname like '%a%';

-- 20. Display products whose name contains the word 'Mouse'.
select * from products
where product_name like '%mouse%';

-- 21. Display orders where amount is greater than 1500 AND status is 'Delivered'.
select * from orders
where amount > 1500 and status = 'Delivered';

-- 22. Display orders where amount is less than 1000 OR status is 'Pending'.
select * from orders
where amount < 1000 or status = 'Pending';

-- 23. Display customers who are from Pune AND signed up after 2024-03-01.
select * from customers
where city = 'Pune' and signup_date > '2024-03-01';

-- 24. Display products where price > 2000 AND category = 'Accessories'.
select * from products
where price > 2000 and category = 'Accessories';

-- 25. Display orders where amount is between 1000 and 4000 AND status is not 'Cancelled'.
select * from orders
where amount between 1000 and 4000 and status != 'Cancelled';

-- 26. Display customers from Pune or Mumbai who signed up after 2024-05-01.
select * from customers
where city in ('Pune', 'Mumbai') and signup_date > '2024-05-01';

-- 27. Display products that are NOT in the Electronics category and have price > 1000.
select * from products
where category != 'Electronics' and price > 1000;

-- 28. Display orders with amount > 2000 where status is Delivered or Shipped. Use correct operator precedence.
select * from orders
where amount > 2000 and status in ('Delivered', 'Shipped');

-- 29. Display customers whose first name starts with 'A' or 'R'.
select * from customers
where fname like 'A%' or fname like 'R%';

-- 30. MASTER CHALLENGE: Display orders where amount is between 1000 and 5000, status is Delivered or Shipped, and order_date is after 2025-01-10. Sort the result by amount in descending order.
select * from orders
where amount between 1000 and 5000 and status in ('Delivered', 'Shipped') and order_date > '2025-01-10'
order by amount desc;




