create database bai_tap_1;

use bai_tap_1;

create table demo(
id int primary key auto_increment,
productCode varchar(50),
productName varchar(50),
productPrice int,
productAmount int,
productDescription varchar(50),
productStatus varchar(50)
);

CREATE UNIQUE INDEX productCode_index
 ON demo (productCode);
 
CREATE INDEX productName_productPrice
ON demo (productName , productPrice);

EXPLAIN SELECT * FROM demo WHERE id = 1;

CREATE VIEW ten_view AS
SELECT productCode, productName, productPrice,productStatus 
FROM demo
WHERE productPrice is not null ;

UPDATE ten_view
SET productPrice = 20
WHERE productName = 'tivi';

drop view ten_view;

DELIMITER //

CREATE PROCEDURE findAllDemo()

BEGIN

  SELECT * FROM demo;

END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE insertDemo(
in productCode varchar(50),
productName varchar(50),
productPrice int,
productAmount int,
productDescription varchar(50),
productStatus varchar(50)
)
BEGIN

  insert into demo(productCode,productName,productPrice,productAmount,productDescription,productStatus) 
  values (productCode,productName,productPrice,productAmount,productDescription,productStatus);

END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE updateDemo(id_product int ,price int)

BEGIN

UPDATE demo
SET productPrice = price
WHERE id = id_product;

END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE deleteDemo(id_products int)

BEGIN

DELETE FROM demo WHERE id = id_products ;

END //

DELIMITER ;