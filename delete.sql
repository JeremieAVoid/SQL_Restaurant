DELETE FROM Dishes
WHERE Price IS NULL;

DELETE FROM CustomerOrders
WHERE Total_amount < 5;