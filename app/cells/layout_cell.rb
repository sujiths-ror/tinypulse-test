class LayoutCell < Cell::ViewModel
  include ::Cell::Haml

  def show(&block)
    render(&block)
  end
end
