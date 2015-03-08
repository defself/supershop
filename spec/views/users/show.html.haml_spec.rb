require 'rails_helper'

describe "users/show" do
  before(:each) { assign(:user, create(:user)) }

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/false/)
  end
end
