require 'rails_helper'

describe "reviews/edit" do
  before(:each) { @review = assign(:review, create(:review)) }

  it "renders the edit review form" do
    render

    assert_select "form[action=?][method=?]", review_path(@review), "post" do

      assert_select "textarea#review_msg[name=?]", "review[msg]"
    end
  end
end
