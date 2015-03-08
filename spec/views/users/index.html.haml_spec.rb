require 'rails_helper'

describe "users/index" do
  before(:each) { assign(:users, create_list(:user, 2)) }

  it "renders a list of users" do
    render
    assert_select "tr>td", text: false.to_s, count: 2
  end
end
