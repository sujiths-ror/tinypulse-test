require 'hanami/controller'

class ProductsController
  class Show
    include ::Hanami::Action
    def call(params)
      self.body = ProductCell.new.show()
    end
  end
end
