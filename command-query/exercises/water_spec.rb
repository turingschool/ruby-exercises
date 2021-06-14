require 'rspec'
require_relative 'water'

RSpec.describe Water do
  it 'is at room temperature' do
    water = Water.new

    expect(water.temperature).to eq(295) # Measured in Kelvin
  end

  it 'can be heated' do
    water = Water.new

    water.heat
    expect(water.temperature).to eq(296)

    20.times { water.heat }
    expect(water.temperature).to eq(316)
  end
end
