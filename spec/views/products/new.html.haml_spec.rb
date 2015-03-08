require 'rails_helper'

describe "products/new" do
  before(:each) { assign(:product, build(:product)) }

  it "renders new product form" do
    render

    assert_select "form[action=?][method=?]", products_path, "post" do

      assert_select "input#product_title[name=?]", "product[title]"

      assert_select "textarea#product_description[name=?]", "product[description]"
    end
  end
end
