class Product < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true
  validates :price, comparison: { greater_than: 0 }
  validates :price, numericality: { only_integer: true }
  validates :description, length: { in: 10..500 }
  validates_format_of :image, :with => %r{\.(png|jpg|jpeg)$}i, :message => "Use a real image"

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
end
