## Templates For

If we have a view with a Javascript application on it our directory
structure would look like this:

    app/templates/widgets/_nav.html.erb
    app/templates/widgets/_details.html.erb

    app/views/widgets/show.html.erb

In the details template we might have:

```html
<div class="details">
  <p>{{name}}</p>
</nav>
```

### Gemfile

    gem 'templates_for', '~> 0.0.1'

### Controller

```ruby
WidgetController < ActionController::Base

  templates_for :show, %( nav details ) 
 
  def show

  end
end
```

### View

```erb
<%= templates_for_view %>
```

### Javascript

```javascript
var nav     = JST['nav'];
var details = JST['details'];

el = document.getElementById('my_elem');
el.innerHTML = Mustache.render(details, {name: "Bob"});
```

### Other libs

eco (recommended): https://github.com/sstephenson/eco

underscore.js: http://documentcloud.github.com/underscore/#template

mustach.js: https://github.com/janl/mustache.js
