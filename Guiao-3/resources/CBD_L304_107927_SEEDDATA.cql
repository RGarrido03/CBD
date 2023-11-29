// KEYSPACE
USE CBD_LAB3_ex4;


// Insert data into USERS table
INSERT INTO USERS (username, name, email, register_date, addresses)
VALUES ('johndoe', 'John Doe', 'john.doe@email.com', '2023-01-01', {'123 Main St, City1', '124 Main St, City2'});
INSERT INTO USERS (username, name, email, register_date, addresses)
VALUES ('janesmith', 'Jane Smith', 'jane.smith@email.com', '2023-02-15', {'456 Oak St, City2', '457 Oak St, City3'});
INSERT INTO USERS (username, name, email, register_date, addresses)
VALUES ('bobjohnson', 'Bob Johnson', 'bob.johnson@email.com', '2023-03-20',
        {'789 Pine St, City3', '790 Pine St, City4'});
INSERT INTO USERS (username, name, email, register_date, addresses)
VALUES ('alicewilliams', 'Alice Williams', 'alice.williams@email.com', '2023-04-10',
        {'234 Maple St, City4', '235 Maple St, City5'});
INSERT INTO USERS (username, name, email, register_date, addresses)
VALUES ('charliebrown', 'Charlie Brown', 'charlie.brown@email.com', '2023-05-05',
        {'567 Birch St, City5', '568 Birch St, City6'});
INSERT INTO USERS (username, name, email, register_date, addresses)
VALUES ('evadavis', 'Eva Davis', 'eva.davis@email.com', '2023-06-18', {'890 Cedar St, City6', '891 Cedar St, City7'});
INSERT INTO USERS (username, name, email, register_date, addresses)
VALUES ('frankwhite', 'Frank White', 'frank.white@email.com', '2023-07-22', {'345 Elm St, City7', '346 Elm St, City8'});
INSERT INTO USERS (username, name, email, register_date, addresses)
VALUES ('graceturner', 'Grace Turner', 'grace.turner@email.com', '2023-08-09',
        {'678 Pine St, City8', '679 Pine St, City9'});
INSERT INTO USERS (username, name, email, register_date, addresses)
VALUES ('davidmiller', 'David Miller', 'david.miller@email.com', '2023-09-14',
        {'901 Oak St, City9', '902 Oak St, City10'});
INSERT INTO USERS (username, name, email, register_date, addresses)
VALUES ('sophiamoore', 'Sophia Moore', 'sophia.moore@email.com', '2023-10-30',
        {'234 Main St, City10', '235 Main St, City11'});


// Insert data into PRODUCTS table
INSERT INTO PRODUCTS (id, name, price)
VALUES ('1e452b11-b7c8-488a-8ad1-d1f5ebea2cf5', 'Laptop', 1200.00);
INSERT INTO PRODUCTS (id, name, price)
VALUES ('552a883d-7b24-4ba5-bc67-e0100566c069', 'Smartphone', 800.50);
INSERT INTO PRODUCTS (id, name, price)
VALUES ('5393d813-2a51-41d5-941c-d7c034d3e59d', 'Headphones', 150.75);
INSERT INTO PRODUCTS (id, name, price)
VALUES ('d80b3112-fc91-4240-a90f-94658fed4555', 'Camera', 900.25);
INSERT INTO PRODUCTS (id, name, price)
VALUES ('c2e6d412-46a6-482d-a063-131dc2638c12', 'Fitness Tracker', 50.00);
INSERT INTO PRODUCTS (id, name, price)
VALUES ('7ae45ceb-bc33-4a12-9053-e53467c5227f', 'Bluetooth Speaker', 80.99);
INSERT INTO PRODUCTS (id, name, price)
VALUES ('2c8c9460-9b25-43b5-afa4-e98f3d9096a8', 'External Hard Drive', 200.50);
INSERT INTO PRODUCTS (id, name, price)
VALUES ('7c912aab-e862-4cfe-af8b-5c3d20029083', 'Coffee Maker', 60.00);
INSERT INTO PRODUCTS (id, name, price)
VALUES ('60a42fac-1570-421f-8cc9-eb308a48c133', 'Gaming Mouse', 45.75);
INSERT INTO PRODUCTS (id, name, price)
VALUES ('22f77d42-2ca7-4426-a023-4b55183c700d', 'Wireless Keyboard', 30.50);
INSERT INTO PRODUCTS (id, name, price)
VALUES ('a19c0e48-f8d0-415b-8a86-dbaa6a85d51e', 'Monitor', 300.00);
INSERT INTO PRODUCTS (id, name, price)
VALUES ('f60f72be-3e8c-4bb3-9ab7-96bac708d3ef', 'Desk Chair', 120.00);


