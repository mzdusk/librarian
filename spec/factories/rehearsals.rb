# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :rehearsal do
    content "MyText"
    date "2013-03-21"

    factory :rehearsal_no_content do
      content ""
    end

    factory :rehearsal_no_date do
      date ""
    end

    factory :future_rehearsal do
      sequence(:date) { |n| n.days.from_now }
    end

    factory :past_rehearsal do
      sequence(:date) { |n| n.days.ago }
    end
  end

end
