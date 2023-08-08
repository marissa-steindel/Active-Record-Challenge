require_relative 'ar.rb'

# In a loop, user Faker to generate 10 new categories.

# 10.times do
#   Category.last.destroy
# end

10.times do
  new_category_name = Faker::Commerce.unique.department
  new_category = Category.create(name: new_category_name)
  10.times do
    new_product = Product.create(name: Faker::Commerce.product_name,
                                  description: Faker::Commerce.unique.product_name,
                                  price: Faker::Commerce.price,
                                  stock_quantity: Faker::Number.between(from: 0, to: 500))
    new_product.category = Category.where(:name => new_category_name).first
    new_product.save
  end
end

  # for a in 19..28 do
  #   new_category_name = Category.where(:id => a).first.name
  #   puts "#{a}. #{new_category_name}"
  #   10.times do
  #     new_product = Product.create(name: "#{Faker::Commerce.unique.product_name}",
  #                                   description: "#{Faker::Commerce.unique.product_name}",
  #                     price: "#{Faker::Commerce.price}",
  #                   stock_quantity: "#{Faker::Number.between(from: 0, to: 500)}")
  #     new_product.category = Category.where(:name => "#{new_category_name}").first
  #     unless(new_product.save)
  #       new_product.errors.messages.each do |column, errors|
  #         errors.each do |error|
  #           puts "The #{column} property #{error}."
  #         end
  #       end
  #     end
  #     puts "\t#{new_product.name}"
  #   end
  # end



# id
# name
# description
# created_at
# updated_at

# Within this same loop, use the newly created and saved category objects to generate 10 new products for each category.
# The name, description, price and quantity of these 10 products should also be generated using faker.

# puts "\nList all categories:"
# Category.all.each do |c|
#   puts "\n#{c.id}. #{c.name}"
#   c.products.each do |p|
#     puts "\t- #{p.name}"
#   end
# end
# puts

# Product.all.each do |p|
#   puts "#{p.id}. #{p.category_id}. #{p.category.name} - #{p.name}"
# end

