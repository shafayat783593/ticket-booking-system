

-- quary ......................

-- Query 1: Answer

select match_id ,fixture,base_ticket_price 
  from matches where match_status = 'Available' and tournament_category= 'Champions League'


-- Query 2: Answer

select user_id,full_name ,email from users  where (full_name Ilike 'Tanvir%' or full_name Ilike '%Haque')


-- Query 3: Answer
select booking_id,user_id,match_id, coalesce(payment_status,'Action Required') as systematic_status
  from bookings where payment_status is null 

  -- Query 4: Answer

  select b.booking_id, u.full_name, m.fixture ,b.total_cost
  from matches m 
  inner  join bookings b  using(match_id) 
inner join users u  using(user_id)

-- Query 5: Answer

select u.user_id ,u.full_name, b.booking_id from users  u left join bookings b using(user_id)

-- Query 6: Answer

select booking_id,match_id,total_cost from  bookings  where  total_cost > (
 select round(avg(total_cost)) from bookings
)
