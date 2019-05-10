require 'hanami/controller'

class HomeController
  class Index
    include ::Hanami::Action
    def call(params)
      render_layout HomeCell.new.index()
    end

    def render_layout(content = '')
      self.body = LayoutCell.new(nil).() { content }
    end
  end
end
