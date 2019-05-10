require 'hanami/controller'

class ProductsController
  class New
    include ::Hanami::Action
    def call(params)
      @product = Product.new
      render_layout ProductCell.new.new(@product)
      # self.body = ProductCell.new.new(@product)
    end

    def render_layout(content = '')
      self.body = LayoutCell.new(nil).() { content }
    end
  end
end
