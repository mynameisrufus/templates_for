module TemplatesFor
  module ActionView
    def templates_for_view
      render_templates + parse_templates
    end

    def render_templates
      controller.templates_for_action.map do |template|
        content_tag 'script', :type => 'text/html', :id => "#{template}_template" do
          raw render(template).gsub(/<!--(.*?)-->/, '').strip
        end
      end.join("\n")
    end

    def parse_templates
      content_tag 'script', :type => 'text/javascript' do
        controller.templates_for_action.map do |template| %>
          "Templates.push(['#{template}>', document.getElementById('#{template}_template').innerHTML]);"
        end.join("\n")
      end
    end
  end
end
