defmodule ReverseInteger do
  @max_32_bit_value :math.pow(2, 31)

  def reverse(number) do
    reverse(number, 0)
  end

  def reverse(0,  acc) do
    if abs(acc) > @max_32_bit_value do
      0
    else
      acc
    end
  end

  def reverse(division, acc) do
    d = div(division, 10)
    a = acc * 10 + rem(division, 10)
    reverse(d, a)
  end
end
