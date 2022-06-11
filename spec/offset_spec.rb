require 'date'
require './lib/offset'

RSpec.describe Offset do
  before :each do
    @offset = Offset.new('040895')
  end

  it 'initialize' do
    expect(@offset).to be_instance_of Offset
  end

  it 'square the date' do
    expect(@offset.square_date).to eq(1672401025)
  end

  it 'square the date' do
    expect(@offset.last_four_arr).to eq([1, 0, 2, 5])
  end

  it 'return a_offset value' do
    expect(@offset.a_offset).to eq(1)
  end

  it 'return b_offset value' do
    expect(@offset.b_offset).to eq(0)
  end

  it 'return c_offset value' do
    expect(@offset.c_offset).to eq(2)
  end

  it 'return d_offset value' do
    expect(@offset.d_offset).to eq(5)
  end

end
