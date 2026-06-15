

-- quary ......................

-- Query 1: Answer

SELECT
  match_id,
  fixture,
  base_ticket_price
FROM
  matches
WHERE
  match_status = 'Available'
  AND tournament_category = 'Champions League'


-- Query 2: Answer


SELECT
  user_id,
  full_name,
  email
FROM
  users
WHERE
  (
    full_name ILIKE 'Tanvir%'
    OR full_name ILIKE '%Haque'
  )

-- Query 3: Answer

SELECT
  booking_id,
  user_id,
  match_id,
  coalesce(payment_status, 'Action Required') AS systematic_status
FROM
  bookings
WHERE
  payment_status IS NULL

  -- Query 4: Answer
SELECT
  b.booking_id,
  u.full_name,
  m.fixture,
  b.total_cost
FROM
  matches m
  INNER JOIN bookings b USING (match_id)
  INNER JOIN users u USING (user_id)

-- Query 5: Answer

SELECT
  u.user_id,
  u.full_name,
  b.booking_id
FROM
  users u
  LEFT JOIN bookings b USING (user_id)

-- Query 6: Answer

SELECT
  booking_id,
  match_id,
  total_cost
FROM
  bookings
WHERE
  total_cost > (
    SELECT
      round(avg(total_cost))
    FROM
      bookings
  )

--Query 7: Answer

SELECT
  match_id,
  fixture,
  base_ticket_price
FROM
  matches
ORDER BY
  base_ticket_price DESC
OFFSET 1
LIMIT 2