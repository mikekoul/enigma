require './lib/enigma'
require './lib/key'
require './lib/offset'
require 'date'

RSpec.describe Enigma do
  before :each do
    @enigma = Enigma.new("hello_world", "02715", '040895')
  end

  it 'initialize' do
    expect(@enigma).to be_instance_of Enigma
  end

  it 'returns index of char_set' do
    expect(@enigma.char_index("a")).to eq(0)
  end

  it 'return encrypted a shift value' do
    expect(@enigma.encrypt_a_shift("a", "02715", '040895')).to eq(3)
  end

  it 'return encrypted b shift value' do
    expect(@enigma.encrypt_b_shift("b", "02715", '040895')).to eq(1)
  end

  it 'return encrypted c shift value' do
    expect(@enigma.encrypt_c_shift("c", "02715", '040895')).to eq(21)
  end

  it 'return encrypted d shift value' do
    expect(@enigma.encrypt_d_shift("d", "02715", '040895')).to eq(23)
  end


  # it 'returns encrypt hash' do
  #   expect(@enigma.encrypt("hello world", "02715", "040895")).to eq(
  #   {
  #   encryption: "keder ohulw",
  #   key: "02715",
  #   date: "040895"   })
  # end

end
