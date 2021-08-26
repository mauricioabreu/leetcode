defmodule SearchInsertPositionTest do
  use ExUnit.Case
  doctest SearchInsertPosition

  test "example 1" do
    assert SearchInsertPosition.search_insert([1, 3, 5, 6], 5) == 2
  end

  test "example 2" do
    assert SearchInsertPosition.search_insert([1, 3, 5, 6], 2) == 1
  end

  test "example 3" do
    assert SearchInsertPosition.search_insert([1, 3, 5, 6], 7) == 4
  end

  test "example 4" do
    assert SearchInsertPosition.search_insert([1, 3, 5, 6], 0) == 0
  end

  test "example 5" do
    assert SearchInsertPosition.search_insert([1], 0) == 0
  end
end
