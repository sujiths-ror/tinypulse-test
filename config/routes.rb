require 'hanami/router'

class MarketPlace
  def self.router
    Hanami::Router.new do
      get '/', to: ProductsController::Index
      get 'products/:id', to: ProductsController::Show
      # get '/', to: ->(env) { [200, {}, ['Hello from Hanami!']] }
    end
  end
end
