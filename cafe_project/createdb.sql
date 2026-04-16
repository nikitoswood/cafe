create database cafe_db;

\c cafe_db;

create table orders (
    id serial primary key,
    order_date date,
    total_price decimal
);

create table menu (
    id serial primary key,
    name varchar(100),
    price decimal
);

create table order_items (
    order_id int references orders(id),
    menu_id int references menu(id),
    quantity int,
    primary key (order_id, menu_id)
);
