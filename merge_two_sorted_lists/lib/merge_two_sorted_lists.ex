defmodule MergeTwoSortedLists do
  def merge(l1, l2) do
    merge(l1, l2, [])
  end

  def merge([n1 | t1], [], merged) do
    merge(t1, [], merged ++ [n1])
  end

  def merge([], [n2 | t2], merged) do
    merge([], t2, merged ++ [n2])
  end

  def merge([n1 | t1], [n2 | t2], merged) do
    cond do
      n1 < n2 ->
        merge(t1, [n2 | t2], merged ++ [n1])
      true ->
        merge([n1 | t1], t2, merged ++ [n2])
    end
  end

  def merge([], [], merged) do
    merged
  end
end
