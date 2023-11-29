// KEYSPACE
DROP KEYSPACE IF EXISTS cbd_lab3_ex4;
CREATE KEYSPACE CBD_LAB3_ex4 WITH replication = {'class':'SimpleStrategy', 'replication_factor' : 1};
USE CBD_LAB3_ex4;

CREATE TABLE USERS
(
    username      VARCHAR PRIMARY KEY,
    name          VARCHAR,
    email         VARCHAR,
    register_date TIMESTAMP,
    addresses     SET<VARCHAR>,
);

CREATE TABLE USERS_BY_DATE
(
    username      VARCHAR,
    name          VARCHAR,
    email         VARCHAR,
    register_date TIMESTAMP PRIMARY KEY,
    addresses     SET<VARCHAR>,
);

CREATE TABLE ORDERS
(
    // User denormalization
    username      VARCHAR,
    name          VARCHAR,
    email         VARCHAR,
    register_date TIMESTAMP,
    addresses     SET<VARCHAR>,

    id            UUID,
    products      MAP<UUID, INT>,
    time          TIMESTAMP,
    address       VARCHAR,
    PRIMARY KEY ( username, id, time ),
);
CREATE INDEX products_idx ON ORDERS (ENTRIES (products));

CREATE TABLE PRODUCTS
(
    id    UUID PRIMARY KEY,
    name  VARCHAR,
    price DECIMAL,
);
CREATE INDEX product_price ON PRODUCTS (price);

CREATE TABLE REVIEWS_BY_PRODUCT
(
    id      UUID PRIMARY KEY,
    reviews LIST<INT>,
);

CREATE TABLE PRODUCTS_BY_REVIEW
(
    review INT,
    id     UUID,
    name   VARCHAR,
    price  DECIMAL,
    PRIMARY KEY ( review, id )
);

CREATE TABLE ORDERS_BY_PRODUCT
(
    product_id UUID,

    username   VARCHAR,
    order_id   UUID,
    time       TIMESTAMP,
    address    VARCHAR,
    PRIMARY KEY ( product_id, username, order_id )
);
CREATE INDEX time_idx ON ORDERS_BY_PRODUCT (time);