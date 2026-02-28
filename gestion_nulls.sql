/*trouver les plats oo vegan = null*/
SELECT *
FROM Dishes
WHERE is_vegan IS NULL;

/*pareil mais pour les hire date des employes*/
SELECT *
FROM Employees
WHERE hire_date IS NULL;