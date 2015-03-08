require 'rails_helper'

describe Review do
  let(:review) { build :review }

  it "has validations" do
    is_expected.to validate_presence_of :msg
  end

  it "has associations" do
    is_expected.to belong_to :product
    is_expected.to belong_to :user
  end

  it "saves successfully" do
    expect(review.save).to be_truthy
  end
end
