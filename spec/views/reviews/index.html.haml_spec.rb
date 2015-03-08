require 'rails_helper'

describe "reviews/index" do
  before(:each) { assign(:reviews, create_list(:review, 2)) }

  it "renders a list of reviews" do
    render
    assert_select "tr>td", text: "Review Message".to_s, count: 2
  end
end
