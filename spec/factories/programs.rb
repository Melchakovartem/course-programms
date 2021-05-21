FactoryBot.define do
  factory :program do
    name { FFaker::Name.unique.name }
  end
end
