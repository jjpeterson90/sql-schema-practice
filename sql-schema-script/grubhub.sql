
-- PROBABLY NOT AT ALL ACCURATE --

CREATE TABLE Users (
    id SERIAL PRIMARY KEY,
    first_name VARHCHAR(32) NOT NULL,
    last_name VARCHAR(32) NOT NULL,
    line_1 VARCHAR(255) NOT NULL,
    city VARCHAR(255) NOT NULL,
    state VARCHAR(255) NOT NULL,
    zip VARCHAR(255) NOT NULL,
);

CREATE TABLE Restaurants (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    line_1 VARCHAR(255) NOT NULL,
    city VARCHAR(255) NOT NULL,
    state VARCHAR(255) NOT NULL,
    zip VARCHAR(255) NOT NULL,
);

CREATE TABLE FoodItems (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    price INTEGER NOT NULL,
);

CREATE TABLE Orders (
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES Users(id),
    restaurant_id INTEGER REFERENCES Restaurants(id),
    -- food_item_id INTEGER REFERENCES FoodItems(id),
);

CREATE TABLE OrderFoodItems(
    id SERIAL PRIMARY KEY,
    order_id INTEGER REFERENCES Orders(id),
    food_item_id INTEGER REFERENCES FoodItems(id),
    UNIQUE(order_id, food_item_id)
);