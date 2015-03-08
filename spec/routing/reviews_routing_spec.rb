require "rails_helper"

describe ReviewsController do
  describe "routing" do

    it "routes to #index" do
      expect(get: "/products/1/reviews").to route_to("reviews#index", product_id: "1")
    end

    it "routes to #new" do
      expect(get: "/products/1/reviews/new").to route_to("reviews#new", product_id: "1", product_id: "1")
    end

    it "routes to #show" do
      expect(get: "/products/1/reviews/1").to route_to("reviews#show", id: "1", product_id: "1")
    end

    it "routes to #edit" do
      expect(get: "/products/1/reviews/1/edit").to route_to("reviews#edit", id: "1", product_id: "1")
    end

    it "routes to #create" do
      expect(post: "/products/1/reviews").to route_to("reviews#create", product_id: "1")
    end

    it "routes to #update" do
      expect(put: "/products/1/reviews/1").to route_to("reviews#update", id: "1", product_id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/products/1/reviews/1").to route_to("reviews#destroy", id: "1", product_id: "1")
    end

  end
end
