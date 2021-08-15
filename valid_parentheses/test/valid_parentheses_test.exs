defmodule ValidParenthesesTest do
  use ExUnit.Case
  doctest ValidParentheses

  test "simple open/close" do
    assert ValidParentheses.valid?("()") == true
  end

  test "simple open/close with other symbols" do
    assert ValidParentheses.valid?("()[]{}") == true
  end

  test "closing with the wrong parentheses" do
    assert ValidParentheses.valid?("(]") == false
  end

  test "open/close with wrong order" do
    assert ValidParentheses.valid?("([)]") == false
  end

  test "open/close with in correct order" do
    assert ValidParentheses.valid?("{[]}") == true
  end

  test "longer expression" do
    assert ValidParentheses.valid?("{{}[][[[]]]}") == true
  end

  test "single parentheses opening" do
    assert ValidParentheses.valid?("[") == false
  end

  test "single parentheses closing" do
    assert ValidParentheses.valid?("]") == false
  end
end
