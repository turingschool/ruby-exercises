require 'rspec'
require_relative 'kid'

RSpec.describe Kid do
  it 'has not eaten sugar' do
    kid = Kid.new

    expect(kid.grams_of_sugar_eaten).to eq(0)
  end

  it 'gets 5 grams from eating candy' do
    kid = Kid.new

    kid.eat_candy

    expect(kid.grams_of_sugar_eaten).to eq(5)

    5.times { kid.eat_candy }

    expect(kid.grams_of_sugar_eaten).to eq(30)
  end

  it 'is not hyperactive' do
    kid = Kid.new

    expect(kid.hyperactive?).to be false
  end

  it 'is hyperactive after 60 grams of sugar' do
    kid = Kid.new

    11.times { kid.eat_candy }

    expect(kid.hyperactive?).to be false

    kid.eat_candy

    expect(kid.hyperactive?).to be true
  end
end
