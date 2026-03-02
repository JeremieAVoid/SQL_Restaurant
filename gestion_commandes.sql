/*insérer des commandes*/
INSERT INTO CustomerOrders (IdRestaurant, Total_amount, Customer_name)
VALUES
(1, 33.00, 'Zorg Prime'),
(2, 15.00, 'Alix Vega'),
(3, 24.50, 'Nova Chen');

/*ajouté les oderitems*/
INSERT INTO OrderItems (IdOrders, IdDishes, Quantity)
VALUES
(1, 1, 2),
(1, 3, 1),

(2, 2, 1),

(3, 1, 1),
(3, 2, 1);

/*calcule prix commade*/
SELECT 
    co.IdOrders,
    co.Customer_name,
    SUM(oi.Quantity) AS Total_articles,
    co.Total_amount
FROM CustomerOrders co
JOIN OrderItems oi 
    ON co.IdOrders = oi.IdOrders
GROUP BY co.IdOrders, co.Customer_name, co.Total_amount;

/*liste commande décroissant*/
SELECT *
FROM CustomerOrders
ORDER BY Total_amount DESC;