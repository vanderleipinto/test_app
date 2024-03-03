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

  it 'Create a Customer' do 
    customer = build (:customer)
    expect(customer.full_name).to eq("Sr. Beatriz")
  end    

end
