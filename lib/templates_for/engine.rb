module TemplatesFor
  class Engine < Rails::Engine
    initializer 'templates_for' do |app|
      ActiveSupport.on_load(:action_view) do
        ::ActionView::Base.send :include, ::TemplatesFor::ActionView
      end

      ActiveSupport.on_load(:action_controller) do
        ::ActionController::Base.send :include, ::TemplatesFor::ActionController
      end
    end
  end
end
