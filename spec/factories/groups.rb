FactoryBot.define do
  factory :group do
    name { FFaker::Name.unique.name }
  end
end
