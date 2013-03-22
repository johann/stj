# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :greek_organization do
    name "MyString"
    description "MyText"
    gpa 1.5
    applyurl "MyString"
  end
end
