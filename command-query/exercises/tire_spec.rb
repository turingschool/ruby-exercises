require 'rspec'
require_relative 'tire'

RSpec.describe Tire do
  it 'does not start out flat' do
    tire = Tire.new

    expect(tire.flat?).to be false
  end

  it 'can have a blowout' do
    tire = Tire.new

    tire.blow_out
    expect(tire.flat?).to be true
  end

end
