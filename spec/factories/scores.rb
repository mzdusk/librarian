# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :score do
    name "MyString"
    data ""
  end

  factory :score_no_name, class: Score do
    name ""
    data ""
  end
end
