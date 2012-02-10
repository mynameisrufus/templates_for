require 'action_controller/railtie'
require 'action_view/railtie'

app = Class.new(Rails::Application)
#app.config.secret_token = "3b7cd727ee24e8444053437c36cc66c4"
#app.config.session_store :cookie_store, :key => "_myapp_session"
app.config.active_support.deprecation = :log
app.initialize!

class ApplicationController < ActionController::Base
  append_view_path "spec/templates"
  append_view_path "spec/views"
end

class TestControllerOne < ApplicationController
  templates_for :show, %w(nav)
  templates_for :index, %w(item)
end

class TestControllerTwo < ApplicationController
  templates_for :show, %w(menu)
end
