defmodule LengthOfLastWord do
  def length_of_last_word("") do
    0
  end

  def length_of_last_word(word) do
    word
    |> String.split(~r/\W/, trim: true)
    |> List.last
    |> String.length
  end
end