// Insert data into ORDERS table
INSERT INTO ORDERS (username, name, email, register_date, addresses, id, products, time, address)
VALUES ('johndoe', 'John Doe', 'john.doe@email.com', '2023-01-01', {'123 Main St, City1', '124 Main St, City2'},
        '8c4eb9fc-4164-42bc-ad7b-bbf5e9e3b617',
        {'1e452b11-b7c8-488a-8ad1-d1f5ebea2cf5': 1, 'd80b3112-fc91-4240-a90f-94658fed4555': 2, '60a42fac-1570-421f-8cc9-eb308a48c133': 3},
        '2023-01-05 13:24:35.000', '123 Main St, City1');
INSERT INTO ORDERS (username, name, email, register_date, addresses, id, products, time, address)
VALUES ('janesmith', 'Jane Smith', 'jane.smith@email.com', '2023-02-15', {'456 Oak St, City2', '457 Oak St, City3'},
        'f3c697aa-f728-4cf0-a6b3-36b338b13c94',
        {'7c912aab-e862-4cfe-af8b-5c3d20029083': 1, '7ae45ceb-bc33-4a12-9053-e53467c5227f': 4},
        '2023-02-20 14:24:35.000', '456 Oak St, City2');
INSERT INTO ORDERS (username, name, email, register_date, addresses, id, products, time, address)
VALUES ('bobjohnson', 'Bob Johnson', 'bob.johnson@email.com', '2023-03-20',
        {'789 Pine St, City3', '790 Pine St, City4'}, '9bc09ca5-79be-4e01-aead-06c12f3417a3',
        {'f60f72be-3e8c-4bb3-9ab7-96bac708d3ef': 3, 'a19c0e48-f8d0-415b-8a86-dbaa6a85d51e': 5, 'c2e6d412-46a6-482d-a063-131dc2638c12': 2},
        '2023-03-25 12:00:00.000', '789 Pine St, City3');
INSERT INTO ORDERS (username, name, email, register_date, addresses, id, products, time, address)
VALUES ('alicewilliams', 'Alice Williams', 'alice.williams@email.com', '2023-04-10',
        {'234 Maple St, City4', '235 Maple St, City5'}, 'bf635e73-9348-4920-b185-9f650ff42a9d',
        {'5393d813-2a51-41d5-941c-d7c034d3e59d': 4, '552a883d-7b24-4ba5-bc67-e0100566c069': 1, '22f77d42-2ca7-4426-a023-4b55183c700d': 6},
        '2023-04-15 14:00:00.000', '234 Maple St, City4');
INSERT INTO ORDERS (username, name, email, register_date, addresses, id, products, time, address)
VALUES ('charliebrown', 'Charlie Brown', 'charlie.brown@email.com', '2023-05-05',
        {'567 Birch St, City5', '568 Birch St, City6'}, '83d57ec0-fd9e-4d38-aec6-6ae49fa7a4f2',
        {'1e452b11-b7c8-488a-8ad1-d1f5ebea2cf5': 2, 'f60f72be-3e8c-4bb3-9ab7-96bac708d3ef': 5},
        '2023-05-10 15:40:00.000', '567 Birch St, City5');
INSERT INTO ORDERS (username, name, email, register_date, addresses, id, products, time, address)
VALUES ('evadavis', 'Eva Davis', 'eva.davis@email.com', '2023-06-18', {'890 Cedar St, City6', '891 Cedar St, City7'},
        '446247dc-fd2c-489a-bfc5-4dc851decbd5',
        {'5393d813-2a51-41d5-941c-d7c034d3e59d': 6, '60a42fac-1570-421f-8cc9-eb308a48c133': 3, '22f77d42-2ca7-4426-a023-4b55183c700d': 4},
        '2023-06-23 23:59:59.000', '890 Cedar St, City6');
