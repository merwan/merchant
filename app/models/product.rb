class Product < ActiveRecord::Base
  validates :price, numericality: true
  validates :stock, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  def price=(input)
    input.delete!('$')
    super
  end
end
