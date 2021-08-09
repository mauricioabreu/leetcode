defmodule RomanToIntegerTest do
  use ExUnit.Case
  doctest RomanToInteger

  test "III means 3" do
    assert RomanToInteger.convert("III") == 3
  end

  test "IV means 4" do
    assert RomanToInteger.convert("IV") == 4
  end

  test "LVIII means 58" do
    assert RomanToInteger.convert("LVIII") == 58
  end

  test "MCMXCIV means 1994" do
    assert RomanToInteger.convert("MCMXCIV") == 1994
  end
end
