module Encryptable

  def encrypt_a_shift(char, key, date)
    (char_index(char) + @key.a_shift(key) + @date.a_offset) % @char_set.count
  end

  def encrypt_b_shift(char, key, date)
    (char_index(char) + @key.b_shift(key) + @date.b_offset) % @char_set.count
  end

  def encrypt_c_shift(char, key, date)
    (char_index(char) + @key.c_shift(key) + @date.c_offset) % @char_set.count
  end

  def encrypt_d_shift(char, key, date)
    (char_index(char) + @key.d_shift(key) + @date.d_offset) % @char_set.count
  end

  def encrypt_message(message)
    e_message = []
    turn = 0
    message.downcase.each_char do |char|
      turn += 1
      if punc(char)
        e_message << char
      elsif turn == 1
         index = encrypt_a_shift(char, key, date)
         e_message << @char_set[index]
      elsif turn == 2
         index = encrypt_b_shift(char, key, date)
         e_message << @char_set[index]
      elsif turn == 3
         index = encrypt_c_shift(char, key, date)
         e_message << @char_set[index]
      elsif turn == 4
         index = encrypt_d_shift(char, key, date)
         e_message << @char_set[index]
      else
        turn == 5
        turn = 1
      end
    end
    e_message.join
  end

end
