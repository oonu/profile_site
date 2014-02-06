require 'spec_helper'

describe "businesses/show" do
  before(:each) do
    @business = assign(:business, stub_model(Business,
      :outline => "Outline",
      :company_name => "Company Name",
      :company_position => "Company Position"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Outline/)
    rendered.should match(/Company Name/)
    rendered.should match(/Company Position/)
  end
end
