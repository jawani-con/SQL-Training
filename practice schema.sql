create database library;
use library;
create table users(
id int primary key,
name varchar(25),
membership_date date);

create table books(
book_id int primary key,
title varchar(50),
author varchar(20),
genre varchar(20),
price int);

create table issued_books(
issue_id int primary key,
user_id int,
book_id int,
issue_date date,
return_date date,
foreign key (user_id) references users(id),
foreign key(book_id) references books(book_id)
);

