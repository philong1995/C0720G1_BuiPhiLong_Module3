create database demo;

use demo;

create table users (
 id  int(3) primary key AUTO_INCREMENT,
 name varchar(120) NOT NULL,
 email varchar(220) NOT NULL,
 country varchar(120)
);

insert into users(name, email, country) values('Minh','minh@codegym.vn','Viet Nam');
insert into users(name, email, country) values('Kante','kante@che.uk','Kenia');

SET SQL_SAFE_UPDATES = 0;

DELIMITER $$

CREATE PROCEDURE show_list_cus()

BEGIN

    SELECT * FROM users;

    END $$

DELIMITER ;

DELIMITER $$

create procedure edit_cus(in cus_id int, new_name varchar(120), new_email varchar(220), new_country varchar(120))

begin

update users set
users.name = new_name,
users.email = new_email,
users.country = new_country
where users.id = cus_id;

end $$

DELIMITER ;

DELIMITER $$

create procedure delete_cus(in cus_id int)

begin

delete from users
where users.id = cus_id;

end $$

DELIMITER ;