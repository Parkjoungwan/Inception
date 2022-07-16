create database wordpress_db;
create user 'God'@'%' identified by 'password';
grant all privileges on *.* to 'God'@'%';
create user 'joupark'@'%' identified by 'password';
grant all on wordpress_db.* to 'joupark'@'%';
flush privileges;
