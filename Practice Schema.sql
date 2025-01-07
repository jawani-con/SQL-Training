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


insert into users (id, name, membership_date) values
(1, 'Akshat', '2023-01-15'),
(2, 'Ram', '2023-02-20'),
(3, 'Shyam', '2023-03-10'),
(4, 'Deepak', '2023-04-05');

insert into books (book_id, title, author, genre, price) values
(1, 'The Kite Runner', 'Khaled Hoseini', 'Drama', 200),
(2, 'It Ends With Us', 'Colleen Hover', 'Romance', 300),
(3, 'To Kill a Mockingbird', 'Harper Lee', 'Fiction', 180),
(4, 'The Catcher in the Rye', 'J.D. Salinger', 'Fiction', 150),
(5, 'Harry Potter and the Sorcerers Stone', 'J.K. Rowling', 'Fantasy', 500);

insert into issued_books (issue_id, user_id, book_id, issue_date, return_date) values 
(1, 1, 1, '2023-05-01', '2023-05-10'),
(2, 1, 2, '2023-06-01', '2023-06-15'),
(3, 2, 3, '2023-07-01', NULL),
(4, 3, 4, '2023-08-01', '2023-08-20'),
(5, 4, 5, '2023-09-01', '2023-09-10');


