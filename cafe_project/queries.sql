-- колво заказов за последний месяц
select count(*) 
from orders
where order_date >= current_date - interval '1 month';

-- самая популярная позиция
select m.name, sum(oi.quantity) as total_sold
from order_items oi
join menu m on oi.menu_id = m.id
group by m.name
order by total_sold desc
limit 1;

-- средний чек за 3 месяца
select avg(total_price)
from orders
where order_date >= current_date - interval '3 months';
