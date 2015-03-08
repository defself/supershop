require 'rails_helper'

describe "reviews/new" do
  before(:each) { assign(:review, build(:review)) }

  it "renders new review form" do
    render

    assert_select "form[action=?][method=?]", reviews_path, "post" do

      assert_select "textarea#review_msg[name=?]", "review[msg]"
    end
  end
end
