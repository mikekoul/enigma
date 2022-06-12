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

end
