class Address < ActiveRecord::Base
  belongs_to :user
  has_many :orders
  validates :line1, :city, :state, :zip, presence: true
  validates :zip, length: { is: 5 }, numericality: { only_integer: true }
  validates :state, format: { with: /\A[A-Z]{2}\z/, message: 'should be exactly two uppercase letters' }
end
