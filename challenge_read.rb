require_relative 'ar.rb'


# Use the Product class to find (any) product from the database.
# Inspect the Product object you have retrieved.
puts
puts "Inspect an object of the product class:"
puts Product.first.inspect

# In a comment within your product.rb file, record all the columns that exist in the products table.

# id
# name
# description
# price
# stock_quantity
# category_id
# created_at
# updated_at


# Based on the columns you find, can you determine if the products table has an association with any other tables? If so, what table?
# A: There is an association with the category table.

# Use ActiveRecord to find and print out:
# Total number of products
puts "\nThere are #{Product.count} products in the product table."
puts

# The names of all products above $10, with names that begin with the letter C.
products_that_start_with_c = Product.where('name LIKE "C%"').where("price > ?", 10)
puts "Products that start with 'C' above $10:"
puts "Count: #{products_that_start_with_c.count}"
products_that_start_with_c.each do |p|
  puts "Name: #{p.name} - Price: $#{'%.2f' % p.price}"
end
puts


# Total number of products with a low stock quantity. (Low is defined as less than 5 in stock.)
low_stock = Product.where("stock_quantity < ?", 5)

puts "Products with stock quantity less than 5:"
puts "Count: #{low_stock.count}"

low_stock.each do |product|
  puts "#{product.name} has #{product.stock_quantity} left"
end
puts

# # List of the categories
# puts "Categories:"
# Category.all.each do |cat|
#   puts "#{cat.id}: #{cat.name} - #{cat.description}"
# end
# puts

# # List of Dairy Products
# puts "Category 4 - Dairy Products"
# Product.where("category_id == 4").each do |i|
#   puts "#{i.id}: #{i.name} - #{i.category_id} - #{i.category.name}"
# end
# puts

# # List of all products
# puts "All products:"
# Product.all.each do |p|
#   puts "id #{p.id} - #{p.name}"
# end
# puts

# Without referencing a foreign key value, find the category of a product.
# (Use the product's "belongs to" association.)

puts "Category of #{Product.find_by(name: "Pavlova").name}:"
puts Product.find_by(name: "Pavlova").category.name
puts

#   Find a specific category. Without manually setting the foreign key, build and persist a new product associated with this category. (do not manually set the product's foreign key)

# create a product without a category id
gouda = Product.create(name:         "Gouda",
                       description:  "also delish",
                       price:         7.0,
                       stock_quantity: 6)

# assign the category to the product
gouda.category = Category.where(:name => "Dairy Products").first

puts "Inspection of category assigned to #{gouda.name}:"
puts gouda.category.name
puts

#   Pick a specific category. List all products of that category over a certain price.

price_cap = 30
puts "Produce over $#{price_cap}:"
produce_items = Category.where(:name => "Produce").first
produce_items.products.where("price > #{price_cap}").each do |i|
  puts "Name: #{i.name} - Price: $#{'%.2f' % i.price}"
end
puts


# puts "List all categories:"
# Category.all.each do |c|
#   puts c.name
# end
# puts

# puts "Products over $#{price_cap}"
# puts "Count: #{Product.where("price > #{price_cap}").count}"
# Product.where("price > #{price_cap}").each do |i|
#   puts "#{i.id}: #{i.name} - \tCategory: #{i.category.name} - \tPrice: $#{'%.2f' % i.price} "
# end
# puts
