CREATE DATABASE bamazon;

USE bamazon;

CREATE TABLE products(
item_id INT,
product_name VARCHAR(25),
department_name VARCHAR(25),
price DECIMAL(10,2) NULL,
stock_quantity INT,
PRIMARY KEY (item_id)
);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity) VALUE (18945, 'Television', 'Electronics', 399.99, 215);
INSERT INTO products (item_id, product_name, department_name, price, stock_quantity) VALUE (18946, 'Table', 'Furniture', 40.99, 215);
INSERT INTO products (item_id, product_name, department_name, price, stock_quantity) VALUE (18947, 'Computer', 'Electronics', 1059.99, 215);
INSERT INTO products (item_id, product_name, department_name, price, stock_quantity) VALUE (18948, 'Air Conditioner', 'Electronics', 199.99, 215);
INSERT INTO products (item_id, product_name, department_name, price, stock_quantity) VALUE (18949, 'Chair', 'Furniture', 19.99, 215);
INSERT INTO products (item_id, product_name, department_name, price, stock_quantity) VALUE (18950, 'Shoes', 'Clothing', 49.99, 215);
INSERT INTO products (item_id, product_name, department_name, price, stock_quantity) VALUE (18951, 'Pants', 'Clothing', 29.99, 215);
INSERT INTO products (item_id, product_name, department_name, price, stock_quantity) VALUE (18952, 'Soccer Jersey', 'Sports', 59.99, 215);
INSERT INTO products (item_id, product_name, department_name, price, stock_quantity) VALUE (18953, 'Soccer Ball', 'Sports', 399.99, 215);
INSERT INTO products (item_id, product_name, department_name, price, stock_quantity) VALUE (18954, 'Microwave', 'Electronics', 99.99, 215);
INSERT INTO products (item_id, product_name, department_name, price, stock_quantity) VALUE (18955, 'Fridge', 'Electronics', 500.99, 215);






