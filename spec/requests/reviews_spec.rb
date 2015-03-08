require 'rails_helper'

describe "Reviews" do
  describe "GET /reviews" do
    let(:current_user) { create :user }
    let(:product) { create :product }

    it "works! (unauthorized)" do
      get product_reviews_path(product_id: product.to_param)
      expect(response).to have_http_status(302)
    end

    it "works! (authorized)" do
      login_as current_user, scope: :user
      get product_reviews_path(product_id: product.to_param)
      expect(response).to have_http_status(200)
    end
  end
end
