require 'hanami/controller'

class ProductsController
  class Index
    include ::Hanami::Action
    def call(params)
      @products = Product.all
      render_layout ProductCell.new.index(@products)
    end

    def render_layout(content = '')
      self.body = LayoutCell.new(nil).() { content }
    end
  end
end
