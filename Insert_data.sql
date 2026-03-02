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
('Ilé', 'Mort', 'Manager', 4, NULL);

/* Liste des plats */
ALTER TABLE Dishes
ADD IdRestaurant INT,
ADD FOREIGN KEY (IdRestaurant) REFERENCES Restaurants(IdRestaurant);

INSERT INTO Dishes (Name, Price, Category, is_vegan) VALUES
('Burger Supernova', 14.50, 'Burgers', FALSE),
('Wrap Comète Rouge', 11.00, 'Wraps', FALSE),
('Pizza Pulsar', 16.20, 'Pizzas', FALSE),
('Salade Andromède', 9.80, 'Salades', TRUE),
('Tacos Gravité Zéro', 13.40, 'Tacos', FALSE),
('Smoothie Étoile Bleue', 7.90, 'Boissons', TRUE),
('Steak Météorite', 18.00, 'Grillades', FALSE),
('Nuggets Cosmiques', 10.50, 'Snacks', FALSE),
('Hotdog Hyperespace', 12.30, 'FastFood', FALSE),
('Milkshake Lactée', 8.60, 'Desserts', FALSE);

INSERT INTO Dishes (Name, Price, Category, is_vegan) VALUES
('Burger Trou Noir', 15.00, 'Burgers', FALSE),
('Galette Lunaire', 10.20, 'Galettes', TRUE),
('Pizza Satellite', 14.80, 'Pizzas', FALSE),
('Soupe de Nébuleuse', 8.90, 'Soupes', TRUE),
('Brochette Orion', 17.50, 'Grillades', FALSE),
('Panini Astral', 11.40, 'Sandwichs', FALSE),
('Frites Interstellaires', 6.50, 'Snacks', FALSE),
('Tartare Cosmique', 19.00, 'Spécialités', FALSE),
('Salade Voie Lactée', 9.50, 'Salades', TRUE),
('Dessert Eclipse', 7.80, 'Desserts', FALSE);

INSERT INTO Dishes (Name, Price, Category, is_vegan) VALUES
('Burger Antimatière', 16.50, 'Burgers', FALSE),
('Wrap Galaxia', 10.90, 'Wraps', FALSE),
('Pizza Quasar', 17.20, 'Pizzas', FALSE),
('Curry Cosmique', 13.80, 'Plats chauds', TRUE),
('Bowl Gravitation', 12.60, 'Bowls', TRUE),
('Steak Stellaire', 20.00, 'Grillades', FALSE),
('Tenders Nebulon', 11.30, 'Snacks', FALSE),
('Hotdog Intergalactique', 12.70, 'FastFood', FALSE),
('Crème Titan', 6.90, 'Desserts', FALSE),
('Jus Photon', 5.80, 'Boissons', TRUE);

INSERT INTO Dishes (Name, Price, Category, is_vegan, IdRestaurant) VALUES
('Burger Galaxie Noire', 15.90, 'Burgers', FALSE, 4),
('Pizza Hypernova Carnivore', 18.40, 'Pizzas', FALSE, 4),
('Steak Comète Royale', 22.00, 'Grillades', FALSE, 4),
('Tacos Météore Épicé', 14.30, 'Tacos', FALSE, 4),
('Brochette Orion Deluxe', 19.80, 'Grillades', FALSE, 4),
('Hotdog Cosmos XL', 13.20, 'FastFood', FALSE, 4),
('Nuggets Trou Noir', 11.50, 'Snacks', FALSE, 4),
('Panini Satellite Bacon', 12.90, 'Sandwichs', FALSE, 4),
('Burger Astre Titan', 17.60, 'Burgers', FALSE, 4),
('Assiette Big Bang Mixte', 24.50, 'Spécialités', FALSE, 4);