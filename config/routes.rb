require 'hanami/router'

class MarketPlace
  def self.router
    Hanami::Router.new do
      get '/', to: ProductsController::Index
      get 'products/:id', id: /\d+/, to: ProductsController::Show
      get 'products/new', to: ProductsController::New
      post 'products', to: ProductsController::Create
      get 'products/:id/promotions/new', id: /\d+/, to: PromotionsController::New
      post 'products/:id/promotions', id: /\d+/, to: PromotionsController::Create
      # get '/', to: ->(env) { [200, {}, ['Hello from Hanami!']] }
    end
  end
end
