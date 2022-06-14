require './lib/enigma'
require './lib/key'
require './lib/offset'
require 'date'

RSpec.describe Enigma do
  before :each do
    @enigma = Enigma.new("hello world", "02715", '040895')
  end

  it 'initialize' do
    expect(@enigma).to be_instance_of Enigma
  end

  it 'returns index of char_set' do
    expect(@enigma.char_index("a")).to eq(0)
  end

  it 'checks if punctuation and spaces are not included in character set' do
    enigma = Enigma.new('hello world!', '02715', '040895')
    expect(enigma.punc(' ')).to eq(false)
    expect(enigma.punc('!')).to eq(true)
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

  it 'return encrypted message' do
    expect(@enigma.encrypt_message("hello world")).to eq("keder ohulw")
  end

  it 'returns encrypted hash' do
    expect(@enigma.encrypt).to eq(
    {
    encryption: "keder ohulw",
    key: "02715",
    date: "040895" }
  )
  end

  it 'return decrypted a shift value' do
    expect(@enigma.decrypt_a_shift("k", "02715", '040895')).to eq(7)
  end

  it 'return decrypted b shift value' do
    expect(@enigma.decrypt_b_shift("e", "02715", '040895')).to eq(4)
  end

  it 'return decrypted c shift value' do
    expect(@enigma.decrypt_c_shift("d", "02715", '040895')).to eq(11)
  end

  it 'return decrypted d shift value' do
    expect(@enigma.decrypt_d_shift("e", "02715", '040895')).to eq(11)
  end

  it 'return decrypted message' do
    expect(@enigma.decrypt_message("keder ohulw")).to eq("hello world")
  end

  it 'returns decrypted hash' do
    expect(@enigma.decrypt("hello world", "02715", '040895')).to eq(
    {
    decryption: "hello world",
    key: "02715",
    date: "040895" }
  )
  end

  it 'returns todays date if no date is given for encrypt' do
    enigma = Enigma.new("hello world", "02715")
    expect(enigma.encrypt).to be_a Hash
  end

  it 'returns todays date if no date is given for decrypt' do
    enigma = Enigma.new("hello world", "02715")
    expect(enigma.decrypt("hello world", "02715")).to be_a Hash
  end

  it 'generates random_key and todays date if no key and date are given' do
    enigma = Enigma.new("hello world")
    expect(enigma.encrypt).to be_a Hash
  end


end
