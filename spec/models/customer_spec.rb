require 'rails_helper'

RSpec.describe Customer, type: :model do

# Creating using features
#   fixtures :customers #ou fixtures :all
    
#     # subject.name = "Vanderlei Pinto"
#     # subject.email = "vandecopinto@gmail.com"
#     # subject.save

#   it 'Create a Customer' do 
#     customer = customers(:vanderlei)

#     expect(customer.name).to eq("Vanderlei Pinto")
#     expect(customer.full_name).to eq("Sr. Vanderlei Pinto")
#   end

#  Creating using factory bot

  it 'Full name' do 
    customer = build (:customer)
    expect(customer.full_name).to start_with("Sr")    
  end    

  it {expect{ create(:customer)}.to change {Customer.all.size}.by(1)}
  # Vai criar o cliente e vai verificar que um registro foi incrementado.

end
