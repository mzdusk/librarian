# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :rehearsal do
    content "MyText"
    date "2013-03-21"
  end

  factory :rehearsal_no_content, class: Rehearsal do
    content ""
    date "2013-01-02"
  end

  factory :rehearsal_no_date, class: Rehearsal do
    content "Text"
    date ""
  end
end
