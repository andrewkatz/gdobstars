# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :nomination do
    active false
    reason "MyString"
    type ""
  end
end
