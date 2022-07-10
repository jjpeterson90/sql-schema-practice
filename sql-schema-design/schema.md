#Visualize your schema

Open this file in your text editor and visualize your schema. At the top is your table name. Listed below are all the columns in that table. 

User
-------------------
id
first_name
last_name

Address
-------------------
id
user_id
street 
street2 
city
state
zip_code
country

In the example above, each Address can belong to a User. This is achieved by adding a column called `user_id`, which can match only ONE of the values in the `id` column of the User table. Remember, `id`s are unique; no table can have two `id` values that are the same.

Using the above format, jot down the database for your apps below!

## GrubHub Online Ordering
Users
-------------------
    id, PRIMARY KEY
    first_name
    last_name
    line_1
    city
    state
    zip

Restaurants
-------------------
    id, PRIMARY KEY
    name
    line_1
    city
    state
    zip


FoodItems
-------------------
    id, PRIMARY KEY
    name
    price

Orders
-------------------
    id, PRIMARY KEY
    user_id, FOREIGN KEY
    restaurant_id, FOREIGN KEY

OrderFoodItems
-------------------
    id, PRIMARY KEY
    order_id, FOREIGN KEY
    food_item_id, FOREIGN KEY
    UNIQUE TOGETHER(order_id, food_item_id)


## Blue Apron
Users
-------------------
    id, PRIMARY KEY

ServicePlans
-------------------
    id, PRIMARY KEY
    plan_name
    user_id, UNIQUE, FOREIGN KEY

Recipes
-------------------
    id, PRIMARY KEY
    user_id, FOREIGN KEY
    plan_id, FOREIGN KEY

Promotions
-------------------
    id, PRIMARY KEY
    plan_id, FOREIGN KEY

Deliveries
-------------------
    id, PRIMARY KEY
    plan_id, FOREIGN KEY
    recipe_id, UNIQUE, FOREIGN KEY


## Instagram
Users
-------------------
    id, PRIMARY KEY

Posts
-------------------
    id, PRIMARY KEY
    user_id, FOREIGN KEY

Comments
-------------------
    id, PRIMARY KEY
    user_id, FOREIGN KEY
    post_id, FOREIGN KEY

Likes
-------------------
    id, PRIMARY KEY
    user_id, FOREIGN KEY
    post_id, FOREIGN KEY
    comment_id, FOREIGN KEY
    UNIQUE TOGETHER(user_id, post_id)
    UNIQUE TOGETHER(user_id, comment_id)

Follows
-------------------
    id, PRIMARY KEY
    user_id, FOREIGN KEY
    follower_id, FOREIGN KEY
    post_id, FOREIGN KEY
    UNIQUE TOGETHER(user_id, follower_id)
    UNIQUE TOGETHER(user_id, post_id)

