require 'rails_helper'

describe Product do
  let(:product) { build :product }

  it "has validations" do
    is_expected.to validate_presence_of :title
    is_expected.to validate_presence_of :description
  end

  it "has associations" do
    is_expected.to belong_to :category
    is_expected.to have_many :reviews
  end

  it "saves successfully" do
    expect(product.save).to be_truthy
  end
end
