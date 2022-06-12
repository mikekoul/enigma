require './lib/enigma'
require 'date'

RSpec.describe Enigma do
  before :each do
    @enigma = Enigma.new
  end

  it 'initialize' do
    expect(@enigma).to be_instance_of Enigma
  end



end
