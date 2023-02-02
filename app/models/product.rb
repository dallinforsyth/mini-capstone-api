class Product < ApplicationRecord
  belongs_to :supplier
  has_many :pictures
  has_many :orders
  has_many :category_products
  has_many :categories, through: :category_products
  has_many :carted_products
  has_many :orders, through: :carted_products
  validates :name, presence: true
  # validates :name, uniqueness: true
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :description, length: { in: 10..500 }

  def is_discounted?
    if price <= 10
      return true
    elsif price > 10
      return false
    end
  end

  def tax
    tax = price * 0.09
    return tax
  end

  def total
    total = price + tax
    return total
  end

  def supplier
    Supplier.find_by(id: supplier_id)
  end

  # def images
  #   Image.where(product_id: id)
  # end
end