INSERT INTO ORDERS (username, name, email, register_date, addresses, id, products, time, address)
VALUES ('frankwhite', 'Frank White', 'frank.white@email.com', '2023-07-22', {'345 Elm St, City7', '346 Elm St, City8'},
        '3765a1ca-a29d-444b-ba26-da8a5d63eb76',
        {'2c8c9460-9b25-43b5-afa4-e98f3d9096a8': 1, '7c912aab-e862-4cfe-af8b-5c3d20029083': 5},
        '2023-07-27 03:50:00.000', '345 Elm St, City7');
INSERT INTO ORDERS (username, name, email, register_date, addresses, id, products, time, address)
VALUES ('graceturner', 'Grace Turner', 'grace.turner@email.com', '2023-08-09',
        {'678 Pine St, City8', '679 Pine St, City9'}, '730c3d50-cc7f-4638-9a0f-01a003784d3f',
        {'c2e6d412-46a6-482d-a063-131dc2638c12': 4, 'a19c0e48-f8d0-415b-8a86-dbaa6a85d51e': 3},
        '2023-08-14 10:00:00.000', '678 Pine St, City8');
INSERT INTO ORDERS (username, name, email, register_date, addresses, id, products, time, address)
VALUES ('davidmiller', 'David Miller', 'david.miller@email.com', '2023-09-14',
        {'901 Oak St, City9', '902 Oak St, City10'}, '6d0dd92a-17cc-43ea-bfb4-7dca74bb0e29',
        {'7ae45ceb-bc33-4a12-9053-e53467c5227f': 2},
        '2023-09-19 14:27:00.000', '901 Oak St, City9');
INSERT INTO ORDERS (username, name, email, register_date, addresses, id, products, time, address)
VALUES ('sophiamoore', 'Sophia Moore', 'sophia.moore@email.com', '2023-10-30',
        {'234 Main St, City10', '235 Main St, City11'}, 'd4096e6f-849d-49bd-bd23-24f350a58cb7',
        {'552a883d-7b24-4ba5-bc67-e0100566c069': 5, 'c2e6d412-46a6-482d-a063-131dc2638c12': 3},
        '2023-10-31 13:10:00.000', '234 Main St, City10');


// Insert data into REVIEWS_BY_PRODUCT table
INSERT INTO REVIEWS_BY_PRODUCT (id, reviews)
VALUES ('1e452b11-b7c8-488a-8ad1-d1f5ebea2cf5', [5, 2, 1, 4]);
INSERT INTO REVIEWS_BY_PRODUCT (id, reviews)
VALUES ('552a883d-7b24-4ba5-bc67-e0100566c069', [5, 5, 5, 4]);
INSERT INTO REVIEWS_BY_PRODUCT (id, reviews)
VALUES ('5393d813-2a51-41d5-941c-d7c034d3e59d', [1, 2, 3]);
INSERT INTO REVIEWS_BY_PRODUCT (id, reviews)
VALUES ('d80b3112-fc91-4240-a90f-94658fed4555', [5]);
INSERT INTO REVIEWS_BY_PRODUCT (id, reviews)
VALUES ('c2e6d412-46a6-482d-a063-131dc2638c12', [4, 4]);
INSERT INTO REVIEWS_BY_PRODUCT (id, reviews)
VALUES ('7ae45ceb-bc33-4a12-9053-e53467c5227f', [3, 4, 3]);
INSERT INTO REVIEWS_BY_PRODUCT (id, reviews)
VALUES ('2c8c9460-9b25-43b5-afa4-e98f3d9096a8', [2, 2]);
INSERT INTO REVIEWS_BY_PRODUCT (id, reviews)
VALUES ('7c912aab-e862-4cfe-af8b-5c3d20029083', [3, 4, 5]);
INSERT INTO REVIEWS_BY_PRODUCT (id, reviews)
VALUES ('60a42fac-1570-421f-8cc9-eb308a48c133', [5, 2, 1, 4]);
INSERT INTO REVIEWS_BY_PRODUCT (id, reviews)
VALUES ('22f77d42-2ca7-4426-a023-4b55183c700d', [5, 5, 5, 5]);
INSERT INTO REVIEWS_BY_PRODUCT (id, reviews)
VALUES ('a19c0e48-f8d0-415b-8a86-dbaa6a85d51e', [4]);
INSERT INTO REVIEWS_BY_PRODUCT (id, reviews)
VALUES ('f60f72be-3e8c-4bb3-9ab7-96bac708d3ef', [5, 3, 1]);


