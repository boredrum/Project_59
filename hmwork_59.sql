\sql
\connect root@localhost
USE shop;

CREATE TABLE product (id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY, title VARCHAR(128), price MEDIUMINT UNSIGNED, rating DECIMAL(3,2), category VARCHAR(128), brand VARCHAR(64), INDEX(title(8)), INDEX(price), INDEX(rating), INDEX(category(5)), INDEX(brand(5)));


INSERT INTO product(title, price, rating, category, brand) VALUES('iPhone 9','549','4.69','smartphones', 'Apple');
INSERT INTO product(title, price, rating, category, brand) VALUES('iPhone X','899','4.44','smartphones', 'Apple');
INSERT INTO product(title, price, rating, category, brand) VALUES('Samsung Universe 9','1249','4.09','smartphones', 'Samsung');
INSERT INTO product(title, price, rating, category, brand) VALUES('OPPOF19','280','4.3','smartphones', 'OPPO');
INSERT INTO product(title, price, rating, category, brand) VALUES('Huawei P30','499','4.09','smartphones', 'Huawei');
INSERT INTO product(title, price, rating, category, brand) VALUES('MacBook Pro','1749','4.57','laptops', 'Apple');
INSERT INTO product(title, price, rating, category, brand) VALUES('Samsung Galaxy Book','1499','4.25','laptops', 'Samsung');
INSERT INTO product(title, price, rating, category, brand) VALUES('Microsoft Surface Laptop 4','1499','4.43','laptops', 'Microsoft Surface');
INSERT INTO product(title, price, rating, category, brand) VALUES('Infinix INBOOK','1099','4.54','laptops', 'Infinix');
INSERT INTO product(title, price, rating, category, brand) VALUES('HP Pavilion 15-DK1056WM','1099','4.43','laptops', 'HP Pavilion');


INSERT INTO product(title, price, rating, category, brand) VALUES('iPhone 12','1100','4.69','smartphones', 'Apple');
INSERT INTO product(title, price, rating, category, brand) VALUES('iPhone 11','979','4.69','smartphones', 'Apple');
INSERT INTO product(title, price, rating, category, brand) VALUES('MacBook Air','1300','4.72','laptops', 'Apple');
INSERT INTO product(title, price, rating, category, brand) VALUES('iPhone 14','1549','4.69','smartphones', 'Apple');
INSERT INTO product(title, price, rating, category, brand) VALUES('iPhone 13','1349','4.69','smartphones', 'Apple');
INSERT INTO product(title, price, rating, category, brand) VALUES('MacBook','950','4.69','laptops', 'Apple');


CREATE TABLE customer (id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY, name VARCHAR(128), productID MEDIUMINT UNSIGNED);
INSERT INTO customer(name, productID) VALUES('Mike','9');
INSERT INTO customer(name, productID) VALUES('Bob','5');
INSERT INTO customer(name, productID) VALUES('Nikola','11');
INSERT INTO customer(name, productID) VALUES('Mike','14');
INSERT INTO customer(name, productID) VALUES('Nikola','3');
INSERT INTO customer(name, productID) VALUES('Mike','8');
INSERT INTO customer(name, productID) VALUES('Mike','9');

\! cls

SELECT category, COUNT(title) AS Quantity FROM product GROUP BY category;
SELECT category, COUNT(DISTINCT brand) AS Quantity FROM product GROUP BY category;
SELECT name, COUNT(name) AS Quantity FROM customer GROUP BY name;
SELECT name, COUNT(name) AS Quantity FROM customer GROUP BY name ORDER BY Quantity DESC;
SELECT category, title, price FROM customer JOIN product ON customer.productID=product.id ORDER BY category, price DESC;

\! cls