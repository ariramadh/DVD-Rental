SELECT F.FILM_ID,
	I.INVENTORY_ID,
	R.RENTAL_ID,
	F.TITLE,
	C.NAME,
	R.RENTAL_DATE,
	R.RETURN_DATE,
    ROUND(EXTRACT(epoch FROM R.RETURN_DATE - R.RENTAL_DATE)/(3600*24)) AS Rental_duration
FROM FILM F

LEFT JOIN INVENTORY I ON F.FILM_ID = I.FILM_ID  
RIGHT JOIN RENTAL R ON I.INVENTORY_ID = R.INVENTORY_ID

LEFT JOIN FILM_CATEGORY FC ON F.FILM_ID = FC.FILM_ID  
RIGHT JOIN CATEGORY C ON FC.CATEGORY_ID = C.CATEGORY_ID

WHERE R.RETURN_DATE IS NOT NULL

-- GROUP BY 4