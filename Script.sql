-- Task 1
SELECT DISTINCT a.district FROM address a
WHERE a.district LIKE 'K%a' AND a.district NOT LIKE '% %';

-- Task 2
SELECT p.amount 'Sum pay', CAST(p.payment_date AS DATE) 'Date pay' FROM payment p
WHERE CAST(p.payment_date AS DATE) BETWEEN '2005-06-15' AND '2005-06-18' AND p.amount > 10;

-- Task 3
SELECT * FROM rental r
ORDER BY r.rental_date DESC
LIMIT 5;

-- Task 4
SELECT REPLACE(lower(c.first_name), 'll', 'pp') 'Name', LOWER(c.last_name) 'Surname'  FROM customer c
WHERE c.first_name = 'Kelly' OR c.first_name = 'Willie';