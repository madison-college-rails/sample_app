FactoryGirl.define do
  factory :user do
    name     "Michael Hartl"
    email    {"user#{SecureRandom.hex(5)}@example.com"}
    password "foobar"
    password_confirmation "foobar"
  end
end