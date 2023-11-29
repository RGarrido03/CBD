USE cbd_lab3_ex4;

// Get latest 2 orders for the fitness tracker
SELECT *
FROM orders_by_product
WHERE product_id = 'c2e6d412-46a6-482d-a063-131dc2638c12'
LIMIT 2;

// Get orders after 1/8 for the fitness tracker
SELECT *
FROM orders_by_product
WHERE product_id = 'c2e6d412-46a6-482d-a063-131dc2638c12'
  AND time > '2023-08-01' ALLOW FILTERING;

// Get orders for user 'johndoe'
SELECT *
FROM orders
WHERE username = 'johndoe';

// Get laptop reviews
SELECT *
FROM reviews_by_product
WHERE id = '1e452b11-b7c8-488a-8ad1-d1f5ebea2cf5';

// Get products which contain 5* reviews
SELECT *
FROM products_by_review
WHERE review = 5;

// Get products with bad reviews
SELECT *
FROM products_by_review
WHERE review < 3 ALLOW FILTERING;

// Get number of elements of a product for a certain order
SELECT products['d80b3112-fc91-4240-a90f-94658fed4555']
FROM orders
WHERE username = 'johndoe'
  AND id = '8c4eb9fc-4164-42bc-ad7b-bbf5e9e3b617';

// Get products above 200€
SELECT *
FROM products
WHERE price > 200 ALLOW FILTERING;

// Get user details
SELECT *
FROM users
WHERE username = 'johndoe';

// Get users registered on a certain date
SELECT *
FROM users_by_date
WHERE register_date = '2023-01-01';