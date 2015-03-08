require 'rails_helper'

describe "products/show" do
  before(:each) { assign(:product, create(:product)) }

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Product title/)
    expect(rendered).to match(/Product description/)
  end
end
