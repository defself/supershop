require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "GET /users" do
    let(:current_user) { create :user }

    it "works! (unauthorized)" do
      get users_path
      expect(response).to have_http_status(302)
    end

    it "works! (authorized)" do
      login_as current_user, scope: :user
      get users_path
      expect(response).to have_http_status(200)
    end
  end
end
