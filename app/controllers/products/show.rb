require 'hanami/controller'

class ProductsController
  class Show
    include ::Hanami::Action
    def call(params)
      @product = Product.includes(:promotions).find_by(id: params[:id])
      render_layout ProductCell.new.show(@product)
    end

    def render_layout(content = '')
      self.body = LayoutCell.new(nil).() { content }
    end
  end
end
