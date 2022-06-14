require './lib/key'
require './lib/offset'
require './lib/encryptable'
require './lib/decryptable'

class Enigma

  include Encryptable
    include Decryptable

  attr_reader :message, :key, :date, :char_set
  def initialize(message = File.open("lib/#{ARGV[0]}", "r").read.downcase.chomp,
                key = rand.to_s[2..6],
                date = Date.today.strftime('%d%m%y'))
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

  def encrypt
    encrypted_hash(message, key, date)
  end

  def decrypt(message, key, date = Date.today.strftime('%d%m%y'))
    decrypted_hash(message, key, date)
  end

end
