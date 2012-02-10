## Templates For

If we have a view with a Javascript application on it our directory
structure would look like this:

    app/templates/widgets/_nav.html.erb
    app/templates/widgets/_details.html.erb

    app/views/widgets/show.html.erb

In our controller we have:

```ruby
WidgetController < ActionController::Base

  templates_for :show, %( nav details ) 
 
  def show

  end
end
```

In our layout file:

```erb
<%= render_templates_for_view %>
```
