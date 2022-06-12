require './lib/enigma'
require './lib/key'
require './lib/offset'
require 'date'

RSpec.describe Enigma do
  before :each do
    @enigma = Enigma.new
  end

  it 'initialize' do
    expect(@enigma).to be_instance_of Enigma
  end

  # it 'returns encrypt hash' do
  #   expect(@enigma.encrypt("hello world", "02715", "040895")).to eq(
  #   {
  #   encryption: "keder ohulw",
  #   key: "02715",
  #   date: "040895"   })
  # end



end
