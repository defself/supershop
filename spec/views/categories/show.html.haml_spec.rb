require 'rails_helper'

describe "categories/show" do
  before(:each) { @category = assign(:category, create(:category)) }

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/#{@category.name}/)
  end
end
