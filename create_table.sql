/* Création table restaurants */

CREATE TABLE Restaurants (
    IdRestaurant INT PRIMARY KEY AUTOINCREMENT,
    Name VARCHAR(100) NOT NULL,
    Planet VARCHAR(100) NOT NULL,
    Opening_year INT
);

/* Création table employees */

CREATE TABLE Employees (
    IdEmployees INT PRIMARY KEY AUTOINCREMENT,
    FirstName VARCHAR(100) NOT NULL,
    LastName VARCHAR(100) NOT NULL,
    Role VARCHAR(100) NOT NULL,
    IdRestaurant INT,
    FOREIGN KEY (IdRestaurant) REFERENCES Restaurants(IdRestaurant)
);

/* Création table dishes */

CREATE TABLE Dishes (
    IdDishes INT PRIMARY KEY AUTOINCREMENT,
    Name VARCHAR (100) NOT NULL,
    Price INT,
    Category VARCHAR(100) NOT NULL
);

/* Création table orders */

CREATE TABLE Orders (
    IdOrders INT PRIMARY KEY AUTOINCREMENT,
    FOREIGN KEY (IdRestaurant) REFERENCES Restaurants(IdRestaurant),
    Total_amount INT NOT NULL,
    Customer_Name VARCHAR(100) NOT NULL
);

/* Création table orderitems */

CREATE TABLE OrderItems (
    IdOrderItems INT PRIMARY KEY AUTOINCREMENT,
    FOREIGN KEY (IdOrders) REFERENCES Orders(IdOrders),
    FOREIGN KEY (IdDishes) REFERENCES Dishes(IdDishes),
    Quantity INT NOT NULL
);

/* Ajouts et modifications de colonnes */

ALTER TABLE Employees
ADD hire_date DATE;

ALTER TABLE Dishes
ADD is_vegan BOOLEAN NULL;

SELECT Orders AS CustomerOrders
FROM `Orders`

