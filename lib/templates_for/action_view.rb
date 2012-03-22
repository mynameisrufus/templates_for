module TemplatesFor
  module ActionView
    def templates_for_view
      raw(render_templates + "\n" + parse_templates)
    end

    def render_templates
      controller.templates_for_action.map do |template|
        content_tag 'script', { :type => 'text/template', :id => "#{template}_template" }, false do
          raw("\n" + render(template).gsub(/<!--(.*?)-->/, '').strip + "\n")
        end
      end.join("\n")
    end

    def parse_templates
      content_tag 'script', { :type => 'text/javascript' }, false do
        "\n  var JST = {};\n" + controller.templates_for_action.map do |template|
          "  JST['#{template}'] = document.getElementById('#{template}_template').innerHTML;"
        end.join("\n") + "\n"
      end
    end
  end
end
