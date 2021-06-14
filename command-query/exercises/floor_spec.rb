require 'rspec'
require_relative 'floor'

RSpec.describe Floor do
  it 'is dirty by default' do
    floor = Floor.new

    expect(floor.dirty?).to be true
  end

  it 'is clean after it is washed' do
    floor = Floor.new

    floor.wash

    expect(floor.dirty?).to be false
  end
end
