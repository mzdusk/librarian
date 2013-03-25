# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :piece do
    name "MyString"
    composer "MyString"
    content "MyText"

    factory :piece_no_name do
      name ""
    end
  end
end
