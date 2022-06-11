require 'date'

class Offset

  attr_reader :date
  def initialize(date = Date.today.strftime('%d%m%y'))
    @date = date
  end

  def square_date
    (@date.to_i ** 2)
  end

  def last_four_arr
    square_date.digits[0..3].reverse
  end

  def a_offset
    last_four_arr[0]
  end

  def b_offset
    last_four_arr[1]
  end

  def c_offset
    last_four_arr[2]
  end

  def d_offset
    last_four_arr[3]
  end

end
