require 'hanami/controller'

class ProductsController
  class Index
    include ::Hanami::Action
    def call(params)
      @products = Product.all
      self.body = ProductCell.new.index(@products)
    end
  end
end
