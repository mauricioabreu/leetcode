defmodule MergeTwoSortedListsTest do
  use ExUnit.Case
  doctest MergeTwoSortedLists

  test "merge empty lists" do
    assert MergeTwoSortedLists.merge([], []) == []
  end

  test "merge lists with only the left containing elements" do
    assert MergeTwoSortedLists.merge([0], []) == [0]
  end

  test "merge lists with only the right containing elements" do
    assert MergeTwoSortedLists.merge([], [0]) == [0]
  end

  test "merge lists with one element only" do
    assert MergeTwoSortedLists.merge([1], [2]) == [1, 2]
  end

  test "merge lists with same size of elements" do
    assert MergeTwoSortedLists.merge([1, 2, 4], [1, 3, 4]) == [1, 1, 2, 3, 4, 4]
  end

  test "merge lists with different size of elements" do
    assert MergeTwoSortedLists.merge([1, 3], [2, 2, 4, 5]) == [1, 2, 2, 3, 4, 5]
  end
end
