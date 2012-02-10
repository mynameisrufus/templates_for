require 'spec_helper'

describe 'TemplatesFor::ActionController' do
  it "test controller one should have a nav template for the show action and nothing else" do
    controller = TestControllerOne.new
    controller.action_name = 'show'
    controller.templates_for_action.should eq ['nav']
  end

  it "test controller one should have a nav template for the index action and nothing else" do
    controller = TestControllerOne.new
    controller.action_name = 'index'
    controller.templates_for_action.should eq ['item']
  end

  it "test controller two should have a menu template for the show action and nothing else" do
    controller = TestControllerTwo.new
    controller.action_name = 'show'
    controller.templates_for_action.should eq ['menu']
  end
end
