CREATE TABLE Restaurants (
    IdRestaurant INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Planet VARCHAR(100) NOT NULL,
    Opening_year INT
);

CREATE TABLE Employees (
    IdEmployees INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(100) NOT NULL,
    LastName VARCHAR(100) NOT NULL,
    Role VARCHAR(100) NOT NULL,
    IdRestaurant INT,
    FOREIGN KEY (IdRestaurant) REFERENCES Restaurants(IdRestaurant)
);

CREATE TABLE Dishes (
    IdDishes INT PRIMARY KEY AUTO-INCREMENT,
    Name VARCHAR (100) NOT NULL,
    Price INT,
    Category VARCHAR(100) NOT NULL
);

CREATE TABLE Orders (
    IdOrders INT PRIMARY KEY AUTO_INCREMENT,
    FOREIGN KEY (IdRestaurant) REFERENCES Restaurants(IdRestaurant),
    Total_amount INT NOT NULL,
    Customer_Name VARCHAR(100) NOT NULL
);

CREATE TABLE OrderItems (
    IdOrderItems INT PRIMARY KEY AUTO_INCREMENT,
    FOREIGN KEY (IdOrders) REFERENCES Orders(IdOrders),
    FOREIGN KEY (IdDishes) REFERENCES Dishes(IdDishes),
    Quantity INT NOT NULL
);