-- Create a table rentals_may to store data from the rental table for the month of May
CREATE TABLE rentals_may AS
SELECT *
FROM rental
WHERE EXTRACT(MONTH FROM rental_date) = 5;

-- Insert values into rentals_may using the rental table, filtering values only for the month of May
INSERT INTO rentals_may
SELECT *
FROM rental
WHERE EXTRACT(MONTH FROM rental_date) = 5;

-- Create a table rentals_june to store data from the rental table for the month of June
CREATE TABLE rentals_june AS
SELECT *
FROM rental
WHERE EXTRACT(MONTH FROM rental_date) = 6;

-- Insert values into rentals_june using the rental table, filtering values only for the month of June
INSERT INTO rentals_june
SELECT *
FROM rental
WHERE EXTRACT(MONTH FROM rental_date) = 6;

-- Check the number of rentals for each customer for May
SELECT
    customer_id,
    COUNT(rental_id) AS may_rentals
FROM
    rentals_may
GROUP BY
    customer_id;

-- Check the number of rentals for each customer for June
SELECT
    customer_id,
    COUNT(rental_id) AS june_rentals
FROM
    rentals_june
GROUP BY
    customer_id;
