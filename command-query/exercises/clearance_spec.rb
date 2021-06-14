require 'rspec'
require_relative 'clearance'
require_relative 'item'

RSpec.describe Clearance do
  it 'has no items on clearance' do
    clearance = Clearance.new
    expect(clearance.best_deal).to be_nil
  end

  it 'has highest percent off one item' do
    clearance = Clearance.new
    # the discount here is a price, so this discount would be 20 percent
    clearance << Item.new('socks', price: 5, discount: 1)

    expect(clearance.best_deal).to eq('socks')
  end

  it 'has higest percent off many items' do
    clearance = Clearance.new
    clearance << Item.new('shirt', price: 16, discount: 2)
    clearance << Item.new('pants', price: 10, discount: 5)
    clearance << Item.new('jacket', price: 30, discount: 10)

    expect(clearance.best_deal).to eq('pants')
  end
end
