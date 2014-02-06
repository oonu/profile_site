require 'spec_helper'

describe "businesses/new" do
  before(:each) do
    assign(:business, stub_model(Business,
      :outline => "MyString",
      :company_name => "MyString",
      :company_position => "MyString"
    ).as_new_record)
  end

  it "renders new business form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", businesses_path, "post" do
      assert_select "input#business_outline[name=?]", "business[outline]"
      assert_select "input#business_company_name[name=?]", "business[company_name]"
      assert_select "input#business_company_position[name=?]", "business[company_position]"
    end
  end
end
