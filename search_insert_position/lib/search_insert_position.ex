defmodule SearchInsertPosition do
  def search_insert([], _target) do
    0
  end

  def search_insert(nums, target) do
    search_insert(nums, target, 0, length(nums) - 1)
  end

  def search_insert(nums, target, left, right) when left < right do
    mid = left + div(right - left,  2)
    mid_value = Enum.at(nums, mid)
    cond do
      mid_value == target ->
        mid
      mid_value > target ->
        search_insert(nums, target, left, mid)
      true ->
        search_insert(nums, target, mid + 1, right)
    end
  end

  def search_insert(nums, target, left, _right) do
    if Enum.at(nums, left) < target, do: left + 1, else: left
  end
end
