require 'rspec'
require_relative 'santa'

RSpec.describe Santa do
  it 'fits down the chimney' do
    santa = Santa.new

    expect(santa.fits?).to be true
  end

  it 'does not fit down the chimney if he eats too many cookies' do
    santa = Santa.new
    santa.eats_cookies

    expect(santa.fits?).to be true

    santa.eats_cookies
    expect(santa.fits?).to be true

    santa.eats_cookies
    expect(santa.fits?).to be false
  end
end
