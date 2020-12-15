insert into buy(buy_description,client_id)
select 'Связаться со мной по вопросу доставки', client_id
from client
where name_client = 'Попов Илья';