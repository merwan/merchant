class Order < ActiveRecord::Base
  has_many :order_items, dependent: :destroy
  belongs_to :user

  def total
    order_items.inject(0) { |sum, item| sum + item.subtotal }
  end
end
