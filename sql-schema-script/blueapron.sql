
-- PROBABLY NOT AT ALL ACCURATE --

CREATE TABLE Users (
    id SERIAL PRIMARY KEY,
);

CREATE TABLE ServicePlans (
    id SERIAL PRIMARY KEY,
    plan_name VARCHAR(255) NOT NULL,
    user_id INTEGER UNIQUE REFERENCES Users(id),
);

CREATE TABLE Deliveries (
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES Users(id),
    plan_id INTEGER REFERENCES ServicePlans(id),
    UNIQUE(user_id, plan_id)
);

CREATE TABLE Recipes (
    id SERIAL PRIMARY KEY,
    plan_id INTEGER REFERENCES ServicePlans(id),
);

CREATE TABLE Promotions (
    id SERIAL PRIMARY KEY,
    plan_id INTEGER REFERENCES ServicePlans(id),
    recipe_id INTEGER UNIQUE REFERENCES Recipes(id),
    UNIQUE(plan_id, recipe_id)
);