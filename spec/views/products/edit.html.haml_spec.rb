require 'rails_helper'

describe "products/edit" do
  before(:each) { @product = assign(:product, create(:product)) }

  it "renders the edit product form" do
    render

    assert_select "form[action=?][method=?]", product_path(@product), "post" do

      assert_select "input#product_title[name=?]", "product[title]"

      assert_select "textarea#product_description[name=?]", "product[description]"
    end
  end
end
