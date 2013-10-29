require 'spec_helper'

describe "properties/show" do
  before(:each) do
    @property = assign(:property, stub_model(Property,
      :title => "Title",
      :price => "9.99",
      :landlord_rating => 1,
      :additional => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/9.99/)
    rendered.should match(/1/)
    rendered.should match(/MyText/)
  end
end
