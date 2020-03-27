CREATE USER 'scott'@'%' IDENTIFIED BY 'tiger';
GRANT ALL ON world.* TO 'scott'@'%';
GRANT ALL ON sakila.* TO 'scott'@'%';
GRANT ALL ON book.* TO 'scott'@'%';
GRANT ALL ON lesson.* TO 'scott'@'%';
