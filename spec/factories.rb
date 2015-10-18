FactoryGirl.define do
  factory :user do
    sequence(:name)  { |n| "User #{n}" }
    sequence(:email) { |n| "user_#{n}@example.com"}
    password "foobar"
    password_confirmation "foobar"

    license_no "123456"

    factory :admin do
      admin true
    end
  end

  factory :listing do
    street_address "Some address"
    user
  end   
end