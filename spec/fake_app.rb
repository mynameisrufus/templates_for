require 'action_controller/railtie'
require 'action_view/railtie'

app = Class.new(Rails::Application)
app.config.active_support.deprecation = :stdout
app.initialize!

class ApplicationController < ActionController::Base
  append_view_path "spec/templates"
  append_view_path "spec/views"
end

class TestOneController < ApplicationController
  templates_for :show, %w(nav)
  templates_for :index, %w(nav item)
end

class TestTwoController < ApplicationController
  templates_for :show, %w(menu)
end
