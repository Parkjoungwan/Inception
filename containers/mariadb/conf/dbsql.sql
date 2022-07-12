create database wordpress_db;
create user 'joupark'@'%' identified by 'password';
grant all on wordpress_db.* to 'joupark'@'%';
flush privileges;
