class OrderItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :product
  validates :order, presence: true
  validates :product, presence: true
  validates :quantity, numericality: { only_integer: true, greater_than: 0 }

  def subtotal
    quantity * product.price
  end
end
