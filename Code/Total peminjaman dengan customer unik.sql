SELECT C.NAME AS CATEGORY_NAME,
	COUNT(DISTINCT CU.CUSTOMER_ID) AS TOTAL_UNIQUE_RENT_DEMAND
FROM CATEGORY C
RIGHT JOIN FILM_CATEGORY USING (CATEGORY_ID)
RIGHT JOIN FILM USING (FILM_ID)
RIGHT JOIN INVENTORY USING (FILM_ID)
RIGHT JOIN RENTAL USING (INVENTORY_ID)
RIGHT JOIN CUSTOMER CU USING (CUSTOMER_ID)
GROUP BY 1
ORDER BY 2 DESC;