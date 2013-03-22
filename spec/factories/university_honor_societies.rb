# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :university_honor_society do
    organization "MyString"
    description "MyText"
    gpa 1.5
    infourl "MyString"
    applyurl "MyString"
  end
end
