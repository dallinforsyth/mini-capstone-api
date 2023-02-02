class Order < ApplicationRecord
  belongs_to :user
  has_many :carted_products
  has_many :products, through: :carted_products

  def update_total
    subtotal = 0
    tax = 0
    total = 0

    carted_products.each do |carted_product|
      product = carted_product.product
      quantity = carted_product.quantity
      subtotal += quantity * product.price
      tax += quantity * product.tax
      total += subtotal + tax
    end
    self.subtotal = subtotal
    self.tax = tax
    self.total = total
    self.save
  end
end
