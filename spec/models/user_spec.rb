require 'rails_helper'

describe User do
  let(:user) { build :user }

  it "has validations" do
    is_expected.to validate_presence_of :email
    is_expected.to validate_presence_of :password
    is_expected.to validate_length_of(:password).is_at_least(8)
    is_expected.to validate_uniqueness_of :email
  end

  it "saves successfully" do
    expect(user.save).to be_truthy
  end
end
