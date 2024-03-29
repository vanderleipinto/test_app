require 'rails_helper'

RSpec.describe Customer, type: :model do

 
#### Creating using features --------------------------
#   fixtures :customers #ou fixtures :all
    
#     # subject.name = "Vanderlei Pinto"
#     # subject.email = "vandecopinto@gmail.com"
#     # subject.save

  # it 'Create a Customer' do 
  #   customer = create(:worker)

  #   expect(customer.name).to eq("Vanderlei Pinto")
  #   expect(customer.full_name).to eq("Sr. Vanderlei Pinto")
  # end

####  Creating using factory bot -----------------------

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
  # it 'Herança' do
  #   customer = create(:customer_vip) #herança criada na factory
  #   expect(customer.vip).to eq(true)
  #  end

  it 'Usando o Attributes_for' do
    attrs = attributes_for(:customer)
    attrs1 = attributes_for(:customer_vip)
    attrs2 = attributes_for(:customer_default)
    p attrs
    p attrs1
    p attrs2
    customer = Customer.build(attrs)
    p "Attributes for -> #{customer.inspect}"
    expect(customer.full_name).to start_with("Sr.")
  end


  it 'Usando o Attributos Transitórios' do
    
    customer = create(:customer, upcased: true)
    
    expect(customer.name).to eq(customer.name.upcase)
  end

  it 'Cliente masculino vip' do
    customer = create(:customer_male_vip)
    expect(customer.gender).to eq('M')
    expect(customer.vip).to eq(true)
  end

  it 'Cliente Feminino default' do
    customer = create(:customer_female_default)
    expect(customer.gender).to eq('F')
    expect(customer.vip).to eq(false)
  end
  
  it 'Creates email using sequence' do
    #in the factory the email sequence works like this:
    # sequence(:email) {|n| "customer_email-#{n}@email.com"}
    customer = create(:customer_female_default)
    customer2 = create(:customer_male_default)
    puts customer.email
    puts customer2.email
  end


  
end
 