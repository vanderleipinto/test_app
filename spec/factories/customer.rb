FactoryBot.define do
  factory :customer, aliases: [:user, :worker] do
    name {Faker::Name.name}
    email {"beatriz@filha.com"}
  end
end