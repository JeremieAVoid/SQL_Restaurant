/*Premières requêtes*/

SELECT * 
FROM Restaurants;

SELECT * 
FROM Dishes
ORDER BY Price DESC;

SELECT *
FROM Employees
ORDER BY Role ASC;

SELECT * 
FROM Dishes
WHERE is_vegan = TRUE;

SELECT * 
FROM Dishes
WHERE Price > (
    SELECT AVG(Price) 
    FROM Dishes
);