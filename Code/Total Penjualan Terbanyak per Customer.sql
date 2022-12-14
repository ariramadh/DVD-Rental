SELECT PAYMENT.CUSTOMER_ID AS ID_CUSTOMER,
	CONCAT(MAX(CUSTOMER.FIRST_NAME),
		' ',
		MAX(CUSTOMER.LAST_NAME)) AS NAMA_PENYEWA,
	COUNT(PAYMENT.PAYMENT_ID) AS JUMLAH_PENJUALAN,
	SUM(PAYMENT.AMOUNT) AS PENDAPATAN
FROM PUBLIC.PAYMENT
LEFT JOIN CUSTOMER ON CUSTOMER.CUSTOMER_ID = PAYMENT.CUSTOMER_ID
GROUP BY PAYMENT.CUSTOMER_ID
ORDER BY PENDAPATAN DESC
LIMIT 10;