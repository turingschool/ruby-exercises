require 'rspec'
require_relative 'yak'

RSpec.describe Yak do
  it 'is hairy' do
    yak = Yak.new

    expect(yak.hairy?).to be true
  end

  it 'can be shaved' do
    yak = Yak.new

    yak.shave

    expect(yak.hairy?).to be false
  end
end
