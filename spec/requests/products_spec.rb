require 'rails_helper'

describe "Products" do
  describe "GET /products" do
    it "works! (unauthorized)" do
      get products_path
      expect(response).to have_http_status(200)
    end
  end
end
