require 'rspec'
require_relative 'wallet'

RSpec.describe Wallet do
  it 'starts at zero' do
    wallet = Wallet.new

    expect(wallet.cents).to eq(0)
  end

  it 'can add pennies' do
    wallet = Wallet.new

    wallet << :penny
    expect(wallet.cents).to eq(1)

    3.times { wallet << :penny }
    expect(wallet.cents).to eq(4)
  end

  it 'can add nickels' do
    wallet = Wallet.new

    wallet << :nickel
    expect(wallet.cents).to eq(5)

    3.times { wallet << :nickel }
    expect(wallet.cents).to eq(20)
  end

  it 'can add dimes' do
    wallet = Wallet.new

    wallet << :dime
    expect(wallet.cents).to eq(10)

    3.times { wallet << :dime }
    expect(wallet.cents).to eq(40)
  end

  it 'can add quarters' do
    wallet = Wallet.new

    wallet << :quarter
    expect(wallet.cents).to eq(25)

    3.times { wallet << :quarter }
    expect(wallet.cents).to eq(100)
  end

  it 'can take coins out' do
    wallet = Wallet.new
    wallet << :penny
    wallet << :penny
    wallet << :penny
    wallet << :penny

    wallet.take(:penny)
    expect(wallet.cents).to eq(3)

    wallet.take(:penny, :penny)
    expect(wallet.cents).to eq(1)
  end

  it 'can taake various coins out' do
    wallet = Wallet.new
    wallet << :penny
    wallet << :dime
    wallet << :quarter
    wallet << :quarter

    wallet.take(:dime, :quarter)
    expect(wallet.cents).to eq(26)
  end

  it 'ignores coins that arent there' do
    wallet = Wallet.new
    wallet << :penny
    wallet.take(:dime)

    expect(wallet.cents).to eq(1)
  end
end
