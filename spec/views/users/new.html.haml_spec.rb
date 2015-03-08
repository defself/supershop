require 'rails_helper'

describe "users/new" do
  before(:each) { assign(:user, build(:user)) }

  it "renders new user form" do
    render

    assert_select "form[action=?][method=?]", users_path, "post" do

      assert_select "input#user_is_admin[name=?]", "user[is_admin]"
    end
  end
end
