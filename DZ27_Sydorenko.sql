create database qauto;
create table qauto.car_brands  (
    id int primary key auto_increment,
    brandNames varchar(255) not null
); 

use qauto;
create table car_models (
id int primary key auto_increment,
carBrandId int,
brandNames varchar(255) not null,
foreign key (carBrandId) references car_brands(id)
); 

use qauto;
create table users (
id int primary key auto_increment,
firstName varchar(25) not null,
lastName varchar(25) not null,
email varchar(50) not null unique,
password varchar(255) not null
); 

use qauto;
create table cars (
id int primary key auto_increment,
userId int not null,
carBrandId int not null,
carModelsId int not null,
mileage int not null,
initialMileage int not null,
foreign key (userId) references users(id),
foreign key (carBrandId) references car_brands(id),
foreign key (carModelsId) references car_models(id)
); 

insert into car_brands (brandNames) 
values
('Tesla'), 
('BMW'), 
('Mersedes'), 
('Nisan');

insert into car_models (carBrandId, brandNames) 
values
(1, 'Model S'),
(1, 'Cybertruck'),
(2, 'X5'),
(2, 'X6'),
(2, 'X3'),
(3, 'C-Class'),
(3, 'E-Class'),
(4, 'Juke'),
(4, 'X-Trail');


insert into users (firstName, lastName, email, password)
values
('Alex', 'Dou', 'alex.d@mail.com', 'password123'),
('Oleh', 'Kon', 'oleh.kon@mail.com', 'pass111');

insert into cars (userId, carBrandId, carModelsId, mileage, initialMileage) 
values
(1, 1, 1, 120, 10),   
(2, 2, 4, 800, 20);