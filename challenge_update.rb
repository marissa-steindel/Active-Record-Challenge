require_relative 'ar.rb'

# Find all products with a stock quantity greater than 40.
high_stock = Product.where("stock_quantity > 40")

puts "\n#{high_stock.count} products are high stock - more than 40:"
high_stock.each do
   |product| puts "#{product.name} has #{product.stock_quantity} left"
end
puts


# Add one to the stock quantity of each of these products and then save these changes to the database.
puts "Quantity 1 added to each item above:"
high_stock.each do |p|
  p.stock_quantity = p.stock_quantity + 1
  p.save
end

high_stock.each do
  |product| puts "#{product.name} has #{product.stock_quantity} left"
end
puts

