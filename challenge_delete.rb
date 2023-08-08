require_relative 'ar.rb'

# Find and delte one of the products you created in challenge_create.rb.

shampoo = Product.where(:name => "Shampoo").first

puts shampoo.inspect

shampoo.destroy  unless shampoo.nil?

puts shampoo.inspect


# # List of all products
# puts "All products:"
# Product.all.each do |p|
#   puts "id #{p.id} - #{p.name}"
# end
# puts