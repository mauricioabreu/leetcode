defmodule LengthOfLongestSubstringTest do
  use ExUnit.Case
  doctest LengthOfLongestSubstring

  test "simple substring found" do
    assert LengthOfLongestSubstring.calculate("abcabcbb") == 3
  end

  test "string with only one letter repeated" do
    assert LengthOfLongestSubstring.calculate("bbbbb") == 1
  end

  test "the answer must be a substring, not subsequence " do
    assert LengthOfLongestSubstring.calculate("pwwkew") == 3
  end

  test "empty string" do
    assert LengthOfLongestSubstring.calculate("") == 0
  end

  test "aab" do
    assert LengthOfLongestSubstring.calculate("aab") == 2
  end

  test "dvdf" do
    assert LengthOfLongestSubstring.calculate("dvdf") == 3
  end
end
