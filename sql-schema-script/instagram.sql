
-- PROBABLY NOT AT ALL ACCURATE --

CREATE TABLE Users (
    id SERIAL PRIMARY KEY,
);

CREATE TABLE Posts (
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES Users(id),
);

CREATE TABLE Comments (
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES Users(id),
    post_id INTEGER REFERENCES Posts(id),
);

CREATE TABLE Likes (
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES Users(id),
    post_id INTEGER REFERENCES Posts(id),
    comment_id INTEGER REFERENCES Comments(id),
    UNIQUE(user_id, post_id),
    UNIQUE(user_id, comment_id),
);

CREATE TABLE Follows (
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES Users(id),
    follower_id INTEGER REFERENCES Users(id),
    post_id INTEGER REFERENCES Posts(id),
    UNIQUE(user_id, follower_id),
    UNIQUE(user_id, post_id),
);