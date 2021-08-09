defmodule RomanToInteger do
  @symbols %{
    "I" => 1,
    "V" => 5,
    "X" => 10,
    "L" => 50,
    "C" => 100,
    "D" => 500,
    "M" => 1000,
  }

  def convert(roman) do
    roman
    |> String.graphemes()
    |> convert(0)
  end

  def convert([], acc) do
    acc
  end

  def convert([l, r | t], acc) do
    [prev, curr] = [@symbols[l], @symbols[r]]
    case prev >= curr do
      true ->
        convert([r | t], prev + acc)
      _ ->
        convert([r | t], acc - prev)
    end
  end

  def convert([l | _], acc) do
    acc + @symbols[l]
  end
end
