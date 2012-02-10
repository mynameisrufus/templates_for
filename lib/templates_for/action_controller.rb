module TemplatesFor
  module ActionController
    module ClassMethods
      def templates_for(action, templates)
        action_templates[action.to_sym] = templates
      end

      def action_templates
        @action_templates ||= {}
      end
    end

    def self.included(base)
      base.send :extend, ClassMethods
      base.append_view_path "app/templates"
    end

    def templates_for_action
      self.class.action_templates[action_name.to_sym] || []
    end
  end
end
