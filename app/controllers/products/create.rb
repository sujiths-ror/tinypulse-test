require 'hanami/controller'

class ProductsController
  class Create
    include ::Hanami::Action
    def call(params)
      @product = Product.new(product_params)
      if @product.save
        self.body = ProductCell.new.show(@product)
      else
        self.body = ProductCell.new.new(@product)
      end
    end

    private

    def product_params
      {
        title: params[:product][:title],
        description: params[:product][:description],
        price: params[:product][:price]
      }
    end
  end
end
