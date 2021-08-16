defmodule PlusOneTest do
  use ExUnit.Case
  doctest PlusOne

  test "123 plus 1 is 124" do
    assert PlusOne.plus([1, 2, 3]) == [1, 2, 4]
  end

  test "4321 plus 1 is 4322" do
    assert PlusOne.plus([4, 3, 2, 1]) == [4, 3, 2, 2]
  end

  test "0 plus 1 is 1" do
    assert PlusOne.plus([0]) == [1]
  end

  test "9 plus 1 is 10" do
    assert PlusOne.plus([9]) == [1, 0]
  end

  test "999 plus 1 is 1000" do
    assert PlusOne.plus([4, 3, 2, 1]) == [4, 3, 2, 2]
  end

  test "big number" do
    assert PlusOne.plus([9, 8, 7, 6, 5, 4, 3, 2, 1, 0]) == [9, 8, 7, 6, 5, 4, 3, 2, 1, 1]
  end
end
