require './lib/key'

RSpec.describe Key do
  before :each do
    @key = Key.new
  end

  it 'initialize' do
    expect(@key).to be_instance_of Key
  end

end
