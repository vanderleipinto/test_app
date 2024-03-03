FactoryBot.define do
  factory :customer do
    name {Faker::Name.name}
    email {"beatriz@filha.com"}
  end
end