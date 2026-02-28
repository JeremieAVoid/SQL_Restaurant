/*liste employés avec restau*/
SELECT 
    e.Firstname,
    e.Lastname,
    e.Role,
    r.Name AS Restaurant_name
FROM Employees e
JOIN Restaurants r 
    ON e.IdRestaurant = r.IdRestaurant
ORDER BY r.Name;