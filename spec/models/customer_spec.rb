require 'rails_helper'

RSpec.describe Customer, type: :model do

 
#### Creating using features --------------------------
#   fixtures :customers #ou fixtures :all
    
#     # subject.name = "Vanderlei Pinto"
#     # subject.email = "vandecopinto@gmail.com"
#     # subject.save

#   it 'Create a Customer' do 
#     customer = customers(:vanderlei)

#     expect(customer.name).to eq("Vanderlei Pinto")
#     expect(customer.full_name).to eq("Sr. Vanderlei Pinto")
#   end

####  Creating using factory bot -------------------------

  # it 'Full name' do 
  #   customer = build (:customer)
  #   expect(customer.full_name).to start_with("Sr")    
  # end    

  # it {expect{ create(:customer)}.to change {Customer.all.size}.by(1)}
  # # Vai criar o cliente e vai verificar que um registro foi incrementado.

# ### Sobrescrevendo atributo e Criando Aliases  
#   it 'full_name_ Sobrescrevendo atributo' do
#     customer = build(:worker, name: "Vanderlei Pinto") ##ou :customer, :worker ou :user de acordo com o que foi definido em factory
#     expect(customer.full_name).to eq("Sr. Vanderlei Pinto")
#   end

### Usando herança
  it 'Herança' do
    customer = create(:customer_vip) #herança criada na factory
    expect(customer.vip).to eq(true)
   end
end
