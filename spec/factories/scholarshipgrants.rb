# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :scholarshipgrant do
    organization "MyString"
    scholarship "MyString"
    description "MyString"
    gpa 1.5
    infourl "MyString"
    applurl "MyString"
    deadline "MyString"
  end
end
