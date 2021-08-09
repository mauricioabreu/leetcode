defmodule TwoSum do
  def two_sum([{num, pos} | t], target) do
    case sum(t, num, target) do
      nil -> two_sum(t, target)
      pos2 -> [pos, pos2]
    end
  end

  def two_sum(nums, target) do
    nums
    |> Enum.with_index
    |> two_sum(target)
  end

  defp sum([], _, _), do: nil
  defp sum([{num2, pos2} | t], num, target) when num + num2 == target, do: pos2
  defp sum([_ | t], num, target), do: sum(t, num, target)
end
