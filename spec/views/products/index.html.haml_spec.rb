require 'rails_helper'

describe "products/index" do
  before(:each) { assign(:products, create_list(:product, 2)) }

  it "renders a list of products" do
    render
    assert_select "tr>td", text: "Product title".to_s, count: 2
    assert_select "tr>td", text: "Product description".to_s, count: 2
  end
end
