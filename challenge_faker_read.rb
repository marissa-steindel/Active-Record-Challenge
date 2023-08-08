require_relative 'ar.rb'

# Find all the categories in the database (including those that you added using Faker).

# Display all category names and their associated products (name and price) in a nicely formatted list.

puts "\nProducts by category:"

Category.all.each do |c|
  puts "\n#{c.id}. #{c.name}"
  c.products.each do |p|
    puts "\t- #{p.name} \n\t   Price: $#{'%.2f' %p.price}"
  end
end
puts