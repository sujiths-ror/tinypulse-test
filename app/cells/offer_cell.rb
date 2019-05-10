class OfferCell < Cell::ViewModel
  include ::Cell::Haml

  property :title
  property :offer_type
  property :discount_type
  property :discount
  property :spend_over_limit
  property :valid_from
  property :valid_to

  def index(offer)
    render
  end

  def new(offer)
    @offer = offer
    render
  end
end
