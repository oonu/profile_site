require 'spec_helper'

describe "businesses/index" do
  before(:each) do
    assign(:businesses, [
      stub_model(Business,
        :outline => "Outline",
        :company_name => "Company Name",
        :company_position => "Company Position"
      ),
      stub_model(Business,
        :outline => "Outline",
        :company_name => "Company Name",
        :company_position => "Company Position"
      )
    ])
  end

  it "renders a list of businesses" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Outline".to_s, :count => 2
    assert_select "tr>td", :text => "Company Name".to_s, :count => 2
    assert_select "tr>td", :text => "Company Position".to_s, :count => 2
  end
end
