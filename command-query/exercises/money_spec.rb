require 'rspec'
require_relative 'money'

RSpec.describe Money do
  it 'starts at zero' do
    money = Money.new

    expect(money.amount).to eq(0)
  end

  it 'can earn money' do
    money = Money.new

    money.earn(20)

    expect(money.amount).to eq(20)

    money.earn(13)

    expect(money.amount).to eq(33)
  end
end
