UPDATE Dishes
SET Price = CASE
    WHEN Price > 12 THEN Price * 0.90
    ELSE Price * 0.95
END;