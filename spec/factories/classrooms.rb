FactoryGirl.define do
  factory :classroom do
    student { FactoryGirl.cache(:student) }
    course { FactoryGirl.cache(:course) }
    entry_at DateTime.current
  end
end
