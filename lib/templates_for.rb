require 'templates_for/version'
require 'templates_for/action_controller'
require 'templates_for/action_view'

module TemplatesFor
end

if defined?(::Rails::Railtie)
  require 'templates_for/railtie'
end

