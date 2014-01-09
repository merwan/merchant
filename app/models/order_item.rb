class OrderItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :product
  validates :order, presence: true
  validates :product, presence: true

  def subtotal
    quantity * product.price
  end
end
