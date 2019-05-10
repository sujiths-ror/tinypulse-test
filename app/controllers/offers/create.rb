require 'hanami/controller'

class OffersController
  class Create
    include ::Hanami::Action
    def call(params)
      @offer = Offer.new(offer_params)
      if @offer.save
        self.body = ProductCell.new.index(Product.all)
      else
        self.body = OfferCell.new.new(@offer)
      end
    end

    private

    def offer_params
      {
        title: params[:offer][:title],
        offer_type: params[:offer][:offer_type],
        discount_type: params[:offer][:discount_type],
        discount: params[:offer][:discount],
        spend_over_limit: params[:offer][:spend_over_limit],
        valid_from: params[:offer][:valid_from],
        valid_to: params[:offer][:valid_to]
      }
    end
  end
end
