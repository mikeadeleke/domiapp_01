require 'spec_helper'

describe "properties/new" do
  before(:each) do
    assign(:property, stub_model(Property,
      :title => "MyString",
      :price => "9.99",
      :landlord_rating => 1,
      :additional => "MyText"
    ).as_new_record)
  end

  it "renders new property form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", properties_path, "post" do
      assert_select "input#property_title[name=?]", "property[title]"
      assert_select "input#property_price[name=?]", "property[price]"
      assert_select "input#property_landlord_rating[name=?]", "property[landlord_rating]"
      assert_select "textarea#property_additional[name=?]", "property[additional]"
    end
  end
end
