defmodule TwoSumTest do
  use ExUnit.Case
  doctest TwoSum

  test "numbers in the beginning" do
    assert TwoSum.two_sum([2, 7, 11, 15], 9) == [0, 1]
  end

  test "numbers in the ending" do
    assert TwoSum.two_sum([3, 2, 4], 6) == [1, 2]
  end

  test "numbers repeated" do
    assert TwoSum.two_sum([3, 3], 6) == [0, 1]
  end
end
