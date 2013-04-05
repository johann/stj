# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :upcoming do
    organization "MyString"
    description "MyText"
    gpa 1.5
    infourl "MyString"
    date "2013-04-03"
  end
end
