require './lib/key'
require './lib/offset'
require './lib/encryptable'
require './lib/decryptable'

class Enigma

  include Encryptable
    include Decryptable

  attr_reader :key, :date
  def initialize(message, key = @key.random_key, date = Date.today.strftime('%d%m%y'))
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

  def encrypt(message, key = @key.random_key, date = Date.today.strftime('%d%m%y'))
    encrypt_message(message)
    encrypted_hash(message, key, date)
  end

  def decrypt(message, key, date = Date.today.strftime('%d%m%y'))
    decrypt_message(message)
    decrypted_hash(message, key, date)
  end

end
