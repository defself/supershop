require 'rails_helper'

describe "reviews/show" do
  before(:each) { assign(:review, create(:review)) }

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Review Message/)
  end
end
