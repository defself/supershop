FactoryGirl.define do
  factory :user do
    sequence :email do |i|
      "guest_#{i}@supershop.com"
    end
    password (1..9).to_a.join
    is_admin false
  end

end
