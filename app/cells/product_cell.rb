class ProductCell < Cell::ViewModel
  include ::Cell::Haml

  property :title
  property :description
  property :price

  def show(product)
    @product = product
    render
  end

  def index(products)
    @products = products
    render
  end

  def new(product)
    @product = product
    render
  end
end
