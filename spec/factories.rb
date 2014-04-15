FactoryGirl.define do
  factory :user do
    sequence(:name)  { |n| "Person #{n}" }
    sequence(:email) { |n| "person_#{SecureRandom.hex(8)}@example.com" }
    password "foobar"
    password_confirmation "foobar"
  end
end
