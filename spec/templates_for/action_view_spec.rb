require 'spec_helper'

describe 'TemplatesFor::ActionView' do
  before(:each) do
    @controller = TestOneController.new
    @controller.action_name = 'index'
    @view = ActionView::Base.new(@controller.view_paths, [], @controller)
    @view.controller = @controller
  end

  it "should render the templates" do
    template = @view.render :template => 'test_one/index'
    template.should eq <<-EOL
<p>test</p>
<script id="nav_template" type="text/template">
<nav class="test">
  <a href="#/{{url}}">link</a>
</nav>
</script>
<script id="item_template" type="text/template">
<p>Item number: {{item}}<p>
</script>
<script type="text/javascript">
  var JST = {};
  JST['nav'] = document.getElementById('nav_template').innerHTML;
  JST['item'] = document.getElementById('item_template').innerHTML;
</script>
EOL
  end
end
