FactoryBot.define do
  factory :customer, aliases: [:user, :worker] do
    
    transient do
      upcased  {false} #valor que pode ser mudado na criação do objeto - customer = create(:customer, upcased: true)
    end


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

    after(:create) do |customer, evaluator|  #executa essa ação após criar o objeto.
      customer.name.upcase! if evaluator.upcased #transforma em maiusculo se upcased == true
    end

  end
end