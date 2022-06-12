require './lib/key'
require './lib/offset'
require './lib/encryptable'

class Enigma

  include Encryptable

  attr_reader :message, :key, :date
  def initialize(message, key = random_key, date = Date.today.strftime('%d%m%y'))
    @message = message
    @key = Key.new(key)
    @date = Offset.new(date)
    @char_set = ("a".."z").to_a << " "
  end

  def char_index(char)
    @char_set.index(char)
  end

  def punc(char)
    !@char_set.include?(char.downcase)
  end

  # def encrypt(message, key, date)
  #   encrypt_hash = {
  #   :encryption => "keder ohulw",
  #   :key => @key.key,
  #   :date => @date.date }
  # end
  #
  #
  # def decrypt(message, key, offset)
  #
  # end

end
