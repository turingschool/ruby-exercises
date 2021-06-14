require 'rspec'
require_relative 'beers'

RSpec.describe Beers do
  it 'starts at 99' do
    beers = Beers.new

    expect(beers.inventory).to eq(99)
  end

  it 'decreases inventory' do
    beers = Beers.new
    beers.take_one_down_and_pass_it_around

    expect(beers.inventory).to eq(98)

    53.times { beers.take_one_down_and_pass_it_around }
    expect(beers.inventory).to eq(45)
  end

  it 'restocks' do
    beers = Beers.new

    43.times { beers.take_one_down_and_pass_it_around }

    beers.restock

    expect(beers.inventory).to eq(99)

    5.times { beers.take_one_down_and_pass_it_around }
    beers.restock
    expect(beers.inventory).to eq(99)
  end
end
