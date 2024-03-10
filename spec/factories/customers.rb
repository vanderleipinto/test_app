FactoryBot.define do
  factory :customer, aliases: [:user, :worker] do
    
    transient do
      upcased  {false} #valor que pode ser mudado na criação do objeto - customer = create(:customer, upcased: true)
      qtt_orders {3}
    end

    name {Faker::Name.name}
    #address {Faker::Address.street_address}
    #email {"beatriz@filha.com"}  #comentado para uso do sequence

    

    sequence(:email, 'January') {|n| "meu_email-#{n}@email.com"}
    
    trait :male do 555555
      gender {'M'}
    end 
     
    trait :female do
      gender {'F'}
    end 
    
    trait :vip do
      vip {true}
      days_to_pay {30}
    end

    trait :default do
      vip {false}
      days_to_pay {15}
    end

    trait :with_orders do
      after(:create) do |customer, evaluator|  #executa essa ação após criar o objeto.
        create_list(:order, evaluator.qtt_orders, customer: customer)
      end 
    end

    
    factory :customer_with_orders, traits: [:with_orders]
    factory :customer_male, traits: [:male]
    factory :customer_female, traits: [:female]
    factory :customer_vip, traits: [:vip]
    factory :customer_default, traits: [:default]
    factory :customer_male_vip, traits: [:male, :vip]
    factory :customer_female_vip, traits: [:female, :vip]
    factory :customer_male_default, traits: [:male, :default]
    factory :customer_female_default, traits: [:female, :default]


    after(:create) do |customer, evaluator|  #executa essa ação após criar o objeto.
      customer.name.upcase! if evaluator.upcased #transforma em maiusculo se upcased == true
    end  
  end
end