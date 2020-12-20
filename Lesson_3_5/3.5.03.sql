select step_id,keyword_id from 
keyword
cross join step
where step_name regexp concat('[(, ]',keyword_name,'\\b')
order by  2,1