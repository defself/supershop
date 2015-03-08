require 'rails_helper'

describe Category do
  let(:category) { build :category }

  it "has validations" do
    is_expected.to validate_presence_of :name
    is_expected.to validate_uniqueness_of :name
  end

  it "has associations" do
    is_expected.to have_many :products
  end

  it "saves successfully" do
    expect(category.save).to be_truthy
  end
end
