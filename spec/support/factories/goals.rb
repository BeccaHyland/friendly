FactoryBot.define do
  factory :goal do
    sequence(:title) {|n| "Title #{n}"}
    sequence(:hours) {|n| n*1 }
  end
end
