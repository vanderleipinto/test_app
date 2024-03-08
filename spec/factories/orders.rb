FactoryBot.define do
  factory :order do
    sequence(:description) { |n| "Pedido #{n}" }
    
    #criando o customer automaticamente:
    customer #cria o customer automaticamente para associar ao pedido
    #equivalente a:
    #association :customer, factory: :customer
  end 
end
