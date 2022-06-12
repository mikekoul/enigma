require './lib/key'
require './lib/offset'
require './lib/encryptable'

class Enigma

  include Encryptable

  attr_reader :message, :key, :date
  def initialize(message, key, date)
    @message = message
    @key = Key.new(key)
    @date = Offset.new(date)
    @char_set = ("a".."z").to_a << " "
  end

  def char_index(char)
    @char_set.index(char)
  end


  # def encrypt(message, key, offset)
  #
  # end
  #
  # def decrypt(message, key, offset)
  #
  # end

end
