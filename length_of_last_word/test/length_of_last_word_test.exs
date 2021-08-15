defmodule LengthOfLastWordTest do
  use ExUnit.Case
  doctest LengthOfLastWord

  test "length of empty string" do
    assert LengthOfLastWord.length_of_last_word("") == 0
  end

  test "length of a simple sequence of words" do
    assert LengthOfLastWord.length_of_last_word("Hello World") == 5
  end

  test "length of string with lots of empty spaces" do
    assert LengthOfLastWord.length_of_last_word("   fly me   to   the moon  ") == 4
  end

  test "length of string with multiple words" do
    assert LengthOfLastWord.length_of_last_word("luffy is still joyboy") == 6
  end

  test "length of a normal string" do
    assert LengthOfLastWord.length_of_last_word("Today is a nice day") == 3
  end

  test "length of word with lots of spaces in the middle" do
    assert LengthOfLastWord.length_of_last_word("VPtCBexbhyOqEHWMpF  VJOZpC") == 6
  end
end
