class Promotion < ApplicationRecord
  belongs_to :product

  validates :title, presence: true
  validates :promotion_type, presence: true
end
