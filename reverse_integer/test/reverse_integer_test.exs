defmodule ReverseIntegerTest do
  use ExUnit.Case
  doctest ReverseInteger

  test "simple number" do
    assert ReverseInteger.reverse(123) == 321
  end

  test "negative number" do
    assert ReverseInteger.reverse(-123) == -321
  end

  test "ending with zero" do
    assert ReverseInteger.reverse(120) == 21
  end

  test "zero" do
    assert ReverseInteger.reverse(0) == 0
  end

  test "number too high" do
    assert ReverseInteger.reverse(1534236469) == 0
  end

  test "number too low" do
    assert ReverseInteger.reverse(-2534236469) == 0
  end
end
