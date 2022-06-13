require './lib/key'

RSpec.describe Key do
  before :each do
    @key = Key.new("02715")
  end

  it 'initialize' do
    expect(@key).to be_instance_of Key
  end

  it 'return the key' do
    expect(@key.key).to eq("02715")
  end

  it 'return value of a_shift' do
    expect(@key.a_shift("02715")).to eq(02)
  end

  it 'return value of b_shift' do
    expect(@key.b_shift("02715")).to eq(27)
  end

  it 'return value of c_shift' do
    expect(@key.c_shift("02715")).to eq(71)
  end

  it 'return value of d_shift' do
    expect(@key.d_shift("02715")).to eq(15)
  end

end