// Insert data into ORDERS_BY_PRODUCT table
INSERT INTO ORDERS_BY_PRODUCT (product_id, username, order_id, time, address)
VALUES ('1e452b11-b7c8-488a-8ad1-d1f5ebea2cf5', 'johndoe', '8c4eb9fc-4164-42bc-ad7b-bbf5e9e3b617',
        '2023-01-05 13:24:35.000', '123 Main St, City1');
INSERT INTO ORDERS_BY_PRODUCT (product_id, username, order_id, time, address)
VALUES ('d80b3112-fc91-4240-a90f-94658fed4555', 'johndoe', '8c4eb9fc-4164-42bc-ad7b-bbf5e9e3b617',
        '2023-01-05 13:24:35.000', '123 Main St, City1');
INSERT INTO ORDERS_BY_PRODUCT (product_id, username, order_id, time, address)
VALUES ('60a42fac-1570-421f-8cc9-eb308a48c133', 'johndoe', '8c4eb9fc-4164-42bc-ad7b-bbf5e9e3b617',
        '2023-01-05 13:24:35.000', '123 Main St, City1');

INSERT INTO ORDERS_BY_PRODUCT (product_id, username, order_id, time, address)
VALUES ('7c912aab-e862-4cfe-af8b-5c3d20029083', 'janesmith', 'f3c697aa-f728-4cf0-a6b3-36b338b13c94',
        '2023-02-20 14:24:35.000', '456 Oak St, City2');
INSERT INTO ORDERS_BY_PRODUCT (product_id, username, order_id, time, address)
VALUES ('7ae45ceb-bc33-4a12-9053-e53467c5227f', 'janesmith', 'f3c697aa-f728-4cf0-a6b3-36b338b13c94',
        '2023-02-20 14:24:35.000', '456 Oak St, City2');

INSERT INTO ORDERS_BY_PRODUCT (product_id, username, order_id, time, address)
VALUES ('f60f72be-3e8c-4bb3-9ab7-96bac708d3ef', 'bobjohnson', '9bc09ca5-79be-4e01-aead-06c12f3417a3',
        '2023-03-25 12:00:00.000', '789 Pine St, City3');
INSERT INTO ORDERS_BY_PRODUCT (product_id, username, order_id, time, address)
VALUES ('a19c0e48-f8d0-415b-8a86-dbaa6a85d51e', 'bobjohnson', '9bc09ca5-79be-4e01-aead-06c12f3417a3',
        '2023-03-25 12:00:00.000', '789 Pine St, City3');
INSERT INTO ORDERS_BY_PRODUCT (product_id, username, order_id, time, address)
VALUES ('c2e6d412-46a6-482d-a063-131dc2638c12', 'bobjohnson', '9bc09ca5-79be-4e01-aead-06c12f3417a3',
        '2023-03-25 12:00:00.000', '789 Pine St, City3');

INSERT INTO ORDERS_BY_PRODUCT (product_id, username, order_id, time, address)
VALUES ('5393d813-2a51-41d5-941c-d7c034d3e59d', 'alicewilliams', 'bf635e73-9348-4920-b185-9f650ff42a9d',
        '2023-04-15 14:00:00.000', '234 Maple St, City4');
INSERT INTO ORDERS_BY_PRODUCT (product_id, username, order_id, time, address)
VALUES ('552a883d-7b24-4ba5-bc67-e0100566c069', 'alicewilliams', 'bf635e73-9348-4920-b185-9f650ff42a9d',
        '2023-04-15 14:00:00.000', '234 Maple St, City4');
INSERT INTO ORDERS_BY_PRODUCT (product_id, username, order_id, time, address)
VALUES ('22f77d42-2ca7-4426-a023-4b55183c700d', 'alicewilliams', 'bf635e73-9348-4920-b185-9f650ff42a9d',
        '2023-04-15 14:00:00.000', '234 Maple St, City4');

