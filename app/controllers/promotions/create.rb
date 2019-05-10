require 'hanami/controller'

class PromotionsController
  class Create
    include ::Hanami::Action
    def call(params)
      @product = Product.find_by(id: params[:promotion][:product_id])
      if @product
        @promotion = @product.promotions.new(promotion_params)
        if @promotion.save
          self.body = ProductCell.new.show(@product)
        else
          self.body = PromotionCell.new.new(@promotion)
        end
      else
        self.body = PromotionCell.new.new(@promotion)
      end
    end

    private

    def promotion_params
      {
        title: params[:promotion][:title],
        promotion_type: params[:promotion][:promotion_type],
        discount: params[:promotion][:discount],
        discount_type: params[:promotion][:discount_type],
        multiple_min_items: params[:promotion][:multiple_min_items],
        multiple_item_price: params[:promotion][:multiple_item_price]
      }
    end
  end
end
