WITH t1 AS (Select *, DATE_PART('day', return_date - rental_date) AS date_difference
            FROM rental),
t2 AS (SELECT rental_duration, date_difference,
              CASE
                WHEN rental_duration > date_difference THEN 'Returned early'
                WHEN rental_duration = date_difference THEN 'Returned on Time'
                ELSE 'Returned late'
              END AS Return_Status
          FROM film f
          JOIN inventory i
          USING(film_id)
          JOIN t1
          USING (inventory_id))
SELECT Return_status, count(*) As total_no_of_films
FROM t2
GROUP BY 1
ORDER BY 2 DESC;