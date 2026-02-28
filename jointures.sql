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

/*liste des plats plats*/
SELECT 
    d.Name AS Dish_name,
    co.Customer_name,
    r.Planet
FROM OrderItems oi
JOIN Dishes d 
    ON oi.IdDishes = d.IdDishes
JOIN CustomerOrders co 
    ON oi.IdOrders = co.IdOrders
JOIN Restaurants r 
    ON co.IdRestaurant = r.IdRestaurant
ORDER BY co.Customer_name;

/*leste restau + nmb employés*/
SELECT 
    r.Name,
    COUNT(e.IdEmployees) AS Number_of_employees
FROM Restaurants r
LEFT JOIN Employees e 
    ON r.IdRestaurant = e.IdRestaurant
GROUP BY r.Name
ORDER BY Number_of_employees DESC;