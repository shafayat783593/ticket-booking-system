

-- quary ......................

-- Query 1: Answer

select match_id ,fixture,base_ticket_price 
  from matches where match_status = 'Available' and tournament_category= 'Champions League'


-- Query 2: Answer


select user_id,full_name ,email from users  where (full_name Ilike 'Tanvir%' or full_name Ilike '%Haque')
