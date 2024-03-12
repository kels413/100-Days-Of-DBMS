
show DATABASEs;

USE book_shop;


SELECT count(*) FROM books;

SELECT USER, HOST FROM mysql.user

SELECT CURRENT_ROLE();

SELECT CURRENT_USER()

CREATE USER 'Kelly chukwu'@'localhost' IDENTIFIED BY '11111'

SELECT USER, HOST FROM mysql.USER

show PRIVILEGES;

DROP USER 'kelly chukwu'@'localhost';

CREATE user 'ayo'@'localhost' IDENTIFIED BY '11111'

SELECT USER, HOST FROM mysql.user

SHOW GRANTS FOR 'root'@'localhost'

SHOW GRANTS;

SELECT CURRENT_USER();

GRANT SELECT.* ON