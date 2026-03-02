/* Prix moyen par catégorie*/ 
SELECT Category,
       AVG(Price) AS Avg_price
FROM Dishes
GROUP BY Category;

/*Montant total des ventes*/
SELECT SUM(Total_amount) AS Total_sales
FROM CustomerOrders;

/*3 plats les plus chers*/
SELECT * FROM Dishes
ORDER BY Price DESC
LIMIT 3;

/*Employés dont le nom contient "a"*/
SELECT * FROM Employees
WHERE Lastname LIKE '%a%';