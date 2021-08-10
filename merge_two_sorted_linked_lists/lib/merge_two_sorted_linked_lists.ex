defmodule ListNode do
  @type t :: %__MODULE__{
    val: integer,
    next: ListNode.t() | nil
  }
  defstruct val: 0, next: nil
end

defmodule MergeTwoSortedLinkedLists do
  def merge(l1, l2) do
    cond do
      l1 == nil ->
        l2
      l2 == nil ->
        l1
      l1.val < l2.val ->
        %{l1 | next: merge(l1.next, l2)}
      true ->
        %{l2 | next: merge(l1, l2.next)}
    end
  end
end
