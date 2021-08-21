defmodule ClimbingStairs do
  def climb_stairs(1), do: 1
  def climb_stairs(steps) do
    cache = %{0 => 1, 1 => 1}

    cache = Enum.reduce(2..steps, cache, fn
      i, acc ->
        Map.put(acc, i, acc[i - 2] + acc[i - 1])
    end)

    cache[steps]
  end
end
