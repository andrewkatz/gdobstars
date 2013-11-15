# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  sequence(:email) { |n| "bob-#{n}@example.com" }

  factory :user do
    email { generate(:email) }
    password "testing123"
    password_confirmation "testing123"
    stars 0
    ticks 0
    name "Bob"
    # after(:create) { |u| u.confirm! }
  end

  factory :admin, parent: :user do
    admin true
  end
end
