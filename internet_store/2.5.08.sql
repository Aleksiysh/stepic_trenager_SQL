insert into buy_step(buy_id,step_id) 
select  buy_id, step_id
from
step
cross join 
buy
where buy_id =5;

