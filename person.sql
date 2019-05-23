create table person(
person_id serial primary key,
  name text not null,
  age integer not null,
  height decimal not null,
  city text not null,
  favorite_color text not null;
)

insert into person (person_id, name, age, height, city, favorite_color)
values 
('James', 22, 155.448, 'New York', 'green')
('Amy', 21, 167.64, 'Dallas', 'red')
('Nate', 25, 182.88, 'Washington', 'blue')
('Jessica', 28, 176.784, 'Floride', 'orange')
('Maria', 23, 164.592, 'Baltimore', 'yellow');

SELECT * FROM person ORDER BY height DESC;
SELECT * FROM person ORDER BY height ASC;
SELECT * FROM person ORDER BY age DESC;
SELECT * FROM person WHERE age > 20;
SELECT * FROM person WHERE age = 18;
SELECT * FROM person WHERE age < 20 AND > 18;
SELECT * FROM person WHERE age != 27;
SELECT * FROM person WHERE favorite_color != 'red' AND favorite_color != 'blue';
SELECT * FROM person WHERE favorite_color = 'orange' OR favorite_color = 'green';
SELECT * FROM person WHERE favorite_color IN ('orange', 'blue', 'green');
SELECT * FROM person WHERE favorite_color = 'yellow' OR favorite_color = 'purple';

create table orders (
person_id serial primary key,
  product_name text not null,
  product_price integer not null,
  quantity integer not null;
)

insert into order (product_name, product_price, quantity)
values 
('shirt', 12.50, 3)
('pants', 24.50, 2)

SELECT * FROM orders;
SELECT SUM(quantity) FROM order;
SELECT SUM(product_price * quantity) FROM orders;
SELECT SUM(product_price * quantity) FROM orders WHERE person_id = 0;

create table supervisor (
    report_to serial primary key,
    name text not null;
)

create table employees (
    employee_id serial primary key,
    first_name text not null,
    last_name text not null,
    city text not null;
)

SELECT * FROM first_name AND last_name FROM employee WHERE city = 'Calgary';
SELECT MAX(birth_date) FROM employee;
SELECT MIN(birth_date) FROM employee;
SELECT * FROM employee WHERE report_to = 2;
SELECT COUNT(*) FROM employee WHERE city = 'Lethbridge';

SELECT COUNT(*) FROM invoice WHERE billing_country = 'USA';
SELECT MAX(total) FROM invoice;
SELECT MIN(total) FROM invoice;
SELECT * FROM invoice WHERE total > 5;
SELECT * FROM invoice WHERE total < 5;
SELECT COUNT(*) FROM invoice IN ('CA', 'TX', 'AZ');
SELECT AVG(total) FROM invoice;
SELECT SUM(total) FROM invoice;

