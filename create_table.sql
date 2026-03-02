/* Création table restaurants */

CREATE TABLE Restaurants (
    IdRestaurant INTEGER PRIMARY KEY AUTOINCREMENT,
    Name VARCHAR(100) NOT NULL,
    Planet VARCHAR(100) NOT NULL,
    Opening_year INTEGER
);

/* Création table employees */

CREATE TABLE Employees (
    IdEmployees INTEGER PRIMARY KEY AUTOINCREMENT,
    FirstName VARCHAR(100) NOT NULL,
    LastName VARCHAR(100) NOT NULL,
    Role VARCHAR(100) NOT NULL,
    IdRestaurant INTEGER,
    FOREIGN KEY (IdRestaurant) REFERENCES Restaurants(IdRestaurant)
);

/* Création table dishes */

CREATE TABLE Dishes (
    IdDishes INTEGER PRIMARY KEY AUTOINCREMENT,
    Name VARCHAR (100) NOT NULL,
    Price INTEGER,
    Category VARCHAR(100) NOT NULL
);

/* Création table orders */

CREATE TABLE Orders (
    IdOrders INTEGER PRIMARY KEY AUTOINCREMENT,
    FOREIGN KEY (IdRestaurant) REFERENCES Restaurants(IdRestaurant),
    Total_amount INTEGER NOT NULL,
    Customer_Name VARCHAR(100) NOT NULL
);

/* Création table orderitems */

CREATE TABLE OrderItems (
    IdOrderItems INTEGER PRIMARY KEY AUTOINCREMENT,
    FOREIGN KEY (IdOrders) REFERENCES Orders(IdOrders),
    FOREIGN KEY (IdDishes) REFERENCES Dishes(IdDishes),
    Quantity INTEGER NOT NULL
);

/* Ajouts et modifications de colonnes */

ALTER TABLE Employees
ADD hire_date DATE;

ALTER TABLE Dishes
ADD is_vegan BOOLEAN NULL;

SELECT Orders AS CustomerOrders
FROM `Orders`

