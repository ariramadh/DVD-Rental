-- CREATE TABLE IF NOT EXISTS "inventory_rental" (film_id char(100),inventory_id char(100),rental_id char(100),title char(100),namevar char(50),rental_date timestamp, return_date timestamp, rental_duration int);

-- ALTER TABLE inventory_rental
-- ALTER COLUMN FILM_ID TYPE VARCHAR(100);
-- ALTER TABLE inventory_rental
-- ALTER COLUMN INVENTORY_ID TYPE VARCHAR(100);
-- ALTER TABLE inventory_rental
-- ALTER COLUMN RENTAL_ID TYPE VARCHAR(100);

-- ALTER TABLE inventory_rental
-- ALTER COLUMN rental_date TYPE TIMESTAMP;

-- INSERT INTO inventory_rental VALUES (333,1525,2,'Freaky Pocus','Music','2005-05-24 22:54:33','2005-05-28 19:40:33',4)
-- DELETE FROM inventory_rental 
-- COPY "inventory_rental" FROM 'C:\Users\Ramadhani\Documents\GitHub\DVD-Rental\Export CSV\data-1.csv' DELIMITER ',' CSV;

-- SELECT * FROM inventory_rental LIMIT 100;