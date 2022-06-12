class Key

  attr_reader :key
  def initialize(key = random_key)
    @key = key
  end

  def a_shift(key)
    @key.chars[0..1].join.to_i
  end

  def b_shift(key)
    @key.chars[1..2].join.to_i
  end

  def c_shift(key)
    @key.chars[2..3].join.to_i
  end

  def d_shift(key)
    @key.chars[3..4].join.to_i
  end

  def random_key
    rand.to_s[2..6]
  end


end
