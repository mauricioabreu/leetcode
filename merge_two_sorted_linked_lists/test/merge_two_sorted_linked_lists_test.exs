defmodule MergeTwoSortedLinkedListsTest do
  use ExUnit.Case
  doctest MergeTwoSortedLinkedLists

  test "merge lists with same size of elements" do
    ln3 = %ListNode{val: 4, next: nil}
    ln2 = %ListNode{val: 2, next: ln3}
    l1 = %ListNode{val: 1, next: ln2}

    rn3 = %ListNode{val: 4, next: nil}
    rn2 = %ListNode{val: 3, next: rn3}
    l2 = %ListNode{val: 1, next: rn2}

    assert MergeTwoSortedLinkedLists.merge(l1, l2) == %ListNode{
      next: %ListNode{
        next: %ListNode{
          next: %ListNode{
            next: %ListNode{next: %ListNode{next: nil, val: 4}, val: 4},
            val: 3
          },
          val: 2
        },
        val: 1
      },
      val: 1
    }
  end
end
