

-- quary ......................

-- Query 1: Answer

select match_id ,fixture,base_ticket_price 
  from matches where match_status = 'Available' and tournament_category= 'Champions League'


-- Query 2: Answer

select user_id,full_name ,email from users  where (full_name Ilike 'Tanvir%' or full_name Ilike '%Haque')


-- Query 3: Answer
select booking_id,user_id,match_id, coalesce(payment_status,'Action Required') as systematic_status
  from bookings where payment_status is null 