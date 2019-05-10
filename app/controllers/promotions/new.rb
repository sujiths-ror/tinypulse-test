require 'hanami/controller'

class PromotionsController
  class New
    include ::Hanami::Action
    def call(params)
      @product = Product.find_by(id: params[:id])
      @promotion = @product.promotions.new
      render_layout PromotionCell.new.new(@promotion)
      # self.body = ProductCell.new.new(@product)
    end

    def render_layout(content = '')
      self.body = LayoutCell.new(nil).() { content }
    end
  end
end
