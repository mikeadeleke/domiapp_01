require 'spec_helper'

describe "properties/edit" do
  before(:each) do
    @property = assign(:property, stub_model(Property,
      :title => "MyString",
      :price => "9.99",
      :landlord_rating => 1,
      :additional => "MyText"
    ))
  end

  it "renders the edit property form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", property_path(@property), "post" do
      assert_select "input#property_title[name=?]", "property[title]"
      assert_select "input#property_price[name=?]", "property[price]"
      assert_select "input#property_landlord_rating[name=?]", "property[landlord_rating]"
      assert_select "textarea#property_additional[name=?]", "property[additional]"
    end
  end
end
