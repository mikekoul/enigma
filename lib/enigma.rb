require './lib/key'
require './lib/offset'
require './lib/encryptable'
require './lib/decryptable'

class Enigma

  include Encryptable
    include Decryptable

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

  def encrypt(message, key, date)
    encrypt_message(message)
    encrypted_hash(message, key, date)
  end

  def decrypt(message, key, date)
    decrypt_message(message)
    decrypted_hash(message, key, date)
  end

  # def decrypt(message, key, offset)
  #
  # end

end
