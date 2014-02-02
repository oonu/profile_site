require 'spec_helper'

describe "agents/edit" do
  before(:each) do
    @agent = assign(:agent, stub_model(Agent,
      :name => "MyString"
    ))
  end

  it "renders the edit agent form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", agent_path(@agent), "post" do
      assert_select "input#agent_name[name=?]", "agent[name]"
    end
  end
end
