# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :test do
    name "MyString"
    description "MyText"
    gpa 1.5
    infourl "MyString"
    due "2013-03-27"
  end
end
