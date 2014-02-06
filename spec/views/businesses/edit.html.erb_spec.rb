require 'spec_helper'

describe "businesses/edit" do
  before(:each) do
    @business = assign(:business, stub_model(Business,
      :outline => "MyString",
      :company_name => "MyString",
      :company_position => "MyString"
    ))
  end

  it "renders the edit business form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", business_path(@business), "post" do
      assert_select "input#business_outline[name=?]", "business[outline]"
      assert_select "input#business_company_name[name=?]", "business[company_name]"
      assert_select "input#business_company_position[name=?]", "business[company_position]"
    end
  end
end
