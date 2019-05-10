class PromotionCell < Cell::ViewModel
  include ::Cell::Haml

  property :title
  property :promotion_type
  property :discount
  property :discount_type
  property :multiple_min_items
  property :multiple_item_price
  property :valid_from
  property :valid_to
  property :product_id

  def index(promotion)
    @products = products
    render
  end

  def new(promotion)
    @promotion = promotion
    @product = promotion.product
    render
  end
end
