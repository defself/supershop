require 'rails_helper'

describe "Categories" do
  describe "GET /categories" do
    let(:current_user) { create :user }

    it "works! (unauthorized)" do
      get categories_path
      expect(response).to have_http_status(302)
    end

    it "works! (authorized)" do
      login_as current_user, scope: :user
      get categories_path
      expect(response).to have_http_status(200)
    end
  end
end
