-- Задание 1
SELECT DISTINCT a.district FROM address a
WHERE a.district LIKE 'K%a' AND a.district NOT LIKE '% %';

-- Задание 2
SELECT p.amount 'Сумма платежа', CAST(p.payment_date AS DATE) 'Дата платежа' FROM payment p
WHERE CAST(p.payment_date AS DATE) BETWEEN '2005-06-15' AND '2005-06-18' AND p.amount > 10;

-- Задание 3
SELECT * FROM rental r
ORDER BY r.rental_date DESC
LIMIT 5;

-- Задание 4
SELECT REPLACE(lower(c.first_name), 'll', 'pp') 'Имя', LOWER(c.last_name) 'Фамилия'  FROM customer c
WHERE c.first_name = 'Kelly' OR c.first_name = 'Willie';