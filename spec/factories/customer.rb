FactoryBot.define do
  factory :customer, aliases: [:user, :worker] do
    name {Faker::Name.name}
    email {"beatriz@filha.com"}
    
    factory :customer_vip do
      vip {true}
      days_to_pay {30}
    end

    factory :customer_default do
      vip {false}
      days_to_pay {15}
    end
  end
end