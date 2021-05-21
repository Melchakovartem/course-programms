FactoryBot.define do
  factory :video, class: 'Courses::Video' do
    name { FFaker::Name.unique.name }
    program { create(:program) }
  end
end
