require 'rspec'
require_relative 'leather_chair'

RSpec.describe LeatherChair do
  it 'is not faded' do
    chair = LeatherChair.new

    expect(chair.faded?).to be false
  end

  it 'becomes faded when exposed to sunlight' do
    chair = LeatherChair.new

    chair.expose_to_sunlight

    expect(chair.faded?).to be true
  end
end
