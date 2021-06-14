require 'rspec'
require_relative 'person'

RSpec.describe Person do
  it 'is zero years old when born' do
    person = Person.new

    expect(person.age).to eq(0)
  end

  it 'gets older' do
    person = Person.new

    person.happy_birthday

    expect(person.age).to eq(1)

    32.times { person.happy_birthday }

    expect(person.age).to eq(33)
  end
end
