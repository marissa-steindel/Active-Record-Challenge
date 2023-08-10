# Challenge 3
CRUD tasks using ActiveRecord and the Faker Gem

## Create
Create three new products using the three different ways to create new AR objects.
Ensure that all three new products are persisted to the database, without validations errors.

- Method 1: object space + set product object attributes + save
- Method 2: object space + hash argument + save
- Method 3: create

## Read
Use the Product class to find (any) product from the database.
Inspect the Product object you have retrieved.
In a comment within your product.rb file, record all the columns that exist in the products table.
Based on the columns you find, can you determine if the products table has an association with any other tables? If so, what table?

Use ActiveRecord to find and print out:
- Total number of products
- The names of all products above $10, with names that begin with the letter C.
- Total number of products with a low stock quantity. (Low is defined as less than 5 in stock.)

Without referencing a foreign key value, find the category of a product. (Use the product's "belongs to" association.)

Find a specific category. Without manually setting the foreign key, build and persist a new product associated with this category. (do not manually set the product's foreign key)

Pick a specific category. List all products of that category over a certain price.

## Update
Find all products with a stock quantity greater than 40.
Add one to the stock quantity of each of these products and then save these changes to the database.

## Delete
Find and delete one of the products you created in challenge_create.rb.

## The Faker Gem
In a loop, user Faker to generate 10 new categories.
Within this same loop, use the newly created and saved category objects to generate 10 new products for each category.
The name, description, price and quantity of these 10 products should also be generated using faker.
Find all the categories in the database (including those that you added using Faker).
Display all category names and their associated products (name and price) in a nicely formatted list.



