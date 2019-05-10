class Product < ApplicationRecord
  has_many :promotions, dependent: :destroy

  validates :title, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :price, numericality: true
end
