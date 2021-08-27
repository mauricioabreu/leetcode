defmodule LemonadeChangeTest do
  use ExUnit.Case
  doctest LemonadeChange

  test "enough change 1" do
    assert LemonadeChange.enough_change?([5, 5, 5, 10, 20]) == true
  end

  test "enough change 2" do
    assert LemonadeChange.enough_change?([5, 5, 10]) == true
  end

  test "enough change 3" do
    assert LemonadeChange.enough_change?([5, 5, 5, 5, 10, 5, 10, 10, 10, 20]) == true
  end

  test "not enough change 1" do
    assert LemonadeChange.enough_change?([5, 5, 5, 10, 20]) == true
  end

  test "not enough change 2" do
    assert LemonadeChange.enough_change?([10, 10]) == false
  end

  test "not enough change 3" do
    assert LemonadeChange.enough_change?([5, 5, 5, 10, 5, 5, 10, 20, 20, 20]) == false
  end

  test "not enough change 4" do
    assert LemonadeChange.enough_change?([5, 5, 10, 10, 20]) == false
  end

  test "not enough change 5" do
    assert LemonadeChange.enough_change?([5, 5, 5, 5, 20, 20, 5, 5, 20, 5]) == false
  end
end
