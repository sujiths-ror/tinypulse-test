class Offer < ApplicationRecord

  validates :title, presence: true
  validates :offer_type, presence: true

  OFFER_TYPE = {spend_over: 1}

  def spend_over?
    offer_type == OFFER_TYPE[:spend_over]
  end
end
