require 'rails_helper'

describe "categories/new" do
  before(:each) { assign(:category, build(:category)) }

  it "renders new category form" do
    render

    assert_select "form[action=?][method=?]", categories_path, "post" do

      assert_select "input#category_name[name=?]", "category[name]"
    end
  end
end
