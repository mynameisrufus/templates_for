module TemplatesFor
  class Railtie < Rails::Railtie
    initializer 'templates_for.configure' do |app|
      ActiveSupport.on_load :action_view do
        ::ActionView::Base.send :include, ::TemplatesFor::ActionView
      end

      ActiveSupport.on_load :action_controller do
        ::ActionController::Base.send :include, ::TemplatesFor::ActionController
      end
    end
  end
end
