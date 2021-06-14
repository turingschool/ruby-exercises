require 'rspec'
require_relative 'drops'

RSpec.describe Drops do
  it 'has no drops' do
    drops = Drops.new

    expect(drops.count).to eq(0)
  end

  it 'drips' do
    drops = Drops.new
    drops.drip

    expect(drops.count).to eq(1)

    3.times { drops.drip }

    expect(drops.count).to eq(4)
  end
end
