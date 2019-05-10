class Promotion < ApplicationRecord
  belongs_to :product

  validates :title, presence: true
  validates :promotion_type, presence: true

  PROMOTION_TYPE = {single: 1, multiple: 2}

  def single?
    promotion_type == PROMOTION_TYPE[:single]
  end

  def multiple?
    promotion_type == PROMOTION_TYPE[:multiple]
  end
end
