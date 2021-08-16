defmodule PlusOne do
  def plus(digits) do
    digits
    |> Enum.reverse()
    |> plus(true, [])
  end

  def plus([], true, sum) do
    [1 | sum]
  end

  def plus([], false, sum) do
    sum
  end

  def plus([h | t], false, sum) do
    plus(t, false, [h | sum])
  end

  def plus([h | t], keep_incr, sum) do
    cond do
      h + 1 == 10 -> plus(t, true, [0 | sum])
      true -> plus(t, false, [h + 1| sum])
    end
  end
end
