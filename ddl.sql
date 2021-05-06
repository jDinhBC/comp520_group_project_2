DROP DATABASE IF EXISTS Triple;
CREATE DATABASE Triple;
USE Triple; 

CREATE table winner(
year int;
derbywinner varchar(60),
preakwinner varchar(60),
belmontwinner varchar(60),
PRIMARY KEY (year)

); 
