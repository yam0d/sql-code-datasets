DESCRIBE sales;
SELECT * FROM sales;

SELECT SaleDate, Amount, Customers from sales;

SELECT SaleDate, Amount, Boxes, Amount/Boxes AS 'Amount per box' FROM sales;

SELECT * FROM sales
WHERE geoid = 'G1'
ORDER BY PID;

SELECT COUNT(*) FROM sales;

SELECT * FROM sales
WHERE Amount > 10000 AND SaleDate > '2022-01-01';

SELECT SaleDate, Amount FROM sales
WHERE Amount > 10000 AND YEAR(SaleDate) = 2022
ORDER BY amount DESC;

SELECT * FROM sales
WHERE Boxes BETWEEN 0 AND 50;

SELECT SaleDate, Amount, Boxes, weekday(SaleDate) AS 'Day of week'
FROM sales
WHERE weekday(SaleDate) = 4;

SELECT * FROM people;

SELECT * FROM people
WHERE Team = 'Delish' or Team = 'Jucies';

SELECT * FROM people
WHERE Team IN ('Delish', 'Jucies');

SELECT * FROM people
WHERE Salesperson LIKE 'b%';

SELECT * FROM people
WHERE Salesperson LIKE '%b%';

SELECT * FROM sales;

SELECT SaleDate, Amount,
	   CASE WHEN Amount < 1000 THEN 'Under 1k'
	   		WHEN Amount < 5000 THEN 'Under 5k'
            WHEN Amount < 10000 THEN 'Under 10k'
            ELSE '10k or more'
	   END AS 'Amount category'
FROM sales;


