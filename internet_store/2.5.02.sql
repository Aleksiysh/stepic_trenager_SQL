insert into client(name_client,city_id,email)
select 'Попов Илья', city_id,'popov@test'
from city
where name_city = 'Москва';