require 'rails_helper'

describe "Reviews" do
  describe "GET /reviews" do
    it "works! (now write some real specs)" do
      get reviews_path
      expect(response).to have_http_status(200)
    end
  end
end
