require 'rails_helper'

RSpec.describe Order, type: :model do
  it 'Verifica se o order possui customer' do
    order = create(:order)
    expect(order.customer).to be_kind_of(Customer)
  end

  it 'Verifica se o order possui customer (belongs_to)' do
    customer_manual = create(:customer_female_vip)
    order = create(:order, customer: customer_manual) #sobrescrevendo o customer automático
    expect(order.customer).to be_kind_of(Customer)
  end  

  it 'tem 3 pedidos (create_list)' do
    orders = create_list(:order, 3, description: "Testeee")
    p orders.inspect
    expect(orders.count).to eq(3)
  end

  it 'has_many' do
    customer = create(:customer, :with_orders, qtt_orders: 10) #sobrescreve as orders
    customer2 = create(:customer_with_orders) #já cria com as 3 ordens padrão
    puts customer.inspect
    puts customer.orders.inspect
    expect(customer.orders.count).to eq(10)
  end

end 