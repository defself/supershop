require 'rails_helper'

describe "categories/index" do
  before(:each) { assign(:categories, create_list(:category, 2)) }

  it "renders a list of categories" do
    render
    assert_select "tbody>tr", count: 2
  end
end