INSERT INTO ORDERS_BY_PRODUCT (product_id, username, order_id, time, address)
VALUES ('1e452b11-b7c8-488a-8ad1-d1f5ebea2cf5', 'charliebrown', '83d57ec0-fd9e-4d38-aec6-6ae49fa7a4f2',
        '2023-05-10 15:40:00.000', '567 Birch St, City5');
INSERT INTO ORDERS_BY_PRODUCT (product_id, username, order_id, time, address)
VALUES ('f60f72be-3e8c-4bb3-9ab7-96bac708d3ef', 'charliebrown', '83d57ec0-fd9e-4d38-aec6-6ae49fa7a4f2',
        '2023-05-10 15:40:00.000', '567 Birch St, City5');

INSERT INTO ORDERS_BY_PRODUCT (product_id, username, order_id, time, address)
VALUES ('5393d813-2a51-41d5-941c-d7c034d3e59d', 'evadavis', '446247dc-fd2c-489a-bfc5-4dc851decbd5',
        '2023-06-23 23:59:59.000', '890 Cedar St, City6');
INSERT INTO ORDERS_BY_PRODUCT (product_id, username, order_id, time, address)
VALUES ('60a42fac-1570-421f-8cc9-eb308a48c133', 'evadavis', '446247dc-fd2c-489a-bfc5-4dc851decbd5',
        '2023-06-23 23:59:59.000', '890 Cedar St, City6');
INSERT INTO ORDERS_BY_PRODUCT (product_id, username, order_id, time, address)
VALUES ('22f77d42-2ca7-4426-a023-4b55183c700d', 'evadavis', '446247dc-fd2c-489a-bfc5-4dc851decbd5',
        '2023-06-23 23:59:59.000', '890 Cedar St, City6');

INSERT INTO ORDERS_BY_PRODUCT (product_id, username, order_id, time, address)
VALUES ('2c8c9460-9b25-43b5-afa4-e98f3d9096a8', 'frankwhite', '3765a1ca-a29d-444b-ba26-da8a5d63eb76',
        '2023-07-27 03:50:00.000', '345 Elm St, City7');
INSERT INTO ORDERS_BY_PRODUCT (product_id, username, order_id, time, address)
VALUES ('7c912aab-e862-4cfe-af8b-5c3d20029083', 'frankwhite', '3765a1ca-a29d-444b-ba26-da8a5d63eb76',
        '2023-07-27 03:50:00.000', '345 Elm St, City7');

INSERT INTO ORDERS_BY_PRODUCT (product_id, username, order_id, time, address)
VALUES ('c2e6d412-46a6-482d-a063-131dc2638c12', 'graceturner', '730c3d50-cc7f-4638-9a0f-01a003784d3f',
        '2023-08-14 10:00:00.000', '678 Pine St, City8');
INSERT INTO ORDERS_BY_PRODUCT (product_id, username, order_id, time, address)
VALUES ('a19c0e48-f8d0-415b-8a86-dbaa6a85d51e', 'graceturner', '730c3d50-cc7f-4638-9a0f-01a003784d3f',
        '2023-08-14 10:00:00.000', '678 Pine St, City8');

INSERT INTO ORDERS_BY_PRODUCT (product_id, username, order_id, time, address)
VALUES ('7ae45ceb-bc33-4a12-9053-e53467c5227f', 'davidmiller', '6d0dd92a-17cc-43ea-bfb4-7dca74bb0e29',
        '2023-09-19 14:27:00.000', '901 Oak St, City9');

INSERT INTO ORDERS_BY_PRODUCT (product_id, username, order_id, time, address)
VALUES ('552a883d-7b24-4ba5-bc67-e0100566c069', 'sophiamoore', 'd4096e6f-849d-49bd-bd23-24f350a58cb7',
        '2023-10-31 13:10:00.000', '234 Main St, City10');
INSERT INTO ORDERS_BY_PRODUCT (product_id, username, order_id, time, address)
VALUES ('c2e6d412-46a6-482d-a063-131dc2638c12', 'sophiamoore', 'd4096e6f-849d-49bd-bd23-24f350a58cb7',
        '2023-10-31 13:10:00.000', '234 Main St, City10');
