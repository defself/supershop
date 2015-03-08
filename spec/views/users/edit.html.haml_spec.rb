require 'rails_helper'

describe "users/edit" do
  before(:each) { @user = assign(:user, create(:user)) }

  it "renders the edit user form" do
    render

    assert_select "form[action=?][method=?]", user_path(@user), "post" do

      assert_select "input#user_is_admin[name=?]", "user[is_admin]"
    end
  end
end
