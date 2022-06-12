module Decryptable

  def decrypt_a_shift(char, key, date)
    (char_index(char) - @key.a_shift(key) - @date.a_offset) % @char_set.count
  end

  def decrypt_b_shift(char, key, date)
    (char_index(char) - @key.b_shift(key) - @date.b_offset) % @char_set.count
  end

  def decrypt_c_shift(char, key, date)
    (char_index(char) - @key.c_shift(key) - @date.c_offset) % @char_set.count
  end

  def decrypt_d_shift(char, key, date)
    (char_index(char) - @key.d_shift(key) - @date.d_offset) % @char_set.count
  end

  def decrypt_message(message)
    de_message = []
    turn = 0
    message.downcase.each_char do |char|
      turn += 1
      if punc(char)
        de_message << char
      elsif turn == 1
         index = decrypt_a_shift(char, key, date)
         de_message << @char_set[index]
      elsif turn == 2
         index = decrypt_b_shift(char, key, date)
         de_message << @char_set[index]
      elsif turn == 3
         index = decrypt_c_shift(char, key, date)
         de_message << @char_set[index]
      elsif turn == 4
         index = decrypt_d_shift(char, key, date)
         de_message << @char_set[index]
      else turn == 5
         index = decrypt_a_shift(char, key, date)
         de_message << @char_set[index]
         turn = 1
      end
    end
    de_message.join
  end

  def decrypted_hash(message, key, date)
    decrypt_hash = {
    :decryption => decrypt_message(message),
    :key => @key.key,
    :date => @date.date }
  end


end
