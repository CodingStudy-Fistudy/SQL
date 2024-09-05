-- 세단 중에서 10월 대여기록 있는 id
SELECT distinct(c.car_id) as car_id
from car_rental_company_car c join car_rental_company_rental_history h
on c.car_id = h.car_id
where car_type='세단' and month(start_date)=10
order by c.car_id desc
