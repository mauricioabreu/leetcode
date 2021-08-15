defmodule ValidParentheses do
  @closing_parentheses %{
    "(" => ")",
    "{" => "}",
    "[" => "]",
  }

  def valid?(s) do
    String.graphemes(s)
    |> valid?([])
  end

  def valid?([], []) do
    true
  end

  def valid?([], _stack) do
    false
  end

  def valid?([h | t], stack) when h in ["(", "{", "["] do
    stack = [@closing_parentheses[h] | stack]
    valid?(t, stack)
  end

  def valid?([_h | _t], []) do
    false
  end

  def valid?([h | t], stack) do
    [p | new_stack] = stack
    case p == h do
      true -> valid?(t, new_stack)
      false -> false
    end
  end
end
