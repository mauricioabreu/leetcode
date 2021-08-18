defmodule CheckIfNAndItsDoubleExist do
  def check_if_exist(nums) do
    seen = MapSet.new()
    double_of(nums, seen)
  end

  def double_of([], _seen) do
    false
  end

  def double_of([num | nums], seen) do
    cond do
      rem(num, 2) == 0 && MapSet.member?(seen, div(num, 2)) || MapSet.member?(seen, num * 2) -> true
      true -> double_of(nums, MapSet.put(seen, num))
    end
  end
end
