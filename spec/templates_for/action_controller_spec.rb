require 'spec_helper'

describe 'TemplatesFor::ActionController' do
  it "test controller one should have a nav template for the show action and nothing else" do
    controller = TestOneController.new
    controller.action_name = 'show'
    controller.templates_for_action.should eq ['nav']
  end

  it "test controller one should have a nav template for the index action and nothing else" do
    controller = TestOneController.new
    controller.action_name = 'index'
    controller.templates_for_action.should eq ['nav', 'item']
  end

  it "test controller two should have a menu template for the show action and nothing else" do
    controller = TestTwoController.new
    controller.action_name = 'show'
    controller.templates_for_action.should eq ['menu']
  end
end
