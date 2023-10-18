create database coffeebooking;
use	coffeebooking;
 create table category(
	id int primary key auto_increment not null ,
    name varchar(500)
);

create table product(
	id int primary key not null,
    name varchar(500),
    price double,
    discount double,
    thumbnail varchar(500),
    description longtext,
    category_id int,
    created_at datetime,
    updated_at datetime,
    foreign key (category_id) references category(id)
);

create table gallery(
	id int primary key not null auto_increment,
	thumbnail varchar(500),
    product_id int,
    foreign key (product_id) references product(id)
);

create table role (
	id int primary key not null auto_increment,
    name varchar(50)
);

create table user(
	id int primary key not null auto_increment,
    fullname varchar(50),
    username varchar (50) not null,
    password varchar(255),
    email varchar(400),
    phonenumber varchar(20),
    address varchar(500),
    role_id int,
    status int,
    foreign key (role_id) references role(id)
);

create table feedback(
	id int primary key not null auto_increment,
    name varchar(100),
    email varchar(100),
    subject varchar(200),
    message varchar(200),
    created_at datetime,
    status int,
    user_id int,
    foreign key (user_id) references user(id)
);

create table orders(
	id int primary key not null auto_increment,
    fullname varchar(100),
    email varchar(200),
    phonenumber varchar(20),
    address varchar(500),
    orderdate datetime,
    status int,
    total double,
    user_id int,
    foreign key (user_id) references user(id)
);

create table orderdetail(
	id int primary key not null auto_increment,
    price double,
    quantity int,
    total double,
    product_id int,
    foreign key (product_id) references product(id),
    order_id int,
    foreign key(order_id) references orders(id),
    status int
);





