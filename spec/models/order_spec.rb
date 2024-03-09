require 'rails_helper'

RSpec.describe Order, type: :model do
  it 'Verifica se o order possui customer' do
    order = create(:order)
    expect(order.customer).to be_kind_of(Customer)
  end

  it 'Verifica se o order possui customer' do
    customer_manual = create(:customer_female_vip)
    order = create(:order, customer: customer_manual) #sobrescrevendo o customer automático
    expect(order.customer).to be_kind_of(Customer)
  end

  it 'tem 3 pedidos' do
    orders = create_list(:order, 3, description: "Testeee")
    p orders.inspect
    expect(orders.count).to eq(3)
  end


end 