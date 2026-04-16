insert into menu (name, price) values
('капучино', 80),
('чизкейк', 120),
('сендвич', 90);

insert into orders (order_date, total_price) values
(current_date - interval '10 days', 200),
(current_date - interval '20 days', 150),
(current_date - interval '40 days', 300);

insert into order_items (order_id, menu_id, quantity) values
(1, 1, 2),
(1, 2, 1),
(2, 2, 1),
(3, 3, 3);
