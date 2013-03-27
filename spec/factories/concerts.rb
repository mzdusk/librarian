# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :concert do
    title "MyString"
    detail "MyText"
    date "2013-03-27"
    place "MyString"

    factory :concert_no_title do
      title ""
    end
  end
end
