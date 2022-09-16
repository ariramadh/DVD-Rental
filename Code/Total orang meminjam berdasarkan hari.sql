WITH TP as (SELECT rental_id, EXTRACT(DOW FROM RENTAL_DATE) AS DAYOW 
            FROM RENTAL),
     T1 as (SELECT r.rental_id, r.rental_date, dayow,
           CASE
            WHEN DAYOW = 0 THEN 'Sunday'
            WHEN DAYOW = 1 THEN 'Monday'
            WHEN DAYOW = 2 THEN 'Tuesday'
            WHEN DAYOW = 3 THEN 'Wednesday'
            WHEN DAYOW = 4 THEN 'Thursday'
            WHEN DAYOW = 5 THEN 'Friday'
            WHEN DAYOW = 6 THEN 'Saturday'
			END AS RETURN_STATUS
		    FROM RENTAL R
            JOIN TP
            USING (rental_id)
           )
SELECT RETURN_STATUS, COUNT(*) AS NUMBER_OF_RENTEE
FROM T1
GROUP BY 1
ORDER BY 2 DESC;