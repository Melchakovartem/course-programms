FactoryBot.define do
  factory :user do
    name { FFaker::Name.name }
    email { FFaker::Internet.email }
    group { create(:group) }
  end
end
