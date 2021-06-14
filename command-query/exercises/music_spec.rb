require 'rspec'
require_relative 'music'

RSpec.describe Music do
  it 'is not loud' do
    music = Music.new

    expect(music.loud?).to be false
  end

  it 'is loud after turning up the volume' do
    music = Music.new

    music.turn_up

    expect(music.loud?).to be true
  end
end
