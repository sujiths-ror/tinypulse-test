require 'hanami/controller'

class OffersController
  class New
    include ::Hanami::Action
    def call(params)
      @offer = Offer.new
      render_layout OfferCell.new.new(@offer)
      # self.body = ProductCell.new.new(@product)
    end

    def render_layout(content = '')
      self.body = LayoutCell.new(nil).() { content }
    end
  end
end
