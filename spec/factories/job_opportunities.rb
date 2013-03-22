# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :job_opportunity do
    division "MyString"
    department "MyString"
    position "MyString"
    description "MyText"
    gpa 1.5
    contact "MyString"
    mailto "MyString"
    status "MyString"
  end
end
