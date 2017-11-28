class Product < ApplicationRecord
  has_many :reviews
  validates :name, :description, :price, presence:  true
  validates :price, numericality: {only_integer: true, greater_than: 0}

  def price_in_dollars
    price_in_dollars = price.to_f / 100
    sprintf("$%.2f", price_in_dollars)
  end
end
