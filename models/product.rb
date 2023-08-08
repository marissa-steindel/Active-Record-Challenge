class Product < ActiveRecord::Base
  # This AR object is linked with the products table.

  # A product has a many to one relationship with a category.
  # The products table has a category_id foreign key.
  # In other words, a product belongs to a category.
  belongs_to :category


  # Add a validation to this class such that a product must have all columns
  # (other than foreign keys, the id, or datetime column) filled out before it can
  # be saved to the db.
  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :stock_quantity, presence: true

  # Research AR validations and add a validation that will ensure that all product
  # names are unique and longer than 3 characters.
  validates :name, uniqueness: true
  validates :name, length: { minimum: 3 }

end

# Columns:
# id
# name
# description
# price
# stock_quantity
# category_id
# created_at
# updated_at



