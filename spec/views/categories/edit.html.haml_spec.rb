require 'rails_helper'

describe "categories/edit" do
  before(:each) { @category = assign(:category, create(:category)) }

  it "renders the edit category form" do
    render

    assert_select "form[action=?][method=?]", category_path(@category), "post" do

      assert_select "input#category_name[name=?]", "category[name]"
    end
  end
end
