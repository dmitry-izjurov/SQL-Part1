-- ������� 1
SELECT DISTINCT a.district FROM address a
WHERE a.district LIKE 'K%a' AND a.district NOT LIKE '% %';

-- ������� 2
SELECT p.amount '����� �������', CAST(p.payment_date AS DATE) '���� �������' FROM payment p
WHERE CAST(p.payment_date AS DATE) BETWEEN '2005-06-15' AND '2005-06-18' AND p.amount > 10;

-- ������� 3
SELECT * FROM rental r
ORDER BY r.rental_date DESC
LIMIT 5;

-- ������� 4
SELECT REPLACE(lower(c.first_name), 'll', 'pp') '���', LOWER(c.last_name) '�������'  FROM customer c
WHERE c.first_name = 'Kelly' OR c.first_name = 'Willie';