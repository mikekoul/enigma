require './lib/key'
require './lib/offset'
class Enigma

  attr_reader
  def initialize
    @char_set = ("a".."z").to_a << " "
  end

  
  # def encrypt(message, key, offset)
  #
  # end
  #
  # def decrypt(message, key, offset)
  #
  # end

end
