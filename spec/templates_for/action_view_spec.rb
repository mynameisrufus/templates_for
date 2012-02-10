require 'spec_helper'

describe 'TemplatesFor::ActionView' do
  before(:each) do
    @controller = TestControllerOne.new
    @controller.action_name = 'show'
    @template = '<%= templates_for_view %>'
  end

  it "somthing" do
    @view = ActionView::Base.new([], {}, @controller)
    @view.view_paths = @controller.view_paths
    @view.render("index").should eq ""
  end
end
