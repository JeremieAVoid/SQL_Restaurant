/* Liste des restaurants */
INSERT INTO Restaurants (Name, Planet, Opening_year) VALUES
('Milky Way', 'Terre', 2401),
('Andromeda', 'Mars', 2407),
('NebulaGalaxy', 'Saturne', 2382),
('Centaurus', 'Venus', 2407);

/* Liste des employés */

INSERT INTO Employees (Firstname, Lastname, Role, IdRestaurant, hire_date) VALUES
('Mina', 'Crayon', 'Chef cuisinier', 1, '2480-05-01'),
('Luna', 'Starlight', 'Serveuse', 1, NULL),
('Orion', 'Nova', 'Manager', 1, '2485-03-12'),
('Janus', 'Glass', 'Chef de vestiaire', 1, NULL),

('Globark', 'Babouk', 'Chef cuisinier', 2, '2474-11-21'),
('Balek', 'Total', 'Commis', 2, '2481-03-18'),
('Nobody', 'Getin', 'Portier', 2, '2485-08-12'),

('Trou', 'Dbal', 'Chef cuisinier', 3, '2475-04-17'),
('Bizurk', 'Kruzib', 'Homme de ménage', 3, '2382-12-26'),
('Leroy', 'Dagobert', 'Chef de vestiaire', 3, '2379-05-19'),
('Bachi', 'Bouzouk', 'Barmaid', 3, NULL),
('Upside', 'Down', 'Manager', 3, '2408-09-09'),

('Globul', 'White', 'Chef cuisinier', 4, '2484-04-04'),
('Bal', 'Tringue', 'Serveur', 4, NULL),
('Ilé', 'Mort', 'Manager', 4, NULL),

/* Liste des plats */
INSERT INTO Dishes (Name, Price, Category, is_vegan) VALUES
('Burger Astéroïde', 12.50, 'Burgers', FALSE),
('Pizza Antimatière', 15.00, 'Pizzas', NULL),
('Smoothie Nébuleuse', 8.00, 'Boissons', TRUE);