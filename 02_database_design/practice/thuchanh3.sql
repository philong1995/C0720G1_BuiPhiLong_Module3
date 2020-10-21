-- tạo khoá ngoại customer_id thuộc table orders liên quan tới khoá chính id_cus thuộc table customers:
CREATE TABLE customers(
   id_cus INT AUTO_INCREMENT PRIMARY KEY,
   name VARCHAR(40),
   address VARCHAR(255),
   email VARCHAR(255)
);

CREATE TABLE orders(
   id_or INT AUTO_INCREMENT,
   staff VARCHAR(50),
   PRIMARY KEY(id_or),
   customer_id INT,
   FOREIGN KEY (customer_id) REFERENCES customers(id_cus)
);

drop table customers, orders;