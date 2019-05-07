class ProductCell < Cell::ViewModel
  include ::Cell::Haml

  property :title
  property :description
  property :price

  def show
    render
  end

  def index(collection = [])
    render
  end

end
